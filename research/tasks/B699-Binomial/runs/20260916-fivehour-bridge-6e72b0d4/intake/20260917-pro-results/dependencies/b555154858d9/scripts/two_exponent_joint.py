from math import gcd
from two_exponent_probe import primes
from pathlib import Path
import json,time

def test(c,u,z,la,mu,M=720,P=3000):
 allowed=[(e,v) for e in range(M) for v in range(M) if ((3 if c*pow(2,v,9)%9 in (4,7) else 1),(3 if c*pow(2,v,9)%9 in (5,8) else 1))==(la,mu)]
 start=len(allowed);used=[]
 for p in primes(P):
  if pow(2,M,p)!=1 or p<=3 or u%p==0:continue
  rootmap={}
  squares={a*a%p for a in range(p)}
  for h in range(p):rootmap.setdefault(2*mu*(z*h**3+la*h)%p,[]).append(h)
  x=[pow(2,e,p) for e in range(M)]; ila=pow(la,-1,p)
  new=[]
  for e,v in allowed:
   g2=x[e]**2%p;n=c*x[v]%p
   val=u*g2*(n-2)%p
   hs=rootmap.get(val,[])
   if any((n*n-4*(n-1)*ila*(la+z*h*h))%p in squares for h in hs):new.append((e,v))
  if len(new)<len(allowed):used.append((p,len(allowed)-len(new)));allowed=new
  if not allowed:break
 return dict(c=c,u=u,z=z,la=la,mu=mu,M=M,start=start,left=len(allowed),sample=allowed[:40],used=used,all_residual=allowed)
if __name__=='__main__':
 rows=[]
 for args in [(1,1,7,1,3),(1,1,23,1,3),(1,1,5,3,1),(3,1,15,1,1),(1,1,15,1,1)]:
  t=time.time();r=test(*args);r['seconds']=round(time.time()-t,3);rows.append(r);print(json.dumps({k:v for k,v in r.items() if k!='all_residual'}),flush=True)
 Path(__file__).resolve().parents[1].joinpath('verification/two_exponent_joint.json').write_text(json.dumps(rows,indent=2))
