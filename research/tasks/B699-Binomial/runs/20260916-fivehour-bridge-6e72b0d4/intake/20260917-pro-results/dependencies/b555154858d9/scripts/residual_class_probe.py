from pathlib import Path
from math import gcd,isqrt
from two_exponent_probe import primes
import json,time

def cases(B=128):
 for c,la,mu in [(1,3,1),(1,1,3),(3,1,1)]:
  for kind in (0,1,2):
   for u in range(1,isqrt(B)+1,2):
    for z in range(1,B//(u*u)+1):
     if la%gcd(u,z):continue
     if c==3 and z%3:continue
     if la==3 and ((u%3==0)!=(z%3==0)):continue
     if kind==0 and z%8:continue
     if kind==1 and (z-3*la**3*mu**2*u*u)%16:continue
     if kind==2 and (z+la**3*mu**2*u*u)%16:continue
     yield dict(c=c,la=la,mu=mu,kind=kind,u=u,z=z)

def test(row,M=720,P=3000):
 c,la,mu,kind,u,z=[row[k] for k in ('c','la','mu','kind','u','z')]
 es=list(range(M)) if kind==2 else [kind]
 allowed=[(e,v) for e in es for v in range(M) if ((3 if c*pow(2,v,9)%9 in (4,7) else 1),(3 if c*pow(2,v,9)%9 in (5,8) else 1))==(la,mu)]
 start=len(allowed);used=[]
 for p in primes(P):
  if pow(2,M,p)!=1 or p<=3:continue
  rootmap={};squares={a*a%p for a in range(p)}
  for h in range(p):rootmap.setdefault(2*mu*(z*h*h*h+la*h)%p,[]).append(h)
  x=[pow(2,e,p) for e in range(M)]; ila=pow(la,-1,p)
  new=[]
  for e,v in allowed:
   n=c*x[v]%p; val=u*x[e]*x[e]*(n-2)%p
   hs=rootmap.get(val,[])
   if any((n*n-4*(n-1)*ila*(la+z*h*h))%p in squares for h in hs):new.append((e,v))
  if len(new)<len(allowed):used.append((p,len(allowed)-len(new)));allowed=new
  if not allowed:break
 return dict(**row,M=M,start=start,left=len(allowed),sample=allowed[:30],used=used,all_residual=allowed)

if __name__=='__main__':
 rows=[]; t=time.time()
 for i,row in enumerate(cases()):
  r=test(row);rows.append(r)
  print(i,row,'left',r['left'],'moduli',len(r['used']),flush=True)
 Path(__file__).resolve().parents[1].joinpath('verification/residual_class_probe.json').write_text(json.dumps(rows,indent=2))
 print('ALL',len(rows),'CLOSED',sum(not r['left'] for r in rows),'seconds',round(time.time()-t,2))
