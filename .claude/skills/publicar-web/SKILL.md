---
name: publicar-web
description: Usar antes de subir cualquier cambio del repositorio de OpoNota a GitHub (template.html, oposiciones.json, precio.json, legal_build.py, build.py o cualquier archivo de web/), para probarlo y publicarlo sin pisar al otro socio.
---

# Publicar cambios de la web de OpoNota

## Antes de tocar nada
- `git pull --no-rebase` en `main` (se trabaja sin ramas).
- Apunta en `CLAUDE.md` > «En curso» qué vas a cambiar, sobre todo si es `template.html`: si el otro socio lo está tocando, coordinaos antes.

## Al terminar
1. **Compilar**: `python3 build.py <url de la web>` (la URL actual está en `CLAUDE.md` > Stack). Tiene que decir **«preguntas visibles en la web: 0»**. Si cambiaste `legal_build.py`, ejecútalo también.
2. **No edites `web/` a mano**: todo sale de `template.html`, `build.py` y `legal_build.py`.
3. **Probar en un navegador** (Playwright con Chrome o el navegador disponible): portada, abrir una oposición, empezar un test y un simulacro, y la parte que hayas cambiado. Cero errores de JavaScript en la consola. Revisa también el móvil (390 px de ancho).
4. **Un solo push por tanda de cambios**: agrupa todo en un commit. El alojamiento cobra o limita por publicación (Netlify gratis: unas 20 al mes; Cloudflare Pages gratis: 500 al mes).
5. Si `git push` falla porque el otro socio ha subido algo: `git pull --no-rebase`, resuelve los conflictos, vuelve a compilar y a subir. **Nunca `git push --force`.**
6. Actualiza `CLAUDE.md`: una línea en «Registro de cambios», quita tu entrada de «En curso» y marca lo que hayas cerrado en «Estado y pendientes».

## Nunca
- Claves secretas en el repositorio (es público): ni `sk_` de Stripe, ni `whsec_`, ni la clave de servicio de Supabase, ni contraseñas de SMTP. La clave publicable de Supabase sí puede ir en `build.py`.
- Cambios que solo funcionan a medias entre web y base de datos: si la web necesita algo nuevo en Supabase, sigue también la skill **cambios-supabase** y sube las dos cosas juntas.
