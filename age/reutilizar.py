# Elige las preguntas de Auxiliar CM que sirven para el temario de Auxiliar del Estado y las asigna a su tema.
import json,re
from collections import Counter
d=json.load(open('all.json'))
def art(s):
    m=re.search(r'Arts?\.\s*(\d+)',s); return int(m.group(1)) if m else None
def tema_age(q):
    t,ref=q[0],q[4]; a=art(ref)
    if t==1 and 'CE' in ref and a is not None:
        if a<=55 and a!=54: return 1
        if 56<=a<=65 or 159<=a<=169: return 2
        if a==54 or 66<=a<=96 or 108<=a<=115: return 3
        if a==116: return 1
        if 117<=a<=127: return 4
        if 97<=a<=107: return 5
        if 137<=a<=158: return 9
        if 134<=a<=136: return 15
        return None
    if 'Ley 39/2015' in ref or 'Ley 40/2015' in ref:
        if 'Ley 39/2015' in ref and a is not None and (16<=a<=17 or 26<=a<=28): return 19   # II.3 documento, registro, archivo
        if ('Ley 39/2015' in ref and a is not None and (12<=a<=14)) or ('Ley 40/2015' in ref and a is not None and 38<=a<=46): return 20  # II.4 admón electrónica
        return 11
    if 'Ley 29/1998' in ref: return 11
    if 'Ley 19/2013' in ref: return 7
    if 'LO 3/2018' in ref: return 12
    if 'TREBEP' in ref and 'CM' not in ref:
        if a is None: return 13
        return 14 if (14<=a<=54 or 93<=a<=98 or 16<=a<=30) else 13
    if re.search(r'LO 3/2007|LO 1/2004|Ley 4/2023',ref) and 'CM' not in ref: return 16
    if t==16: return 23
    if t==17: return 24
    if t==18: return 25
    if t==19: return None if re.search(r'Power BI|DAX|panel|informe de Power',q[1]+' '.join(q[2]),re.I) else 26
    if t==20: return 27
    return None
out=[]
for q in d:
    ta=tema_age(q)
    if ta: out.append([ta]+q[1:6]+[None])   # sin marca de examen (era de exámenes de Madrid)
json.dump(out,open('age/reutilizadas.json','w'),ensure_ascii=False,indent=0)
print(len(out),sorted(Counter(q[0] for q in out).items()))
