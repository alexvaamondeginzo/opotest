"""Páginas para Google: una página estática por oposición disponible, más sitemap.xml y robots.txt.

La web es una sola página con rutas #/..., que los buscadores apenas indexan. Estas páginas
(web/test-<slug>.html) explican cada oposición con su temario, el examen y los planes, con
enlaces a la web para practicar. NO incluyen ninguna pregunta del banco.

Lo ejecuta build.py al final: seo(site, OPOS, counts_por_op).
"""
import html, json, os, datetime

SLUGS = {
    'aux-cm': 'test-auxiliar-administrativo-comunidad-de-madrid',
    'aux-age': 'test-auxiliar-administrativo-del-estado',
    'aux-ayto-mad': 'test-auxiliar-administrativo-ayuntamiento-de-madrid',
    'aux-canarias': 'test-auxiliar-administrativo-gobierno-de-canarias',
    'adm-cm': 'test-administrativo-comunidad-de-madrid',
}

ESTILO = """
:root{--ink:#052f2e;--teal:#10776d;--mint:#99f6e4;--mint-soft:#e2f7f2;--bg:#f2f3f2;--surface:#fff;--line:#e0e4e3;--muted:#5d6b69;
--cond:"Barlow Condensed","Arial Narrow",system-ui,sans-serif;--body:"Barlow",system-ui,-apple-system,"Segoe UI",Roboto,Arial,sans-serif}
@font-face{font-family:"Barlow";src:url("Barlow-Regular.woff") format("woff");font-weight:400;font-display:swap}
@font-face{font-family:"Barlow";src:url("Barlow-SemiBold.woff") format("woff");font-weight:600;font-display:swap}
@font-face{font-family:"Barlow Condensed";src:url("BarlowCondensed-ExtraBold.woff") format("woff");font-weight:800;font-display:swap}
*{box-sizing:border-box}html,body{margin:0}
body{background:var(--bg);color:var(--ink);font:17px/1.6 var(--body)}
header{background:var(--surface);border-bottom:1px solid var(--line)}
header div,main,footer{max-width:820px;margin:0 auto;padding:0 20px}
header div{display:flex;align-items:center;justify-content:space-between;min-height:68px}
.cab{background:var(--ink);color:#d9ece8}
.cab>div{max-width:820px;margin:0 auto;padding:44px 20px 40px}
h1{font:800 clamp(34px,7vw,58px)/.95 var(--cond);text-transform:uppercase;color:#fff;margin:0 0 14px}
.cab p{margin:0;max-width:60ch}
.datos{display:flex;flex-wrap:wrap;gap:28px;margin-top:26px}
.datos b{display:block;font:800 36px/1 var(--cond);color:#fff}
.datos span{font-size:14px}
h2{font:800 28px/1 var(--cond);text-transform:uppercase;margin:40px 0 12px}
main{padding-bottom:40px}
.tabla{width:100%;border-collapse:collapse;background:var(--surface);border-radius:12px;overflow:hidden}
.tabla th,.tabla td{text-align:left;padding:10px 14px;border-bottom:1px solid var(--line);font-size:15px}
.tabla td.n{text-align:right;color:var(--muted);white-space:nowrap}
.planes{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:14px}
.plan{background:var(--surface);border-radius:14px;padding:18px 20px;border:1.5px solid var(--line)}
.plan b{font:800 22px/1 var(--cond);text-transform:uppercase}
.plan .precio{font:800 34px/1 var(--cond);margin:8px 0}
.plan ul{margin:6px 0 0;padding-left:18px;font-size:15px}
.cta{display:inline-block;background:var(--teal);color:#fff;text-decoration:none;font:600 18px var(--body);padding:14px 26px;border-radius:999px;margin-top:22px}
.cab .cta{background:#fff;color:var(--ink)}
footer{border-top:1px solid var(--line);padding-top:16px;padding-bottom:30px;font-size:14px;color:var(--muted);display:flex;flex-wrap:wrap;gap:16px}
a{color:var(--teal)}
"""


def miles(n):
    return f"{n:,}".replace(',', '.')


def e(t):
    return html.escape(str(t), quote=True)


def pagina(site, op, c, counts):
    slug = SLUGS[op]
    url = site + slug + '.html'
    total = sum(counts.values())
    titulo = f"Test de {c['nombre']}"
    desc = (miles(total) + f" preguntas tipo test de {c['nombre']}, "
            "cada una comprobada en el BOE con su artículo y su explicación. Simulacros con penalización.")
    filas = ''.join(f"<tr><td>Tema {t} · {e(n)}</td><td class=\"n\">{counts.get(str(t), counts.get(t, 0))} preguntas</td></tr>"
                    for t, n in c.get('temario', []))
    planes = ''.join(
        f"<div class=\"plan\"><b>{e(p['nombre'])}</b><div class=\"precio\">{e(p.get('precio',''))} €</div>"
        f"<ul>{''.join('<li>' + e(d) + '</li>' for d in p.get('desc', []))}</ul></div>"
        for p in c.get('planes', []))
    enlaces = ''.join(f"<li><a href=\"{e(l['u'])}\" rel=\"noopener\">{e(l['t'])}</a></li>" for l in c.get('enlaces', []))
    faq = [("¿De dónde salen las preguntas?", "Del programa oficial de la convocatoria y del texto consolidado de cada ley en el BOE. "
            "Cada respuesta cita el artículo exacto y enlaza a él. No usamos temarios de academias."),
           ("¿Hay que pagar una suscripción?", "No. Es un pago único por oposición, sin cargos posteriores. Puedes probarlo gratis antes."),
           ("¿Es material oficial?", "No. OpoNota es una herramienta de práctica independiente, sin relación con ninguna administración. Ante cualquier duda, manda el texto del BOE y las bases de la convocatoria.")]
    faq = [(q, r) for q, r in faq if r]
    ld = {"@context": "https://schema.org", "@type": "FAQPage",
          "mainEntity": [{"@type": "Question", "name": q, "acceptedAnswer": {"@type": "Answer", "text": r}} for q, r in faq]}
    examen = c.get('examenTxt') or 'Por convocar'
    plazas = c.get('plazas')
    return slug, f"""<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{e(titulo)} · OpoNota</title>
<meta name="description" content="{e(desc)}">
<link rel="canonical" href="{e(url)}">
<meta property="og:title" content="{e(titulo)}">
<meta property="og:description" content="{e(desc)}">
<meta property="og:url" content="{e(url)}">
<meta property="og:image" content="{e(site)}og-image.png">
<meta name="theme-color" content="#10776d">
<link rel="icon" type="image/png" sizes="32x32" href="logo-32.png">
<style>{ESTILO}</style>
<script type="application/ld+json">{json.dumps(ld, ensure_ascii=False)}</script>
</head>
<body>
<header><div><a href="./"><img src="oponota.png" alt="OpoNota" width="123" height="30"></a><a href="./#/o/{op}">Practicar</a></div></header>
<section class="cab"><div>
<h1>{e(titulo)}</h1>
<p>{e(c.get('sub',''))}</p>
<div class="datos">
<div><b>{miles(total)}</b><span>preguntas comprobadas</span></div>
<div><b>{len(counts)}</b><span>temas del programa</span></div>
{f'<div><b>{miles(plazas)}</b><span>plazas{" (" + e(c["plazasNota"]) + ")" if c.get("plazasNota") else ""}</span></div>' if plazas else ''}
<div><b>{e(examen)}</b><span>{e(c.get('examenLbl','Examen'))}</span></div>
</div>
<a class="cta" href="./#/o/{op}">Hacer un test gratis</a>
</div></section>
<main>
<h2>Temario</h2>
<p>Programa oficial: {e(c.get('programa',''))}.</p>
<table class="tabla">{filas}</table>
<h2>Cómo es el examen</h2>
<p>{e(c.get('faqExamen',''))}</p>
<p>En OpoNota puedes practicar por temas, repasar tus fallos y hacer simulacros con el mismo número de preguntas, el mismo tiempo y la misma penalización que el examen real.</p>
<h2>Planes</h2>
<div class="planes">{planes}</div>
<a class="cta" href="./#/o/{op}">Empezar a practicar</a>
{f'<h2>Enlaces oficiales</h2><ul>{enlaces}</ul>' if enlaces else ''}
<h2>Preguntas frecuentes</h2>
{''.join(f'<h3>{e(q)}</h3><p>{e(r)}</p>' for q, r in faq)}
</main>
<footer><a href="./">OpoNota</a><a href="aviso-legal.html">Aviso legal</a><a href="privacidad.html">Privacidad</a><a href="cookies.html">Cookies</a><span>Herramienta de práctica independiente, sin relación con ninguna administración.</span></footer>
</body>
</html>
"""


def seo(site, opos, counts_por_op, out='web'):
    hoy = datetime.date.today().isoformat()
    urls = [(site, '1.0')]
    for op, c in opos.items():
        if c.get('proximamente') or op not in SLUGS or not counts_por_op.get(op):
            continue
        slug, doc = pagina(site, op, c, counts_por_op[op])
        open(os.path.join(out, slug + '.html'), 'w').write(doc)
        urls.append((site + slug + '.html', '0.9'))
    sm = '<?xml version="1.0" encoding="UTF-8"?>\n<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n'
    sm += ''.join(f'  <url><loc>{e(u)}</loc><lastmod>{hoy}</lastmod><priority>{p}</priority></url>\n' for u, p in urls)
    sm += '</urlset>\n'
    open(os.path.join(out, 'sitemap.xml'), 'w').write(sm)
    open(os.path.join(out, 'robots.txt'), 'w').write(f'User-agent: *\nAllow: /\nSitemap: {site}sitemap.xml\n')
    return [u for u, _ in urls[1:]]
