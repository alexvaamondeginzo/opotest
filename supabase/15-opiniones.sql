-- 15. Opiniones de un toque (25/11/2026): «¿Te está sirviendo OpoNota?» 👍 / 👎 y, si es 👎, «¿Qué mejorarías?».
-- Sustituye a la caja «¿Nos das tu opinión?» que mandaba a un correo. Se pregunta una sola vez, al terminar el tercer test.
-- Nadie puede leer la tabla directamente: se escribe con enviar_opinion y solo los administradores la leen.

create table if not exists public.opiniones (
  id        bigint generated always as identity primary key,
  creado    timestamptz not null default now(),
  user_id   uuid references auth.users(id) on delete set null,
  oposicion text,
  util      boolean not null,
  texto     text
);
alter table public.opiniones enable row level security;

-- Guardar una opinión. Con sesión, una por usuario (si vuelve a opinar, se actualiza la suya). Límite global por hora.
create or replace function public.enviar_opinion(o text, u boolean, t text)
returns void language plpgsql security definer set search_path = '' as $$
declare uid uuid := auth.uid(); txt text := nullif(left(trim(coalesce(t,'')),2000),'');
begin
  if u is null then raise exception 'Falta la respuesta'; end if;
  if (select count(*) from public.opiniones x where x.creado > now() - interval '1 hour') >= 300 then
    raise exception 'Demasiadas opiniones seguidas';
  end if;
  if uid is not null and exists (select 1 from public.opiniones x where x.user_id = uid) then
    update public.opiniones set util = u, texto = coalesce(txt, texto), oposicion = left(o,40), creado = now() where user_id = uid;
  else
    insert into public.opiniones (user_id, oposicion, util, texto) values (uid, left(o,40), u, txt);
  end if;
end $$;
revoke execute on function public.enviar_opinion(text,boolean,text) from public;
grant execute on function public.enviar_opinion(text,boolean,text) to anon, authenticated;

-- Panel de administración
create or replace function public.admin_opiniones()
returns table (creado timestamptz, oposicion text, util boolean, texto text, email text)
language plpgsql stable security definer set search_path = '' as $$
begin
  if not public.es_admin() then raise exception 'Solo administradores'; end if;
  return query select x.creado, x.oposicion, x.util, x.texto, u.email::text
    from public.opiniones x left join auth.users u on u.id = x.user_id
    order by x.creado desc limit 500;
end $$;
revoke execute on function public.admin_opiniones() from public, anon;
grant execute on function public.admin_opiniones() to authenticated;
