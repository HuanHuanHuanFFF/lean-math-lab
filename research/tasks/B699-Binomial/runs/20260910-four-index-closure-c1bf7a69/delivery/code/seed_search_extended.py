from seed_probe import runpair,ROOT
import json,time,itertools
old=json.load(open(ROOT/'outputs/seed_probe.json'))['rows']
rows=[]
for p,q in itertools.combinations([2,3,5,7,11,13],2):
 t0=time.time();r=runpair(p,q,10**18,500);r['seconds']=time.time()-t0;rows.append(r)
 print(p,q,r['best'],r['seconds'],flush=True)
 (ROOT/'outputs/seed_search_extended.json').write_text(json.dumps(dict(status='FINITE FLOAT DIAGNOSTIC; coefficients<=500',rows=rows),indent=2))
