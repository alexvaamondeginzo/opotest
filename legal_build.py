import os
OUT = "web"
os.makedirs(OUT, exist_ok=True)

STYLE = """
:root{--bg:#f4f5f8;--surface:#fff;--ink:#1a2233;--muted:#5b6478;--line:#dde1ea;--accent:#c2410c;--mark:#fff4d6;
--body:system-ui,-apple-system,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif;color-scheme:light}
@media (prefers-color-scheme:dark){:root:not([data-theme="light"]){--bg:#11151f;--surface:#1a2030;--ink:#e7eaf2;--muted:#a0a8bb;--line:#2c3447;--accent:#ff5c74;--mark:#4a3a10;color-scheme:dark}}
:root[data-theme="dark"]{--bg:#11151f;--surface:#1a2030;--ink:#e7eaf2;--muted:#a0a8bb;--line:#2c3447;--accent:#ff5c74;--mark:#4a3a10;color-scheme:dark}
*{box-sizing:border-box}html,body{margin:0}
body{background:var(--bg);color:var(--ink);font:16px/1.65 var(--body)}
main{max-width:720px;margin:0 auto;padding:28px 16px 64px}
a{color:var(--accent)}
.back{font-size:14px}
h1{font-size:clamp(26px,5vw,34px);line-height:1.15;margin:16px 0 4px;text-wrap:balance}
h2{font-size:19px;margin:28px 0 6px;text-wrap:balance}
.updated{color:var(--muted);font-size:14px;margin:0 0 20px}
mark{background:var(--mark);color:inherit;padding:0 3px;border-radius:3px}
table{width:100%;border-collapse:collapse;font-size:14px;margin:8px 0}
th,td{text-align:left;border-bottom:1px solid var(--line);padding:8px 6px;vertical-align:top}
.wrapt{overflow-x:auto}
footer{margin-top:40px;border-top:1px solid var(--line);padding-top:14px;font-size:13px;color:var(--muted);display:flex;gap:14px;flex-wrap:wrap}
"""

def page(fname, title, body):
    html = f"""<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{title} · OpoTest</title>
<meta name="robots" content="noindex">
<link rel="icon" type="image/png" href="logo-32.png">
<style>{STYLE}</style>
</head>
<body>
<main>
<a class="back" href="index.html">← Volver al test</a>
<h1>{title}</h1>
<p class="updated">Última actualización: <mark>[FECHA DE PUBLICACIÓN]</mark></p>
{body}
<footer><a href="aviso-legal.html">Aviso legal</a><a href="condiciones.html">Condiciones de compra</a><a href="privacidad.html">Política de privacidad</a><a href="cookies.html">Política de cookies</a></footer>
</main>
</body>
</html>
"""
    open(os.path.join(OUT, fname), "w").write(html)

TITULAR = """<ul>
<li><strong>Titular:</strong> <mark>[TU NOMBRE Y APELLIDOS]</mark></li>
<li><strong>NIF:</strong> <mark>[TU NIF]</mark></li>
<li><strong>Domicilio:</strong> <mark>[TU DIRECCIÓN POSTAL COMPLETA]</mark></li>
<li><strong>Email de contacto:</strong> <mark>[TU EMAIL DE CONTACTO]</mark></li>
<li><strong>Sitio web:</strong> opomadridprueba.netlify.app</li>
</ul>"""

page("aviso-legal.html", "Aviso legal", f"""
<h2>1. Datos identificativos</h2>
<p>En cumplimiento del artículo 10 de la Ley 34/2002, de servicios de la sociedad de la información y de comercio electrónico (LSSI-CE), se informa de los datos del titular de este sitio web:</p>
{TITULAR}

<h2>2. Objeto</h2>
<p>Este sitio ofrece tests de práctica para preparar oposiciones, empezando por las pruebas selectivas de acceso al Cuerpo de Auxiliares de Administración General de la Comunidad de Madrid. Es una herramienta independiente: <strong>no es material oficial</strong> y no tiene relación con ninguna administración pública ni con los tribunales calificadores.</p>

<h2>3. Condiciones de uso</h2>
<p>El acceso es libre y gratuito. La creación de una cuenta es voluntaria y requiere tener 14 años o más. La persona usuaria se compromete a hacer un uso adecuado del sitio, a no intentar acceder a cuentas ajenas y a no realizar acciones que dañen o sobrecarguen el servicio.</p>

<h2>4. Contenidos y responsabilidad</h2>
<p>Las preguntas se elaboran a partir de los textos consolidados publicados en el Boletín Oficial del Estado y en los boletines oficiales autonómicos, y se revisan con cuidado. Aun así, pueden contener errores u omisiones, y las normas pueden cambiar. Ante cualquier duda prevalecen siempre el texto oficial de la norma y las bases de la convocatoria. El titular no se responsabiliza de los resultados obtenidos en el proceso selectivo.</p>
<p>Si detectas un error, puedes comunicarlo en <mark>[TU EMAIL DE CONTACTO]</mark> y se corregirá lo antes posible.</p>

<h2>5. Propiedad intelectual</h2>
<p>La selección, redacción y explicación de las preguntas, así como el diseño y el código del sitio, pertenecen a su titular. Queda prohibida su reproducción, distribución o transformación con fines comerciales sin autorización. Los textos legales citados son de dominio público.</p>

<h2>6. Enlaces externos</h2>
<p>Este sitio puede enlazar a páginas de terceros (por ejemplo, el BOE o un formulario de opinión). El titular no es responsable de sus contenidos ni de sus políticas de privacidad.</p>

<h2>7. Legislación aplicable</h2>
<p>Este aviso legal se rige por la legislación española.</p>
""")

page("condiciones.html", "Condiciones de compra", f"""
<h2>1. Quién vende</h2>
{TITULAR}

<h2>2. Qué se compra</h2>
<p>Acceso a un servicio digital de preguntas tipo test para preparar oposiciones. Cada plan da acceso a la oposición para la que se compra (por ejemplo, Auxiliar Administrativo de la Comunidad de Madrid). Es un material de práctica independiente, sin relación con ninguna administración ni con los tribunales.</p>
<div class="wrapt"><table>
<thead><tr><th>Plan</th><th>Precio (IVA incluido)</th><th>Incluye</th></tr></thead>
<tbody>
<tr><td>Legislación</td><td>14,99 €</td><td>Temas 1 a 15, simulacros del primer ejercicio, modo práctica y repaso de fallos.</td></tr>
<tr><td>Completo</td><td>24,99 €</td><td>Los 21 temas, simulacros de los dos ejercicios, modo práctica y repaso de fallos.</td></tr>
</tbody></table></div>
<p>Es un <strong>pago único</strong>, no una suscripción: no hay cargos automáticos posteriores. El acceso dura hasta el <strong>31 de diciembre de 2027</strong>. Si compras un plan superior después de otro, se cobra su precio completo.</p>

<h2>3. Prueba gratis</h2>
<p>Al crear una cuenta tienes 2 días de acceso completo gratis, sin dar ninguna forma de pago. La prueba es una por persona y por email; no se admiten emails temporales. Al terminar, el acceso a las preguntas se interrumpe hasta que compres un plan. Tu progreso se mantiene.</p>

<h2>4. Pago</h2>
<p>El pago se hace en la página segura de Stripe con los medios que esta ofrezca (tarjeta, Apple Pay, Google Pay...). El plan se activa automáticamente en tu cuenta en cuanto Stripe confirma el pago, normalmente en segundos. Recibirás el justificante por email.</p>

<h2>5. Derecho de desistimiento</h2>
<p>Al comprar, solicitas expresamente acceder al contenido digital de inmediato y aceptas que, una vez empezado el acceso, pierdes el derecho de desistimiento de 14 días, conforme al artículo 103.m) del texto refundido de la Ley General para la Defensa de los Consumidores y Usuarios. Si hay un problema técnico que te impida usar lo que has comprado y no lo solucionamos, te devolveremos el importe.</p>

<h2>6. Uso del servicio</h2>
<p>La cuenta es personal. No está permitido compartirla, copiar de forma masiva las preguntas ni redistribuirlas. Podemos suspender las cuentas que incumplan estas condiciones.</p>

<h2>7. Contenido</h2>
<p>Las preguntas se revisan con los textos legales vigentes, pero pueden contener errores o quedar desactualizadas por cambios normativos. Ante cualquier duda, manda siempre el texto oficial. Si ves un error, avísanos y lo corregiremos.</p>

<h2>8. Menores</h2>
<p>Para comprar debes ser mayor de edad o contar con el consentimiento de tus padres o tutores.</p>

<h2>9. Reclamaciones y legislación aplicable</h2>
<p>Puedes escribirnos a <mark>[TU EMAIL DE CONTACTO]</mark>. Estas condiciones se rigen por la ley española. Como consumidor, también puedes acudir a los servicios de consumo de tu comunidad autónoma.</p>
""")

page("privacidad.html", "Política de privacidad", f"""
<p>Esta política explica qué datos personales se tratan en este sitio, para qué y qué derechos tienes, conforme al Reglamento (UE) 2016/679 (RGPD) y a la Ley Orgánica 3/2018 (LOPDGDD).</p>

<h2>1. Responsable del tratamiento</h2>
{TITULAR}

<h2>2. Qué datos tratamos</h2>
<ul>
<li><strong>Si visitas la web sin cuenta:</strong> no tratamos datos personales. Para hacer tests hay que crear una cuenta.</li>
<li><strong>Si creas una cuenta:</strong> tu email, tu contraseña (que se guarda cifrada y que nadie puede leer), la fecha en que aceptaste esta política, tu declaración de tener 14 años o más, tu progreso en el test (aciertos por tema y preguntas falladas) y la fecha de inicio de tu prueba gratis. Para que la prueba gratis sea una por persona, conservamos una versión normalizada de tu email junto a esa fecha.</li>
<li><strong>Si compras un plan:</strong> el plan comprado, el importe, la fecha, tu email y el identificador del pago. El pago lo gestiona Stripe: nosotros nunca vemos ni guardamos los datos de tu tarjeta.</li>
<li><strong>Si rellenas el formulario de opinión:</strong> los datos que tú decidas escribir en él, como tu email y tus respuestas.</li>
<li><strong>Datos técnicos:</strong> el proveedor de alojamiento registra de forma automática datos como la dirección IP para la seguridad y el funcionamiento del servicio.</li>
</ul>

<h2>3. Para qué los usamos y con qué base legal</h2>
<div class="wrapt"><table>
<thead><tr><th>Finalidad</th><th>Base legal</th></tr></thead>
<tbody>
<tr><td>Crear y gestionar tu cuenta, dar acceso a la prueba gratis y al plan que compres, y guardar y sincronizar tu progreso entre dispositivos.</td><td>Ejecución del contrato que solicitas al registrarte o al comprar (art. 6.1.b RGPD).</td></tr>
<tr><td>Evitar que una misma persona use varias pruebas gratis o emails temporales.</td><td>Interés legítimo en evitar abusos del servicio (art. 6.1.f RGPD).</td></tr>
<tr><td>Conservar los datos de las compras.</td><td>Cumplimiento de obligaciones legales contables y fiscales (art. 6.1.c RGPD).</td></tr>
<tr><td>Atender tus opiniones y avisos de errores, y avisarte del lanzamiento del temario completo si lo pides en el formulario.</td><td>Tu consentimiento (art. 6.1.a RGPD), que puedes retirar cuando quieras.</td></tr>
<tr><td>Garantizar la seguridad técnica del sitio.</td><td>Interés legítimo en proteger el servicio (art. 6.1.f RGPD).</td></tr>
</tbody></table></div>
<p>No usamos tus datos para publicidad, no los vendemos y no tomamos decisiones automatizadas que te afecten.</p>

<h2>4. Cuánto tiempo los guardamos</h2>
<p>Los datos de la cuenta, mientras esté activa. Si la eliminas (puedes hacerlo tú en «Mi cuenta»), se borran de forma definitiva tu cuenta y tu progreso. Se conservan, sin vincular a ninguna cuenta, el registro de la prueba gratis usada (email normalizado y fecha) para impedir que se repita, y los datos de las compras durante los plazos que exige la normativa fiscal (en general, 6 años). Los datos del formulario, hasta que pidas la baja o retires tu consentimiento.</p>

<h2>5. Quién trata los datos por nuestra cuenta</h2>
<p>Para prestar el servicio usamos proveedores que actúan como encargados del tratamiento, con contrato que les obliga a proteger los datos:</p>
<ul>
<li><strong>Supabase</strong> (autenticación y base de datos de las cuentas). Los datos se alojan en servidores de la Unión Europea: <mark>[REGIÓN QUE ELIJAS AL CREAR EL PROYECTO, p. ej. Fráncfort]</mark>.</li>
<li><strong><mark>[Netlify u otro proveedor de alojamiento]</mark></strong> (alojamiento de la web). Puede implicar transferencias a Estados Unidos, amparadas en el Marco de Privacidad de Datos UE-EE. UU. o en cláusulas contractuales tipo de la Comisión Europea.</li>
<li><strong>Stripe Payments Europe, Ltd.</strong> (procesamiento de los pagos). Stripe trata los datos de pago como responsable independiente según su propia política de privacidad y puede realizar transferencias internacionales amparadas en cláusulas contractuales tipo.</li>
<li><strong>Google</strong> (formulario de opinión de Google Forms), solo si decides rellenarlo. Se rige también por la política de privacidad de Google.</li>
<li><strong>jsDelivr</strong> (red de distribución desde la que se descarga el código del sistema de cuentas), al cargar la web. No usa cookies y solo recibe los datos técnicos de la conexión.</li>
</ul>
<p>No cedemos tus datos a terceros salvo obligación legal.</p>

<h2>6. Tus derechos</h2>
<p>Puedes ejercer tus derechos de acceso, rectificación, supresión, oposición, limitación del tratamiento y portabilidad escribiendo a <mark>[TU EMAIL DE CONTACTO]</mark>. También puedes retirar tu consentimiento en cualquier momento, sin que afecte a lo tratado antes.</p>
<p>Si consideras que no hemos tratado bien tus datos, puedes presentar una reclamación ante la Agencia Española de Protección de Datos (<a href="https://www.aepd.es">www.aepd.es</a>).</p>

<h2>7. Menores de edad</h2>
<p>Para crear una cuenta hay que tener 14 años o más, conforme al artículo 7 de la LOPDGDD.</p>

<h2>8. Cambios en esta política</h2>
<p>Si cambia algo importante, lo indicaremos en esta página con su fecha de actualización.</p>
""")

page("cookies.html", "Política de cookies", """
<p>Esta web <strong>no usa cookies de publicidad, de análisis ni de seguimiento</strong>. Solo guarda en tu navegador la información técnica imprescindible para funcionar. Este tipo de almacenamiento está exento de consentimiento según el artículo 22.2 de la LSSI-CE, pero te informamos de él con transparencia.</p>

<h2>Qué se guarda en tu navegador</h2>
<div class="wrapt"><table>
<thead><tr><th>Nombre</th><th>Tipo</th><th>Para qué sirve</th><th>Duración</th></tr></thead>
<tbody>
<tr><td>auxcm-v2</td><td>Almacenamiento local, propio</td><td>Guarda tu progreso: aciertos por tema y preguntas falladas.</td><td>Hasta que lo borres desde la web o desde tu navegador.</td></tr>
<tr><td>auxcm-cookies</td><td>Almacenamiento local, propio</td><td>Recuerda que ya has visto el aviso de cookies.</td><td>Hasta que lo borres.</td></tr>
<tr><td>sb-…-auth-token</td><td>Almacenamiento local, del sistema de cuentas (Supabase)</td><td>Mantiene tu sesión iniciada. Solo existe si creas una cuenta y entras.</td><td>Hasta que cierres sesión.</td></tr>
</tbody></table></div>

<h2>Servicios de terceros</h2>
<p>Si pulsas el botón para dar tu opinión, se abre un formulario de Google Forms en el dominio de Google, que puede usar sus propias cookies según su política. Esa página no forma parte de esta web.</p>

<h2>Cómo borrar estos datos</h2>
<p>Puedes borrar tu progreso con el botón «Borrar mi progreso» de la web, o eliminar todos los datos del sitio desde la configuración de privacidad de tu navegador.</p>

<h2>Cambios</h2>
<p>Para saber cuánta gente usa la web, se suma 1 a un contador diario cada vez que se abre la página. No se guarda ninguna cookie ni ningún dato que te identifique (ni IP, ni dispositivo): solo el número total de visitas de cada día.</p>
<p>Si en el futuro se añadieran cookies de análisis o publicidad, se pediría tu consentimiento antes de activarlas y se actualizaría esta página.</p>
""")
print("ok")
