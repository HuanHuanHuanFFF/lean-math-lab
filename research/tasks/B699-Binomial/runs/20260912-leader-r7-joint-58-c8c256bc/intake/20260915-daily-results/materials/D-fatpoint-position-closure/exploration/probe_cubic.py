import json,itertools,math,time
from pathlib import Path
from fractions import Fraction
import sympy as s
import numpy as np
from scipy.optimize import linprog
root=Path(__file__).parent
old=json.loads((root/'oldodd/failure_models.json').read_text())
j,k,x,y=s.symbols('j k x y')
mons=[j**a*k**b for a,b in [(3,0),(2,1),(1,2),(0,3),(2,0),(1,1),(0,2),(1,0),(0,1),(0,0)]]
def norm(co):
 g=math.gcd(*co); co=tuple(v//g for v in co)
 return co if next(z for z in co if z)!=0 and next(z for z in co if z)>0 else tuple(-v for v in co)
results=[]
for m,H in [(5,[0,1]),(5,[0,2])]:
 t0=time.time();pts=[(b,r-b) for r in range(m) for b in range(r+1)];free=[h for h,p in enumerate(pts) if sum(p) not in H]
 Arows=[[int(z.subs({j:b,k:c})) for z in mons] for b,c in pts]
 new={};bad=0
 for subset in itertools.combinations(free,9):
  mat=s.Matrix([Arows[t] for t in subset]);ns=mat.nullspace()
  if len(ns)!=1:continue
  v=ns[0];L=s.ilcm(*(z.q for z in v));co=norm([int(z*L) for z in v]);
  if co in new or not any(co[:4]):continue
  f=sum(c*z for c,z in zip(co,mons)); fac=s.factor_list(f)[1]
  if len(fac)>1 or fac[0][1]>1:continue
  trans=s.Poly(f.subs({j:m+1+x,k:m+1+x+y}),x,y)
  coeff=list(trans.coeffs())
  if all(z>=0 for z in coeff) and trans.coeff_monomial(1)>0:sign=1
  elif all(z<=0 for z in coeff) and trans.coeff_monomial(1)<0:sign=-1
  else:
   bad+=1;continue
  zeros=[a for a,row in enumerate(Arows) if sum(c*z for c,z in zip(co,row))==0]
  new[co]=dict(degree=3,coeffs=list(co),zeros=zeros,expr=str(f),sign=sign)
 print('cubic',m,H,len(new),'uncertsign',bad,'secs',time.time()-t0,flush=True)
 fs=old['pools'][str(m)]+list(new.values());rows=[r for r in range(m) if r not in H];N=len(fs)
 # max coverage-degree at total polynomial degree=1
 A=np.zeros((len(pts),N+len(rows)))
 for i,f in enumerate(fs):A[f['zeros'],i]=-1
 for h,r in enumerate(rows):
  for v,pt in enumerate(pts):
   if sum(pt)==r:A[v,N+h]=1
 E=np.array([[f['degree'] for f in fs]+[0]*len(rows)])
 sol=linprog([0]*N+[-1]*len(rows),A_ub=A,b_ub=np.zeros(len(pts)),A_eq=E,b_eq=[1],bounds=(0,None),method='highs')
 print('LP',sol.success,sol.fun,flush=True)
 if not sol.success:continue
 vals=[Fraction(float(t)).limit_denominator(10**6) for t in sol.x]; L=math.lcm(*(t.denominator for t in vals));v=[int(t*L) for t in vals];gg=math.gcd(*v);v=[t//gg for t in v]
 rec=dict(m=m,H=H,polys=[dict(f,weight=v[i]) for i,f in enumerate(fs) if v[i]],row_weights={r:v[N+h] for h,r in enumerate(rows)})
 print(json.dumps(rec,ensure_ascii=False)[:5000],flush=True)
 # random critical faces, seek algebraic nontrivial
 if abs(sol.fun+1)<1e-8:
  Ap=np.vstack([A,np.array([f['degree'] for f in fs]+[-1]*len(rows))]);unique={};rng=np.random.default_rng(10)
  for trial in range(20):
   ob=rng.normal(size=N+len(rows));ob[:N]-=np.array([2 if f['degree']==3 else 0 for f in fs])
   res=linprog(ob,A_ub=Ap,b_ub=np.zeros(len(pts)+1),A_eq=E,b_eq=[1],bounds=(0,None),method='highs')
   if not res.success:continue
   vals=[Fraction(float(t)).limit_denominator(100000) for t in res.x]; L=math.lcm(*(t.denominator for t in vals));v=[int(t*L) for t in vals];gg=math.gcd(*v);v=[t//gg for t in v]
   F=s.Integer(1);ps=[]
   for i,f in enumerate(fs):
    if not v[i]:continue
    c=f['coeffs']; mm=mons if f['degree']==3 else [j*j,j*k,k*k,j,k,1] if f['degree']==2 else [j,k,1]
    F*=sum(c0*z for c0,z in zip(c,mm))**v[i];ps.append(dict(f,weight=v[i]))
   for h,r in enumerate(rows):F/=(j+k-r)**v[N+h]
   F=s.factor(F);key=str(F)
   if key not in unique:
    rr=dict(m=m,H=H,polys=ps,row_weights={r:v[N+h] for h,r in enumerate(rows)},expression=key);unique[key]=rr
    print('CRIT',key,flush=True)
  rec['critical']=list(unique.values())
 results.append(rec)
 (root/'cubic_probe.json').write_text(json.dumps(results,indent=2))
