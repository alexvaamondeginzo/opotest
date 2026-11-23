-- =====================================================================
-- Test Auxiliar CM · Base de datos (Supabase)
-- Copia TODO este archivo en Supabase → SQL Editor → New query → Run.
-- Se puede ejecutar varias veces sin romper nada.
-- =====================================================================

-- ---------- 1. Progreso de cada usuario (ya existía) ----------
create table if not exists public.progreso (
  user_id     uuid primary key references auth.users(id) on delete cascade,
  datos       jsonb not null default '{}'::jsonb,
  actualizado timestamptz not null default now()
);
alter table public.progreso enable row level security;
drop policy if exists "Ver mi progreso"        on public.progreso;
drop policy if exists "Crear mi progreso"      on public.progreso;
drop policy if exists "Actualizar mi progreso" on public.progreso;
drop policy if exists "Borrar mi progreso"     on public.progreso;
create policy "Ver mi progreso"        on public.progreso for select using (auth.uid() = user_id);
create policy "Crear mi progreso"      on public.progreso for insert with check (auth.uid() = user_id);
create policy "Actualizar mi progreso" on public.progreso for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "Borrar mi progreso"     on public.progreso for delete using (auth.uid() = user_id);

-- ---------- 2. Normalizar emails ----------
-- Quita "+etiqueta" y, en Gmail, los puntos, para que nadie repita la prueba gratis
-- con variantes del mismo correo (pepe+1@gmail.com, p.e.p.e@gmail.com...).
create or replace function public.normalizar_email(e text)
returns text language plpgsql immutable set search_path = '' as $$
declare u text; d text;
begin
  e := lower(trim(coalesce(e,'')));
  u := split_part(e,'@',1); d := split_part(e,'@',2);
  u := split_part(u,'+',1);
  if d in ('gmail.com','googlemail.com') then u := replace(u,'.',''); d := 'gmail.com'; end if;
  return u || '@' || d;
end $$;

-- ---------- 3. Dominios de email temporal bloqueados ----------
create table if not exists public.dominios_bloqueados (dominio text primary key);
alter table public.dominios_bloqueados enable row level security;
insert into public.dominios_bloqueados (dominio) values
  ('0-mail.com'),
  ('10minemail.com'),
  ('10minutemail.com'),
  ('10minutemail.net'),
  ('1secmail.com'),
  ('1secmail.net'),
  ('1secmail.org'),
  ('20minutemail.com'),
  ('33mail.com'),
  ('anonbox.net'),
  ('armyspy.com'),
  ('binkmail.com'),
  ('bobmail.info'),
  ('burnermail.io'),
  ('byom.de'),
  ('chammy.info'),
  ('cool.fr.nf'),
  ('correotemporal.org'),
  ('courriel.fr.nf'),
  ('crazymailing.com'),
  ('cuvox.de'),
  ('dayrep.com'),
  ('dcctb.com'),
  ('deadaddress.com'),
  ('devnullmail.com'),
  ('discard.email'),
  ('discardmail.com'),
  ('discardmail.de'),
  ('dispostable.com'),
  ('dropmail.me'),
  ('e4ward.com'),
  ('einrot.com'),
  ('emailfake.com'),
  ('emailondeck.com'),
  ('emailsensei.com'),
  ('emailtemp.org'),
  ('emailtemporal.org'),
  ('emltmp.com'),
  ('esiix.com'),
  ('fake-mail.net'),
  ('fakeinbox.com'),
  ('fakemail.net'),
  ('fakemailgenerator.com'),
  ('filzmail.com'),
  ('fleckens.hu'),
  ('generator.email'),
  ('getairmail.com'),
  ('getnada.com'),
  ('gishpuppy.com'),
  ('grr.la'),
  ('guerrillamail.biz'),
  ('guerrillamail.com'),
  ('guerrillamail.de'),
  ('guerrillamail.info'),
  ('guerrillamail.net'),
  ('guerrillamail.org'),
  ('guerrillamailblock.com'),
  ('gustr.com'),
  ('harakirimail.com'),
  ('inboxkitten.com'),
  ('incognitomail.com'),
  ('instantemailaddress.com'),
  ('jetable.fr.nf'),
  ('jetable.org'),
  ('jourrapide.com'),
  ('kasmail.com'),
  ('kzccv.com'),
  ('letthemeatspam.com'),
  ('luxusmail.org'),
  ('mail-temporaire.fr'),
  ('mail.tm'),
  ('mailcatch.com'),
  ('maildrop.cc'),
  ('mailexpire.com'),
  ('mailforspam.com'),
  ('mailhazard.com'),
  ('mailinater.com'),
  ('mailinator.com'),
  ('mailinator.net'),
  ('mailinator2.com'),
  ('mailismagic.com'),
  ('mailmetrash.com'),
  ('mailmoat.com'),
  ('mailnesia.com'),
  ('mailnull.com'),
  ('mailpoof.com'),
  ('mailsac.com'),
  ('mailtothis.com'),
  ('mega.zik.dj'),
  ('mintemail.com'),
  ('minuteinbox.com'),
  ('mohmal.com'),
  ('moncourrier.fr.nf'),
  ('monemail.fr.nf'),
  ('monmail.fr.nf'),
  ('mvrht.com'),
  ('mytrashmail.com'),
  ('nada.email'),
  ('nomail.xl.cx'),
  ('nospam.ze.tc'),
  ('notmailinator.com'),
  ('owlymail.com'),
  ('pokemail.net'),
  ('qiott.com'),
  ('rhyta.com'),
  ('safetymail.info'),
  ('sharklasers.com'),
  ('sneakemail.com'),
  ('sogetthis.com'),
  ('spam4.me'),
  ('spambox.us'),
  ('spamcero.com'),
  ('spamdecoy.net'),
  ('spamex.com'),
  ('spamfree24.org'),
  ('spamgourmet.com'),
  ('spamherelots.com'),
  ('spamhereplease.com'),
  ('spamobox.com'),
  ('spamthisplease.com'),
  ('speed.1s.fr'),
  ('superrito.com'),
  ('suremail.info'),
  ('teleworm.us'),
  ('temp-mail.io'),
  ('temp-mail.org'),
  ('tempail.com'),
  ('tempemail.com'),
  ('tempemail.net'),
  ('tempinbox.com'),
  ('tempmail.com'),
  ('tempmail.dev'),
  ('tempmail.email'),
  ('tempmail.net'),
  ('tempmail.plus'),
  ('tempmailaddress.com'),
  ('tempmailin.com'),
  ('tempmailo.com'),
  ('tempomail.fr'),
  ('temporarioemail.com.br'),
  ('temporaryemail.net'),
  ('temporaryinbox.com'),
  ('tempr.email'),
  ('tempsky.com'),
  ('thisisnotmyrealemail.com'),
  ('throwawaymail.com'),
  ('tmail.ws'),
  ('tmpeml.com'),
  ('tmpmail.net'),
  ('tmpmail.org'),
  ('tradermail.info'),
  ('trashmail.com'),
  ('trashmail.de'),
  ('trashmail.io'),
  ('trashmail.me'),
  ('trashmail.net'),
  ('trbvm.com'),
  ('veryrealemail.com'),
  ('wegwerfmail.de'),
  ('wegwerfmail.net'),
  ('wwjmp.com'),
  ('xojxe.com'),
  ('yoggm.com'),
  ('yopmail.com'),
  ('yopmail.fr'),
  ('yopmail.net'),
  ('zippymail.info')
on conflict do nothing;
-- Para bloquear uno nuevo: insert into public.dominios_bloqueados values ('dominio.com');

-- ---------- 4. Bloqueo en el registro (Auth Hook "Before User Created") ----------
create or replace function public.hook_antes_de_crear_usuario(event jsonb)
returns jsonb language plpgsql security definer set search_path = '' as $$
declare em text; dom text;
begin
  em := lower(coalesce(event->'user'->>'email',''));
  dom := split_part(em,'@',2);
  if dom = '' or position('.' in dom) = 0 then
    return jsonb_build_object('error', jsonb_build_object('http_code',400,'message','Email no válido.'));
  end if;
  if exists (select 1 from public.dominios_bloqueados b where dom = b.dominio or dom like '%.' || b.dominio) then
    return jsonb_build_object('error', jsonb_build_object('http_code',403,
      'message','No se admiten emails temporales. Usa tu correo habitual (Gmail, Outlook, Hotmail, Yahoo...).'));
  end if;
  return '{}'::jsonb;
end $$;
grant execute on function public.hook_antes_de_crear_usuario(jsonb) to supabase_auth_admin;
revoke execute on function public.hook_antes_de_crear_usuario(jsonb) from authenticated, anon, public;

-- ---------- 5. Prueba gratis de 2 días, una por email ----------
create table if not exists public.pruebas (
  email_norm text primary key,
  user_id    uuid references auth.users(id) on delete set null,
  inicio     timestamptz not null default now()
);
alter table public.pruebas enable row level security;   -- sin políticas: nadie la lee desde la web

create or replace function public.registrar_prueba()
returns trigger language plpgsql security definer set search_path = '' as $$
begin
  -- Si el email ya tuvo prueba (por ejemplo, borró la cuenta y se registra otra vez),
  -- se conserva la fecha de inicio original: no hay una segunda prueba.
  insert into public.pruebas (email_norm, user_id)
  values (public.normalizar_email(new.email), new.id)
  on conflict (email_norm) do update set user_id = excluded.user_id;
  return new;
end $$;
drop trigger if exists al_crear_usuario on auth.users;
create trigger al_crear_usuario after insert on auth.users
  for each row execute function public.registrar_prueba();

-- Usuarios que ya existían: empiezan su prueba ahora.
insert into public.pruebas (email_norm, user_id)
select public.normalizar_email(email), id from auth.users where email is not null
on conflict (email_norm) do nothing;

-- ---------- 6. Compras (las escribe solo el webhook de Stripe) ----------
create table if not exists public.compras (
  id             bigint generated always as identity primary key,
  user_id        uuid references auth.users(id) on delete set null,
  email_norm     text,
  plan           text not null check (plan in ('legislacion','completo','premium')),
  importe_cent   integer,
  moneda         text,
  stripe_session text unique,
  creado         timestamptz not null default now(),
  hasta          timestamptz not null
);
alter table public.compras enable row level security;
drop policy if exists "Ver mis compras" on public.compras;
create policy "Ver mis compras" on public.compras for select using (auth.uid() = user_id);

-- ---------- 6b. Ajustes de la web y administradores ----------
create table if not exists public.ajustes (clave text primary key, valor jsonb not null);
alter table public.ajustes enable row level security;   -- solo se leen con las funciones de abajo
-- Modo pruebas ACTIVADO al instalar: todos los registrados tienen acceso completo y no se puede pagar.
insert into public.ajustes values ('modo_beta','true'::jsonb) on conflict (clave) do nothing;

create table if not exists public.administradores (
  user_id uuid primary key references auth.users(id) on delete cascade
);
alter table public.administradores enable row level security;
-- Para hacerte administrador (cambia el email por el tuyo, después de registrarte en la web):
--   insert into public.administradores select id from auth.users where email = 'TU_EMAIL@gmail.com';

create or replace function public.es_admin()
returns boolean language sql stable security definer set search_path = '' as $$
  select exists (select 1 from public.administradores where user_id = auth.uid());
$$;
revoke execute on function public.es_admin() from public, anon;
grant execute on function public.es_admin() to authenticated;

create or replace function public.modo_beta()
returns boolean language sql stable security definer set search_path = '' as $$
  select coalesce((select valor::text::boolean from public.ajustes where clave = 'modo_beta'), false);
$$;

-- Lo que la web necesita saber antes de iniciar sesión (sin datos personales)
create or replace function public.estado_web()
returns jsonb language sql stable security definer set search_path = '' as $$
  select jsonb_build_object('beta', public.modo_beta());
$$;
grant execute on function public.estado_web() to anon, authenticated;

-- ---------- 7. ¿Qué acceso tengo? ----------
create or replace function public.mi_acceso()
returns jsonb language plpgsql stable security definer set search_path = '' as $$
declare uid uuid := auth.uid(); em text; c record; p timestamptz;
begin
  if uid is null then return jsonb_build_object('plan', null); end if;
  if public.es_admin() then
    return jsonb_build_object('plan','completo','hasta','2099-12-31T00:00:00Z','admin',true,'beta',public.modo_beta());
  end if;
  select public.normalizar_email(email) into em from auth.users where id = uid;
  select plan, hasta into c from public.compras
   where (user_id = uid or email_norm = em) and hasta > now()
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
revoke execute on function public.mi_acceso() from public, anon;
grant execute on function public.mi_acceso() to authenticated;

create or replace function public.tema_maximo_permitido()
returns integer language sql stable security definer set search_path = '' as $$
  select case (public.mi_acceso()->>'plan')
    when 'prueba' then 21 when 'beta' then 21 when 'completo' then 21 when 'premium' then 21
    when 'legislacion' then 15
    else 0 end;
$$;
revoke execute on function public.tema_maximo_permitido() from public, anon;
grant execute on function public.tema_maximo_permitido() to authenticated;

-- ---------- 8. Banco de preguntas (protegido) ----------
create table if not exists public.preguntas (
  id          text primary key,
  tema        smallint not null,
  pregunta    text not null,
  opciones    jsonb not null,
  correcta    smallint not null,
  articulo    text,
  explicacion text,
  examen      text
);
alter table public.preguntas enable row level security;
drop policy if exists "Ver preguntas de mi plan" on public.preguntas;
create policy "Ver preguntas de mi plan" on public.preguntas
  for select to authenticated using (tema <= (select public.tema_maximo_permitido()));

-- ---------- 9. Borrar mi cuenta (derecho de supresión) ----------
-- Borra la cuenta y el progreso. Las compras se conservan sin usuario por obligación
-- contable, y el registro de la prueba se conserva para que no se repita.
create or replace function public.eliminar_mi_cuenta()
returns void language sql security definer set search_path = '' as $$
  delete from auth.users where id = auth.uid();
$$;
revoke all on function public.eliminar_mi_cuenta() from public, anon;
grant execute on function public.eliminar_mi_cuenta() to authenticated;

-- ---------- 10. Para el webhook: buscar usuario por email ----------
create or replace function public.usuario_por_email(e text)
returns uuid language sql stable security definer set search_path = '' as $$
  select id from auth.users where public.normalizar_email(email) = public.normalizar_email(e) limit 1;
$$;
revoke execute on function public.usuario_por_email(text) from public, anon, authenticated;
grant execute on function public.usuario_por_email(text) to service_role;

-- ---------- 11. Panel de administración ----------
-- Todas comprueban que quien las llama es administrador.
create or replace function public.admin_resumen()
returns jsonb language plpgsql stable security definer set search_path = '' as $$
begin
  if not public.es_admin() then raise exception 'Solo administradores'; end if;
  return jsonb_build_object(
    'beta', public.modo_beta(),
    'usuarios', (select count(*) from auth.users),
    'confirmados', (select count(*) from auth.users where email_confirmed_at is not null),
    'nuevos_7d', (select count(*) from auth.users where created_at > now() - interval '7 days'),
    'en_prueba', (select count(*) from public.pruebas where user_id is not null and inicio + interval '2 days' > now()),
    'con_plan', (select count(distinct coalesce(user_id::text, email_norm)) from public.compras where hasta > now()),
    'activos_7d', (select count(*) from public.progreso where actualizado > now() - interval '7 days'),
    'ingresos_cent', (select coalesce(sum(importe_cent),0) from public.compras where stripe_session not like 'manual-%'),
    'ventas', (select count(*) from public.compras where stripe_session not like 'manual-%')
  );
end $$;

create or replace function public.admin_usuarios()
returns table(email text, registrado timestamptz, confirmado boolean, estado text, hasta timestamptz,
              respuestas integer, ultima_actividad timestamptz, es_admin boolean)
language plpgsql stable security definer set search_path = '' as $$
begin
  if not public.es_admin() then raise exception 'Solo administradores'; end if;
  return query
  select u.email::text, u.created_at, u.email_confirmed_at is not null,
    case when exists (select 1 from public.administradores a where a.user_id = u.id) then 'admin'
         else coalesce(cp.plan, case when public.modo_beta() then 'pruebas' when pr.inicio + interval '2 days' > now() then 'prueba' else 'caducada' end) end,
    coalesce(cp.hasta, pr.inicio + interval '2 days'),
    coalesce((select sum((v->>'n')::int) from jsonb_each(coalesce(g.datos->'t','{}'::jsonb)) as e(k, v)), 0)::int,
    g.actualizado,
    exists (select 1 from public.administradores a where a.user_id = u.id)
  from auth.users u
  left join public.pruebas pr on pr.email_norm = public.normalizar_email(u.email)
  left join public.progreso g on g.user_id = u.id
  left join lateral (select c.plan, c.hasta from public.compras c
     where (c.user_id = u.id or c.email_norm = public.normalizar_email(u.email)) and c.hasta > now()
     order by case c.plan when 'premium' then 3 when 'completo' then 2 else 1 end desc limit 1) cp on true
  order by u.created_at desc;
end $$;

create or replace function public.admin_compras()
returns table(creado timestamptz, email text, plan text, importe_cent integer, tipo text, hasta timestamptz)
language plpgsql stable security definer set search_path = '' as $$
begin
  if not public.es_admin() then raise exception 'Solo administradores'; end if;
  return query select c.creado, coalesce(u.email::text, c.email_norm), c.plan, c.importe_cent,
    case when c.stripe_session like 'manual-%' then 'acceso dado a mano' else 'pago Stripe' end, c.hasta
  from public.compras c left join auth.users u on u.id = c.user_id
  order by c.creado desc limit 200;
end $$;

create or replace function public.admin_conceder(e text, p text, h timestamptz)
returns void language plpgsql security definer set search_path = '' as $$
begin
  if not public.es_admin() then raise exception 'Solo administradores'; end if;
  if p not in ('legislacion','completo') then raise exception 'Plan no válido'; end if;
  insert into public.compras (user_id, email_norm, plan, importe_cent, moneda, stripe_session, hasta)
  values (public.usuario_por_email(e), public.normalizar_email(e), p, 0, 'eur', 'manual-' || gen_random_uuid(), h);
end $$;

create or replace function public.admin_revocar(e text)
returns integer language plpgsql security definer set search_path = '' as $$
declare n integer;
begin
  if not public.es_admin() then raise exception 'Solo administradores'; end if;
  update public.compras set hasta = now()
   where email_norm = public.normalizar_email(e) and stripe_session like 'manual-%' and hasta > now();
  get diagnostics n = row_count;
  return n;
end $$;

create or replace function public.admin_modo_beta(activar boolean)
returns void language plpgsql security definer set search_path = '' as $$
begin
  if not public.es_admin() then raise exception 'Solo administradores'; end if;
  insert into public.ajustes values ('modo_beta', to_jsonb(activar))
  on conflict (clave) do update set valor = excluded.valor;
end $$;

revoke execute on function public.admin_resumen(), public.admin_usuarios(), public.admin_compras(),
  public.admin_conceder(text,text,timestamptz), public.admin_revocar(text), public.admin_modo_beta(boolean) from public, anon;
grant execute on function public.admin_resumen(), public.admin_usuarios(), public.admin_compras(),
  public.admin_conceder(text,text,timestamptz), public.admin_revocar(text), public.admin_modo_beta(boolean) to authenticated;

-- ---------- 12. Permisos explícitos de las tablas ----------
grant usage on schema public to anon, authenticated;
grant select on public.preguntas to authenticated;
grant select, insert, update, delete on public.progreso to authenticated;
grant select on public.compras to authenticated;
grant select, insert, update on public.compras to service_role;
grant select on public.preguntas, public.progreso to service_role;

-- ---------- 13. Registro de errores ----------
create table if not exists public.errores_web (
  id       bigint generated always as identity primary key,
  creado   timestamptz not null default now(),
  user_id  uuid references auth.users(id) on delete set null,
  mensaje  text,
  contexto text,
  agente   text
);
alter table public.errores_web enable row level security;   -- nadie lo lee directamente

create or replace function public.registrar_error(m text, c text, a text)
returns void language plpgsql security definer set search_path = '' as $$
begin
  -- máximo 30 errores por usuario y hora, para que nadie pueda llenar la tabla
  if (select count(*) from public.errores_web where user_id is not distinct from auth.uid() and creado > now() - interval '1 hour') >= 30 then
    return;
  end if;
  insert into public.errores_web (user_id, mensaje, contexto, agente)
  values (auth.uid(), left(m, 500), left(c, 200), left(a, 300));
  delete from public.errores_web where creado < now() - interval '90 days';
end $$;
revoke execute on function public.registrar_error(text,text,text) from public;
grant execute on function public.registrar_error(text,text,text) to anon, authenticated;

create or replace function public.admin_errores()
returns table(creado timestamptz, email text, mensaje text, contexto text, agente text)
language plpgsql stable security definer set search_path = '' as $$
begin
  if not public.es_admin() then raise exception 'Solo administradores'; end if;
  return query select e.creado, u.email::text, e.mensaje, e.contexto, e.agente
  from public.errores_web e left join auth.users u on u.id = e.user_id
  order by e.creado desc limit 100;
end $$;
revoke execute on function public.admin_errores() from public, anon;
grant execute on function public.admin_errores() to authenticated;
