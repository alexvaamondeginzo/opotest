"""Pruebas automáticas de la web de OpoNota.

Uso (después de `python3 build.py <url>`):
    python3 pruebas/probar_web.py            # todas las pruebas
    python3 pruebas/probar_web.py --capturas # además guarda capturas en /tmp/oponota-pruebas

Abre web/index.html en Chrome sin conexión, con un Supabase simulado
(pruebas/supabase_simulado.js) que sirve las preguntas de los bancos del repositorio,
y comprueba lo principal: que no hay errores de JavaScript, que se navega por todas
las páginas en escritorio y móvil, que la práctica y los simulacros arrancan y
corrigen bien, que se guarda el progreso, y que las funciones en pruebas solo las
ve un administrador. Termina con «TODO BIEN» o con la lista de fallos (código 1).

Necesita Playwright (`pip install playwright`) y Chrome o Chromium.
"""
import asyncio, hashlib, json, os, shutil, sys, tempfile

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
CAPTURAS = '--capturas' in sys.argv
DIR_CAP = '/tmp/oponota-pruebas'
FALLOS = []


def comprobar(cond, texto):
    print(('  ok  ' if cond else '  MAL ') + texto)
    if not cond:
        FALLOS.append(texto)


def filas():
    """Las preguntas de los bancos con el mismo id que en Supabase (como make_sql.py)."""
    bancos = {'aux-cm': os.path.join(RAIZ, 'all.json')}
    for f in os.listdir(os.path.join(RAIZ, 'bancos')):
        if f.endswith('.json'):
            bancos[f[:-5]] = os.path.join(RAIZ, 'bancos', f)
    out = []
    for op, f in bancos.items():
        for q in json.load(open(f)):
            base = q[1] if op == 'aux-cm' else op + '|' + q[1]
            qid = (f"{q[0]}-" if op == 'aux-cm' else f"{op}:{q[0]}-") + hashlib.md5(base.encode()).hexdigest()[:10]
            out.append({'id': qid, 'oposicion': op, 'tema': q[0], 'pregunta': q[1], 'opciones': q[2],
                        'correcta': q[3], 'articulo': q[4], 'explicacion': q[5],
                        'examen': q[6] if len(q) > 6 else None})
    return out


def chrome():
    for p in ('/usr/bin/google-chrome', '/usr/bin/chromium', '/usr/bin/chromium-browser'):
        if os.path.exists(p):
            return p
    return None  # el Chromium que instala Playwright


async def main():
    from playwright.async_api import async_playwright
    tmp = tempfile.mkdtemp(prefix='oponota-')
    shutil.copy(os.path.join(RAIZ, 'web', 'index.html'), os.path.join(tmp, 'index.html'))
    mock = open(os.path.join(RAIZ, 'pruebas', 'supabase_simulado.js')).read()
    mock = mock.replace('__ROWS__', json.dumps(filas(), ensure_ascii=False))
    url = 'file://' + os.path.join(tmp, 'index.html')
    if CAPTURAS:
        os.makedirs(DIR_CAP, exist_ok=True)

    async with async_playwright() as p:
        nav = await p.chromium.launch(executable_path=chrome(), args=['--no-sandbox'])

        async def abrir(ancho, alto, estado):
            pg = await nav.new_page(viewport={'width': ancho, 'height': alto})
            errores = []
            pg.on('pageerror', lambda e: errores.append(str(e)))

            async def ruta(r):
                u = r.request.url
                if 'supabase.min.js' in u or 'supabase-js' in u:
                    await r.fulfill(body=mock, content_type='application/javascript')
                elif r.request.method == 'POST':
                    await r.fulfill(status=200, body='ok')
                elif u.startswith('file:'):
                    await r.continue_()
                else:
                    await r.abort()
            await pg.route('**/*', ruta)
            await pg.goto(url)
            await pg.evaluate("""e=>{localStorage.clear();localStorage.setItem('sb-mock-auth-token','1');
              localStorage.setItem('auxcm-owner','u-a@gmail.com');localStorage.setItem('auxcm-cookies','1');
              localStorage.setItem('mock-state',JSON.stringify(e))}""", estado)
            await pg.goto(url)
            await pg.wait_for_timeout(1200)
            return pg, errores

        async def foto(pg, nombre, entera=True):
            if CAPTURAS:
                await pg.screenshot(path=f'{DIR_CAP}/{nombre}.png', full_page=entera)

        usuario = {'id': 'u-a@gmail.com', 'email': 'a@gmail.com'}
        for ancho, alto, disp in [(1366, 900, 'escritorio'), (390, 844, 'movil')]:
            print(f'\n== Usuario normal ({disp}) ==')
            pg, err = await abrir(ancho, alto, {'beta': True, 'user': usuario, 'acc': {'plan': 'beta'}})
            await foto(pg, f'{disp}-portada')
            for op in ('aux-cm', 'aux-age', 'aux-ayto-mad', 'aux-canarias', 'adm-cm'):
                await pg.evaluate(f"location.hash='#/o/{op}'")
                await pg.wait_for_timeout(700)
                comprobar(await pg.evaluate('OP') == op, f'{op}: abre el inicio de la oposición')
                comprobar(await pg.is_visible('#lab-rep') and await pg.is_visible('#lab-plan'), f'{op}: repaso y plan de hoy en el inicio')
                await foto(pg, f'{disp}-{op}-inicio')
                comprobar(await pg.evaluate('labNota().length===Object.keys(SIMCFG).length'), f'{op}: nota estimada para cada simulacro')
                for sub in ('practicar', 'simulacros', 'progreso', 'temario', 'examen'):
                    await pg.evaluate(f"location.hash='#/o/{op}/{sub}'")
                    await pg.wait_for_timeout(300)
                    await foto(pg, f'{disp}-{op}-{sub}', sub != 'temario')
                    if sub == 'progreso': comprobar(await pg.is_visible('#lab-nota') and await pg.is_visible('#lab-pct'), f'{op}: nota estimada y comparativa en Progreso')
                    if sub == 'practicar': comprobar(await pg.is_visible('#lab-bus-card'), f'{op}: practicar por ley en Practicar')
                comprobar(not err, f'{op}: sin errores de JavaScript al navegar ({err[:1]})')

            if disp == 'escritorio':
                # práctica: arranca, corrige y guarda
                # temas separados por bloques (campo "bloques" de oposiciones.json)
                await pg.evaluate("location.hash='#/o/aux-age/practicar'")
                await pg.wait_for_timeout(300)
                grupos = await pg.eval_on_selector_all('#temas .tgrupo h4', 'e=>e.map(h=>h.firstChild.textContent.trim())')
                comprobar(grupos == ['Legislación', 'Ofimática', 'Psicotécnicos'], f'practicar: temas por bloques ({grupos})')
                await pg.click('#temas [data-bloque="2"]')
                quedan = await pg.evaluate("selected().temas")
                comprobar(29 not in quedan and 1 in quedan, 'practicar: quitar un bloque desmarca solo sus temas')
                await pg.click('#temas [data-bloque="2"]')
                await pg.evaluate("location.hash='#/o/aux-cm/practicar'")
                await pg.wait_for_timeout(300)
                await pg.click('#start')
                await pg.wait_for_timeout(1500)
                comprobar((await pg.inner_text('#count')).startswith('Pregunta 1 de'), 'práctica: empieza el test')
                correcta = await pg.evaluate('st.qs[0][3]')
                mala = (correcta + 1) % 4
                await pg.click(f'#opts .opt >> nth={mala}')
                await pg.wait_for_timeout(300)
                clases = await pg.eval_on_selector_all('#opts .opt', 'e=>e.map(b=>b.className)')
                comprobar('ok' in clases[correcta].split() and 'bad' in clases[mala].split(),
                          'práctica: marca en verde la correcta y en rojo la elegida')
                comprobar(await pg.is_visible('#feedback .expl'), 'práctica: muestra la explicación')
                comprobar(await pg.evaluate("P().wrong.includes(st.qs[0].id)"), 'práctica: guarda el fallo')
                await foto(pg, 'escritorio-respuesta', False)
                await pg.click('#quit')
                await pg.wait_for_timeout(300)
                # respuestas de 3 opciones (Ayuntamiento de Madrid)
                await pg.evaluate("location.hash='#/o/aux-ayto-mad/practicar'")
                await pg.wait_for_timeout(300)
                await pg.click('#start')
                await pg.wait_for_timeout(1500)
                nops = len(await pg.eval_on_selector_all('#opts .opt', 'e=>e'))
                comprobar(nops == 3, f'aux-ayto-mad: las preguntas tienen 3 opciones ({nops})')
                await pg.keyboard.press('d')
                await pg.wait_for_timeout(200)
                comprobar(not await pg.evaluate('st.locked'), 'aux-ayto-mad: la tecla D no responde con 3 opciones')
                correcta = await pg.evaluate('st.qs[0][3]')
                mala = (correcta + 1) % 3
                await pg.click(f'#opts .opt >> nth={mala}')
                await pg.wait_for_timeout(300)
                clases = await pg.eval_on_selector_all('#opts .opt', 'e=>e.map(b=>b.className)')
                comprobar('ok' in clases[correcta].split() and 'bad' in clases[mala].split(),
                          'aux-ayto-mad: corrige bien con 3 opciones')
                await pg.click('#quit')
                await pg.wait_for_timeout(300)
                # simulacro: arranca con su número de preguntas y temporizador
                for op, sim in (('aux-cm', 'simulacro'), ('aux-age', 'age-p1'), ('aux-ayto-mad', 'ayto-teoria'), ('aux-canarias', 'can-p2'), ('adm-cm', 'adm-ej1')):
                    await pg.evaluate(f"location.hash='#/o/{op}/simulacros'")
                    await pg.wait_for_timeout(700)
                    await pg.click(f'[data-sim={sim}]')
                    await pg.wait_for_timeout(2000)
                    n = await pg.evaluate(f'SIMCFG["{sim}"].cupos.reduce((s,k)=>s+k.n,0)')
                    comprobar(await pg.inner_text('#count') == f'Pregunta 1 de {n}' and await pg.is_visible('#timer'),
                              f'{op}: el simulacro tiene {n} preguntas y temporizador')
                    await pg.click('#quit')
                    await pg.wait_for_timeout(300)
                    comprobar(await pg.is_visible('#result'), f'{op}: el simulacro termina y da la nota')
                    if sim == 'can-p2':
                        comprobar('Cada dos fallos restan un acierto' in await pg.inner_text('#verdict'),
                                  'aux-canarias: la 2.ª parte penaliza un acierto por cada dos fallos')
                    await pg.click('#again')
                    await pg.wait_for_timeout(300)
            comprobar(not err, f'sin errores de JavaScript en toda la sesión ({err[:1]})')
            await pg.close()

        print('\n== Administrador (escritorio) ==')
        pg, err = await abrir(1366, 900, {'beta': True, 'user': usuario, 'acc': {'plan': 'beta', 'admin': True}})
        await pg.evaluate("location.hash='#/o/aux-cm'")
        await pg.wait_for_timeout(1500)
        await pg.evaluate("DB.ops['aux-cm'].t={'1':{a:20,n:30},'2':{a:6,n:10},'6':{a:14,n:20}};save(DB);renderStats()")
        await pg.wait_for_timeout(600)
        comprobar(await pg.inner_text('#lab-nota') != '—', 'calcula la nota estimada')
        # penalización propia de Canarias: 30 aciertos y 20 fallos de 50 → descuenta 6 (grupos enteros de 3) → 24 sobre 50
        nota_can = await pg.evaluate("(()=>{const o=OP;OP='aux-canarias';const C=SIMCFG;SIMCFG={x:{n:50,pen:3,penEntera:true,cupos:[{desde:1,hasta:20,n:50}],nombre:'Simulacro 1.ª parte'}};const g=P;P=()=>({t:{'1':{a:30,n:50}}});const r=labNota()[0].nota;SIMCFG=C;P=g;OP=o;return r})()")
        comprobar(nota_can == 24, f'nota estimada con la penalización de Canarias ({nota_can})')
        await pg.evaluate("location.hash='#/o/aux-cm/practicar'")
        await pg.wait_for_timeout(500)
        comprobar(len(await pg.eval_on_selector_all('#lab-norma option', 'e=>e')) > 5, 'lista las leyes para practicar')
        await pg.fill('#lab-q', 'silencio')
        await pg.wait_for_timeout(200)
        comprobar('pregunta' in await pg.inner_text('#lab-bus-n'), 'el buscador encuentra preguntas')
        await pg.click('#lab-bus-btn')
        await pg.wait_for_timeout(600)
        correcta = await pg.evaluate('st.qs[0][3]')
        await pg.click(f'#opts .opt >> nth={(correcta + 1) % 4}')
        await pg.wait_for_timeout(300)
        comprobar(await pg.evaluate("Object.keys(repLeer()['aux-cm']||{}).length") == 1, 'el fallo entra en el repaso espaciado')
        await pg.click('#quit')
        await pg.wait_for_timeout(300)
        await pg.evaluate("location.hash='#/o/aux-cm/inicio'")
        await pg.wait_for_timeout(300)
        await pg.evaluate("location.hash='#/o/aux-cm/practicar'")
        await pg.wait_for_timeout(500)
        n_ex = len(await pg.eval_on_selector_all('#lab-ex option', 'e=>e'))
        comprobar(n_ex >= 1, f'lista los exámenes oficiales ({n_ex})')
        await pg.click('#lab-ex-btn')
        await pg.wait_for_timeout(600)
        comprobar(await pg.evaluate("st.qs.length>0 && st.qs.every(q=>String(q[6]).includes(document.getElementById('lab-ex').value))"), 'practica solo lo que cayó en ese examen')
        await pg.click('#quit')
        await pg.wait_for_timeout(300)
        await pg.evaluate("location.hash='#/o/aux-cm/admin'")
        await pg.wait_for_timeout(800)
        comprobar(await pg.is_visible('#admin'), 'abre el panel de administración')
        await foto(pg, 'admin-panel')
        comprobar(not err, f'sin errores de JavaScript ({err[:1]})')
        await nav.close()
    shutil.rmtree(tmp, ignore_errors=True)


asyncio.run(main())
print('\nTODO BIEN' if not FALLOS else f'\n{len(FALLOS)} FALLOS:\n- ' + '\n- '.join(FALLOS))
if CAPTURAS:
    print('Capturas en', DIR_CAP)
sys.exit(1 if FALLOS else 0)
