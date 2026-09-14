"""Discovery of genuinely new axis-monomial capacities. Exact candidate polynomial reconstruction.
F(0,J)=c J^h nonzero uses joint alpha/g inequality; not assumed for arbitrary curves.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import combinations
import numpy as np
from scipy.optimize import linprog
import json,time
from poly_utils import CELLS,basis,exact_interpolant,orders
R=Path(__file__).resolve().parents[1];P=R/'inputs/positions/B699-ProA-i9-quadratic-position-20260913/evidence'
lines=json.loads((P/'all_lines_probe.json').read_text());conics=json.loads((P/'conics_probe.json').read_text());cubics=json.loads((P/'cubics_probe.json').read_text());pows=[(u,t-u) for t in range(4) for u in range(t,-1,-1)]
AA=[];bounds=[]
for _,__,___,ids in lines['lines']:
 z=np.zeros(48);z[ids]=1;AA.append(z);bounds.append(1)
for q in conics['polynomials']:
 z=np.zeros(48);z[q[-1]]=1;AA.append(z);bounds.append(2)
for q in cubics['polynomials']:
 z=np.zeros(48);z[:45]=q[-1];AA.append(z);bounds.append(3)
rng=np.random.default_rng(9172026);new={};masks=set();records=[];start=time.monotonic()
for pos in [(3,1),(1,2)]:
 eq=np.zeros((9,48));
 for ix,(r,b,c) in enumerate(CELLS):eq[r,ix]=1
 eq[0,45]=1;eq[pos[0],46]=1;eq[pos[1],47]=1;obj=np.zeros(48);obj[46:48]=1
 for epoch in range(7):
  res=linprog(obj,A_eq=eq,b_eq=np.ones(9),A_ub=AA,b_ub=bounds,bounds=[(0,None)]*45+[(0,1)]*3,method='highs')
  if not res.success:print('INFEASIBLE',pos,flush=True);break
  weights=res.x[:45];print('LP',pos,epoch,2-res.fun,flush=True);count0=len(new);stats=[]
  for degree in [2,3,4,5]:
   count_d=len(new)
   for h in range(degree+1):
    if degree>=3 and h not in [1,degree]:continue
    polys,E=basis(degree,h);K=len(polys)-1;active=np.flatnonzero(weights>1e-9)
    # Include zero-mass origin if it helps produce special curves (not required).
    pool=active if len(active)>=K else np.arange(45)
    seen=set()
    ntrials=1800 if degree==2 else 1200
    for trial in range(ntrials):
     if len(pool)<K:continue
     probs=(weights[pool]+0.025);probs/=probs.sum()
     ids=tuple(sorted(rng.choice(pool,size=K,replace=False,p=probs)))
     if ids in seen:continue
     seen.add(ids)
     if weights[list(ids)].sum()<=degree-1.1:continue
     poly=exact_interpolant(E,list(ids),polys)
     if poly is None or poly in new:continue
     axis=[(v,c) for u,v,c in poly if u==0]
     if len(axis)!=1 or abs(axis[0][1])>2**100:continue
     deg=max(u+v for u,v,c in poly)
     ms=orders(poly);mask=tuple(ms)
     if mask in masks:continue
     score=float(weights@np.array(ms))
     if score>deg+1e-8:
      z=np.zeros(48);z[:45]=ms;AA.append(z);bounds.append(deg);masks.add(mask);new[poly]={'poly':poly,'orders':ms,'degree':deg,'axis':axis[0],'discovery_position':pos,'epoch':epoch,'score_at_discovery':score}
    stats.append([degree,h,len(new)-count_d]);print('  GEN',pos,epoch,degree,h,'total',len(new),'time',round(time.monotonic()-start,1),flush=True)
   if len(new)>count0+120:break
  records.append({'positions':pos,'epoch':epoch,'bound_before':2-res.fun,'new_count':len(new)-count0,'stats':stats})
  (R/'evidence/axis_polynomials_probe.json').write_text(json.dumps({'status':'EXACT_POLYNOMIALS_DISCOVERY_MODEL_NOT_FINAL_PROOF','records':records,'polynomials':list(new.values()),'seconds':time.monotonic()-start},indent=2))
  if len(new)==count0:break
print('FINAL',len(new),time.monotonic()-start,flush=True)
