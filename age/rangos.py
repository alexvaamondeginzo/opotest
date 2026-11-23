import json,sys
for i,q in enumerate(json.load(open(sys.argv[1]))):
    L=[len(q[2])]+[len(x) for x in q[3]]
    r=sorted(range(4),key=lambda j:-L[j]).index(0)
    if r==int(sys.argv[2]) if len(sys.argv)>2 else True: print(i,'rank',r,'OK',len(q[2]),':',q[2][:60],'| MAL',[ (k,len(x),x[:50]) for k,x in enumerate(q[3])])
