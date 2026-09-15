import json, math, itertools
from pathlib import Path
from fractions import Fraction
import numpy as np
from scipy.optimize import linprog
root=Path(__file__).parent
old=json.loads((root/'previous/evidence/failure_models.json').read_text())
results=[]
for rec in old['models']:
 m,H=rec['m'],rec['H'];pts=[(b,r-b) for r in range(m) for b in range(r+1)];rows=[r for r in range(m) if r not in H]; fs=old['pools'][str(m)]
 def low(f):
  c=f['coeffs'];d=f['degree']
  if c[-1]!=0:return 0
  if d==1:return 1
  if any(c[3:5]):return 1
  return 2
 ls=[low(f) for f in fs]
 N=len(fs);A=np.zeros((len(pts)+1,N+len(rows)))
 for i,f in enumerate(fs):
  A[f['zeros'],i]=-1
  A[-1,i]=f['degree']
 for i,r in enumerate(rows):
  for h,(b,c) in enumerate(pts):
   if b+c==r:A[h,N+i]=1
  A[-1,N+i]=-1
 eq=[[f['degree'] for f in fs]+[0]*len(rows)]
 sol=linprog([-l for l in ls]+[0]*len(rows),A_ub=A,b_ub=[0]*len(A),A_eq=eq,b_eq=[1],bounds=(0,None),method='highs')
 print(m,H,sol.success,sol.fun if sol.success else sol.message,flush=True)
 if sol.success and sol.fun < -1e-8:
  rr=[Fraction(float(x)).limit_denominator(10**6) for x in sol.x];L=math.lcm(*(x.denominator for x in rr));vs=[int(x*L) for x in rr]
  pp=[dict(f,weight=vs[i],low=ls[i]) for i,f in enumerate(fs) if vs[i]];w={r:vs[N+i] for i,r in enumerate(rows)}
  W=sum(w.values());D=sum(f['degree']*f['weight'] for f in pp);Lg=sum(f['low']*f['weight'] for f in pp)
  assert W>=D and Lg>0
  for h,pt in enumerate(pts):assert sum(f['weight'] for f in pp if h in f['zeros'])>=w.get(sum(pt),0)
  print('    W,D,L',W,D,Lg,'pp',[(f['coeffs'],f['weight']) for f in pp],flush=True)
  results.append(dict(m=m,H=H,w=w,polynomials=pp,W=W,D=D,L=Lg))
(root/'gcd_probe.json').write_text(json.dumps(results,indent=2))
