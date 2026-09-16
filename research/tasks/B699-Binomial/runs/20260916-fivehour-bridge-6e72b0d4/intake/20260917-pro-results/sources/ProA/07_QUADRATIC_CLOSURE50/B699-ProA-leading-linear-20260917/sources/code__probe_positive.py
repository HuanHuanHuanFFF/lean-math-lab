from itertools import combinations, product
from scipy.optimize import linprog
import numpy as np, json, time
from pathlib import Path
root=Path(__file__).resolve().parents[1]
rows=list(range(3,9)); pats=[list(combinations(range(r//2+1),2)) for r in rows]
c=np.array([2.]*9+[-1.]*6)
results=[];t=time.time()
for i,pat in enumerate(product(*pats)):
 A=[]
 for ri,(r,ss) in enumerate(zip(rows,pat)):
  for s in ss:
   a=np.zeros(15);a[s]-=1;a[r-s]-=1;a[9+ri]=1;A.append(a)
 res=linprog(c,A_ub=A,b_ub=np.zeros(len(A)),A_eq=[np.r_[np.ones(9),np.zeros(6)]],b_eq=[1.],bounds=[(0,None)]*15,method='highs')
 results.append({'pat':pat,'gain':-res.fun,'x':res.x.tolist()})
 if i%500==0: print(i,round(time.time()-t,3),flush=True)
(root/'evidence/positive_probe.json').write_text(json.dumps(results))
print('total',len(results),'positive',sum(r['gain']>1e-8 for r in results),'min',min(r['gain'] for r in results),'sec',time.time()-t)
