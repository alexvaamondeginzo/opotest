-- 11 · Comparativa anónima con otros opositores (24/11/2026)
-- Devuelve qué porcentaje de usuarios de una oposición tiene un porcentaje de aciertos
-- inferior al indicado. Solo cuenta a quienes llevan al menos 50 respuestas en esa
-- oposición y no devuelve nada (percentil null) si hay menos de 5, para que no se pueda
-- deducir el resultado de nadie. No devuelve ningún dato individual.
create or replace function public.percentil_aciertos(op text, pct numeric)
returns table(percentil int, usuarios int)
language sql
stable
security definer
set search_path = public
as $$
  with t as (
    select (select sum((v->>'a')::numeric) from jsonb_each(p.datos->'ops'->op->'t') as e(k, v)) as a,
           (select sum((v->>'n')::numeric) from jsonb_each(p.datos->'ops'->op->'t') as e(k, v)) as n
    from progreso p
    where auth.uid() is not null
      and jsonb_typeof(p.datos->'ops'->op->'t') = 'object'
  ), u as (
    select a / n * 100 as acierto from t where n >= 50
  )
  select case when count(*) >= 5
              then round(100.0 * count(*) filter (where acierto < pct) / count(*))::int
         end,
         count(*)::int
  from u;
$$;

revoke all on function public.percentil_aciertos(text, numeric) from public, anon;
grant execute on function public.percentil_aciertos(text, numeric) to authenticated;
