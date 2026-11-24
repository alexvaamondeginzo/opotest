-- 9. Pagos con Stripe Checkout: precio de cada oposición y plan
-- Los precios se guardan aquí (no en la web) para que nadie pueda pagar menos tocando la página.
-- Se cambian desde el panel de administración de la web (sección «Precios»).
-- Mientras un precio no esté activo, ese plan no se puede comprar.

create table if not exists public.precios (
  oposicion    text not null,
  plan         text not null check (plan in ('legislacion','completo','premium')),
  importe_cent integer not null check (importe_cent >= 50),
  hasta        timestamptz not null,           -- hasta cuándo dura el acceso que se compra
  activo       boolean not null default false,
  actualizado  timestamptz not null default now(),
  primary key (oposicion, plan)
);
alter table public.precios enable row level security;
drop policy if exists "Ver precios activos" on public.precios;
create policy "Ver precios activos" on public.precios for select using (activo);
-- Sin este permiso la política no basta: la web no podía leer los precios (arreglado el 24/11/2026).
grant select on public.precios to anon, authenticated;
-- La función crear-pago lee el precio con la clave de servicio: sin este permiso respondía «no está a la venta»
grant select on public.precios to service_role;

-- Precio por oposición y plan (solo administradores)
create or replace function public.admin_precio(o text, p text, importe integer, h timestamptz, act boolean)
returns void language plpgsql security definer set search_path = '' as $$
begin
  if not public.es_admin() then raise exception 'Solo administradores'; end if;
  insert into public.precios (oposicion, plan, importe_cent, hasta, activo, actualizado)
  values (o, p, importe, h, act, now())
  on conflict (oposicion, plan) do update
    set importe_cent = excluded.importe_cent, hasta = excluded.hasta, activo = excluded.activo, actualizado = now();
end $$;
revoke execute on function public.admin_precio(text,text,integer,timestamptz,boolean) from public, anon;
grant execute on function public.admin_precio(text,text,integer,timestamptz,boolean) to authenticated;

-- Todos los precios, también los no activos (solo administradores)
create or replace function public.admin_precios()
returns setof public.precios language plpgsql stable security definer set search_path = '' as $$
begin
  if not public.es_admin() then raise exception 'Solo administradores'; end if;
  return query select * from public.precios order by oposicion, plan;
end $$;
revoke execute on function public.admin_precios() from public, anon;
grant execute on function public.admin_precios() to authenticated;
