import pathlib,json,sys,time
from collections import Counter
from itertools import product
from jets import Model,full_minor
p=pathlib.Path(__file__).resolve().parents[1];out=[]
for q in range(21,27):
 start=time.monotonic();M=Model(q,1000033);patterns=[]
 for a in range(q+1):
  for b in range(q-a+1):
   for c in range(q-a-b+1):
    ex=(a,b,c,q-a-b-c);rs=[sorted(t*(r-t) for t,n in enumerate(ex) for _ in range(n)) for r in range(3,9)];mm=[Counter(row) for row in rs]
    if sum(len(m) for m in mm)<14:continue
    if any(sum(m[t*(r-t)] for r,m in zip(range(3,9),mm))>2*q for t in range(9)):continue
    g=sum(n*(n-1)//2 for m in mm for n in m.values())
    if g>(q-1)**2:continue
    co={'q':q,'h':0,'roots':rs,'lambda':None,'genus_cost':g};lab,A=M.build(co);rr,cc,rk=full_minor([row[:-1] for row in A],M.p)
    patterns.append({'exponents':ex,'equations':len(A),'rank_mod':rk,'columns':M.nc,'nullity_mod':M.nc-rk})
 print('PRODUCT_PROBE',q,'patterns',len(patterns),'positive_nullity',sum(v['nullity_mod']>0 for v in patterns),'seconds',round(time.monotonic()-start,3),flush=True)
 out.append({'q':q,'patterns':patterns});(p/'evidence/product_degree_probe.json').write_text(json.dumps(out,sort_keys=True,separators=(',',':'))+'\n')
