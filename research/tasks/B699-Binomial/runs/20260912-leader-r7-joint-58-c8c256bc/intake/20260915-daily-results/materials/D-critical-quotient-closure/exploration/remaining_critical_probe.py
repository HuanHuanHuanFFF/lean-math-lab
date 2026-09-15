import json,math
from pathlib import Path
from fractions import Fraction
import numpy as np
from scipy.optimize import linprog
import sympy as s
root=Path(__file__).parent
old=json.loads((root/'previous/evidence/failure_models.json').read_text());j,k=s.symbols('j k')
allout=[]
for m,H in [(z['m'],z['H']) for z in old['models'] if (z['m'],z['H']) not in [(5,[0,3]),(7,[0,3,4])]]:
 pts=[(b,r-b) for r in range(m) for b in range(r+1)];rows=[r for r in range(m) if r not in H]
 model=next(z for z in old['models'] if z['m']==m and z['H']==H);x=list(map(Fraction,model['values']));x=[(x[i]+x[pts.index((c,b))])/2 for i,(b,c) in enumerate(pts)]
 fs=[f for f in old['pools'][str(m)] if sum(x[i] for i in f['zeros'])==f['degree']]
 print('tight symmetric',m,len(fs),flush=True)
 def low(f):
  c=f['coeffs'];return 0 if c[-1]!=0 else 1 if f['degree']==1 or any(c[3:5]) else 2
 N=len(fs);A=np.zeros((len(pts)+1,N+len(rows)))
 for i,f in enumerate(fs): A[f['zeros'],i]=-1; A[-1,i]=f['degree']
 for i,r in enumerate(rows):
  for z,pt in enumerate(pts):
   if sum(pt)==r:A[z,N+i]=1
  A[-1,N+i]=-1
 E=np.array([[f['degree'] for f in fs]+[0]*len(rows)])
 unique={}
 rng=np.random.default_rng(7)
 for tt in range(15):
  ob=rng.normal(size=N+len(rows));ob[:N]-=np.array([low(f) for f in fs])*2
  sol=linprog(ob,A_ub=A,b_ub=np.zeros(len(A)),A_eq=E,b_eq=[1],bounds=(0,None),method='highs')
  if not sol.success:continue
  rr=[Fraction(float(y)).limit_denominator(100000) for y in sol.x];L=math.lcm(*(y.denominator for y in rr));v=[int(y*L) for y in rr];L0=math.gcd(*v);v=[y//L0 for y in v]
  F=s.Integer(1)
  for i,f in enumerate(fs):
   if not v[i]:continue
   c=f['coeffs'];p=c[0]*j+c[1]*k+c[2] if f['degree']==1 else c[0]*j*j+c[1]*j*k+c[2]*k*k+c[3]*j+c[4]*k+c[5]
   F*=s.factor(p)**v[i]
  for i,r in enumerate(rows):F/=(j+k-r)**v[N+i]
  F=s.factor(F)
  key=str(F)
  if key not in unique:
   data={'m':m,'H':H,'expr':key,'w':{r:v[N+i] for i,r in enumerate(rows)},'poly':[dict(f,weight=v[i]) for i,f in enumerate(fs) if v[i]]};unique[key]=data
 for key,dat in unique.items():print('  ',key,flush=True)
 allout.extend(unique.values())
(root/'remaining_critical_probe.json').write_text(json.dumps(allout,indent=2))
