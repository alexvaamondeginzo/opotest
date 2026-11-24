-- 10. Formularios en Supabase (antes, Netlify Forms): avisos de error en preguntas y lista de espera.
-- Así no dependen del alojamiento de la web y se ven en el panel de administración.
-- Nadie puede leer estas tablas directamente: se escribe con las funciones de abajo y solo los administradores las leen.

create table if not exists public.reportes (
  id          bigint generated always as identity primary key,
  creado      timestamptz not null default now(),
  user_id     uuid references auth.users(id) on delete set null,
  oposicion   text,
  pregunta_id text,
  pregunta    text,
  referencia  text,
  mensaje     text not null,
  email       text,
  resuelto    boolean not null default false
);
alter table public.reportes enable row level security;

create table if not exists public.lista_espera (
  id        bigint generated always as identity primary key,
  creado    timestamptz not null default now(),
  user_id   uuid references auth.users(id) on delete set null,
  email     text not null,
  oposicion text not null,
  unique (email, oposicion)
);
alter table public.lista_espera enable row level security;

-- Reportar un error en una pregunta (con o sin sesión). Límite: 20 avisos por hora por usuario o email.
create or replace function public.enviar_reporte(o text, pid text, p text, ref text, m text, e text)
returns void language plpgsql security definer set search_path = '' as $$
declare uid uuid := auth.uid(); em text := nullif(lower(trim(coalesce(e,''))),'');
begin
  if coalesce(trim(m),'') = '' then raise exception 'Mensaje vacío'; end if;
  if em is not null and em !~ '^[^@\s]+@[^@\s]+\.[^@\s]+$' then em := null; end if;
  if (select count(*) from public.reportes r
       where r.creado > now() - interval '1 hour'
         and ((uid is not null and r.user_id = uid) or (em is not null and r.email = em))) >= 20 then
    raise exception 'Demasiados avisos seguidos';
  end if;
  if (select count(*) from public.reportes r where r.creado > now() - interval '1 hour') >= 300 then
    raise exception 'Demasiados avisos seguidos';
  end if;
  insert into public.reportes (user_id, oposicion, pregunta_id, pregunta, referencia, mensaje, email)
  values (uid, left(o,40), left(pid,80), left(p,1000), left(ref,200), left(m,2000), left(em,200));
end $$;
revoke execute on function public.enviar_reporte(text,text,text,text,text,text) from public;
grant execute on function public.enviar_reporte(text,text,text,text,text,text) to anon, authenticated;

-- Apuntarse a la lista de espera de una oposición (si ya estaba, no hace nada)
create or replace function public.apuntar_lista_espera(e text, o text)
returns void language plpgsql security definer set search_path = '' as $$
declare em text := lower(trim(coalesce(e,'')));
begin
  if em !~ '^[^@\s]+@[^@\s]+\.[^@\s]+$' or length(em) > 200 then raise exception 'Email no válido'; end if;
  if coalesce(o,'') !~ '^[a-z0-9-]{2,40}$' then raise exception 'Oposición no válida'; end if;
  if (select count(*) from public.lista_espera l where l.creado > now() - interval '1 hour') >= 500 then
    raise exception 'Demasiadas altas seguidas';
  end if;
  insert into public.lista_espera (user_id, email, oposicion) values (auth.uid(), em, o)
  on conflict (email, oposicion) do nothing;
end $$;
revoke execute on function public.apuntar_lista_espera(text,text) from public;
grant execute on function public.apuntar_lista_espera(text,text) to anon, authenticated;

-- Panel de administración
create or replace function public.admin_reportes()
returns setof public.reportes language plpgsql stable security definer set search_path = '' as $$
begin
  if not public.es_admin() then raise exception 'Solo administradores'; end if;
  return query select * from public.reportes order by resuelto, creado desc limit 300;
end $$;
revoke execute on function public.admin_reportes() from public, anon;
grant execute on function public.admin_reportes() to authenticated;

create or replace function public.admin_resolver_reporte(rid bigint, res boolean)
returns void language plpgsql security definer set search_path = '' as $$
begin
  if not public.es_admin() then raise exception 'Solo administradores'; end if;
  update public.reportes set resuelto = res where id = rid;
end $$;
revoke execute on function public.admin_resolver_reporte(bigint,boolean) from public, anon;
grant execute on function public.admin_resolver_reporte(bigint,boolean) to authenticated;

create or replace function public.admin_lista_espera()
returns setof public.lista_espera language plpgsql stable security definer set search_path = '' as $$
begin
  if not public.es_admin() then raise exception 'Solo administradores'; end if;
  return query select * from public.lista_espera order by oposicion, creado desc;
end $$;
revoke execute on function public.admin_lista_espera() from public, anon;
grant execute on function public.admin_lista_espera() to authenticated;

-- Huella de las preguntas que puede ver el usuario en una oposición (para no volver a descargarlas si no han cambiado).
-- Es "security invoker": respeta la RLS, así que cambia si cambian las preguntas o el plan del usuario.
create or replace function public.version_preguntas(op text)
returns text language sql stable security invoker set search_path = '' as $$
  select count(*)::text || '-' || coalesce(md5(string_agg(md5(p.id || '|' || p.tema || '|' || p.pregunta || '|' || p.opciones::text || '|' || p.correcta || '|' || coalesce(p.articulo,'') || '|' || coalesce(p.explicacion,'') || '|' || coalesce(p.examen,'')), '' order by p.id)), '')
  from public.preguntas p where p.oposicion = op;
$$;
revoke execute on function public.version_preguntas(text) from public, anon;
grant execute on function public.version_preguntas(text) to authenticated;
