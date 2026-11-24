import json,re,sys,random
d=json.load(open(sys.argv[1]))
ABS=re.compile(r'\b(siempre|nunca|solo|sólo|exclusivamente|únicamente|en ningún caso|en todo caso|sin excepción|todos|todas|ninguna|ninguno)\b',re.I)
MAT=re.compile(r'(salvo|sin perjuicio|excepto|en su caso|cuando|siempre que)',re.I)
n=len(d);lon=0;dumb=0;comma_c=comma_i=0;mat_c=mat_i=0;abs_c=abs_i=0
for q in d:
    o=q[2];c=q[3];L=[len(x) for x in o]
    if L[c]==max(L): lon+=1
    n_o=len(o)
    cand=[j for j in range(n_o) if not ABS.search(o[j])] or list(range(n_o))
    pick=max(cand,key=lambda j:L[j])
    if pick==c: dumb+=1
    for j in range(n_o):
        if j==c:
            comma_c+=(',' in o[j]); mat_c+=bool(MAT.search(o[j])); abs_c+=bool(ABS.search(o[j]))
        else:
            comma_i+=(',' in o[j]); mat_i+=bool(MAT.search(o[j])); abs_i+=bool(ABS.search(o[j]))
pc=lambda a,b:round(100*a/b)
print('la más larga es la correcta:',pc(lon,n),'%')
print('estrategia tonta:',pc(dumb,n),'%')
NI=sum(len(q[2])-1 for q in d)
print('opciones por pregunta:',sorted(set(len(q[2]) for q in d)))
print('coma correcta/incorrecta:',pc(comma_c,n),pc(comma_i,NI))
print('matiz correcta/incorrecta:',pc(mat_c,n),pc(mat_i,NI))
print('absolutas correcta/incorrecta:',pc(abs_c,n),pc(abs_i,NI))
# shortest
sh=sum(1 for q in d if len(q[2][q[3]])==min(len(x) for x in q[2]))
print("la más corta es la correcta:",pc(sh,n),"%",flush=True)
# simulacro score
k=dumb/n; ac=40*k; fa=40-ac; print('simulacro 40 → nota /50:',round((ac-fa/3)*50/40,1))
