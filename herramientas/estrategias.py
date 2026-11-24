import json,re,sys
d=json.load(open(sys.argv[1]))
ABS=re.compile(r'\b(siempre|nunca|solo|sólo|exclusivamente|únicamente|en ningún caso|en todo caso|sin excepción|todos|todas|ninguna|ninguno)\b',re.I)
def ev(strat):
    s=0
    for q in d:
        o=q[2];c=q[3];cand=strat(o)
        if c in cand: s+=1/len(cand)
    return round(100*s/len(d))
L=lambda o:[len(x) for x in o]
noabs=lambda o:[j for j in range(len(o)) if not ABS.search(o[j])] or list(range(len(o)))
def noshort(o):
    l=L(o);m=min(l);return [j for j in range(len(o)) if l[j]!=m] or list(range(len(o)))
def both(o):
    a=noabs(o);l=L(o);m=min(l[j] for j in a);r=[j for j in a if l[j]!=m];return r or a
def second(o):
    l=L(o);s=sorted(range(len(o)),key=lambda j:-l[j]);return [s[1]]
print('azar',round(100*sum(1/len(q[2]) for q in d)/len(d)),'| sin absolutas',ev(noabs),'| sin la más corta',ev(noshort),'| ambas',ev(both),'| la 2ª más larga',ev(second))
