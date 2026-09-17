from pathlib import Path
from collections import Counter
import sympy as sp,json,time
root=Path(__file__).parents[1];N,X=sp.symbols('N X')
pts=[(r,s*(r-s)) for r in range(3,9) for s in range(r//2+1)]
b=[(a,c) for c in range(4) for a in range(7-2*c)]
base=[[r**a*v**c for a,c in b] for r,v in pts];ans=[];ct=Counter()
for line in (root/'evidence/eval14_lowrank.txt').read_text().splitlines():
 mask,*_=map(int,line.split());A=sp.Matrix([base[i] for i in range(21) if mask>>i&1]);ns=A.nullspace()
 polys=[sum(v*N**a*X**c for v,(a,c) in zip(q,b)) for q in ns]
 g=sp.factor(sp.gcd_list(polys));rank5=sp.Matrix([[row[i] for i,(a,c) in enumerate(b) if a+2*c<=5] for row in A.tolist()]).rank()
 ct[(len(ns),rank5,str(g))]+=1
 ans.append({'mask':mask,'rank':16-len(ns),'rank5':rank5,'gcd':str(g),'basis':[str(sp.factor(p)) for p in polys]})
(root/'evidence/eval14_lowrank_exact.json').write_text(json.dumps(ans,indent=2))
print('TOTAL',len(ans));print('gcd1',sum(x['gcd']=='1' for x in ans));print('rank5',Counter(x['rank5'] for x in ans))
for x in ans:
 if x['gcd']=='1': print(json.dumps(x))
