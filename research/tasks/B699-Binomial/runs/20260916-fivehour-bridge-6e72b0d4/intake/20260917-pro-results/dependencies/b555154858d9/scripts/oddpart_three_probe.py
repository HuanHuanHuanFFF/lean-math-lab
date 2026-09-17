from pathlib import Path
from math import gcd,isqrt
from two_exponent_probe import primes
import json,time

def test(kind,u,z,M=720,P=3000):
 m=3;c=1;la=mu=1
 es=list(range(M)) if kind==2 else [kind]
 allowed=[(e,v) for e in es for v in range(M)]
 start=len(allowed);used=[]
 for p in primes(P):
  if pow(2,M,p)!=1 or p<=3:continue
  rootmap={};squares={a*a%p for a in range(p)}
  for h in range(p):rootmap.setdefault(2*(z*h*h*h+h)%p,[]).append(h)
  x=[pow(2,e,p) for e in range(M)];new=[]
  for e,v in allowed:
   n=3*x[v]%p; val=u*9*x[e]*x[e]*(n-2)%p
   if any((n*n-4*(n-1)*(1+z*h*h))%p in squares for h in rootmap.get(val,[])):new.append((e,v))
  if len(new)<len(allowed):used.append((p,len(allowed)-len(new)));allowed=new
  if not allowed:break
 return dict(m=3,c=1,la=1,mu=1,kind=kind,u=u,z=z,M=M,start=start,left=len(allowed),sample=allowed[:30],used=used,all_residual=allowed)
if __name__=='__main__':
 rows=[];t=time.time()
 for kind in (0,1,2):
  for u in range(1,isqrt(128)+1,2):
   for z in range(1,128//(u*u)+1):
    if gcd(u,z)>1 or z%3!=2:continue
    if kind==0 and z%8:continue
    if kind==1 and (z-3*u*u)%16:continue
    if kind==2 and (z+u*u)%16:continue
    row=test(kind,u,z);rows.append(row);print({k:v for k,v in row.items() if k not in ('used','all_residual')},flush=True)
 Path(__file__).resolve().parents[1].joinpath('verification/oddpart_three_probe.json').write_text(json.dumps(rows,indent=2))
 print('ALL',len(rows),'CLOSED',sum(not r['left'] for r in rows),'seconds',round(time.time()-t,2))
