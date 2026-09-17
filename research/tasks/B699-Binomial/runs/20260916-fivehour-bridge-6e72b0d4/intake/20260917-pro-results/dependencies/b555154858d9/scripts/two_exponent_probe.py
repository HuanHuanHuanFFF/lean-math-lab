from math import gcd
from time import time
import json
from pathlib import Path

def primes(n):
 a=bytearray(b'\x01')*(n+1);a[:2]=b'\0\0'
 for p in range(2,int(n**.5)+1):
  if a[p]:a[p*p:n+1:p]=b'\0'*((n-p*p)//p+1)
 return [p for p in range(3,n+1) if a[p]]
def test(c,u,z,la,mu,M=180):
 allowed=[(e,v) for e in range(M) for v in range(M) if ((3 if c*pow(2,v,9)%9 in (4,7) else 1),(3 if c*pow(2,v,9)%9 in (5,8) else 1))==(la,mu)]
 start=len(allowed);used=[]
 for p in primes(2000):
  if pow(2,M,p)!=1:continue
  vals={ (2*mu*(z*h**3+la*h))%p for h in range(p)}
  x=[pow(2,e,p) for e in range(M)]
  left=[(e,v) for e,v in allowed if u*x[e]*x[e]*(c*x[v]-2)%p in vals]
  if len(left)<len(allowed):used.append((p,len(allowed)-len(left)));allowed=left
  if not allowed:break
 return dict(c=c,u=u,z=z,la=la,mu=mu,M=M,start=start,left=len(allowed),sample=allowed[:20],used=used)
if __name__=='__main__':
 rows=[]
 for c,la,mu in [(1,1,1),(1,1,3),(1,3,1),(3,1,1)]:
  for z in range(1,25):
   if z%16!=(-la**3*mu**2)%16:continue
   if c==3 and z%3:continue
   if la==3 and z%3==0:continue
   row=test(c,1,z,la,mu);rows.append(row);print(json.dumps(row),flush=True)
 Path(__file__).resolve().parents[1].joinpath('verification/two_exponent_probe.json').write_text(json.dumps(rows,indent=2))
