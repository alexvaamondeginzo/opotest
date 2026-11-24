---
name: anadir-preguntas
description: Usar siempre que se añadan, corrijan o borren preguntas de cualquier banco de OpoNota (all.json, bancos/*.json, age/nNN.json, psicotécnicos), o se añada una oposición nueva.
---

# Añadir o cambiar preguntas en OpoNota

Antes de empezar: `git pull` y apunta en `CLAUDE.md` > «En curso» qué temas vas a tocar.

## 1. Comprobar contra la fuente oficial (obligatorio)
- Cada pregunta de legislación se comprueba contra el **texto consolidado vigente** del BOE (o del boletín autonómico) antes de escribirla. Usa los enlaces ELI: `https://www.boe.es/eli/es/<tipo>/<aaaa>/<mm>/<dd>/<n>/con`.
- Ofimática: documentación oficial de Microsoft (Windows 11 y Microsoft 365).
- Nunca temarios de academias (derechos de autor). Solo programa oficial, legislación y exámenes oficiales.
- Si no se ha podido comprobar, la pregunta **no entra**.

## 2. Formato
- Madrid (`all.json`) y resto (`bancos/<id>.json`): `[tema, "enunciado", ["A","B","C","D"], indiceCorrecto, "Art. X Norma", "explicación", "examen oficial o null"]`.
- Estado: las nuevas se escriben en `age/nNN.json` como `[tema, enunciado, correcta, [3 incorrectas], ref, expl]` y se juntan con `python3 age/montar.py` (reparte la posición de la correcta). Para cambiar distractores de un archivo: `python3 age/parche.py <archivo> <parche.json>`.
- Psicotécnicos (tema 29 del Estado): se generan con `python3 age/psico.py`, que calcula la respuesta. Los verbales se revisan a mano.
- Si la referencia usa una norma nueva, añádela a la tabla `NORMAS` de `template.html` para que salga el enlace al BOE.
- Cambiar un enunciado cambia su id: se pierde ese fallo o marca en el progreso de los usuarios. Evítalo si no es necesario.

## 3. Calidad: ninguna pista en la forma
- Distractores reales y cercanos (plazos por encima y por debajo, órganos parecidos, mayorías cercanas). Nada de «Ninguna» ni opciones absurdas.
- Los absolutos («siempre», «nunca», «solo») tienen que aparecer también en respuestas correctas.
- Pasa los dos análisis y mira que no empeoran:
  - `python3 herramientas/analizar.py <banco>`: la correcta debe ser la más larga, la 2.ª, la 3.ª y la más corta en torno al 25 % cada una.
  - `python3 herramientas/estrategias.py <banco>`: ninguna estrategia tonta por encima del 35 %.
- Actualiza en `CLAUDE.md` la «Medición actual» si cambia.

## 4. Subir
1. `python3 make_sql.py` (regenera `supabase/p0*-preguntas-parte*.sql`).
2. Cargar en Supabase: ejecutar las partes nuevas (la primera borra las preguntas antiguas). Si tienes el conector de Supabase, hazlo con él; si no, pídeselo a la persona.
3. Comprueba el recuento: `select oposicion, count(*) from preguntas group by 1;` y que coincide con `oposiciones.json`.
4. Sigue la skill **publicar-web** (build, pruebas y push).
5. Anota en `CLAUDE.md` > «Registro de cambios» y actualiza «Estado y pendientes» (número de preguntas).

Recuerda: el repositorio es público, así que los bancos son visibles. Nunca metas preguntas dentro de la web (`build.py` lo comprueba).
