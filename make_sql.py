import json,hashlib,os
# Una entrada por oposición: aux-cm sale de all.json y las demás de bancos/<op>.json
OPOS=json.load(open('oposiciones.json'))
BANCOS=[('aux-cm',json.load(open('all.json')))]+[(op,json.load(open(f'bancos/{op}.json'))) for op in OPOS if op!='aux-cm' and os.path.exists(f'bancos/{op}.json')]
def lit(s): return "null" if s is None else "'"+str(s).replace("'","''")+"'"
rows=[]
for op,d in BANCOS:
    for q in d:
        base=q[1] if op=='aux-cm' else op+'|'+q[1]   # las de aux-cm conservan su id de siempre
        qid=(f"{q[0]}-" if op=='aux-cm' else f"{op}:{q[0]}-")+hashlib.md5(base.encode()).hexdigest()[:10]
        ex=q[6] if len(q)>6 else None
        rows.append(f"({lit(qid)},{lit(op)},{q[0]},{lit(q[1])},{lit(json.dumps(q[2],ensure_ascii=False))}::jsonb,{q[3]},{lit(q[4])},{lit(q[5])},{lit(ex)})")
assert len(rows)==len({r.split(',')[0] for r in rows}), 'ids repetidos'
parts=max(3,(len(rows)+449)//450); n=(len(rows)+parts-1)//parts
import glob
for f in glob.glob('supabase/*-preguntas-parte*.sql'): os.remove(f)
for i in range(parts):
    chunk=rows[i*n:(i+1)*n]
    head=f"-- Banco de preguntas, parte {i+1} de {parts}. Ejecútalo en Supabase → SQL Editor DESPUÉS de 1-configuracion.sql y 8-oposiciones.sql.\n"
    if i==0: head+="-- Esta parte borra primero las preguntas antiguas para cargar la versión nueva.\ndelete from public.preguntas;\n"
    body=""
    for j in range(0,len(chunk),150):
        body+="insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values\n"+",\n".join(chunk[j:j+150])+"\non conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;\n"
    open(f'supabase/p{i+1:02d}-preguntas-parte{i+1}.sql','w').write(head+body)
print(len(rows),'preguntas en',parts,'archivos')
