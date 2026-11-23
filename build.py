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
for src,dst in [('assets/marca/oponota.png','web/oponota.png'),('assets/fuentes/dmsans.woff','web/dmsans.woff')]:
    shutil.copyfile(src,dst)
print(len(Q),'pendientes:',set(re.findall(r'__[A-Z_]+__',out)))
# Comprobación: ninguna pregunta dentro de la web pública
muestra=[q[1] for B in BANCOS.values() for q in B[::97]]
fugas=[m for m in muestra if m in out]
print('preguntas visibles en la web:',len(fugas))
