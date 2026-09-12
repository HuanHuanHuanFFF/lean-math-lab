from pathlib import Path
import json,itertools,math,numpy as np
from scipy.optimize import linprog
from fractions import Fraction as F
R=Path(__file__).resolve().parents[1]
fr=json.loads((R/'evidence/last_pair_discovery.json').read_text())['pareto_rows']
# conservative discovery thresholds; future proof requires separate exact acceptance.
cuts=[]
for r in fr:
 xp=max(0,math.floor((r['xp_float']-.001)*10000));xq=max(0,math.floor((r['xq_float']-.001)*10000))
 cuts.append((xp,xq) if r['p']==3 else(xq,xp))
profiles=[]
for x in {0}|{x for x,y in cuts}:profiles.append((x,max([y for xx,y in cuts if x<xx]+[0])))
cells=[(a,b,a-b) for a in range(9) for b in range(a+1)]
Aub=[]
for dim in [1,2]:
 for b in range(9):
  eq=np.zeros(48)
  for k,t in enumerate(cells):
   if t[dim]==b:eq[k]=1
  Aub.append(eq)
rows=[]
for r,s in itertools.permutations(range(1,6),2):
 if r+s>6:continue
 Aeq=[]
 for a in range(9):
  eq=np.zeros(48)
  for k,(aa,b,c) in enumerate(cells):
   if a==aa:eq[k]=1
  if a==0:eq[45]=1
  if a==r:eq[46]=1
  if a==s:eq[47]=1
  Aeq.append(eq)
 feasible=[]
 for x,y in profiles:
  res=linprog(np.zeros(48),A_eq=Aeq,b_eq=np.ones(9),A_ub=Aub,b_ub=np.ones(18),bounds=[(0,None)]*45+[(0,1),(0,1-x/10000),(0,1-y/10000)],method='highs')
  if res.success:feasible.append({'x3':x,'x7':y,'primal':[str(F(float(x)).limit_denominator(100000)) for x in res.x]})
 rows.append({'r3':r,'r7':s,'feasible_profiles':feasible})
 print(r,s,[(x['x3'],x['x7']) for x in feasible])
(R/'evidence/joint_residual_discovery.json').write_text(json.dumps({'status':'DISCOVERY_ONLY','cuts_3_7':cuts,'rows':rows},indent=2)+'\n')
