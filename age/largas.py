import json,sys
for i,q in enumerate(json.load(open(sys.argv[1]))):
    ok=q[2];mal=q[3]
    if len(ok)>=max(len(x) for x in mal): print(i,len(ok),'|',q[1][:70],'| OK:',ok,'| MAL:',' || '.join(mal))
