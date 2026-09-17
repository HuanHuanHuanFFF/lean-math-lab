from math import isqrt
import json,time
from pathlib import Path

def prime(p):return p>1 and all(p%d for d in range(2,isqrt(p)+1))
def v3(n):
 e=0
 while n%3==0: n//=3;e+=1
 return e

def kappa(n):
 de=3 if v3(n)==1 else 1
 la=3 if v3(n-1)==1 else 1
 mu=3 if v3((n-2)//2)==1 else 1
 return de**3*la**3*mu**2
out=[];checks=0;start=time.time()
for p in [x for x in range(3,102) if prime(x)]:
 for f in (1,2):
  T=p**f
  for k in range(1,33):
   X=p**k
   for A in range(1,p):
    AX=A*X
    for v in range(2, max(3,AX.bit_length()+1)):
     d=1<<v;m0=AX//d+1
     if m0%2==0 or m0%p==0:continue
     B=m0*d-AX
     if not (1<=B<X and T*m0*m0>A*B):continue
     n=T*m0*d;checks+=1
     if n<12:continue
     if 128*(T*m0)**4*(n-1)**3 >= kappa(n)*n**4:continue
     if p==3 and f==1:continue
     out.append(dict(p=p,f=f,k=k,A=A,B=B,m0=m0,v=v,n=n,two_digits=B<p))
     if len(out)>=10:break
    if len(out)>=10:break
   if len(out)>=10:break
  if len(out)>=10:break
 if len(out)>=10:break
root=Path(__file__).resolve().parents[1]
(root/'outputs/overlap_probe.json').write_text(json.dumps({'bounded_search':'p<=101,f=1,2,k<=32,A<p,v through bitlength(A*p^k); first 10 only','checks':checks,'seconds':time.time()-start,'hits':out},indent=2))
print(json.dumps({'checks':checks,'hits':out,'seconds':time.time()-start}))
