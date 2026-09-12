"""Discovery only: full-power products on primitive origin rays divide u*beta-v*alpha."""
from pathlib import Path
from fractions import Fraction as F
from math import gcd
import json
import numpy as np
from scipy.optimize import linprog
R=Path(__file__).resolve().parents[1]
pts=[(r,b,r-b) for r in range(1,9) for b in range(r+1)]
rays=sorted({(r//gcd(r,b),b//gcd(r,b)) for r,b,c in pts})
A=[];B=[];names=[]
for u,v in rays:
 A.append([int(u*b==v*r) for r,b,c in pts]+[-1]);B.append(0);names.append(['ray',u,v])
for dim in (1,2):
 for b in range(1,9):
  A.append([int(t[dim]==b) for t in pts]+[0]);B.append(1);names.append(['column',dim,b])
out=[]
for r,s in [(1,2),(2,1),(1,3),(3,1),(1,4),(4,1),(2,3),(3,2)]:
 U=[a for a in range(1,9) if a not in(r,s)]
 E=[[int(t[0]==a) for t in pts]+[0] for a in U]
 res=linprog([0]*44+[1],A_eq=E,b_eq=[1]*6,A_ub=A,b_ub=B,bounds=(0,None),method='highs')
 z={'r3':r,'r7':s,'minimal_t':str(F(float(res.fun)).limit_denominator(1000000)),'primal':[str(F(float(x)).limit_denominator(1000000)) for x in res.x],'row_dual':[str(F(float(x)).limit_denominator(1000000)) for x in res.eqlin.marginals],'constraint_dual':[str(F(float(x)).limit_denominator(1000000)) for x in res.ineqlin.marginals],'rough_rows':U}
 print(r,s,z['minimal_t'],[(names[i],v) for i,v in enumerate(z['constraint_dual']) if F(v)])
 out.append(z)
(R/'evidence/primitive_ray_discovery.json').write_text(json.dumps({'status':'DISCOVERY_ONLY','constraints':names,'positions':out},indent=2)+'\n')
