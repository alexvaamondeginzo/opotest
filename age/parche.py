import json,sys
f=sys.argv[1];d=json.load(open(f));p=json.load(open(sys.argv[2]))
for i,v in p.items():
    for j,t in v.items(): d[int(i)][3][int(j)]=t
json.dump(d,open(f,'w'),ensure_ascii=False,indent=0)
