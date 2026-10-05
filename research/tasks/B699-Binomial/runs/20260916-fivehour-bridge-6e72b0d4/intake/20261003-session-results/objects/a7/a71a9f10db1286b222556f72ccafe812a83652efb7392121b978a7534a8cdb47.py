"""Diagnostic on an explicitly transcribed older 649-table projection, NOT latest 27-table."""
from pathlib import Path
from itertools import product
import json
root=Path(__file__).resolve().parents[1]
C=(6,7,4,6); h=127
rows=sorted(set(tuple(map(int,s.split())) for s in (root/'sources/global649_c3c4zero_excerpt.txt').read_text().splitlines()))
assert all(len(x)==7 and x[1:3]==(0,0) for x in rows)
a=[(x[0],x[3:]) for x in rows if all(x[i+3]<=C[i] for i in range(4))]
# Exact integer capacity convolution; all budgets, not just the target corner.
import numpy as np
cells=list(product(*(range(c+1) for c in C))); inf=10000
sh=tuple(c+1 for c in C); arrays=[np.zeros(sh,dtype=np.int64)]
for k in range(1,9):
 new=np.full(sh,inf,dtype=np.int64)
 for e,c in a:
  dst=tuple(slice(x,None) for x in c);src=tuple(slice(0,n-x) for n,x in zip(sh,c))
  new[dst]=np.minimum(new[dst],arrays[-1][src]+e)
 arrays.append(new)
M=[{R:int(arr[R]) for R in cells} for arr in arrays]
P43={}
for fee, qs in [((2,1,0,0),range(4,11)),((2,1,0,1),range(4,11)),((2,1,0,2),range(4,8)),((2,1,2,0),range(4,8)),((2,2,0,0),range(4,10)),((2,2,0,1),range(4,6)),((2,3,0,0),[4])]:
 P43[fee]=set(qs)
low=[]
for q in range(4,11):
 for c in product(range(2,C[0]+1,2),range(1,C[1]+1),range(0,C[2]+1,2),range(C[3]+1)):
  rem=tuple(C[i]-c[i] for i in range(4))
  if q+M[7][rem]<=h:low.append({'q':q,'fee':[0,0,*c],'M7':M[7][rem],'known_LOW_T43':q in P43.get(c,set())})
out={'scope':'older649-projection diagnostic only','raw_excerpt_rows':len(rows),'fitting_types':len(a),'M8':M[8][C], 'low':low,'missing':[x for x in low if not x['known_LOW_T43']]}
(root/'certificates/old649_low_preimage_diagnostic.json').write_text(json.dumps(out,indent=2)+'\n')
print({k:v for k,v in out.items() if k not in ['low','missing']}); print('low',len(low),'missing',len(out['missing']));print(json.dumps(out['missing'],indent=1))
