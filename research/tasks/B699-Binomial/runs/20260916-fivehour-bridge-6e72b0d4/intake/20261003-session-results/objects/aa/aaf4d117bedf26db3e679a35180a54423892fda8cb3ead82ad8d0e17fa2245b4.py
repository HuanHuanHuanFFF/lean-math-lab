from common import *
from collections import Counter
rec=json.loads((ROOT/'certificates/probe/s1907_after92_combinations.json').read_text());rows=rec['combinations'];ty=list(map(tuple,rec['types']));small=[x for x in ty if x[0]<=14];print('small types',len(small),small)
A=np.array([[sum(tuple(a)==x for a in r) for x in small] for r in rows],dtype=np.int64);slack=np.array([137-sum(x[0] for x in r) for r in rows],dtype=np.int64)
best=[];opt=1e100
for ds in itertools.product(range(3),repeat=len(small)):
 co=sum(ds)
 if co>14:continue
 if np.all(A@np.array(ds)>slack):
  cost=sum(d*(x[0]**2+sum((v//2+1) for v in x[1:])*3) for x,d in zip(small,ds))
  if cost<opt:opt=cost;best=[{'type':x,'raise':d} for x,d in zip(small,ds) if d]
print('plan',opt,best)
(ROOT/'certificates/probe/s1907_candidate_plan.json').write_text(json.dumps({'counterfactual_only':True,'new_domains_needed':sum(x['raise'] for x in best),'targets':best},indent=2)+'\n')
