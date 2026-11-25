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
        pie = open(os.path.join(RAIZ, 'web', 'index.html')).read()
        comprobar('class="pie-ops"' in pie and 'test-auxiliar-administrativo-gobierno-de-canarias.html' in pie, 'el pie lista las oposiciones (generado por build.py)')
        comprobar(os.path.exists(os.path.join(RAIZ, 'web', 'oposiciones.html')), 'existe la página con todas las oposiciones')
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
                    if sub == 'progreso' and op == 'aux-cm':
                        await pg.evaluate("DB.ops['aux-cm'].t={'4':{a:0,n:2},'6':{a:3,n:4},'7':{a:1,n:2},'10':{a:5,n:6}};save(DB);renderStats()")
                        await pg.wait_for_timeout(300)
                        ancho = await pg.evaluate("Math.min(...[...document.querySelectorAll('#stats .stat > span:first-child')].map(e=>e.getBoundingClientRect().width))")
                        comprobar(ancho > 150, f'progreso: el nombre del tema tiene sitio ({round(ancho)} px)')
                        await foto(pg, f'{disp}-{op}-progreso-datos')
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
                    comprobar(await pg.is_visible('#compartir'), f'{op}: botón para compartir la nota del simulacro')
                    if sim == 'can-p2':
                        comprobar('Cada dos fallos restan un acierto' in await pg.inner_text('#verdict'),
                                  'aux-canarias: la 2.ª parte penaliza un acierto por cada dos fallos')
                    await pg.click('#again')
                    await pg.wait_for_timeout(300)
            comprobar(not err, f'sin errores de JavaScript en toda la sesión ({err[:1]})')
            await pg.close()

        print('\n== Perfil ==')
        compra = {'oposicion': 'aux-age', 'plan': 'completo', 'importe_cent': 1499, 'moneda': 'eur', 'creado': '2026-11-25T10:00:00Z', 'hasta': '2027-12-31T22:59:59Z'}
        for ancho, alto, disp in [(1366, 900, 'escritorio'), (390, 844, 'movil')]:
            pg, err = await abrir(ancho, alto, {'beta': False, 'user': usuario, 'acc': {'plan': 'completo', 'hasta': '2027-12-31T22:59:59Z'}, 'compras': [compra]})
            await pg.evaluate("location.hash='#/perfil'")
            await pg.wait_for_timeout(900)
            comprobar(await pg.is_visible('#pf-body'), f'perfil ({disp}): se abre')
            comprobar(await pg.evaluate("document.querySelectorAll('#pf-ops .pf-op').length") == len([1 for _ in range(5)]), f'perfil ({disp}): una tarjeta por oposición')
            comprobar('14,99' in await pg.inner_text('#pf-compras'), f'perfil ({disp}): lista las compras')
            comprobar('Teoría + Ofimática' in await pg.inner_text('#pf-compras'), f'perfil ({disp}): nombre del plan según la oposición')
            await foto(pg, f'{disp}-perfil')
            comprobar(not err, f'perfil ({disp}): sin errores de JavaScript ({err[:1]})')
            await pg.close()
        print('\n== Planes tras pagar ==')
        for plan, visible, txt in [('prueba', True, 'en la prueba gratis se ven los planes'), ('legislacion', False, 'con un plan pagado no se ven los planes en Inicio'), ('completo', False, 'con el plan Completo no se ven los planes')]:
            pg, err = await abrir(1366, 900, {'beta': False, 'user': usuario, 'acc': {'plan': plan, 'hasta': '2027-12-31T22:59:59Z'}})
            await pg.evaluate("location.hash='#/o/aux-cm'")
            await pg.wait_for_timeout(900)
            comprobar(await pg.is_visible('#planes') == visible, txt)
            if plan == 'legislacion':
                await pg.click('#acc-cta')
                await pg.wait_for_timeout(300)
                comprobar(await pg.is_visible('#planes'), '«Mejorar plan» enseña los planes')
            await pg.close()
        pg, err = await abrir(1366, 900, {'beta': True, 'user': usuario, 'acc': {'plan': 'beta'}})
        await pg.click('#btn-cuenta')
        await pg.click('#btn-account')
        await pg.wait_for_timeout(500)
        comprobar(await pg.evaluate("location.hash") == '#/perfil' and await pg.is_visible('#pf-body'), 'el menú «Mi cuenta» abre el perfil')
        # opinión de un toque: aparece tras el 3.er test, y con 👎 pide qué mejorar
        await pg.evaluate("localStorage.removeItem('oponota-opinion');DB.done=2;opinionMostrar()")
        comprobar(await pg.evaluate("$('cta').classList.contains('hidden')"), 'opinión: no se pregunta antes del 3.er test')
        await pg.evaluate("DB.done=3;opinionMostrar()")
        comprobar(not await pg.evaluate("$('cta').classList.contains('hidden')"), 'opinión: se pregunta tras el 3.er test')
        col = await pg.evaluate("(()=>{document.documentElement.dataset.tema='oscuro';const c=getComputedStyle(document.querySelector('[data-opinion]')).color;delete document.documentElement.dataset.tema;return c})()")
        comprobar(col == 'rgb(5, 47, 46)', f'opinión: botones legibles en modo oscuro ({col})')
        await pg.evaluate("document.querySelector('[data-opinion=\"0\"]').click()")
        await pg.wait_for_timeout(200)
        comprobar(not await pg.evaluate("$('op-form').classList.contains('hidden')"), 'opinión: con 👎 pide qué mejorar')
        await pg.evaluate("$('op-txt').value='más preguntas del tema 5';$('op-form').requestSubmit()")
        await pg.wait_for_timeout(300)
        enviadas = await pg.evaluate("(window.__rpc||[]).filter(x=>x[0]==='enviar_opinion').map(x=>[x[1].u,x[1].t])")
        comprobar(enviadas == [[False, None], [False, 'más preguntas del tema 5']], f'opinión: se guarda en Supabase ({enviadas})')
        await pg.evaluate("opinionMostrar()")
        comprobar(await pg.evaluate("$('cta').classList.contains('hidden')"), 'opinión: no se vuelve a preguntar tras responder')

        print('\n== Mi semana, fecha del examen y compartir la nota ==')
        # progreso de prueba: 3 días de la semana pasada y 2 de esta
        await pg.evaluate("""(()=>{const L=lunes(1);DB.days={};DB.ac={};[[0,30,24],[2,50,35],[4,20,10]].forEach(([i,n,a])=>{const d=new Date(L);d.setDate(L.getDate()+i);DB.days[dayKey(d)]=n;DB.ac[dayKey(d)]=a});
          DB.days[dayKey()]=40;DB.ac[dayKey()]=30;DB.goal=20;save(DB);localStorage.removeItem('oponota-resumen')})()""")
        await pg.evaluate("location.hash='#/o/aux-cm'")
        await pg.wait_for_timeout(600)
        comprobar(await pg.is_visible('#aviso-semana') and '100 preguntas' in await pg.inner_text('#aviso-semana'), 'Inicio: aviso con el resumen de la semana pasada')
        await foto(pg, 'escritorio-aviso-semana', False)
        await pg.click('#aviso-semana-x')
        await pg.evaluate("renderToday()")
        comprobar(not await pg.is_visible('#aviso-semana'), 'Inicio: el aviso semanal no vuelve a salir esa semana')
        dentro = await pg.evaluate("(()=>{const d=new Date();d.setDate(d.getDate()+100);return dayKey(d)})()")
        await pg.evaluate(f"DB.ops['aux-age']=DB.ops['aux-age']||{{t:{{}},wrong:[],sims:[],marks:[]}};DB.ops['aux-age'].fecha='{dentro}';save(DB)")
        await pg.evaluate("location.hash='#/o/aux-age'")
        await pg.wait_for_timeout(600)
        cd = await pg.inner_text('#cd-days')
        comprobar(cd.strip() == '100 días', f'Inicio: cuenta atrás con la fecha de examen del usuario ({cd})')
        comprobar('media de' in await pg.inner_text('#plan-examen'), 'Inicio: ritmo de esta semana frente al necesario')
        comprobar(await pg.evaluate("mergeOp({fecha:''},{fecha:'2027-01-01'}).fecha") == '', 'la fecha borrada en un dispositivo se borra en los demás')
        comprobar(await pg.evaluate("mergeDB({ac:{'2026-01-01':5}},{ac:{'2026-01-01':7}}).ac['2026-01-01']") == 7, 'los aciertos por día se mezclan entre dispositivos')
        await pg.evaluate("location.hash='#/perfil'")
        await pg.wait_for_timeout(600)
        comprobar(await pg.inner_text('#sem-tit') == 'ESTA SEMANA' or (await pg.inner_text('#sem-tit')).lower() == 'esta semana', 'perfil: tarjeta de esta semana')
        comprobar(await pg.evaluate("$('sem-sig').disabled"), 'perfil: no se puede ir a semanas futuras')
        await pg.click('#sem-ant')
        datos = await pg.inner_text('#sem-datos')
        comprobar('100' in datos and '69 %' in datos, f'perfil: resumen de la semana pasada ({datos[:60]!r})')
        comprobar(await pg.evaluate("$('sem-ant').disabled"), 'perfil: no se puede ir más atrás de la primera semana con datos')
        comprobar(await pg.evaluate("document.querySelectorAll('#sem-barras > div').length") == 7, 'perfil: gráfico de los 7 días')
        comprobar(await pg.is_visible('[data-pf-fecha="aux-age"]'), 'perfil: se puede poner la fecha del examen')
        await pg.click('[data-pf-goal="40"]')
        comprobar(await pg.evaluate("DB.goal") == 40, 'perfil: se cambia el objetivo diario')
        await foto(pg, 'escritorio-perfil-semana')
        tam = await pg.evaluate("imagenNota({nota:38.5,a:42,f:10,b:8,pass:true,escala:10,sim:'Simulacro 1.ª parte',op:'Auxiliar · Gobierno de Canarias'}).then(b=>b.size)")
        comprobar(tam > 20000, f'compartir: genera la imagen de la nota ({tam} bytes)')
        if CAPTURAS:
            await pg.evaluate("imagenNota({nota:38.5,a:42,f:10,b:8,pass:true,escala:10,sim:'Simulacro 1.ª parte',op:'Auxiliar · Gobierno de Canarias'}).then(b=>new Promise(r=>{const f=new FileReader();f.onload=()=>{window.__img=f.result;r()};f.readAsDataURL(b)}))")
            import base64
            open(f'{DIR_CAP}/compartir-nota.png', 'wb').write(base64.b64decode((await pg.evaluate('window.__img')).split(',')[1]))
        comprobar(not err, f'semana y compartir: sin errores de JavaScript ({err[:1]})')
        await pg.close()
        pg, err = await abrir(390, 844, {'beta': True, 'user': usuario, 'acc': {'plan': 'beta'}})
        await pg.evaluate("location.hash='#/perfil'")
        await pg.wait_for_timeout(600)
        ancho_sem = await pg.evaluate("document.getElementById('pf-semana').scrollWidth<=document.getElementById('pf-semana').clientWidth+1")
        comprobar(ancho_sem, 'perfil (móvil): la tarjeta de la semana no se sale de la pantalla')
        await foto(pg, 'movil-perfil-semana')
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
        ofi = await pg.evaluate("(()=>{const C=SIMCFG;SIMCFG={x:{n:50,pen:3,penEntera:true,escala:10,cupos:[{desde:1,hasta:20,n:50}],nombre:'Simulacro 1.ª parte'}};const g=P;P=()=>({t:{'1':{a:30,n:50}}});const N=labNota();const r=N[0].nota/50*10;SIMCFG=C;P=g;return Math.round(r*10)/10})()")
        comprobar(ofi == 4.8, f'nota en la escala oficial de Canarias ({ofi} sobre 10)')
        # evolución de notas: una línea por ejercicio, con su media
        await pg.evaluate("DB.ops['aux-cm'].sims=[{ts:1,nota:20,ex:1},{ts:2,nota:30,ex:2},{ts:3,nota:26,ex:1},{ts:4,nota:35.5,ex:2},{ts:5,nota:29,ex:1}];save(DB)")
        await pg.evaluate("location.hash='#/o/aux-cm/simulacros'")
        await pg.wait_for_timeout(500)
        comprobar(await pg.evaluate("document.querySelectorAll('#sims .serie').length") == 2, 'evolución: una línea por cada ejercicio')
        ley = await pg.inner_text('#sims-note')
        comprobar('Media 25' in ley and 'Media 32,75' in ley and '2.º ejercicio' in ley, f'evolución: nota media de cada ejercicio ({ley[:80]!r})')
        await foto(pg, 'escritorio-evolucion-notas')
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
        comprobar(await pg.evaluate("Object.keys(DB.ops['aux-cm'].rep||{}).length") == 1, 'el repaso se guarda en el progreso de la cuenta')
        comprobar(await pg.evaluate("Object.keys(mergeOp({rep:{x:[0,'2026-01-01']}},{rep:{x:[1,'2026-01-03'],y:[0,'2026-01-02']}}).rep).join()") == 'x,y', 'el repaso se mezcla entre dispositivos')
        comprobar(await pg.evaluate("mergeOp({rep:{x:[2,'2026-01-09']}},{rep:{x:[1,'2026-01-03']}}).rep.x[0]") == 2, 'gana la etapa más avanzada del repaso')
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
