import json,re,sys
from collections import Counter
SITE=sys.argv[1] if len(sys.argv)>1 else ""
BRAND='OpoNota'  # nombre de la marca
import os
Q=json.load(open('all.json'))
pagos=json.load(open('pagos.json'))
OPOS=json.load(open('oposiciones.json'))
BANCOS={'aux-cm':Q}
for op in OPOS:
    f=f'bancos/{op}.json'
    if op!='aux-cm' and os.path.exists(f): BANCOS[op]=json.load(open(f))
for op,c in OPOS.items():
    B=BANCOS.get(op,[])
    c['counts']={str(k):v for k,v in sorted(Counter(q[0] for q in B).items())}
    c['n']=len(B)
    if not B: c['proximamente']=True
    else: c.pop('proximamente',None)
    # Practicar separa los temas por bloques (Legislación, Ofimática, Psicotécnicos...): obligatorio en cada oposición publicada
    if B:
        bl=c.get('bloques') or []
        fuera=sorted({q[0] for q in B}-{t for b in bl for t in range(b['desde'],b['hasta']+1)})
        if not bl: print(f'AVISO {op}: falta "bloques" en oposiciones.json (los temas saldrán sin separar)')
        elif fuera: print(f'AVISO {op}: temas fuera de los bloques: {fuera}')
# enlaces de pago por oposición (formato antiguo = solo Auxiliar CM)
if any(isinstance(v,str) and k in ('legislacion','completo') for k,v in pagos.items()):
    pagos={'aux-cm':{k:pagos.get(k,'') for k in ('legislacion','completo')}}
links={op:{k:v for k,v in (pagos.get(op) or {}).items() if not k.startswith('_')} for op in OPOS}
doms=json.load(open('dominios.json'))
precio={k:v for k,v in json.load(open('precio.json')).items() if not k.startswith('_')}
counts=dict(sorted(Counter(q[0] for q in Q).items()))
t=open('template.html').read()
out=(t.replace('__OPOS__',json.dumps(OPOS,ensure_ascii=False)).replace('__PAYLINKS__',json.dumps(links))
     .replace('__DOMS__',json.dumps(doms)).replace('__N__',str(len(Q))).replace('__T__',str(len(counts)))
     .replace('__FORM__','https://forms.gle/2ShnxHhTrBVKBMQ48').replace('__BRAND__',BRAND)
     .replace('__SB_URL__','https://djzqzywpwliytbtkpdzk.supabase.co').replace('__SB_KEY__','sb_publishable_OBFWgh-yTm0EJvAT8FkTpQ_y1GiRhf6')
     .replace('__SITE__',SITE).replace('__PRECIO__',json.dumps(precio,ensure_ascii=False)))
open('web/index.html','w').write(out)
# recursos de la marca y la fuente
import shutil
FUENTES=['Barlow-Regular','Barlow-Medium','Barlow-SemiBold','BarlowCondensed-SemiBold','BarlowCondensed-Bold','BarlowCondensed-ExtraBold']
for src,dst in [('assets/marca/oponota.png','web/oponota.png'),('assets/_headers','web/_headers'),('assets/manifest.webmanifest','web/manifest.webmanifest'),('assets/sw.js','web/sw.js')]+[(f'assets/fuentes/{f}.woff',f'web/{f}.woff') for f in FUENTES]:
    shutil.copyfile(src,dst)
# vídeos para redes sociales (Metricool los descarga desde la web)
os.makedirs('web/redes',exist_ok=True)
for f in os.listdir('assets/redes'):
    if f.endswith('.mp4'): shutil.copyfile(f'assets/redes/{f}',f'web/redes/{f}')
print(len(Q),'pendientes:',set(re.findall(r'__[A-Z_]+__',out)))
# Comprobación: ninguna pregunta dentro de la web pública
muestra=[q[1] for B in BANCOS.values() for q in B[::97]]
fugas=[m for m in muestra if m in out]
print('preguntas visibles en la web:',len(fugas))
# Páginas para Google (una por oposición), sitemap.xml y robots.txt
if SITE:
    from seo_build import seo
    paginas=seo(SITE,OPOS,{op:c['counts'] for op,c in OPOS.items()})
    seo_fugas=[m for m in muestra for f in paginas if m in open('web/'+f.rsplit('/',1)[1]).read()]
    print('páginas para Google:',len(paginas),'· preguntas visibles en ellas:',len(seo_fugas))
