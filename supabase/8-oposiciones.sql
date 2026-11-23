-- ============================================================
-- 8. Varias oposiciones en la misma web
-- Ejecútalo UNA vez en Supabase → SQL Editor (se puede repetir sin problema).
-- No borra nada: lo que ya existe pasa a ser de "aux-cm" (Auxiliar Comunidad de Madrid).
-- ============================================================

-- Cada pregunta y cada compra indica a qué oposición pertenece
alter table public.preguntas add column if not exists oposicion text not null default 'aux-cm';
alter table public.compras   add column if not exists oposicion text not null default 'aux-cm';
create index if not exists preguntas_oposicion_idx on public.preguntas (oposicion, tema);

-- Acceso a UNA oposición: admin → compra de esa oposición → modo pruebas → prueba de 2 días
create or replace function public.mi_acceso_op(op text)
returns jsonb language plpgsql stable security definer set search_path = '' as $$
declare uid uuid := auth.uid(); em text; c record; p timestamptz;
begin
  if uid is null then return jsonb_build_object('plan', null); end if;
  if public.es_admin() then
    return jsonb_build_object('plan','completo','hasta','2099-12-31T00:00:00Z','admin',true,'beta',public.modo_beta());
  end if;
  select public.normalizar_email(email) into em from auth.users where id = uid;
  select plan, hasta into c from public.compras
   where (user_id = uid or email_norm = em) and oposicion = op and hasta > now()
   order by case plan when 'premium' then 3 when 'completo' then 2 else 1 end desc, hasta desc
   limit 1;
  if found then return jsonb_build_object('plan', c.plan, 'hasta', c.hasta); end if;
  if public.modo_beta() then return jsonb_build_object('plan','beta'); end if;
  select inicio into p from public.pruebas where email_norm = em or user_id = uid order by inicio limit 1;
  if p is not null and p + interval '2 days' > now() then
    return jsonb_build_object('plan','prueba','hasta', p + interval '2 days');
  end if;
  return jsonb_build_object('plan', null, 'prueba_fin', p + interval '2 days');
end $$;
revoke execute on function public.mi_acceso_op(text) from public, anon;
grant execute on function public.mi_acceso_op(text) to authenticated;

-- La función antigua sigue funcionando (es Auxiliar CM)
create or replace function public.mi_acceso()
returns jsonb language sql stable security definer set search_path = '' as $$
  select public.mi_acceso_op('aux-cm');
$$;
revoke execute on function public.mi_acceso() from public, anon;
grant execute on function public.mi_acceso() to authenticated;

-- Hasta qué tema puede ver el usuario en cada oposición.
-- Plan "legislacion" = solo la parte de legislación de esa oposición.
create or replace function public.tema_maximo_op(op text)
returns integer language sql stable security definer set search_path = '' as $$
  select case (public.mi_acceso_op(op)->>'plan')
    when 'prueba' then 999 when 'beta' then 999 when 'completo' then 999 when 'premium' then 999
    when 'legislacion' then case op when 'aux-cm' then 15 when 'aux-age' then 16 else 0 end
    else 0 end;
$$;
revoke execute on function public.tema_maximo_op(text) from public, anon;
grant execute on function public.tema_maximo_op(text) to authenticated;

create or replace function public.tema_maximo_permitido()
returns integer language sql stable security definer set search_path = '' as $$
  select public.tema_maximo_op('aux-cm');
$$;

-- Quién ve qué preguntas. Cada (select ...) se calcula una sola vez por consulta.
-- Al añadir una oposición nueva, se añade aquí su línea.
drop policy if exists "Ver preguntas de mi plan" on public.preguntas;
create policy "Ver preguntas de mi plan" on public.preguntas
  for select to authenticated using (
    tema <= case oposicion
      when 'aux-cm'       then (select public.tema_maximo_op('aux-cm'))
      when 'aux-age'      then (select public.tema_maximo_op('aux-age'))
      when 'adm-cm'       then (select public.tema_maximo_op('adm-cm'))
      when 'aux-ayto-mad' then (select public.tema_maximo_op('aux-ayto-mad'))
      else 0 end);

-- Panel: dar acceso a mano a una oposición concreta
create or replace function public.admin_conceder_op(e text, p text, h timestamptz, o text)
returns void language plpgsql security definer set search_path = '' as $$
begin
  if not public.es_admin() then raise exception 'Solo administradores'; end if;
  if p not in ('legislacion','completo') then raise exception 'Plan no válido'; end if;
  if o not in ('aux-cm','aux-age','adm-cm','aux-ayto-mad') then raise exception 'Oposición no válida'; end if;
  insert into public.compras (user_id, email_norm, plan, importe_cent, moneda, stripe_session, hasta, oposicion)
  values (public.usuario_por_email(e), public.normalizar_email(e), p, 0, 'eur', 'manual-' || gen_random_uuid(), h, o);
end $$;
revoke execute on function public.admin_conceder_op(text,text,timestamptz,text) from public, anon;
grant execute on function public.admin_conceder_op(text,text,timestamptz,text) to authenticated;

-- El plan que muestra la lista de compras del panel lleva la oposición delante
create or replace function public.admin_compras()
returns table(creado timestamptz, email text, plan text, importe_cent integer, tipo text, hasta timestamptz)
language plpgsql stable security definer set search_path = '' as $$
begin
  if not public.es_admin() then raise exception 'Solo administradores'; end if;
  return query select c.creado, coalesce(u.email::text, c.email_norm), c.oposicion || ' · ' || c.plan, c.importe_cent,
    case when c.stripe_session like 'manual-%' then 'acceso dado a mano' else 'pago Stripe' end, c.hasta
  from public.compras c left join auth.users u on u.id = c.user_id
  order by c.creado desc limit 200;
end $$;
