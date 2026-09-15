import json, itertools, math, time
import numpy as np
from scipy.optimize import linprog
from fractions import Fraction
from pathlib import Path
root=Path(__file__).resolve().parents[1]
dat=json.loads((root/'exploration/original_pool.json').read_text())
def signcert(d,deg,f):
 h=d+1
 if deg==1:
  a,b,c=f;v=(a+b,b,h*(a+b)+c)
 else:
  a,b,c,D,E,F=f;v=(a+b+c,b+2*c,c,2*h*(a+b+c)+D+E,h*(b+2*c)+E,h*h*(a+b+c)+h*(D+E)+F)
 return (all(x>=0 for x in v) and v[-1]>0) or (all(x<=0 for x in v) and v[-1]<0)
def hsafe(d,deg,f):
 if deg==1:return f[-1]==0
 if any(f[3:]):return False
 a,b,c=f[:3]
 # q(j/k)=a*x*x+b*x+c, positive rational x<=1; nontrivial homogeneous polynomial.
 if a==0:
  roots=[] if b==0 else [Fraction(-c,b)]
 else:
  discr=b*b-4*a*c
  if discr<0:return True
  v=math.isqrt(discr)
  if v*v!=discr:return True
  roots=[Fraction(-b+v,2*a),Fraction(-b-v,2*a)]
 L={4:12,6:60,8:840}[d]
 return all(L%(x.numerator+x.denominator)==0 for x in roots if 0<x<=1)
allout=[]
for d,num in [(6,2),(6,3),(8,3),(8,4)]:
 pts=[(b,r-b) for r in range(d) for b in range(r+1)]
 base=dat['pools'][str(d)]
 s=time.monotonic();out=[];fails=[]
 for tail in itertools.combinations(range(1,d),num-1):
  H=(0,)+tail;rows=[r for r in range(d) if r not in H]
  fs=[]
  for deg,f,inds in base:
   reason='sign' if signcert(d,deg,f) else 'homogeneous' if hsafe(d,deg,f) else None
   empty=[r for r in rows if all(sum(pts[i])!=r for i in inds)]
   if True:fs.append((deg,f,inds,reason or 'zero_branch',empty))
  A=np.zeros((len(pts)+1,len(fs)+len(rows)))
  for z,(deg,f,inds,rs,empty) in enumerate(fs):
   A[inds,z]=-1;A[-1,z]=deg
  for z,r in enumerate(rows):
   for t,(b,c) in enumerate(pts):
    if b+c==r:A[t,len(fs)+z]=1
  costs=[f[0] for f in fs]+[-1]*len(rows)
  sol=linprog(costs,A_ub=A,b_ub=[0]*len(pts)+[1],bounds=(0,None),method='highs')
  if sol.success and sol.fun<-1e-9:
   rat=[Fraction(float(v)).limit_denominator(100000) for v in sol.x];L=math.lcm(*(x.denominator for x in rat));v=[int(x*L) for x in rat]
   pol=[{'degree':f[0],'coeffs':f[1],'weight':v[z],'reason':f[3],'empty_rows':f[4]} for z,f in enumerate(fs) if v[z]]
   w={r:v[len(fs)+z] for z,r in enumerate(rows)};delta=sum(w.values())-sum(p['degree']*p['weight'] for p in pol)
   assert delta>0
   for z,(b,c) in enumerate(pts): assert sum(v[t] for t,f in enumerate(fs) if z in f[2])>=w.get(b+c,0)
   out.append({'d':d,'H':H,'w':w,'polynomials':pol,'delta':delta})
   print('PASS',d,H,delta,len(pol),sorted(set(p['reason'] for p in pol)),flush=True)
  else:fails.append(H)
 print('END',d,num,'pass',len(out),'fails',fails,'secs',time.monotonic()-s,flush=True)
 allout+=out
 (root/'exploration/zero_branch_probe.json').write_text(json.dumps({'certificates':allout},indent=2))
