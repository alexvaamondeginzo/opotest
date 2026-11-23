# CLAUDE.md · contexto del proyecto OpoNota (antes OpoTest)

Este archivo es la memoria compartida del proyecto. Lo usan los dos socios, cada uno con su propio Claude. Léelo antes de tocar nada y actualízalo cuando se tome una decisión o se cierre una tarea importante.

## Qué es

Web de tests de oposiciones. Su diferencia frente a OpositaTest y similares es que **cada pregunta va verificada contra el texto consolidado del BOE**, cita su artículo exacto y enlaza a él.

**Modelo de precio: PENDIENTE DE ACORDAR entre los dos socios.** Hay dos propuestas:

- Pago único de 4,99 € por oposición (2,99 € la segunda), con acceso hasta el examen.
- Lo que tiene configurado ahora la web en `oposiciones.json`: Madrid 14,99 € (solo legislación) o 24,99 € (completo), y Estado 24,99 €, con 2 días de prueba gratis.

Estructura de planes acordada (24/11/2026): precio por oposición y planes por niveles, donde la informática y los psicotécnicos son un extra pequeño para que compense coger el completo. Madrid: Legislación (temas 1-15) → Completo (+ ofimática). Estado: Teoría (temas 1-20) → Teoría + Ofimática (hasta el 28) → Completo (+ psicotécnicos). En la base de datos los niveles son `legislacion` < `completo` < `premium` (`tema_maximo_op` en `supabase/8-oposiciones.sql`). Los precios se ponen en Administración > Precios. Propuesta: Madrid 19,99 € / 24,99 €; Estado 22,99 € / 26,99 € / 29,99 €.

Mientras dure la beta no se cobra, así que no corre prisa, pero hay que decidirlo antes de desactivar el modo beta. Tampoco está decidido si habrá temas gratis (propuesta: temas 1 y 16 abiertos) además o en lugar de la prueba de 2 días.

Estrategia: priorizar oposiciones con muchos aspirantes que OpositaTest no cubre, como TCAE de los servicios de salud, Administrativo de Navarra, Auxiliar del Gobierno de Canarias u Osakidetza. Ya aparecen en la portada como «Próximamente», con lista de espera. Las de Madrid y del Estado son las primeras disponibles.

## Marca y diseño

- Nombre: **OpoNota**. Redes: @oponota.tests (TikTok) y @oponota.contacto (Instagram). El dominio sigue pendiente.
- Logotipo e icono originales en `assets/marca/`. Colores del logotipo: tinta petróleo `#052F2E`, verde azulado `#10776D` (acciones), menta `#99F6E4` (acento del anillo) y fondo `#F5F8F7`.
- Tipografía: Barlow Condensed (títulos, menú, botones y etiquetas, en mayúsculas) y Barlow (texto), ambas OFL y servidas desde la propia web (`assets/fuentes/*.woff`, las copia `build.py`). Sin peticiones a servidores de terceros.
- Estilo (según las capturas de referencia del equipo): fondo gris claro, barra superior blanca con el menú en mayúsculas subrayado en verde azulado y un avatar con menú de cuenta, cabeceras oscuras con el anillo del logotipo, títulos de página enormes y tarjetas blancas redondeadas.
- Estructura de la web: portada `#/` (oposiciones, cómo funciona con pregunta de muestra, precio, preguntas frecuentes) y, por oposición, páginas `#/o/<id>/<sección>`: inicio (hoy, resumen, temas débiles), `practicar`, `simulacros` (tarjetas y evolución de notas), `progreso`, `temario`, `examen` y `admin`.
- El precio de la portada sale de `precio.json`. Mientras `importe` esté vacío o la web esté en modo pruebas, se muestra «Gratis».

## Stack

- Una sola página: `template.html` (HTML, CSS y JS sin dependencias salvo el cliente de Supabase). `build.py` la rellena con `oposiciones.json` y genera `web/index.html`. **No edites `web/` a mano.**
- **Supabase**: auth, tabla `preguntas` con RLS (solo se ven con sesión y según el plan, por oposición), `progreso` sincronizado, `compras`, visitas, errores y funciones de administración. SQL en `supabase/` (orden en `INSTRUCCIONES.txt`). Modo beta en `ajustes.modo_beta`.
- **Stripe**: Stripe Checkout. La función `crear-pago` (`supabase/crear-pago/index.ts`, con JWT) crea la sesión de pago con el precio de la tabla `precios` (`supabase/9-pagos.sql`; se edita en Administración > Precios) y la función `stripe-webhook` (sin JWT, firma de Stripe) guarda la compra en `compras` con el plan, la oposición y la duración de los metadatos. Las dos están desplegadas en Supabase. El endpoint del webhook ya está creado en el entorno de prueba de Stripe (OPONOTA, `we_1Uf6VyDnbPrJadjoo579ciiL`). Faltan los secretos `STRIPE_SECRET_KEY` y `STRIPE_WEBHOOK_SECRET` en Supabase. En modo pruebas solo los administradores ven los planes y pueden pagar, para probar con tarjetas de prueba; cuando se cobre de verdad hay que crear otro webhook en modo real. Los Payment Links de `pagos.json` solo se usan si falla la función.
- **Entrar con Google**: botón en el diálogo de cuenta con `signInWithOAuth`. Solo se muestra si Google está activado en Supabase (lo comprueba en `/auth/v1/settings`). Falta crear el cliente OAuth en Google Cloud y activarlo en Supabase (pasos en `INSTRUCCIONES.txt`).
- **Netlify**: proyecto `oponota` (antes `opotest-app`), en producción en https://oponota.netlify.app. Se compila con `python3 build.py https://oponota.netlify.app/`. Cada push a `main` se publica solo. Publica la carpeta `web` (`netlify.toml`). El repositorio es público porque el plan gratuito de Netlify solo publica los cambios del dueño en repos privados: **nunca subas claves secretas**, y ten en cuenta que los bancos de preguntas (`all.json`, `bancos/`, `supabase/p0*.sql`) son visibles para cualquiera. Formularios con Netlify Forms (`reporte` y `lista-espera`), declarados ocultos en `template.html`. Hay que tener activada la detección de formularios en Netlify.
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
- [ ] **Decidir el precio** (ver arriba) y ponerlo en Administración > Precios. Configurar Stripe (secretos y webhook) y Google (cliente OAuth) siguiendo `INSTRUCCIONES.txt`.
- [ ] Ampliar los temas más cortos del Estado: 17 (20 preguntas), 18 (18), 21 (24), 22 (23) y 28 (24).
- [ ] Convertir los exámenes oficiales anteriores en simulacros interactivos (ahora solo se enlazan).
- [ ] Enlaces a las normas autonómicas de Madrid (BOCM) en `NORMAS`.
- [ ] Siguientes oposiciones: Administrativo C1 de Madrid y Auxiliar del Ayuntamiento de Madrid (ya en la portada como «Próximamente»), y las de la lista de espera según demanda.
- [x] Páginas legales (`legal_build.py`) rellenadas: titular OPONOTA, email oponota.contacto@gmail.com, fecha 18/10/2026, web https://oponota.netlify.app/, Supabase en Irlanda (eu-west-1), Netlify como alojamiento y lista de espera y avisos de error en la privacidad. Las condiciones de compra no dan precios (cada oposición tendrá el suyo y se mostrará en la web antes de pagar).
- [ ] **ANTES DEL LANZAMIENTO PÚBLICO (recordárselo al socio cuando diga que se lanza la web):**
  - poner NIF y domicilio en `NIF` y `DOMICILIO` de `legal_build.py` (ahora están vacíos y no se muestran);
  - poner como titular el nombre real de la persona o de la sociedad, porque «OPONOTA» no es una persona jurídica y la LSSI pide nombre o denominación social;
  - revisar las páginas legales con un asesor antes de cobrar;
  - añadir a las condiciones de compra el precio y lo que incluye cada oposición cuando esté decidido.
- [x] Proyecto de Netlify renombrado a `oponota`: la web está en https://oponota.netlify.app/ (en la cuenta de Netlify del otro socio). La antigua `opomadridprueba.netlify.app` es una versión vieja: no usarla.
- [ ] SMTP propio en Supabase para los emails de confirmación.
- [x] Nombre de la marca: OpoNota. Rediseño de la web con sus colores, portada con varias secciones y panel por oposición.
- [ ] Dominio propio.

## Forma de trabajar

- Se trabaja directamente sobre `main`, sin ramas. **Antes de empezar, haz `git pull`** para traer lo que haya subido el otro socio, y súbelo en cuanto termines cada cambio, para no pisaros. Si `git push` falla porque el otro ha subido algo, haz `git pull`, resuelve los conflictos y vuelve a subir: nunca `git push --force`.
- Antes de subir: `python3 build.py <url>` (debe decir «preguntas visibles en la web: 0»), `python3 make_sql.py` si cambió algún banco, y el análisis de pistas si añadiste preguntas.
- No subir nunca claves secretas (Stripe, clave de servicio de Supabase) al repositorio. La clave publicable de Supabase sí puede ir en `build.py`.
- Al terminar una tarea, actualiza la sección «Estado y pendientes» de este archivo.
