-- Permisos explícitos de las tablas (los proyectos nuevos de Supabase ya no los dan solos).
-- Es seguro: las reglas de seguridad (RLS) siguen decidiendo qué filas puede ver cada uno.
grant usage on schema public to anon, authenticated;
grant select on public.preguntas to authenticated;
grant select, insert, update, delete on public.progreso to authenticated;
grant select on public.compras to authenticated;
grant select, insert, update on public.compras to service_role;
grant select on public.preguntas, public.progreso to service_role;
