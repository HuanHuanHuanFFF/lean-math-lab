from math import isqrt
from pathlib import Path
import json,time
R=Path(__file__).resolve().parents[1]
def prime(n):return n>=2 and all(n%d for d in range(2,isqrt(n)+1))
def v(n,p):
 e=0
 while n%p==0:n//=p;e+=1
 return e
out=[];st=time.perf_counter()
for p in range(3,20001,2):
 if not prime(p):continue
 for d in range(2,8):
  X=p**d
  for c in (1,3):
   for s in range(max(1,X.bit_length()-3), (p*X).bit_length()+1):
    alpha=c*2**s
    A,B=divmod(alpha,X)
    if not(1<=A<p and 1<=B<p):continue
    for f in (1,2):
     if p==3 and f==1:continue
     n=alpha*p**f
     lam=3 if v(n-1,3)==1 else 1
     mu=3 if v((n-2)//2,3)==1 else 1
     delta=3 if v(n,3)==1 else 1
     kappa=delta**3*lam**3*mu**2
     odd=n//(n&-n)
     row128=128*odd**4*(n-1)**3 < kappa*n**4
     out.append([p,A,B,d+f,f,c,s,row128,max(A,B)<=8])
(R/'exploration/row-comparison.json').write_text(json.dumps({'max_p':20000,'rows':out,'seconds':time.perf_counter()-st},indent=2)+'\n')
print('found',len(out),'row128 survivors',sum(x[-2] for x in out),'smallcoef survivors',[x for x in out if x[-2] and x[-1]][:10]);print('all survivors',[x for x in out if x[-2]][:20])
