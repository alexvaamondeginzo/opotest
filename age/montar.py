# Junta las preguntas reutilizadas y las nuevas (age/nXX.json) en bancos/aux-age.json
# y comprueba que no haya patrones que delaten la respuesta correcta.
import json,glob,random,re,sys
from collections import Counter
random.seed(2027)
reuso=json.load(open('age/reutilizadas.json'))
nuevas=[]
for f in sorted(glob.glob('age/n*.json')):
    for q in json.load(open(f)):
        t,preg,ok,mal,art,ex=q[:6]
        assert len(mal)==3 and ok not in mal and len(set(mal))==3, (f,preg)
        nuevas.append((f,t,preg,ok,mal,art,ex))
# Las preguntas que ya estaban publicadas conservan el orden de sus opciones
# (así no cambia nada para quien ya las ha visto); solo se reparten las nuevas.
import os
previo={}
if os.path.exists('bancos/aux-age.json'):
    previo={q[1]:q for q in json.load(open('bancos/aux-age.json'))}
def igual(q,ok,mal):
    return q[2][q[3]]==ok and sorted(q[2])==sorted(mal+[ok])
nuevas_sin=[x for x in nuevas if not (x[2] in previo and igual(previo[x[2]],x[3],x[4]))]
pos=[0,1,2,3]*((len(nuevas_sin)//4)+1);random.shuffle(pos);k=0
out=[]
for i,(f,t,preg,ok,mal,art,ex) in enumerate(nuevas):
    if preg in previo and igual(previo[preg],ok,mal):
        q=previo[preg];out.append([t,preg,q[2],q[3],art,ex,None]);continue
    o=mal[:];random.shuffle(o);c=pos[k];k+=1;o.insert(c,ok)
    out.append([t,preg,o,c,art,ex,None])
banco=reuso+out
textos=[q[1] for q in banco]
dup=[k for k,v in Counter(textos).items() if v>1]
assert not dup, dup[:3]
json.dump(banco,open('bancos/aux-age.json','w'),ensure_ascii=False,indent=0)
ABS=re.compile(r'\b(siempre|nunca|solo|exclusivamente|únicamente|en ningún caso|en todo caso|sin excepción)\b',re.I)
def stats(B,nombre):
    n=len(B);rk=Counter();ab_c=ab_i=0
    for q in B:
        L=[len(x) for x in q[2]];rk[sorted(range(4),key=lambda j:-L[j]).index(q[3])]+=1
        ab_c+=bool(ABS.search(q[2][q[3]]));ab_i+=sum(bool(ABS.search(q[2][j])) for j in range(4) if j!=q[3])
    print(f"{nombre}: {n} · posición de la correcta por longitud (1.ª=la más larga): "+" / ".join(f"{100*rk[k]//max(n,1)}%" for k in range(4))+f" · absolutas correcta {100*ab_c//max(n,1)}% vs incorrectas {100*ab_i//max(3*n,1)}%")
stats(out,'NUEVAS')
for f in sorted(set(x[0] for x in nuevas)):
    stats([q for q,x in zip(out,nuevas) if x[0]==f],'  '+f)
stats(banco,'BANCO')
print(sorted(Counter(q[0] for q in banco).items()))
