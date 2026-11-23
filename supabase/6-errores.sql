-- Registro de errores de la web (solo lo ve el administrador)
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
