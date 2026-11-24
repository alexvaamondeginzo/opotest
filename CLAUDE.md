# CLAUDE.md · contexto del proyecto OpoNota (antes OpoTest)

Este archivo es la memoria compartida del proyecto. Lo usan los dos socios, cada uno con su propio Claude. Léelo antes de tocar nada y actualízalo cuando se tome una decisión o se cierre una tarea importante.

## Qué es

Web de tests de oposiciones. Su diferencia frente a OpositaTest y similares es que **cada pregunta va verificada contra el texto consolidado del BOE**, cita su artículo exacto y enlaza a él.

**Modelo de precio: pago único por oposición, sin suscripción.**

Estructura de planes acordada (24/11/2026): precio por oposición y planes por niveles, donde la informática y los psicotécnicos son un extra pequeño para que compense coger el completo. Madrid: Legislación (temas 1-15) → Completo (+ ofimática). Estado: Teoría (temas 1-20) → Teoría + Ofimática (hasta el 28) → Completo (+ psicotécnicos). En la base de datos los niveles son `legislacion` < `completo` < `premium` (`tema_maximo_op` en `supabase/8-oposiciones.sql`). Los precios se ponen en Administración > Precios. Precios decididos (24/11/2026) y ya puestos en la tabla `precios`, a la venta hasta el 31/12/2027: Madrid 11,99 € (Legislación) / 14,99 € (Completo); Estado 11,99 € (Teoría) / 14,99 € (Teoría + Ofimática) / 17,99 € (Completo). Los psicotécnicos del Estado ya son 617, con los tipos que salen en los exámenes oficiales de 2024 y 2025 (tablas de caso práctico con 6 preguntas, vocabulario y definiciones, problemas y ecuaciones, probabilidad, series, códigos y orden alfabético), lo que justifica el extra del plan Completo.

Mientras dure la beta no se cobra, así que no corre prisa, pero hay que decidirlo antes de desactivar el modo beta. Tampoco está decidido si habrá temas gratis (propuesta: temas 1 y 16 abiertos) además o en lugar de la prueba de 2 días.

Estrategia: priorizar oposiciones con muchos aspirantes que OpositaTest no cubre, como TCAE de los servicios de salud, Administrativo de Navarra, Auxiliar del Gobierno de Canarias u Osakidetza. Ya aparecen en la portada como «Próximamente», con lista de espera. Las de Madrid, del Estado y del Ayuntamiento de Madrid son las primeras disponibles.

## Marca y diseño

- Nombre: **OpoNota**. Redes: @oponota.tests (TikTok) y @oponota.contacto (Instagram). El dominio sigue pendiente.
- Logotipo e icono originales en `assets/marca/`. Colores del logotipo: tinta petróleo `#052F2E`, verde azulado `#10776D` (acciones), menta `#99F6E4` (acento del anillo) y fondo `#F5F8F7`.
- Tipografía: Barlow Condensed (títulos, menú, botones y etiquetas, en mayúsculas) y Barlow (texto), ambas OFL y servidas desde la propia web (`assets/fuentes/*.woff`, las copia `build.py`). Sin peticiones a servidores de terceros.
- Estilo (según las capturas de referencia del equipo): fondo gris claro, barra superior blanca con el menú en mayúsculas subrayado en verde azulado y un avatar con menú de cuenta, cabeceras oscuras con el anillo del logotipo, títulos de página enormes y tarjetas blancas redondeadas.
- **Temas por bloques (decidido 24/11/2026, para todas las oposiciones)**: en Practicar los temas salen separados por bloques con su título y su botón de marcar o quitar el bloque: Legislación, Ofimática y, si la oposición los tiene, Psicotécnicos. Se definen en `oposiciones.json` con `"bloques": [{"nombre": "Legislación", "desde": 1, "hasta": 15}, …]` (Madrid: 1-15 y 16-21; Estado: 1-20, 21-28 y 29). `build.py` avisa si a una oposición publicada le faltan bloques o le queda algún tema fuera.
- Estructura de la web: portada `#/` (oposiciones, cómo funciona con pregunta de muestra, precio, preguntas frecuentes) y, por oposición, páginas `#/o/<id>/<sección>`: inicio (hoy, resumen, temas débiles), `practicar`, `simulacros` (tarjetas y evolución de notas), `progreso`, `temario`, `examen` y `admin`.
- El precio de la portada sale de `precio.json`. Mientras `importe` esté vacío o la web esté en modo pruebas, se muestra «Gratis».

## Stack

- Una sola página: `template.html` (HTML, CSS y JS sin dependencias salvo el cliente de Supabase). `build.py` la rellena con `oposiciones.json` y genera `web/index.html`. **No edites `web/` a mano.**
- **Supabase**: auth, tabla `preguntas` con RLS (solo se ven con sesión y según el plan, por oposición), `progreso` sincronizado, `compras`, visitas, errores y funciones de administración. SQL en `supabase/` (orden en `INSTRUCCIONES.txt`). Modo beta en `ajustes.modo_beta`.
- **Stripe**: Stripe Checkout. La función `crear-pago` (`supabase/crear-pago/index.ts`, con JWT) crea la sesión de pago con el precio de la tabla `precios` (`supabase/9-pagos.sql`; se edita en Administración > Precios) y la función `stripe-webhook` (sin JWT, firma de Stripe) guarda la compra en `compras` con el plan, la oposición y la duración de los metadatos. Las dos están desplegadas en Supabase. El endpoint del webhook ya está creado en el entorno de prueba de Stripe (OPONOTA, `we_1Uf6VyDnbPrJadjoo579ciiL`). Los secretos `STRIPE_SECRET_KEY` y `STRIPE_WEBHOOK_SECRET` ya están en Supabase. **Stripe Managed Payments** (decidido 24/11/2026): Stripe hace de vendedor y gestiona el IVA de cada país a cambio de un 3,5 % extra sobre la comisión de la tarjeta. Por eso `crear-pago` usa la versión `2025-03-31.basil` de la API, el código fiscal `txcd_20060058` (formación online de autoestudio) y `tax_behavior: "inclusive"`: los precios de la tabla llevan el IVA incluido (11,99 € es lo que paga el cliente). En modo pruebas solo los administradores ven los planes y pueden pagar, para probar con tarjetas de prueba; cuando se cobre de verdad hay que crear otro webhook en modo real. Los Payment Links de `pagos.json` solo se usan si falla la función.
- **Entrar con Google**: botón en el diálogo de cuenta con `signInWithOAuth`. Solo se muestra si Google está activado en Supabase (lo comprueba en `/auth/v1/settings`). Falta crear el cliente OAuth en Google Cloud y activarlo en Supabase (pasos en `INSTRUCCIONES.txt`).
- **Cloudflare Pages** (desde el 24/11/2026): proyecto `oponota` en la cuenta de Cloudflare del equipo («Eduduone99@gmail.com's Account», los dos socios tienen acceso), en producción en https://oponota.pages.dev. Se compila con `python3 build.py https://oponota.pages.dev/`. Cada push a `main` se publica solo (sin comando de compilación; publica la carpeta `web`). El plan gratis permite 500 publicaciones al mes y visitas sin límite, pero aun así agrupad los cambios en pocos push. `web/_headers` (lo copia `build.py` de `assets/_headers`) pone las cabeceras. El repositorio está en la organización de GitHub `oponota` (https://github.com/oponota/opotest; la dirección antigua alexvaamondeginzo/opotest redirige) y la app de Cloudflare solo tiene acceso a ese repositorio. Es público: **nunca subas claves secretas**, y ten en cuenta que los bancos de preguntas (`all.json`, `bancos/`, `supabase/p0*.sql`) son visibles para cualquiera; ahora que Cloudflare no limita por colaborador, se podría volver a hacer privado. Netlify ya no se usa (`netlify.toml` sobra), pero https://oponota.netlify.app y https://opomadridprueba.netlify.app siguen en línea con versiones viejas: ver pendientes.
- **Formularios**: «Reportar error» y «Lista de espera» se guardan en Supabase (tablas `reportes` y `lista_espera`, `supabase/10-formularios.sql`, ya aplicado) con las funciones `enviar_reporte` y `apuntar_lista_espera`, y se ven en el panel de administración. Netlify Forms queda solo de reserva si falla Supabase.
- **Preguntas en el navegador**: se guardan en `localStorage` y solo se vuelven a descargar si cambia la huella `version_preguntas(op)` (respeta la RLS). Así se gasta poca transferencia de Supabase (el plan gratis da 5 GB al mes).
- Progreso en `localStorage` (`auxcm-v2`) con formato `{ops:{<oposicion>:{t,wrong,sims,marks}}, done, days, goal}` y copia en Supabase.
- **Funciones en pruebas (solo administradores)**: bloque «En pruebas» en el inicio de cada oposición (`#lab` y funciones `lab*` al final de `template.html`): repaso espaciado de fallos a 1, 3 y 7 días (se guarda aparte, en `oponota-repaso`, solo en el navegador), nota estimada sobre 50 con −1/3, comparativa anónima (función `percentil_aciertos`, `supabase/11-comparativa.sql`), plan de hoy, práctica por ley y buscador, modo oscuro (`oponota-tema`) y aplicación instalable y sin conexión (`assets/manifest.webmanifest` y `assets/sw.js`; el service worker solo se registra para administradores). Para abrirlas a todos basta con quitar la condición `ACC.admin` de `labRender`, `labRecord` y `beforeinstallprompt`.
- **Páginas para Google**: `seo_build.py` (lo llama `build.py`) genera `web/test-<oposición>.html` con temario, examen, plazas y planes de cada oposición disponible (sin preguntas), más `sitemap.xml` y `robots.txt`. Para una oposición nueva, añade su nombre de página en `SLUGS` y el enlace en el pie de `template.html`. Cuando haya dominio propio, dad de alta el `sitemap.xml` en Google Search Console.
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
- Banco del Ayuntamiento de Madrid (`aux-ayto-mad`, **3 opciones a/b/c**): las nuevas en `ayto/nNN.json` con formato `[tema, enunciado, correcta, [2 incorrectas], ref, expl]`; `ayto/montar.py` las junta con las reutilizadas de Madrid y del Estado (reduce las de 4 opciones a 3 eligiendo los distractores para no dejar pistas de longitud), reparte la posición de la correcta al 33 % y escribe `bancos/aux-ayto-mad.json`. `herramientas/analizar.py` y `estrategias.py` ya admiten cualquier número de opciones. Para cargarlo solo, sin recargar todo el banco: `supabase/12-preguntas-aux-ayto-mad.sql`.
- Al añadir una oposición: entrada en `oposiciones.json` (temario, **bloques**, sims, planes, enlaces), banco en `bancos/<id>.json`, y en `supabase/8-oposiciones.sql` añadirla al `case` de la política RLS y a `tema_maximo_op`. Después, `make_sql.py` y `build.py`.

## Reglas de calidad (obligatorias)

1. Toda pregunta se comprueba contra el texto consolidado vigente del BOE o del boletín autonómico antes de publicarla. Si no se ha comprobado, no entra.
2. Ninguna pista en la forma. Comprueba con `python3 herramientas/analizar.py <banco>` y `herramientas/estrategias.py` después de añadir preguntas:
   - la correcta debe ser la más larga, la 2.ª, la 3.ª y la más corta en torno al 25 % cada una;
   - ninguna estrategia tonta («la más larga sin absolutos», etc.) debe pasar del 35 %;
   - los absolutos («siempre», «nunca», «solo») tienen que aparecer también en respuestas correctas.
   Medición actual: Madrid, la más larga es la correcta en un 26 % y la mejor estrategia tonta acierta un 34 %. Estado, 38 % contando empates (los psicotécnicos tienen muchas opciones numéricas de igual longitud; con desempate al azar, 22 %) y 32 %. Ayuntamiento (3 opciones, azar 33 %): la más larga es la correcta en un 38 % y la mejor estrategia tonta acierta un 38 %; con 3 opciones el equivalente del 35 % es en torno al 43 %.
3. Sin distractores de relleno («Ninguna», opciones absurdas). Los distractores son plazos, órganos o mayorías cercanos al correcto, con plazos por encima y por debajo del real.
4. Reparto equilibrado entre temas, como piden las bases de cada convocatoria (los simulacros usan `equilibrar` y `cupos`).
5. No usar temarios de academias (tienen derechos de autor). Solo programa oficial, legislación y exámenes oficiales.

## Convocatorias disponibles

- **Auxiliar Administrativo C2 de la Comunidad de Madrid** (`aux-cm`). Orden 1628/2026, BOCM n.º 165 de 13/07/2026, con 673 plazas de acceso libre. Primer ejercicio: 40 preguntas más 5 de reserva, 45 min, temas 1 a 15. Segundo ejercicio: 30 preguntas más 5 de reserva, 35 min, ofimática (temas 16 a 21, Windows 11 y Microsoft 365). Cada ejercicio se puntúa de 0 a 50 y se supera con 25; un error resta 1/3. Examen previsto en junio de 2027.
- **Auxiliar Administrativo del Estado C2** (`aux-age`). Última convocatoria: BOE-A-2025-26262, con 1.700 plazas libres. La OEP 2026 está aprobada (RD 387/2026), pero aún no hay convocatoria. Ejercicio único de 90 minutos:
  - 1.ª parte: 30 preguntas del bloque I (temas 1 a 16) y 30 psicotécnicos (tema 29 en la web);
  - 2.ª parte: 50 preguntas del bloque II (temas 17 a 28);
  - cada parte se puntúa de 0 a 50, hay que sacar 25 en cada una y un error resta 1/3.

- **Auxiliar Administrativo del Ayuntamiento de Madrid** (`aux-ayto-mad`). Bases específicas en el BOAM n.º 9.128, de 29/04/2022; última convocatoria con 256 plazas y examen el 22/11/2025. La OEP 2026 aún no está convocada (por eso se eligió: demanda alta y sin examen cercano). Ejercicio único con dos partes:
  - teoría: 70 preguntas de los temas 1 a 20 en 70 minutos (simulacro `ayto-teoria`);
  - práctica: 20 preguntas de Word y Excel (temas 21 y 22) en 40 minutos (simulacro `ayto-practica`);
  - 3 opciones (a, b, c), un error resta 1/3 y hay que sacar al menos la mitad en cada parte.

## Estado y pendientes

- [x] Banco de Madrid: 1.265 preguntas de los 21 temas, con distractores reescritos contra las pistas de forma. Las nuevas se escriben en `madrid/nNN.json` (mismo formato que `age/nNN.json`) y se añaden con `python3 madrid/anadir.py madrid/nNN.json`, que reparte la posición de la correcta sin tocar las publicadas.
- [x] Banco del Estado: 1.984 preguntas. 795 vienen de Madrid, 572 son nuevas comprobadas con el BOE y 617 son psicotécnicos generados por código (`age/psico.py`; los verbales, revisados a mano).
- [x] Banco del Ayuntamiento de Madrid (24/11/2026): 1.128 preguntas de 3 opciones. 432 son nuevas comprobadas con el BOE (CE, LBRL, TRLRHL, Ley 22/2006 de Capitalidad y Régimen Especial de Madrid y Ley 31/1995) y 696 reutilizadas de Madrid y del Estado (Leyes 39 y 40/2015, LCSP, TREBEP, LO 3/2007 y ofimática). Publicado en la web, cargado en Supabase, con planes Legislación (temas 1-20) y Completo (+ Word y Excel) a 11,99 y 14,99 € en `precios` (**provisionales, por decidir**). `tema_maximo_op` ya lo incluye.
  - Falta: los temas 11, 12, 18, 19 y 20 son flojos (13, 8, 10, 12 y 9 preguntas) porque dependen de normas municipales que no están en el BOE: Reglamento Orgánico del Gobierno y de la Administración (ROGA), Reglamento Orgánico de los Distritos, Ordenanza de Atención a la Ciudadanía y Administración Electrónica, Código de Buenas Prácticas Administrativas y Ordenanza de Transparencia. Hay que comprobarlas en la sede electrónica del Ayuntamiento (Cibelex, `sede.madrid.es/eli/es-md-01860896/...`; el ROGA consolidado es el de 20230215) y añadir sus enlaces en `NORMAS`.
  - Los exámenes oficiales del Ayuntamiento aún no están marcados en el campo `examen`.
- [x] Backend: Supabase con RLS, cuentas, progreso sincronizado, panel de administración y webhook de Stripe.
- [x] Fusión de las dos versiones (pull request #1, ya en `main`). De la versión de Alex se han traído:
  - el enlace al BOE de cada respuesta;
  - marcar preguntas y repasar las marcadas;
  - reportar una pregunta;
  - la lista de espera y su catálogo de oposiciones «Próximamente»;
  - los enlaces a la convocatoria y a los exámenes oficiales;
  - 4 preguntas del tema 4 que no estaban en el banco de Madrid.

  El resto de sus 208 preguntas ya estaba en el banco de Madrid o duplicaba una pregunta existente.
- [x] Precios decididos y puestos en Administración > Precios (ver arriba).
- [x] Pago de prueba completo (24/11/2026): Stripe Checkout → webhook → fila en `compras` (plan Legislación de Madrid).
- [ ] Configurar Google (cliente OAuth) siguiendo `INSTRUCCIONES.txt`.
- [x] Psicotécnicos del Estado ampliados de 139 a 617 (24/11/2026), según los tipos de los exámenes oficiales de 2024 y 2025.
- [x] Temas más cortos del Estado ampliados (24-25/11/2026): 17 (30), 18 (35), 21 (39), 22 (34) y 28 (36).
- [ ] Convertir los exámenes oficiales anteriores en simulacros interactivos (ahora solo se enlazan). Paso intermedio hecho (24/11/2026, solo administradores): en «En pruebas» se puede practicar todo lo que cayó en cada examen oficial con nuestras preguntas marcadas (campo `examen`). Para el simulacro literal hace falta el cuestionario y la plantilla de cada examen en PDF: desde aquí no se pueden descargar enteros (la web de la Comunidad no deja copiarlos). Idea: guardarlos en una tabla aparte `examenes_oficiales` sin acceso directo y servirlos con una función solo para administradores, porque el modo beta abre a todos cualquier oposición nueva de la tabla `preguntas`.
- [x] Enlaces a las normas de Madrid publicadas en el BOE en `NORMAS` (falta el Decreto 21/2002, que no está en el BOE).
- [x] Vigencia revisada (24/11/2026) en el BOE (pestaña «Análisis» de cada texto consolidado) frente a las preguntas del banco, sin cambios necesarios:
  - LCSP: umbrales de regulación armonizada de 2026 (Orden HAC/1517/2025) ya puestos (5.404.000, 216.000 y 140.000 €); Ley 1/2025 (art. 202), RDL 7/2026 y Ley 9/2025 (DA 57), Ley 1/2026 (DA 4) y RDL 40/2026 (DA 59 y 60) no tocan artículos preguntados; el RDL 39/2026, de 17/11/2026, añade la letra j) al art. 211.1 (igualdad retributiva) y un párrafo a los arts. 201 y 212.1, sin cambiar la letra d) que preguntamos. El anteproyecto de Ley Orgánica de Integridad Pública cambiaría los arts. 63.4 y 120.1 a): revisar si se aprueba.
  - LBRL: cambian el art. 25.2 (RDL 7/2026), el 73.3 y la DA 2.ª.7 (LO 1/2025); no hay preguntas de ellos.
  - Ley 1/1983 CM: la Ley 8/2024 añade el capítulo VIII del título IV (arts. 87 a 89, recurridos ante el TC); no hay preguntas de ellos.
  - Ley 29/1998: nota de los Tribunales de Instancia (LO 1/2025) añadida en las preguntas sobre Juzgados.
- [ ] Siguientes oposiciones: Administrativo C1 de Madrid (ya en la portada como «Próximamente») y las de la lista de espera según demanda. El Auxiliar del Ayuntamiento de Madrid ya está publicado (ver arriba).
  - **Administrativo C1 de Madrid (`adm-cm`), primer banco en borrador (24/11/2026, sin publicar)**: `borradores/adm-cm.json` (1.654 preguntas ya comprobadas, reutilizadas de los bancos de Madrid y del Estado y asignadas a los 47 temas de la Orden 1634/2026, BOCM de 14/07/2026) con `borradores/montar_adm_cm.py`, y la configuración propuesta en `borradores/adm-cm-config.json`. Está en `borradores/` y no en `bancos/` porque `build.py` publica cualquier oposición con banco en `bancos/`.
  - Falta antes de publicarla: temas sin preguntas (10 órganos y competencia, 16 potestad sancionadora, 17 expropiación, 19 subvenciones, 29 personal laboral y convenio, 30 contrato de trabajo, 33 sistema tributario, 35 a 37 Ley de Hacienda de Madrid y 39 Plan General de Contabilidad Pública) y flojos (15, 26, 27, 31 y 38); repartir las 51 de la Ley 5/2025 CM entre los temas 34 a 37 según el artículo; preguntas de supuesto práctico para el 2.º ejercicio; y que la web admita simulacros puntuados sobre 30 (ahora todos son sobre 50).
- [x] Páginas legales (`legal_build.py`) rellenadas: titular OPONOTA, email oponota.contacto@gmail.com, fecha 18/10/2026, web https://oponota.netlify.app/, Supabase en Irlanda (eu-west-1), Netlify como alojamiento y lista de espera y avisos de error en la privacidad. Las condiciones de compra no dan precios (cada oposición tendrá el suyo y se mostrará en la web antes de pagar).
- [ ] **ANTES DEL LANZAMIENTO PÚBLICO (recordárselo al socio cuando diga que se lanza la web):**
  - poner NIF y domicilio en `NIF` y `DOMICILIO` de `legal_build.py` (ahora están vacíos y no se muestran);
  - poner como titular el nombre real de la persona o de la sociedad, porque «OPONOTA» no es una persona jurídica y la LSSI pide nombre o denominación social;
  - revisar las páginas legales con un asesor antes de cobrar;
  - añadir a las condiciones de compra el precio y lo que incluye cada oposición cuando esté decidido.
- [x] Proyecto de Netlify renombrado a `oponota`: la web está en https://oponota.netlify.app/ (en la cuenta de Netlify del otro socio). La antigua `opomadridprueba.netlify.app` es una versión vieja: no usarla.
- [x] Emails de cuentas (24/11/2026): SMTP de Brevo en Supabase (smtp-relay.brevo.com:587, usuario c4d639001@smtp-brevo.com, remitente oponota.contacto@gmail.com), plantillas en español puestas (las de `supabase/plantillas-email/`), «Confirm email» activado y límite de 100 emails por hora. Más adelante: verificar el dominio propio en Brevo (o pasar a Gmail).
- [x] Nombre de la marca: OpoNota. Rediseño de la web con sus colores, portada con varias secciones y panel por oposición.
- [x] Web en Cloudflare Pages (24/11/2026): organización de GitHub `oponota` creada (el otro socio, invitado como Owner), repositorio transferido, proyecto `oponota` conectado a `main` y dirección cambiada a https://oponota.pages.dev en `build.py`, `legal_build.py` (alojamiento Cloudflare, Inc.) y Supabase (Site URL y Redirect URLs).
- [ ] Comprar el dominio (idea: oponota.com) en Cloudflare > Domains > Register y añadirlo en Pages > Custom domains. Después, cambiar la dirección otra vez (build.py, legal_build.py, Supabase) y dar de alta el sitemap en Google Search Console.
- [ ] Quitar las webs viejas de Netlify o dejar en ellas un aviso que lleve a https://oponota.pages.dev, para que no haya varias versiones (comprobado el 24/11/2026: las dos siguen en línea). https://oponota.netlify.app está en la cuenta de Netlify de Alex; https://opomadridprueba.netlify.app, en la de Edu. No borrar nada sin que lo confirme el dueño.
- [ ] Decidir si el repositorio vuelve a ser privado (GitHub > Settings > General > Change visibility). Nada de la web depende de que sea público y Cloudflare Pages publica igual desde repositorios privados; después, comprobar que el siguiente push se publica.
- [ ] Pasar Supabase a Pro (25 $/mes) cuando se empiece a cobrar: copias de seguridad diarias y sin pausa por inactividad.

## En curso

Quién está trabajando ahora en qué. Apúntate antes de empezar algo grande (sobre todo si toca `template.html` o la base de datos) y bórrate al terminar.


## Registro de cambios

Una línea por cambio importante, la más reciente arriba: fecha · quién · qué.

- 24/11/2026 · Alex · Nueva oposición **Auxiliar Administrativo del Ayuntamiento de Madrid** (`aux-ayto-mad`): 1.128 preguntas de 3 opciones (`ayto/`), entrada en `oposiciones.json` con bloques y simulacros, normas nuevas en `NORMAS` (Ley 22/2006, TRLRHL, Ley 31/1995), teclado sin la D cuando hay 3 opciones, página para Google, `tema_maximo_op`, preguntas y precios en Supabase, y pruebas de 3 opciones en `probar_web.py`.
- 24/11/2026 · Alex · Pago de prueba con Stripe funcionando: permiso `select` de `precios` para `service_role`; en `crear-pago`, Managed Payments (código fiscal, API `2025-03-31.basil`, IVA incluido en el precio) y errores de Stripe devueltos con CORS para que la web los muestre.
- 24/11/2026 · Edu · Practicar: temas separados por bloques (Legislación, Ofimática, Psicotécnicos) con botón por bloque; campo `bloques` en `oposiciones.json`, aviso en `build.py` y prueba en `probar_web.py`.
- 24/11/2026 · Edu · Quitada de las tarjetas de planes la frase «Por solo X € más que…, añades…» (y el campo `plus` de `oposiciones.json`). Precios comprobados en la tabla `precios`: sin cambios.
- 24/11/2026 · Edu · App de Claude instalada en la organización `oponota` (los Claude ya pueden subir). Revisada la mudanza: no quedan referencias al repositorio antiguo; las webs de Netlify siguen en línea.
- 24/11/2026 · Alex · Web pasada a Cloudflare Pages (https://oponota.pages.dev): organización de GitHub `oponota`, repositorio transferido, proyecto de Pages conectado a `main`, direcciones cambiadas y URL de Supabase actualizadas.
- 24/11/2026 · Edu · En pruebas (administradores): practicar lo que cayó en cada examen oficial (6 exámenes de Madrid).
- 24/11/2026 · Edu · Primer banco en borrador del Administrativo C1 de Madrid (`borradores/`, sin publicar). Propuesta de textos de portada y email de bienvenida en un documento para revisar.
- 24/11/2026 · Edu · Vigencia de la LCSP, la LBRL y la Ley 1/1983 CM revisada en el BOE: ninguna pregunta afectada (detalle en «Estado y pendientes»).
- 24/11/2026 · Edu · Páginas para Google por oposición (`seo_build.py`), `sitemap.xml`, `robots.txt` y enlaces en el pie.
- 24/11/2026 · Edu · Pruebas automáticas de la web en `pruebas/probar_web.py` (Supabase simulado, escritorio y móvil, práctica, simulacros, progreso, funciones de administrador), añadidas a la skill `publicar-web`.
- 24/11/2026 · Edu · Corregido: al responder no se marcaba en verde la correcta ni en rojo la elegida (el código contaba también las opciones de la pregunta de muestra de la portada). Funciones en pruebas solo para administradores (repaso 1/3/7, nota estimada, comparativa, plan de hoy, práctica por ley y buscador, modo oscuro, instalable). Nueva función `percentil_aciertos` en Supabase.
- 24/11/2026 · Edu · Temas flojos de Madrid ampliados (+41, comprobadas en el BOE): tema 4 (50, Código Civil arts. 1-7), 13 (47, Ley 15/2022), 14 (41, Leyes 39 y 40/2015 de administración electrónica) y 15 (42, registro y documentos de la Ley 39/2015). Nuevo `madrid/anadir.py`.
- 24/11/2026 · Edu · Vigencia: nota de la LO 1/2025 (Juzgados → Secciones de los Tribunales de Instancia desde el 31/12/2025) en las 7 preguntas de la Ley 29/1998 que hablan de Juzgados, en los dos bancos y en Supabase.
- 25/11/2026 · Edu · Temas 17, 18, 21, 22 y 28 del Estado ampliados (+65, RD 951/2005, RD 208/1996 y LO 4/2001 comprobados en el BOE). Cargadas en Supabase 4 preguntas de Madrid (tema 4) que faltaban. Permiso de lectura de `precios` (la web no podía leerlos). Enlaces a las normas de Madrid en `NORMAS`.
- 24/11/2026 · Edu · Psicotécnicos ajustados a los exámenes oficiales de 2024-2025: fuera conteo y pares de códigos (no salen); nuevas tablas de caso práctico (archivo, cursos, claves de registro), definiciones, ecuaciones, signos, probabilidad y códigos binarios. Total 617.
- 24/11/2026 · Edu · Psicotécnicos del Estado: de 139 a 453 (tablas de datos, ordenación alfabética y de fechas, claves, pares de códigos, series difíciles, problemas y 51 verbales nuevos). Los enunciados con líneas «a | b» se ven como tabla. `age/montar.py` ya no cambia el orden de las opciones de las preguntas publicadas.
- 24/11/2026 · Edu · Instrucciones compartidas para los dos Claude en `.claude/skills/` (añadir preguntas, publicar la web, cambios en Supabase) y estas dos secciones.
- 24/11/2026 · Edu · Registro: aviso de «ya existe una cuenta» y borradas las cuentas de prueba (quedan las 3 de administrador).
- 24/11/2026 · Edu · Emails de cuentas con Brevo, plantillas en español y «Confirm email» activado.
- 24/11/2026 · Edu · Formularios en Supabase, descarga de preguntas solo si cambian y web preparada para Cloudflare Pages.
- 24/11/2026 · Edu · Planes por niveles y precios (Madrid 11,99/14,99 €; Estado 11,99/14,99/17,99 €).
- 24/11/2026 · Edu · Pago con Stripe Checkout (tabla `precios`, funciones `crear-pago` y `stripe-webhook`) y botón de entrar con Google.
- 24/11/2026 · Edu · Páginas legales rellenadas (titular OPONOTA, email, fecha, web).
- 23-24/11/2026 · Edu · Rediseño según las capturas de referencia (Barlow, páginas por oposición, menú de cuenta) y mejoras del registro (repetir contraseña, requisitos, ojo).

## Accesos del equipo

Los dos socios tienen acceso a Supabase, Stripe, Netlify y Cloudflare. Brevo (plan gratis, un solo usuario) se usa con la cuenta común oponota.contacto@gmail.com. GitHub: el repositorio está en la organización «oponota», con los dos socios como Owner, y la app de Claude instalada en la organización (24/11/2026) para que los Claude puedan subir cambios. Cada socio conecta en su Claude los conectores con su propio usuario. Las contraseñas y claves las pega siempre la persona en el panel de cada servicio: ningún Claude las guarda ni las pide en el chat.

## Forma de trabajar

- Para las tareas que se repiten hay instrucciones compartidas en `.claude/skills/`: `anadir-preguntas`, `publicar-web` y `cambios-supabase`. Síguelas.

- Se trabaja directamente sobre `main`, sin ramas. **Antes de empezar, haz `git pull`** para traer lo que haya subido el otro socio, y súbelo en cuanto termines cada cambio, para no pisaros. Si `git push` falla porque el otro ha subido algo, haz `git pull`, resuelve los conflictos y vuelve a subir: nunca `git push --force`.
- Antes de subir: `python3 build.py <url>` (debe decir «preguntas visibles en la web: 0»), `python3 pruebas/probar_web.py` (debe decir «TODO BIEN»), `python3 make_sql.py` si cambió algún banco, y el análisis de pistas si añadiste preguntas.
- No subir nunca claves secretas (Stripe, clave de servicio de Supabase) al repositorio. La clave publicable de Supabase sí puede ir en `build.py`.
- Al terminar una tarea, actualiza la sección «Estado y pendientes» de este archivo.
