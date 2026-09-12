"""New residual support only: Q2,Q5 at row zero, Q3,Q7 at distinct other rows.
Discovery LP for weighted full-prime-power divisibility. Not a proof by samples.
"""
from pathlib import Path
from fractions import Fraction as F
import itertools,json,numpy as np
from scipy.optimize import linprog
R=Path(__file__).resolve().parents[1]
cells=[(a,b,a-b) for a in range(9) for b in range(a+1)]
# Variables: 45 large-prime log masses; small masses t0,t3,t7.
rows=[]
for r,s in itertools.permutations(range(1,9),2):
 Aeq=[]
 for a in range(9):
  eq=np.zeros(48)
  for k,(aa,b,c) in enumerate(cells):
   if a==aa:eq[k]=1
  if a==0:eq[45]=1
  if a==r:eq[46]=1
  if a==s:eq[47]=1
  Aeq.append(eq)
 Aub=[]
 for dim in [1,2]:
  for b in range(9):
   eq=np.zeros(48)
   for k,t in enumerate(cells):
    if t[dim]==b:eq[k]=1
   Aub.append(eq)
 obj=np.zeros(48);obj[46:48]=1
 res=linprog(obj,A_eq=Aeq,b_eq=np.ones(9),A_ub=Aub,b_ub=np.ones(18),bounds=[(0,None)]*45+[(0,1)]*3,method='highs')
 row={'r3':r,'r7':s,'feasible':res.success}
 if res.success:
  row.update({'minimum_t3_plus_t7':str(F(res.fun).limit_denominator(100000)),'max_A3A7_exponent':str(F(2-res.fun).limit_denominator(100000)),'primal':[str(F(float(x)).limit_denominator(100000)) for x in res.x],'dual_eq':[str(F(float(x)).limit_denominator(100000)) for x in res.eqlin.marginals],'dual_ub':[str(F(float(x)).limit_denominator(100000)) for x in res.ineqlin.marginals],'dual_bounds_upper':[str(F(float(x)).limit_denominator(100000)) for x in res.upper.marginals]})
  print(r,s,row['minimum_t3_plus_t7'],row['max_A3A7_exponent'])
 rows.append(row)
out={'status':'DISCOVERY_ONLY_NEW_RESIDUAL_POSITION_MODEL','configurations':len(rows),'feasible':sum(r['feasible'] for r in rows),'rows':rows}
(R/'evidence/two_high_position_probe.json').write_text(json.dumps(out,indent=2)+'\n')
print('feasible',out['feasible'],'/',len(rows))
