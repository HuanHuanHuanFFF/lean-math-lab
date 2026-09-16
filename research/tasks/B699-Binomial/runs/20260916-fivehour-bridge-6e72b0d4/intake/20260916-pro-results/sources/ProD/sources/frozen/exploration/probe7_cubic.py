import json,math,itertools,time
from pathlib import Path
from fractions import Fraction
import numpy as np
from scipy.optimize import linprog
root=Path(__file__).parent; old=json.loads((root/'oldodd/failure_models.json').read_text());m=7
exps=[(3,0),(2,1),(1,2),(0,3),(2,0),(1,1),(0,2),(1,0),(0,1),(0,0)]
pts=[(b,r-b) for r in range(m) for b in range(r+1)]
V=np.array([[b**a*c**d for a,d in exps] for b,c in pts],dtype=np.int64);Vf=V.astype(float)
# translation coefficients for f(8+x,8+x+y)
out_exp=[(a,b) for a in range(4) for b in range(4-a)]
T=np.zeros((len(out_exp),10),dtype=np.int64)
for col,(a,b) in enumerate(exps):
 for c in range(a+1):
  for d in range(b+1):
   for e in range(b-d+1):
    xp,yp=c+d,e
    coeff=math.comb(a,c)*8**(a-c)*math.comb(b,d)*math.comb(b-d,e)*8**(b-d-e)
    T[out_exp.index((xp,yp)),col]+=coeff
allnew={};outputs=[]
for mod in old['models']:
 if mod['m']!=7 or mod['H']==[0,3,4]:continue
 H=mod['H'];t0=time.time();xx=list(map(Fraction,mod['values']));xx=[(xx[i]+xx[pts.index((c,b))])/2 for i,(b,c) in enumerate(pts)]
 D=math.lcm(*(z.denominator for z in xx));wi=[int(z*D) for z in xx];support=[i for i,z in enumerate(wi) if z>0]
 checked=0;found=0;badsg=0
 for inds in itertools.combinations(support,9):
  if sum(wi[i] for i in inds)<3*D:continue
  checked+=1
  _,sv,vh=np.linalg.svd(Vf[list(inds)],full_matrices=True)
  if sv[-1]<1e-9:continue
  u=vh[-1];r=max(range(10),key=lambda z:abs(u[z]));fr=[Fraction(float(v/u[r])).limit_denominator(100000) for v in u];L=math.lcm(*(v.denominator for v in fr))
  if L>10**10:continue
  co=[int(v*L) for v in fr];g=math.gcd(*co);co=tuple(v//g for v in co)
  if not any(co[:4]):continue
  if next(v for v in co if v)<0:co=tuple(-v for v in co)
  if co in allnew:continue
  vv=V@np.array(co,dtype=np.int64)
  if any(vv[i] for i in inds):continue
  zeros=[i for i,v in enumerate(vv) if v==0]
  q=[sum(int(T[h,col])*co[col] for col in range(10)) for h in range(len(out_exp))]
  if not ((all(v>=0 for v in q) and q[0]>0) or(all(v<=0 for v in q)and q[0]<0)):
   badsg+=1;continue
  allnew[co]=dict(degree=3,coeffs=list(co),zeros=zeros,nonzero='sign');found+=1
 print('H',H,'subsets',checked,'new',found,'signbad',badsg,'elapsed',round(time.time()-t0,2),flush=True)
 fs=old['pools']['7']+list(allnew.values());rows=[r for r in range(m) if r not in H];N=len(fs)
 A=np.zeros((len(pts),N+len(rows)))
 for i,f in enumerate(fs):A[f['zeros'],i]=-1
 for z,r in enumerate(rows):
  for h,p in enumerate(pts):
   if sum(p)==r:A[h,N+z]=1
 E=np.array([[f['degree'] for f in fs]+[0]*len(rows)])
 sol=linprog([0]*N+[-1]*len(rows),A_ub=A,b_ub=np.zeros(len(pts)),A_eq=E,b_eq=[1],bounds=(0,None),method='highs')
 print(' optimum',sol.fun,flush=True)
 if sol.fun<-1.00000001:
  fr=[Fraction(float(v)).limit_denominator(1000000) for v in sol.x];L=math.lcm(*(v.denominator for v in fr));w=[int(v*L) for v in fr];g=math.gcd(*w);w=[v//g for v in w]
  rec=dict(m=m,H=H,polys=[dict(f,weight=w[i]) for i,f in enumerate(fs) if w[i]],row_weights={r:w[N+z] for z,r in enumerate(rows)})
  print(json.dumps(rec),flush=True);outputs.append(rec)
 (root/'probe7_cubic_pool.json').write_text(json.dumps(list(allnew.values()),indent=2))
 (root/'probe7_cubic_results.json').write_text(json.dumps(outputs,indent=2))
