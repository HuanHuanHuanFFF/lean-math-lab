"""Bounded diagnostic only. Not a proof of a uniform statement."""
from math import gcd
import sympy as s
import json,time

def crt_roots01(n):
 fac=s.factorint(n)
 roots=[0];mod=1
 for p,e in fac.items():
  q=int(p**e); inv=pow(mod,-1,q)
  roots=[r+mod*((c-r)*inv%q) for r in roots for c in (0,1)]
  mod*=q
 return roots,fac

def iso(y):return 3 if y%3==0 and y%9 else 1

out=[]; t=time.time()
for X in range(2,20002,2):
 N=2*X*X-1;M=X*X-1;K=M//iso(M)
 roots,fac=crt_roots01(N)
 for j in roots:
  if j<4 or j>X*X:continue
  if j*(j-1)*(j-2)%K:continue
  sf=[]
  for side in [X-1,X+1]:
   fs=s.factorint(side//iso(side))
   slots=[[],[],[]]
   for p,e in fs.items():
    q=int(p**e);res=j%q
    slots[res].append(q)
   sf.append(slots)
  g=gcd(2*X*X,j);a=2*X*X//g
  out.append({'X':X,'n':2*X*X,'j':j,'g':g,'alpha':a,'slots':sf})
print(json.dumps({'count':len(out),'seconds':time.time()-t,'examples':out[:40]},indent=2))
open('/mnt/data/B699-ProE-i3-mixed-slot-20260920/logs/window_probe.json','w').write(json.dumps(out,indent=2))
