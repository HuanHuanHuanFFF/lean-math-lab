from math import isqrt,gcd
import json,time,os
from pathlib import Path
root=Path(os.environ.get("RESEARCH_OUT", Path(__file__).resolve().parents[1]))
r=1; aa=3; rows=[]; sols=[]
t0=time.monotonic()
for a in range(1,31):
 if a>1:
  r=next(r+c*aa for c in range(3) if ((r+c*aa)**2-10)%(aa*3)==0)
  aa*=3
 # n=B-tail implies 10|g, so necessary z^2<=alpha^2/(40*(10*alpha-1))
 lim=isqrt(aa*aa//(40*(10*aa-1)))
 hits=0
 for z in range(1,lim+1):
  if z%3==0:continue
  b=r*z%aa; b=min(b,aa-b)
  bc=b*(aa-b)
  if bc%(10*z*z):continue
  N=bc//(10*z*z)
  if (N+1)%aa:continue
  g=(N+1)//aa; n=g*aa; j=g*b
  if gcd(n,j)!=g: raise AssertionError
  if n%720!=450:continue
  hits+=1
  rec=dict(a=a,alpha=aa,z=z,g=g,n=n,j=j,beta=b)
  sols.append(rec)
 rows.append(dict(a=a,root=r,z_bound=lim,hits=hits))
 print(a,lim,hits,flush=True)
out=dict(rows=rows,solutions=sols,total=len(sols))
(root/'certificates/alpha_probe.json').write_text(json.dumps(out,indent=2))
print('TOTAL',len(sols),'TIME',round(time.monotonic()-t0,3))
print(sols[:30])
