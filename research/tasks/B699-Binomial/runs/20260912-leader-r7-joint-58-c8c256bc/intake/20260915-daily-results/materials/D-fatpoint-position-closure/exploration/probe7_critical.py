import json,math
from pathlib import Path
from fractions import Fraction
import sympy as s
import numpy as np
from scipy.optimize import linprog
root=Path(__file__).parent; old=json.loads((root/'oldodd/failure_models.json').read_text());new=json.loads((root/'probe7_cubic_pool.json').read_text());j,k=s.symbols('j k');mons=[j**3,j*j*k,j*k*k,k**3,j*j,j*k,k*k,j,k,1]
for f in new:
 ff=sum(v*z for v,z in zip(f['coeffs'],mons)); f['expr']=str(ff); fac=s.factor_list(ff)[1];f['irreducible']=len(fac)==1 and fac[0][1]==1
print('irreducible',sum(f['irreducible'] for f in new),flush=True)
fs=old['pools']['7']+[f for f in new if f['irreducible']];N=len(fs);pts=[(b,r-b) for r in range(7)for b in range(r+1)];result=[]
for mod in old['models']:
 if mod['m']!=7 or mod['H']==[0,3,4]:continue
 H=mod['H'];rows=[r for r in range(7)if r not in H];A=np.zeros((len(pts)+1,N+len(rows)))
 for i,f in enumerate(fs):A[f['zeros'],i]=-1;A[-1,i]=f['degree']
 for z,r in enumerate(rows):
  for h,p in enumerate(pts):
   if sum(p)==r:A[h,N+z]=1
  A[-1,N+z]=-1
 E=np.array([[f['degree'] for f in fs]+[0]*len(rows)])
 c=[-1 if f.get('irreducible') else 0 for f in fs]+[0]*len(rows)
 sol=linprog(c,A_ub=A,b_ub=np.zeros(len(pts)+1),A_eq=E,b_eq=[1],bounds=(0,None),method='highs')
 print(H,sol.fun,flush=True)
 if sol.fun<-1e-8:
  vv=[Fraction(float(v)).limit_denominator(1000000)for v in sol.x];L=math.lcm(*(v.denominator for v in vv));w=[int(v*L)for v in vv];g=math.gcd(*w);w=[v//g for v in w]
  rec=dict(m=7,H=H,polys=[dict(f,weight=w[i]) for i,f in enumerate(fs)if w[i]],row_weights={r:w[N+z]for z,r in enumerate(rows)})
  print(json.dumps(rec),flush=True);result.append(rec)
(root/'probe7_critical_results.json').write_text(json.dumps(result,indent=2))
