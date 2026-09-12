from pathlib import Path
from fractions import Fraction as F
from math import gcd
from functools import reduce
from itertools import combinations
import numpy as np
from scipy.optimize import linprog
import json,time
R=Path(__file__).resolve().parents[1]
old=json.loads((R/'evidence/all_lines_probe.json').read_text())
cells=[(r,s,r-s) for r in range(9) for s in range(r+1)]
M=np.array([[1,b,c,b*b,b*c,c*c] for r,b,c in cells],dtype=np.int64)
# F(x+9,x+y+9), coefficient order 1,x,y,x^2,xy,y^2
SHIFT=np.array([[1,9,9,81,81,81],[0,1,1,18,18,18],[0,0,1,0,9,18],[0,0,0,1,1,1],[0,0,0,0,1,2],[0,0,0,0,0,1]])
lines=old['lines']; AA=[];bounds=[]
for a,b,c,inds in lines:
 z=np.zeros(48);z[inds]=1;AA.append(z);bounds.append(1)
polys={};masks=set();start=time.time();results=[]
# targeted graph/ellipse common structured small curves first
for aa in range(-3,4):
 for bb in range(-6,7):
  for cc in range(-3,4):
   if not(aa or bb or cc): continue
   # linear coefficients search modest; constant obtained from values
   for d in range(-24,25):
    for e in range(-24,25):
     coef=np.array([0,d,e,aa,bb,cc]); vals=M@coef
     uniq,counts=np.unique(vals,return_counts=True)
     for v in uniq[counts>=5]:
      q=coef.copy();q[0]=-v
      sh=SHIFT@q
      if np.all(sh<=0):q=-q;sh=-sh
      if not np.all(sh>=0):continue
      gg=reduce(gcd,map(int,q));q=q//gg;key=tuple(map(int,q))
      if key not in polys:
       f,d0,e0,a0,b0,c0=key
       det=2*a0*(4*c0*f-e0*e0)-b0*(2*b0*f-e0*d0)+d0*(b0*e0-2*c0*d0)
       if det==0:continue
       ids=np.flatnonzero(M@q==0).tolist();mask=tuple(ids)
       if mask not in masks:polys[key]=ids;masks.add(mask)
print('seed polys',len(polys),time.time()-start,flush=True)
(R/'evidence/conic_seeds.json').write_text(json.dumps([[*k,ids] for k,ids in polys.items()]))
for q,ids in polys.items():
 z=np.zeros(48);z[ids]=1;AA.append(z);bounds.append(2)
for r,s in [(1,2),(2,1),(1,3),(3,1),(1,4),(4,1),(2,3),(3,2)]:
 Aeq=[]
 for a in range(9):
  eq=np.zeros(48)
  for k,(aa,_,__) in enumerate(cells):
   if a==aa:eq[k]=1
  if a==0:eq[45]=1
  if a==r:eq[46]=1
  if a==s:eq[47]=1
  Aeq.append(eq)
 obj=np.zeros(48);obj[46:48]=1
 trace=[]
 for step in range(15):
  res=linprog(obj,A_eq=Aeq,b_eq=np.ones(9),A_ub=AA,b_ub=bounds,bounds=[(0,None)]*45+[(0,1)]*3,method='highs')
  if not res.success:break
  inds=np.argsort(-res.x[:45])[:20];comb=np.array(list(combinations(inds,5)))
  mats=M[comb]; cofs=[]
  for j in range(6):cofs.append(np.rint(np.linalg.det(np.delete(mats,j,axis=2)))*(-1)**j)
  qs=np.stack(cofs,axis=1).astype(np.int64)
  gains=[]
  for q in qs:
   if not q.any():continue
   gg=reduce(gcd,map(int,q));q=q//gg;sh=SHIFT@q
   if np.all(sh<=0):q=-q;sh=-sh
   if not np.all(sh>=0):continue
   key=tuple(map(int,q))
   if key in polys:continue
   ids=np.flatnonzero(M@q==0).tolist()
   if tuple(ids) in masks:continue
   excess=sum(res.x[i] for i in ids)-2
   if excess>1e-8:gains.append((excess,key,ids))
  count=0
  for excess,q,ids in sorted(gains,reverse=True)[:100]:
   if q in polys:continue
   polys[q]=ids;masks.add(tuple(ids));z=np.zeros(48);z[ids]=1;AA.append(z);bounds.append(2);count+=1
  trace.append([step,float(res.fun),count])
  if not count:break
 rec={'r3':r,'r7':s,'trace':trace,'success':bool(res.success),'conics':len(polys)}
 if res.success:rec.update(max_A3A7=str(F(float(2-res.fun)).limit_denominator(100000)),primal=[str(F(float(x)).limit_denominator(1000000)) for x in res.x])
 print('pair',r,s,rec.get('max_A3A7'),trace,flush=True);results.append(rec)
 (R/'evidence/conics_probe.json').write_text(json.dumps({'status':'DISCOVERY_ONLY','polynomials':[[*k,ids] for k,ids in polys.items()],'results':results},indent=2))
(R/'evidence/conics_probe.json').write_text(json.dumps({'status':'DISCOVERY_ONLY','polynomials':[[*k,ids] for k,ids in polys.items()],'results':results},indent=2))
