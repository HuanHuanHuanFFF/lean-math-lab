from pathlib import Path
from fractions import Fraction as F
from math import gcd
from functools import reduce,lru_cache
from itertools import combinations
import numpy as np
from scipy.optimize import linprog
import json,time
R=Path(__file__).resolve().parents[1]
old=json.loads((R/'evidence/all_lines_probe.json').read_text())
cp=json.loads((R/'evidence/conics_probe.json').read_text())
cells=[(r,s,r-s) for r in range(9) for s in range(r+1)]
M=np.array([[1,b,c,b*b,b*c,c*c] for r,b,c in cells],dtype=np.int64)
SHIFT=np.array([[1,9,9,81,81,81],[0,1,1,18,18,18],[0,0,1,0,9,18],[0,0,0,1,1,1],[0,0,0,0,1,2],[0,0,0,0,0,1]])
seeds=R/'evidence/conic_all_seeds.json'
if seeds.exists(): polys={tuple(row[:6]):row[6] for row in json.loads(seeds.read_text())}
else:
 polys={};masks=set();start=time.time()
 for aa in range(-3,4):
  for bb in range(-6,7):
   for cc in range(-3,4):
    if not(aa or bb or cc):continue
    for d in range(-24,25):
     for e in range(-24,25):
      coef=np.array([0,d,e,aa,bb,cc]);vals=M@coef
      uniq,counts=np.unique(vals,return_counts=True)
      for v in uniq[counts>=5]:
       q=coef.copy();q[0]=-v
       f,d0,e0,a0,b0,c0=map(int,q)
       det=2*a0*(4*c0*f-e0*e0)-b0*(2*b0*f-e0*d0)+d0*(b0*e0-2*c0*d0)
       if det==0:continue
       gg=reduce(gcd,map(int,q));q=q//gg
       if next(x for x in q if x)<0:q=-q
       key=tuple(map(int,q));ids=np.flatnonzero(M@q==0).tolist();mask=tuple(ids)
       if mask not in masks:polys[key]=ids;masks.add(mask)
 seeds.write_text(json.dumps([[*k,v] for k,v in polys.items()]))
 print('all seed polys',len(polys),time.time()-start,flush=True)
@lru_cache(maxsize=None)
def roots(p,K,A,B,C,filter3):
 sol=[0];mod=1
 for k in range(1,K+1):
  mod2=mod*p
  sol=[j+mod*h for j in sol for h in range(p) if (A*(j+mod*h)**2+B*(j+mod*h)+C)%mod2==0]
  if p==3 and filter3=='unit':sol=[j for j in sol if j%3!=0]
  if p==3 and filter3=='multiple':sol=[j for j in sol if j%3==0]
  if not sol:return False,k
  if len(sol)>150:return True,k
  mod=mod2
 return True,K

def validity(q,r,s,m,ka,kb):
 sh=SHIFT@np.array(q)
 if np.all(sh>=0) or np.all(sh<=0):return ['positive',None]
 f,d,e,a,b,c=q;A=a-b+c
 for p,K,n0,fil in [(2,ka,0,''),(5,kb,0,''),(3,6,r,'unit' if m==3 else ('multiple' if r==3 else '')),(7,4,s,'')]:
  B=(b-2*c)*n0+d-e;C=c*n0*n0+e*n0+f
  yes,k=roots(p,K,A,B,C,fil)
  if not yes:return ['modular',p,k,fil]
 return None
results=[]
for ka,kb in [(4,2),(8,4)]:
 for r,s,m in [(1,2,1),(2,1,1),(1,3,1),(3,1,1),(3,1,3)]:
  AA=[];bounds=[];selected=[];masks=set()
  for a,b,c,ids in old['lines']:
   z=np.zeros(48);z[ids]=1;AA.append(z);bounds.append(1)
  for q0 in cp['polynomials']:
   q=q0[:6];ids=q0[6];z=np.zeros(48);z[ids]=1;AA.append(z);bounds.append(2);selected.append([q,ids,['positive',None]]);masks.add(tuple(ids))
  for q,ids in polys.items():
   if tuple(ids) in masks:continue
   v=validity(q,r,s,m,ka,kb)
   if v:
    z=np.zeros(48);z[ids]=1;AA.append(z);bounds.append(2);selected.append([q,ids,v]);masks.add(tuple(ids))
  Aeq=[]
  for a in range(9):
   eq=np.zeros(48)
   for k,(aa,_,__) in enumerate(cells):
    if a==aa:eq[k]=1
   if a==0:eq[45]=1
   if a==r:eq[46]=1
   if a==s:eq[47]=1
   Aeq.append(eq)
  obj=np.zeros(48);obj[46:48]=1;trace=[]
  for step in range(10):
   res=linprog(obj,A_eq=Aeq,b_eq=np.ones(9),A_ub=AA,b_ub=bounds,bounds=[(0,None)]*45+[(0,1)]*3,method='highs')
   if not res.success:break
   inds=np.argsort(-res.x[:45])[:19];combos=np.array(list(combinations(inds,5)))
   mats=M[combos];cofs=[]
   for j in range(6):cofs.append(np.rint(np.linalg.det(np.delete(mats,j,axis=2)))*(-1)**j)
   qs=np.stack(cofs,axis=1).astype(np.int64);gains={}
   for q in qs:
    if not q.any():continue
    gg=reduce(gcd,map(int,q));q=q//gg
    ids=np.flatnonzero(M@q==0).tolist()
    if tuple(ids) in masks:continue
    excess=sum(res.x[i] for i in ids)-2
    if excess<=1e-8:continue
    key=tuple(map(int,q));v=validity(key,r,s,m,ka,kb)
    if v:gains[key]=(excess,ids,v)
   count=0
   for q,(excess,ids,v) in sorted(gains.items(),key=lambda kv:-kv[1][0])[:120]:
    if tuple(ids) in masks:continue
    z=np.zeros(48);z[ids]=1;AA.append(z);bounds.append(2);selected.append([q,ids,v]);masks.add(tuple(ids));count+=1
   trace.append([step,float(res.fun),count])
   if not count:break
  rec={'r3':r,'r7':s,'m':m,'a_min_probe':ka,'b_min_probe':kb,'success':bool(res.success),'trace':trace,'poly_count':len(selected)}
  if res.success:rec.update(max_A3A7=str(F(float(2-res.fun)).limit_denominator(1000000)),primal=[str(F(float(x)).limit_denominator(1000000)) for x in res.x])
  print('case',ka,kb,r,s,m,rec.get('max_A3A7'),len(selected),trace,flush=True);results.append(rec)
  name=f'modular_conic_case_{ka}_{kb}_{r}_{s}_{m}.json'
  (R/'evidence'/name).write_text(json.dumps({'status':'DISCOVERY_ONLY','polynomials':selected,'result':rec},indent=2))
  (R/'evidence/modular_conics_probe.json').write_text(json.dumps({'status':'DISCOVERY_ONLY','results':results},indent=2))
