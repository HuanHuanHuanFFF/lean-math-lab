from pathlib import Path
from fractions import Fraction as F
from math import gcd
from functools import reduce
from itertools import combinations
import numpy as np
from scipy.optimize import linprog
import json
R=Path(__file__).resolve().parents[1]
cells=[(r,s) for r in range(9) for s in range(r+1)]
lines={}
for (r,s),(t,u) in combinations(cells,2):
 a=s-u;b=t-r;c=a*r+b*s
 g=gcd(gcd(a,b),c);a//=g;b//=g;c//=g
 if a<0 or a==0 and b<0:a,b,c=-a,-b,-c
 lines[a,b,c]=[k for k,(x,y) in enumerate(cells) if a*x+b*y==c]
print('lines',len(lines))
Aub=[]
for line,ids in lines.items():
 eq=np.zeros(48);eq[ids]=1;Aub.append(eq)
obj=np.zeros(48);obj[46:48]=1
pairs=[(1,2),(2,1),(1,3),(3,1),(1,4),(4,1),(2,3),(3,2)]
results=[]
for r,s in pairs:
 Aeq=[]
 for a in range(9):
  eq=np.zeros(48)
  for k,(aa,_) in enumerate(cells):
   if aa==a:eq[k]=1
  if a==0:eq[45]=1
  if a==r:eq[46]=1
  if a==s:eq[47]=1
  Aeq.append(eq)
 res=linprog(obj,A_eq=Aeq,b_eq=np.ones(9),A_ub=Aub,b_ub=np.ones(len(Aub)),bounds=[(0,None)]*45+[(0,1)]*3,method='highs')
 rec={'r3':r,'r7':s,'success':bool(res.success)}
 if res.success:
  rat=lambda xs:[str(F(float(x)).limit_denominator(1000000)) for x in xs]
  rec.update(minimum_t3t7=str(F(float(res.fun)).limit_denominator(100000)),max_A3A7=str(F(float(2-res.fun)).limit_denominator(100000)),primal=rat(res.x),dual_eq=rat(res.eqlin.marginals),dual_ub=rat(res.ineqlin.marginals),dual_upper=rat(res.upper.marginals))
 print(r,s,rec.get('max_A3A7', 'infeasible'))
 results.append(rec)
(R/'evidence/all_lines_probe.json').write_text(json.dumps({'status':'DISCOVERY_ONLY','lines':[[*l,ids] for l,ids in lines.items()],'results':results},indent=2))
