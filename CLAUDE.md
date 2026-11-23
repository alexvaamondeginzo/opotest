# CLAUDE.md · contexto del proyecto OpoTest

Este archivo es la memoria compartida del proyecto. Lo usan los dos socios, cada uno con su propio Claude. Léelo antes de tocar nada y actualízalo cuando se tome una decisión o se cierre una tarea importante.

## Qué es

Web de tests de oposiciones. Su diferencia frente a OpositaTest y similares es que **cada pregunta va verificada contra el texto consolidado del BOE** y cita su artículo exacto. Modelo de negocio: **pago único de 4,99 € por oposición**, con acceso hasta el examen de la convocatoria en curso; una segunda oposición cuesta 2,99 €. Sin suscripciones.

Estrategia: priorizar oposiciones con muchos aspirantes que OpositaTest no cubre, como TCAE de los servicios de salud, Administrativo de Navarra, Auxiliar del Gobierno de Canarias u Osakidetza. Auxiliar Administrativo de la Comunidad de Madrid es la demo inicial, aunque OpositaTest sí la cubre.

## Stack actual

- Sitio estático en HTML, CSS y JavaScript sin dependencias ni paso de compilación. Se publica en Netlify (`netlify.toml`).
- Rutas por hash: `#/`, `#/o/<id>`, `#/o/<id>/<pestaña>` (practicar, simulacro, progreso, oficiales), `#/pago/<id>`, `#/precio`.
- Estado en `localStorage` con el prefijo `opotest:` (claves `access`, `stats:<id>` y `outbox`).
- Formularios con Netlify Forms (`lista-espera` y `reporte`), declarados como formularios ocultos en `index.html`.

## Formato de las preguntas (`data/<oposicion>.js`)

```js
[tema, "enunciado", ["A", "B", "C", "D"], indiceCorrecto, "Art. X Norma", "explicación"]
```

- Las opciones se barajan al mostrarse: el orden del archivo no importa.
- La `referencia` se usa para generar el enlace al BOE (función `fuente()` en `app.js`, tabla `NORMAS`). Si añades una norma nueva, añade allí su identificador BOE-A-….
- Al añadir una oposición: crea `data/<id>.js` con `window.OPO["<id>"] = { temas, bloque1, bloque2, Q }`, añade su entrada en `data/catalog.js` con `estado: "disponible"` y carga el script en `index.html`.

## Reglas de calidad (obligatorias)

1. Toda pregunta se comprueba contra el texto consolidado vigente del BOE o del boletín autonómico antes de publicarla. Si no se ha comprobado, no entra.
2. Ninguna pista en la forma: la opción correcta no debe ser sistemáticamente la más larga ni la más matizada. Medición actual: es la más larga en un 33 % de las preguntas (lo esperable al azar es un 25 %). Comprueba esta cifra después de añadir preguntas.
3. Sin distractores de relleno («Ninguna», opciones absurdas). Los distractores son plazos, órganos o mayorías cercanos al correcto.
4. Reparto equilibrado entre temas, como piden las bases de cada convocatoria.
5. No usar temarios de academias (tienen derechos de autor). Solo programa oficial, legislación y exámenes oficiales.

## Datos de la convocatoria demo

Auxiliar Administrativo C2 de la Comunidad de Madrid. Orden 1628/2026, BOCM n.º 165 de 13/07/2026, con 673 plazas de acceso libre. Primer ejercicio: 40 preguntas más 5 de reserva, 45 min, Bloque I. Segundo ejercicio: 30 preguntas más 5 de reserva, 35 min, ofimática (Windows 11 y Microsoft 365). Cada ejercicio se puntúa de 0 a 50 y se supera con 25; un error resta 1/3. Examen previsto en junio de 2027.

## Estado y pendientes

- [x] Banco de 208 preguntas: temas 1 a 6 del Bloque I y una primera tanda de ofimática.
- [ ] **Revisar contra el BOE las 52 preguntas nuevas** del Tema 4 y de ofimática. Las redactó Claude y aún no se han verificado una a una.
- [ ] Temas 7 a 15 del Bloque I sin preguntas. Ofimática: Access, Outlook y Microsoft 365 solo tienen 2 o 3 preguntas cada uno.
- [ ] Backend real: Supabase (auth y base de datos con RLS) y Stripe Checkout con webhook. Las preguntas tienen que servirse desde el servidor; ahora mismo están en el código del cliente.
- [ ] Convertir los exámenes oficiales anteriores en simulacros interactivos (ahora solo se enlazan).
- [ ] Rellenar los datos de las páginas legales y revisarlas con un asesor antes de cobrar.

## Forma de trabajar

- Una rama por tarea (`alex/...`, `edu/...`) y un pull request hacia `main`. Netlify genera una URL de vista previa para cada pull request.
- No subir nunca claves (Stripe, Supabase) al repositorio: van en las variables de entorno de Netlify.
- Al terminar una tarea, actualiza la sección «Estado y pendientes» de este archivo.
