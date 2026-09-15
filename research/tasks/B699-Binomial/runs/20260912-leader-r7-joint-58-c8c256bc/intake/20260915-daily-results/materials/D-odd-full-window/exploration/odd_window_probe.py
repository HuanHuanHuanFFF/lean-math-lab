import json,itertools,math,time
import numpy as np
from scipy.optimize import linprog
from fractions import Fraction
from pathlib import Path
root=Path(__file__).resolve().parents[1]
dat=json.loads((root/'exploration/original_pool.json').read_text())
exec(open(root/'exploration/zero_branch_probe.py').read().split('allout=[]')[0].split('def signcert')[1].join(['def signcert','']) if False else 'pass')
def signcert(m,deg,f):
 h=m+1
 if deg==1:
  a,b,c=f;v=(a+b,b,h*(a+b)+c)
 else:
  a,b,c,D,E,F=f;v=(a+b+c,b+2*c,c,2*h*(a+b+c)+D+E,h*(b+2*c)+E,h*h*(a+b+c)+h*(D+E)+F)
 return all(vv>=0 for vv in v) and v[-1]>0 or all(vv<=0 for vv in v) and v[-1]<0
out=[]
for m in (5,7):
 d=m;pts=[(b,r-b) for r in range(d) for b in range(r+1)]
 raw=dat['pools'][str(m+1)]
 base=[]
 for deg,f,_ in raw:
  if deg==1:inds=[z for z,(x,y) in enumerate(pts) if f[0]*x+f[1]*y+f[2]==0]
  else:inds=[z for z,(x,y) in enumerate(pts) if f[0]*x*x+f[1]*x*y+f[2]*y*y+f[3]*x+f[4]*y+f[5]==0]
  if inds:base.append((deg,f,inds))
 for hc in ((1,2) if m==5 else (2,3)):
  fails=[]
  for tail in itertools.combinations(range(1,d),hc-1):
   H=(0,)+tail;rows=[r for r in range(d) if r not in H];fs=[]
   for deg,f,inds in base:
    reason='sign' if signcert(m,deg,f) else 'homogeneous_line' if deg==1 and f[-1]==0 else None
    empty=[r for r in rows if all(sum(pts[i])!=r for i in inds)]
    if reason or empty:fs.append((deg,f,inds,reason or 'zero_branch',empty))
   A=np.zeros((len(pts)+1,len(fs)+len(rows)))
   for z,(deg,f,inds,rs,empty) in enumerate(fs):
    A[inds,z]=-1;A[-1,z]=deg
   for z,r in enumerate(rows):
    for t,(b,c) in enumerate(pts):
     if b+c==r:A[t,len(fs)+z]=1
   res=linprog([f[0] for f in fs]+[-1]*len(rows),A_ub=A,b_ub=[0]*len(pts)+[1],bounds=(0,None),method='highs')
   if res.success and res.fun<-1e-9:
    rat=[Fraction(float(x)).limit_denominator(1000000) for x in res.x];L=math.lcm(*(x.denominator for x in rat));v=[int(x*L) for x in rat]
    pp=[{'degree':f[0],'coeffs':f[1],'weight':v[z],'reason':f[3],'empty_rows':f[4]} for z,f in enumerate(fs) if v[z]]
    w={r:v[len(fs)+z] for z,r in enumerate(rows)};delta=sum(w.values())-sum(f['degree']*f['weight'] for f in pp)
    assert delta>0
    for z,(b,c) in enumerate(pts):assert sum(v[t] for t,f in enumerate(fs) if z in f[2])>=w.get(b+c,0)
    rec={'m':m,'d':d,'H':H,'w':w,'polynomials':pp,'delta':delta};out.append(rec)
    print('PASS',m,H,'delta',delta,'used',len(pp),sorted(set(p['reason'] for p in pp)),flush=True)
   else:fails.append(H)
  print('FAILS',m,hc,fails,flush=True)
(root/'exploration/odd_window_probe.json').write_text(json.dumps({'certificates':out},indent=2))
