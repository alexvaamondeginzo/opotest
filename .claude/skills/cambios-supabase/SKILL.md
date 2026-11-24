---
name: cambios-supabase
description: Usar siempre que se cambie la base de datos o la configuración de Supabase de OpoNota (tablas, funciones, políticas RLS, funciones Edge, datos como precios o administradores, ajustes de Auth o de emails), para que el otro socio y su Claude sepan qué hay.
---

# Cambios en Supabase (OpoNota)

El proyecto es `djzqzywpwliytbtkpdzk` (región eu-west-1). Lo usan los dos socios: todo cambio tiene que quedar escrito en el repositorio.

## Estructura de la base de datos (tablas y funciones)
1. Escribe el SQL en un archivo de `supabase/` con el número siguiente (`11-...sql`, `12-...sql`), o añádelo al archivo del tema si ya existe. Tiene que poder ejecutarse dos veces sin romper nada (`create table if not exists`, `create or replace function`, `drop policy if exists`).
2. Aplica el mismo SQL en Supabase (con el conector: `apply_migration`; si no, la persona lo pega en el SQL Editor).
3. Toda función `security definer`: `set search_path = ''`, comprueba `public.es_admin()` si es de administración, y `revoke execute ... from public, anon` + `grant ... to authenticated` (o `anon` si debe poder usarse sin sesión).
4. Toda tabla nueva con `enable row level security`. Sin políticas de lectura si solo se accede con funciones.
5. Añade el archivo a la lista de `INSTRUCCIONES.txt` (paso 1) para que un proyecto nuevo se pueda montar desde cero.

## Funciones Edge (`supabase/<nombre>/index.ts`)
- El código vive en el repositorio. Despliega exactamente lo que hay en el archivo y súbelo a GitHub.
- `crear-pago` va con verificación JWT; `stripe-webhook` sin JWT (la seguridad es la firma de Stripe).
- Los secretos (`STRIPE_SECRET_KEY`, `STRIPE_WEBHOOK_SECRET`…) los pone siempre la persona en Supabase > Edge Functions > Secrets. Ningún Claude los escribe ni los pide en el chat.

## Datos (precios, administradores, accesos)
- Precios: mejor desde la web, Administración > Precios. Administradores: `insert into public.administradores select id from auth.users where email = '...'`.
- Borrar usuarios o datos es definitivo: confirma siempre con la persona qué se borra antes de hacerlo.

## Ajustes del panel (Auth, emails, URLs)
No tienen archivo SQL: cuando cambies uno (SMTP, plantillas, «Confirm email», límites, Site URL, proveedores como Google), anótalo en `CLAUDE.md` en la línea correspondiente de «Estado y pendientes». Las plantillas de email viven en `supabase/plantillas-email/`.

## Siempre al final
- Una línea en `CLAUDE.md` > «Registro de cambios».
- Si la web necesita el cambio, sube el SQL y la web en el mismo commit (skill **publicar-web**).
