"""Discovery of exact cover certificates for alpha-normalized endpoints."""
from pathlib import Path
from fractions import Fraction as F
import itertools,json,time
import numpy as np
from scipy.optimize import linprog
R=Path(__file__).resolve().parents[1]
pts=[(r,b,r-b) for r in range(1,9) for b in range(r+1)]
# primal LP: six non-maximum rows mass=1, two rows >=0; endpoints<=t
out=[]
for r,s in [(1,2),(2,1),(1,3),(3,1),(1,4),(4,1),(2,3),(3,2)]:
 A=[];B=[]
 for dim in (1,2):
  for b in range(9):
   a=[int(t[dim]==b) for t in pts]+[-1 if b==0 else 0]
   A.append(a);B.append(0 if b==0 else 1)
 U=[a for a in range(1,9) if a not in(r,s)]
 E=[[int(t[0]==a) for t in pts]+[0] for a in U]
 res=linprog([0]*44+[1],A_eq=E,b_eq=[1]*6,A_ub=A,b_ub=B,bounds=(0,None),method='highs')
 z={'r3':r,'r7':s,'minimal_alpha_exponent':str(F(float(res.fun)).limit_denominator(1000000)), 'primal':[str(F(float(x)).limit_denominator(1000000)) for x in res.x], 'row_dual':[str(F(float(x)).limit_denominator(1000000)) for x in res.eqlin.marginals], 'col_dual':[str(F(float(x)).limit_denominator(1000000)) for x in res.ineqlin.marginals], 'rough_rows':U}
 out.append(z); print(r,s,z['minimal_alpha_exponent'], 'row_dual',z['row_dual'],'col_dual',z['col_dual'])
(R/'evidence/endpoint_height_discovery.json').write_text(json.dumps(out,indent=2)+'\n')
