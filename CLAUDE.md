# CLAUDE.md · contexto del proyecto OpoTest

Este archivo es la memoria compartida del proyecto. Lo usan los dos socios, cada uno con su propio Claude. Léelo antes de tocar nada y actualízalo cuando se tome una decisión o se cierre una tarea importante.

## Qué es

Web de tests de oposiciones. Su diferencia frente a OpositaTest y similares es que **cada pregunta va verificada contra el texto consolidado del BOE**, cita su artículo exacto y enlaza a él.

**Modelo de precio: PENDIENTE DE ACORDAR entre los dos socios.** Hay dos propuestas:

- Pago único de 4,99 € por oposición (2,99 € la segunda), con acceso hasta el examen.
- Lo que tiene configurado ahora la web en `oposiciones.json`: Madrid 14,99 € (solo legislación) o 24,99 € (completo), y Estado 24,99 €, con 2 días de prueba gratis.

Mientras dure la beta no se cobra, así que no corre prisa, pero hay que decidirlo antes de desactivar el modo beta. Tampoco está decidido si habrá temas gratis (propuesta: temas 1 y 16 abiertos) además o en lugar de la prueba de 2 días.

Estrategia: priorizar oposiciones con muchos aspirantes que OpositaTest no cubre, como TCAE de los servicios de salud, Administrativo de Navarra, Auxiliar del Gobierno de Canarias u Osakidetza. Ya aparecen en la portada como «Próximamente», con lista de espera. Las de Madrid y del Estado son las primeras disponibles.

## Stack

- Una sola página: `template.html` (HTML, CSS y JS sin dependencias salvo el cliente de Supabase). `build.py` la rellena con `oposiciones.json` y genera `web/index.html`. **No edites `web/` a mano.**
- **Supabase**: auth, tabla `preguntas` con RLS (solo se ven con sesión y según el plan, por oposición), `progreso` sincronizado, `compras`, visitas, errores y funciones de administración. SQL en `supabase/` (orden en `INSTRUCCIONES.txt`). Modo beta en `ajustes.modo_beta`.
- **Stripe**: Payment Links por oposición y plan (`pagos.json`, formato `{oposicion:{plan:enlace}}`) y webhook en `supabase/stripe-webhook/index.ts`. `client_reference_id` = `usuarioId__oposicion`.
- **Netlify**: proyecto `opotest-app`, en producción en https://opotest-app.netlify.app. Cada push a `main` se publica solo. Publica la carpeta `web` (`netlify.toml`). El repositorio es público porque el plan gratuito de Netlify solo publica los cambios del dueño en repos privados: **nunca subas claves secretas**, y ten en cuenta que los bancos de preguntas (`all.json`, `bancos/`, `supabase/p0*.sql`) son visibles para cualquiera. Formularios con Netlify Forms (`reporte` y `lista-espera`), declarados ocultos en `template.html`. Hay que tener activada la detección de formularios en Netlify.
- Progreso en `localStorage` (`auxcm-v2`) con formato `{ops:{<oposicion>:{t,wrong,sims,marks}}, done, days, goal}` y copia en Supabase.
- Las preguntas **nunca** van dentro de la web: `build.py` comprueba que no se filtre ninguna.

## Formato de las preguntas

`all.json` (Auxiliar Comunidad de Madrid, `aux-cm`) y `bancos/<id>.json` (resto):

```
[tema, "enunciado", ["A", "B", "C", "D"], indiceCorrecto, "Art. X Norma", "explicación", "examen oficial o null"]
```

- La posición de la correcta ya está repartida al 25 % entre A, B, C y D; las opciones no se barajan al mostrarse.
- Ids: `aux-cm` usa `tema-md5(enunciado)[:10]`; el resto, `oposicion:tema-md5(oposicion|enunciado)[:10]`. Si cambias el enunciado, cambia el id (y se pierde ese fallo o marca en el progreso de los usuarios).
- La referencia (`Art. 16.4 Ley 39/2015`) genera el enlace al BOE con la función `fuente()` y la tabla `NORMAS` de `template.html` (enlaces ELI: `https://www.boe.es/eli/es/<tipo>/<aaaa>/<mm>/<dd>/<n>/con#a<artículo>`). **Si añades una norma nueva, añádela allí.** Las normas autonómicas de Madrid aún no tienen enlace.
- Banco del Estado: las preguntas nuevas se escriben en `age/nNN.json` con formato `[tema, enunciado, correcta, [3 incorrectas], ref, expl]`; `age/montar.py` las junta con las reutilizadas de Madrid, reparte la posición de la correcta y escribe `bancos/aux-age.json`. Los psicotécnicos (tema 29) los genera `age/psico.py`, que calcula la respuesta.
- Al añadir una oposición: entrada en `oposiciones.json` (temario, sims, planes, enlaces), banco en `bancos/<id>.json`, y en `supabase/8-oposiciones.sql` añadirla al `case` de la política RLS y a `tema_maximo_op`. Después, `make_sql.py` y `build.py`.

## Reglas de calidad (obligatorias)

1. Toda pregunta se comprueba contra el texto consolidado vigente del BOE o del boletín autonómico antes de publicarla. Si no se ha comprobado, no entra.
2. Ninguna pista en la forma. Comprueba con `python3 herramientas/analizar.py <banco>` y `herramientas/estrategias.py` después de añadir preguntas:
   - la correcta debe ser la más larga, la 2.ª, la 3.ª y la más corta en torno al 25 % cada una;
   - ninguna estrategia tonta («la más larga sin absolutos», etc.) debe pasar del 35 %;
   - los absolutos («siempre», «nunca», «solo») tienen que aparecer también en respuestas correctas.
   Medición actual: Madrid, la más larga es la correcta en un 27 % y la mejor estrategia tonta acierta un 34 %. Estado, 31 % y 32 % (contando empates).
3. Sin distractores de relleno («Ninguna», opciones absurdas). Los distractores son plazos, órganos o mayorías cercanos al correcto, con plazos por encima y por debajo del real.
4. Reparto equilibrado entre temas, como piden las bases de cada convocatoria (los simulacros usan `equilibrar` y `cupos`).
5. No usar temarios de academias (tienen derechos de autor). Solo programa oficial, legislación y exámenes oficiales.

## Convocatorias disponibles

- **Auxiliar Administrativo C2 de la Comunidad de Madrid** (`aux-cm`). Orden 1628/2026, BOCM n.º 165 de 13/07/2026, con 673 plazas de acceso libre. Primer ejercicio: 40 preguntas más 5 de reserva, 45 min, temas 1 a 15. Segundo ejercicio: 30 preguntas más 5 de reserva, 35 min, ofimática (temas 16 a 21, Windows 11 y Microsoft 365). Cada ejercicio se puntúa de 0 a 50 y se supera con 25; un error resta 1/3. Examen previsto en junio de 2027.
- **Auxiliar Administrativo del Estado C2** (`aux-age`). Última convocatoria: BOE-A-2025-26262, con 1.700 plazas libres. La OEP 2026 está aprobada (RD 387/2026), pero aún no hay convocatoria. Ejercicio único de 90 minutos:
  - 1.ª parte: 30 preguntas del bloque I (temas 1 a 16) y 30 psicotécnicos (tema 29 en la web);
  - 2.ª parte: 50 preguntas del bloque II (temas 17 a 28);
  - cada parte se puntúa de 0 a 50, hay que sacar 25 en cada una y un error resta 1/3.

## Estado y pendientes

- [x] Banco de Madrid: 1.224 preguntas de los 21 temas, con distractores reescritos contra las pistas de forma.
- [x] Banco del Estado: 1.441 preguntas. 795 vienen de Madrid, 507 son nuevas comprobadas con el BOE y 139 son psicotécnicos generados por código.
- [x] Backend: Supabase con RLS, cuentas, progreso sincronizado, panel de administración y webhook de Stripe.
- [x] Fusión de las dos versiones (pull request #1, ya en `main`). De la versión de Alex se han traído:
  - el enlace al BOE de cada respuesta;
  - marcar preguntas y repasar las marcadas;
  - reportar una pregunta;
  - la lista de espera y su catálogo de oposiciones «Próximamente»;
  - los enlaces a la convocatoria y a los exámenes oficiales;
  - 4 preguntas del tema 4 que no estaban en el banco de Madrid.

  El resto de sus 208 preguntas ya estaba en el banco de Madrid o duplicaba una pregunta existente.
- [ ] **Decidir el precio** (ver arriba) y crear los Payment Links de Stripe por oposición.
- [ ] Ampliar los temas más cortos del Estado: 17 (20 preguntas), 18 (18), 21 (24), 22 (23) y 28 (24).
- [ ] Convertir los exámenes oficiales anteriores en simulacros interactivos (ahora solo se enlazan).
- [ ] Enlaces a las normas autonómicas de Madrid (BOCM) en `NORMAS`.
- [ ] Siguientes oposiciones: Administrativo C1 de Madrid y Auxiliar del Ayuntamiento de Madrid (ya en la portada como «Próximamente»), y las de la lista de espera según demanda.
- [ ] Rellenar los datos de las páginas legales (`legal_build.py`) y revisarlas con un asesor antes de cobrar. Añadir la lista de espera a la política de privacidad.
- [ ] SMTP propio en Supabase para los emails de confirmación.
- [ ] Nombre definitivo de la marca y dominio.

## Forma de trabajar

- Se trabaja directamente sobre `main`, sin ramas. **Antes de empezar, haz `git pull`** para traer lo que haya subido el otro socio, y súbelo en cuanto termines cada cambio, para no pisaros. Si `git push` falla porque el otro ha subido algo, haz `git pull`, resuelve los conflictos y vuelve a subir: nunca `git push --force`.
- Antes de subir: `python3 build.py <url>` (debe decir «preguntas visibles en la web: 0»), `python3 make_sql.py` si cambió algún banco, y el análisis de pistas si añadiste preguntas.
- No subir nunca claves secretas (Stripe, clave de servicio de Supabase) al repositorio. La clave publicable de Supabase sí puede ir en `build.py`.
- Al terminar una tarea, actualiza la sección «Estado y pendientes» de este archivo.
