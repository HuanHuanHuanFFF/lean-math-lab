"""Discovery only: all inherited finite capacities plus gcd-normalization and all cuts.
Continuous scale model only; no integer counterexamples, no omitted constants as proof.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import product
import json,time
import numpy as np
from scipy.optimize import linprog
R=Path(__file__).resolve().parents[1];P=R/'inputs/positions/B699-ProA-i9-quadratic-position-20260913/evidence'
cells=[(r,b,r-b) for r in range(9) for b in range(r+1)]
lines=json.loads((P/'all_lines_probe.json').read_text())['lines'];cons=json.loads((P/'conics_probe.json').read_text())['polynomials'];cubs=json.loads((P/'cubics_probe.json').read_text())['polynomials']
cu=json.loads((R/'inputs/fibres/B699-ProA-double-high-20260913/frozen58/evidence/selected_cuts.json').read_text())['cuts']
polys=[]
for a,b,c,ids in lines:
 z=np.zeros(50);z[ids]=1;m0=int(c==0);z[0]=0;z[49]=m0;polys.append((z,1))
for q in cons:
 z=np.zeros(50);z[q[-1]]=1;m0=0 if q[0] else (1 if q[1] or q[2] else 2);z[0]=0;z[49]=m0;polys.append((z,2))
for q in cubs:
 z=np.zeros(50);z[:45]=q[-1];m0=int(q[-1][0]);z[0]=0;z[49]=m0;polys.append((z,3))
AA=[z for z,_ in polys];bb=[v for _,v in polys]
z=np.zeros(50);z[45:49]=1;AA.append(z);bb.append(1.3)
z=np.zeros(50);z[46]=z[48]=-1;AA.append(z);bb.append(-463/5000)
z=np.zeros(50);z[0]=1;z[49]=-1;AA.append(z);bb.append(0)
AA=np.array(AA);bb=np.array(bb);pindex={2:45,3:46,5:47,7:48};start=time.monotonic();records=[]
# Pareto-reduce all 512 disjunction cases by their four independent lower bounds.
lows=set()
for bits in product([0,1],repeat=len(cu)):
 vals=[0,0,0,0]
 for bit,c in zip(bits,cu):
  p,w=(c['p'],c['wp']) if bit==0 else (c['q'],c['wq']);k=pindex[p]-45;vals[k]=max(vals[k],w)
 lows.add(tuple(vals))
lows=[x for x in lows if not any(y!=x and all(a<=b for a,b in zip(y,x)) for y in lows)]
print('minimal cut branches',len(lows),flush=True)
for pos in [(1,2),(2,1),(1,3),(3,1)]:
 eq=np.zeros((9,50));rhs=np.ones(9)
 for ix,(r,b,c) in enumerate(cells):eq[r,ix]=1
 eq[0,45]=eq[0,47]=-1;rhs[0]=-1
 eq[pos[0],46]=-1;rhs[pos[0]]=0;eq[pos[1],48]=-1;rhs[pos[1]]=0
 obj=np.zeros(50);obj[49]=-1;best=None;results=[]
 for lb in lows:
  bounds=[(0,None)]*45+[(x/10000,1) for x in lb]+[(0,1)]
  res=linprog(obj,A_eq=eq,b_eq=rhs,A_ub=AA,b_ub=bb,bounds=bounds,method='highs')
  if res.success:
   rec={'cut_minima':lb,'max_G':-res.fun,'solution':[str(F(float(v)).limit_denominator(1000000)) for v in res.x]};results.append(rec)
   if best is None or -res.fun>best['max_G']:best=rec
 records.append({'positions':pos,'best':best,'feasible_branches':len(results),'branches':results})
 print(pos,'maxG',best['max_G'] if best else 'INFEASIBLE','branches',len(results),flush=True)
(R/'evidence/normalized_polynomial_probe.json').write_text(json.dumps({'status':'DISCOVERY_ONLY_INHOMOGENEOUS_CONSTANTS_NOT_INCLUDED','all_cut_branches':len(lows),'results':records,'seconds':time.monotonic()-start},indent=2))
