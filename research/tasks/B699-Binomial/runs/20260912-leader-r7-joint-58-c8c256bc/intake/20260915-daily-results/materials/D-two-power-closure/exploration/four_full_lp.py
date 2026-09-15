from itertools import combinations,product
from math import gcd,lcm
from fractions import Fraction
import numpy as np,json,time
from scipy.optimize import linprog
from pathlib import Path
D=Path('/mnt/data/B699-ProD-next-work');pts=[(b,r-b) for r in range(8) for b in range(r+1)]
def norm(t):
 g=0
 for x in t:g=gcd(g,abs(x))
 t=tuple(x//g for x in t)
 if next(x for x in t if x)<0:t=tuple(-x for x in t)
 return t

def signcert(deg,f):
 if deg==1:
  a,b,c=f;v=(a+b,b,9*(a+b)+c)
 else:
  a,b,c,d,e,f0=f;h=9
  v=(a+b+c,b+2*c,c,2*h*(a+b+c)+d+e,h*(b+2*c)+e,h*h*(a+b+c)+h*(d+e)+f0)
 return all(x>=0 for x in v) and v[-1]>0 or all(x<=0 for x in v) and v[-1]<0

start=time.perf_counter()
lines={norm((y-v,u-x,x*v-u*y)) for (x,y),(u,v) in combinations(pts,2)}
funcs=[(1,l,[i for i,(x,y) in enumerate(pts) if l[0]*x+l[1]*y+l[2]==0]) for l in sorted(lines) if signcert(1,l)]
patterns={}
for a,b,c in product(range(-2,3),repeat=3):
 if (a,b,c)==(0,0,0) or next(x for x in (a,b,c) if x)<0:continue
 for d,e in product(range(-12,13),repeat=2):
  values={}
  for i,(x,y) in enumerate(pts):values.setdefault(a*x*x+b*x*y+c*y*y+d*x+e*y,[]).append(i)
  for f0,inds in values.items():
   if len(inds)>=5:
    f=norm((a,b,c,d,e,-f0))
    if signcert(2,f):patterns.setdefault(tuple(inds),f)
funcs += [(2,f,list(inds)) for inds,f in sorted(patterns.items())]
print('functions',len(funcs),'seconds',time.perf_counter()-start,flush=True)
A0=np.zeros((len(pts),len(funcs)))
for z,(deg,f,inds) in enumerate(funcs):
 for i in inds:A0[i,z]=-1
out=[];fails=[]
for H0 in combinations(range(1,8),3):
 H=(0,)+H0;rows=[r for r in range(8) if r not in H]
 A=np.zeros((len(pts)+1,len(funcs)+len(rows)));A[:-1,:len(funcs)]=A0
 for i,(b,c) in enumerate(pts):
  if b+c in rows:A[i,len(funcs)+rows.index(b+c)]=1
 degrees=[z[0] for z in funcs];A[-1,:len(funcs)]=degrees
 rhs=[0]*len(pts)+[1]
 obj=np.array(degrees+[-1]*len(rows),float)
 res=linprog(obj,A_ub=A,b_ub=rhs,bounds=(0,None),method='highs')
 if res.fun < -1e-8:
  rat=[Fraction(float(x)).limit_denominator(10000) for x in res.x];L=lcm(*(x.denominator for x in rat));ints=[int(x*L) for x in rat]
  use=[{'degree':deg,'coeffs':f,'weight':ints[z]} for z,(deg,f,inds) in enumerate(funcs) if ints[z]]
  w={r:ints[len(funcs)+k] for k,r in enumerate(rows)}
  delta=sum(w.values())-sum(z['degree']*z['weight'] for z in use)
  assert delta>0
  for i,(b,c) in enumerate(pts):
   assert sum(ints[z] for z,(_,_,inds) in enumerate(funcs) if i in inds)>=w.get(b+c,0)
  out.append({'H':H,'w':w,'polynomials':use,'delta':delta})
  print('PASS',H,'delta',delta,'uses',len(use),flush=True)
 else:fails.append(H)
(D/'exploration/four_full_lp.json').write_text(json.dumps({'functions':len(funcs),'certificates':out,'failed':fails},indent=2))
print('TOTAL',time.perf_counter()-start)
