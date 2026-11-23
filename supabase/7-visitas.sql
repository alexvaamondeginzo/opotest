-- Contador de visitas (sin cookies ni datos personales: solo un número por día)
create table if not exists public.visitas_dia (
  dia         date primary key,
  visitas     integer not null default 0,
  sin_sesion  integer not null default 0
);
alter table public.visitas_dia enable row level security;   -- nadie lo lee directamente

create or replace function public.registrar_visita(con_sesion boolean)
returns void language plpgsql security definer set search_path = '' as $$
declare d date := (now() at time zone 'Europe/Madrid')::date;
begin
  insert into public.visitas_dia as v (dia, visitas, sin_sesion)
  values (d, 1, case when con_sesion then 0 else 1 end)
  on conflict (dia) do update
    set visitas = v.visitas + 1,
        sin_sesion = v.sin_sesion + case when con_sesion then 0 else 1 end
    where v.visitas < 1000000;   -- tope por si alguien intenta inflarlo
end $$;
revoke execute on function public.registrar_visita(boolean) from public;
grant execute on function public.registrar_visita(boolean) to anon, authenticated;

create or replace function public.admin_visitas(dias integer default 14)
returns table(dia date, visitas integer, sin_sesion integer, registros integer)
language plpgsql stable security definer set search_path = '' as $$
begin
  if not public.es_admin() then raise exception 'Solo administradores'; end if;
  return query
  select g.dia::date,
         coalesce(v.visitas, 0),
         coalesce(v.sin_sesion, 0),
         (select count(*)::integer from auth.users u
           where (u.created_at at time zone 'Europe/Madrid')::date = g.dia::date)
  from generate_series((now() at time zone 'Europe/Madrid')::date - (least(greatest(dias,1),366) - 1),
                       (now() at time zone 'Europe/Madrid')::date, interval '1 day') as g(dia)
  left join public.visitas_dia v on v.dia = g.dia::date
  order by 1 desc;
end $$;
revoke execute on function public.admin_visitas(integer) from public, anon;
grant execute on function public.admin_visitas(integer) to authenticated;
