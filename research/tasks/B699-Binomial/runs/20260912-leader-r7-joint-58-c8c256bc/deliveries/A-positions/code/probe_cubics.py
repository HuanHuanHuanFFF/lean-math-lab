from pathlib import Path
from fractions import Fraction as F
from math import gcd,comb,factorial
from functools import reduce
from itertools import combinations
import numpy as np
from scipy.optimize import linprog
import json,time,sympy as sp
R=Path(__file__).resolve().parents[1]
old=json.loads((R/'evidence/all_lines_probe.json').read_text())
cp=json.loads((R/'evidence/conics_probe.json').read_text())
cells=[(r,s,r-s) for r in range(9) for s in range(r+1)]
b,c,x,y=sp.symbols('b c x y')
pows=[(0,0),(1,0),(0,1),(2,0),(1,1),(0,2),(3,0),(2,1),(1,2),(0,3)]
bs=[sp.sympify(sp.prod(b-i for i in range(u))*sp.prod(c-i for i in range(v)))/factorial(u)/factorial(v) for u,v in pows]
ORD=np.array([[int(sp.Poly(6*q,b,c).coeff_monomial(b**u*c**v)) for q in bs] for u,v in pows],dtype=np.int64)
SHIFT=np.array([[int(sp.Poly(sp.expand(6*q.subs({b:x+9,c:x+y+9})),x,y).coeff_monomial(x**u*y**v)) for q in bs] for u,v in pows],dtype=np.int64)
M=np.array([[comb(bb,u)*comb(cc,v) if bb>=u and cc>=v else 0 for u,v in pows] for r,bb,cc in cells],dtype=np.int64)
Mordinary=np.array([[bb**u*cc**v for u,v in pows] for r,bb,cc in cells],dtype=np.int64)
derivs=[]
for dx,dy in [(1,0),(0,1),(2,0),(1,1),(0,2)]:
 derivs.append(np.array([[comb(u,dx)*comb(v,dy)*bb**(u-dx)*cc**(v-dy) if u>=dx and v>=dy else 0 for u,v in pows] for r,bb,cc in cells],dtype=np.int64))
AA=[];bounds=[]
for a0,b0,c0,ids in old['lines']:
 z=np.zeros(48);z[ids]=1;AA.append(z);bounds.append(1)
for q in cp['polynomials']:
 z=np.zeros(48);z[q[-1]]=1;AA.append(z);bounds.append(2)
polys={};masks=set();results=[];rng=np.random.default_rng(20260913);start=time.time()
for r,s in [(1,2),(2,1),(1,3),(3,1)]:
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
 for step in range(12):
  res=linprog(obj,A_eq=Aeq,b_eq=np.ones(9),A_ub=AA,b_ub=bounds,bounds=[(0,None)]*45+[(0,1)]*3,method='highs')
  if not res.success:break
  inds=np.argsort(-res.x[:45])[:16];combos=np.array(list(combinations(inds,9)))
  mats=M[combos];cofs=[]
  for j in range(10):cofs.append(np.rint(np.linalg.det(np.delete(mats,j,axis=2)))*(-1)**j)
  qs=np.stack(cofs,axis=1).astype(np.int64)
  gains={}
  for q,cs in zip(qs,combos):
   if not q.any():continue
   gg=reduce(gcd,map(int,q));q=q//gg
   if np.any(M[cs]@q):continue  # reject floating discovery errors
   sh=SHIFT@q
   if np.all(sh<=0):q=-q;sh=-sh
   if not np.all(sh>=0):continue
   oq=ORD@q; gg=reduce(gcd,map(int,oq));oq=oq//gg
   if not oq[6:].any():continue
   key=tuple(map(int,oq))
   if key in polys:continue
   vals=Mordinary@oq;mask=(vals==0).astype(int)
   first=(derivs[0]@oq==0)&(derivs[1]@oq==0)&(mask==1)
   second=first.copy()
   for der in derivs[2:]:second &= der@oq==0
   mask+=first.astype(int)+second.astype(int)
   mk=tuple(map(int,mask))
   if mk in masks:continue
   excess=float(mask@res.x[:45])-3
   if excess>1e-8:gains[key]=(excess,mk)
  count=0
  for key,(excess,mk) in sorted(gains.items(),key=lambda kv:-kv[1][0])[:160]:
   if mk in masks:continue
   polys[key]=mk;masks.add(mk);z=np.zeros(48);z[:45]=mk;AA.append(z);bounds.append(3);count+=1
  trace.append([step,float(res.fun),count]);print('step',r,s,trace[-1],flush=True)
  if not count:break
 rec={'r3':r,'r7':s,'trace':trace,'success':bool(res.success),'cubics':len(polys)}
 if res.success:rec.update(max_A3A7=str(F(float(2-res.fun)).limit_denominator(1000000)),primal=[str(F(float(x)).limit_denominator(1000000)) for x in res.x])
 print('pair',r,s,rec.get('max_A3A7'),flush=True);results.append(rec)
 (R/'evidence/cubics_probe.json').write_text(json.dumps({'status':'DISCOVERY_ONLY','polynomials':[[*k,list(ids)] for k,ids in polys.items()],'results':results},indent=2))
print('seconds',time.time()-start,flush=True)
