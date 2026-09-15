from math import gcd
import json,time
from pathlib import Path
R=Path(__file__).resolve().parents[1]
def prime(n):return n>=2 and all(n%d for d in range(2,int(n**.5)+1))
st=time.perf_counter(); stats={}; hits=[]
C=8
for p in range(3,3*C*C+3,2):
 if not prime(p):continue
 for A in range(1,min(C,p-1)+1):
  for B in range(1,min(C,p-1)+1):
   # NC3 residue theorem only uses p=3 when vp(n)>=2.
   for b in [1,2]:
    if p==3 and b==1:continue
    T=p**b
    if T>3*A*B+2:continue
    cap=3*(A+A*B*T)**2+1
    for a in range(b+1,2*b+5):
     n=A*p**a+B*T
     if n%4 or n>cap:continue
     stats['rows']=stats.get('rows',0)+1
     for u in range(A+1):
      for v in range(B+1):
       j=u*p**a+v*T
       if not 4<=2*j<=n or j<4:continue
       stats['digit_pairs']=stats.get('digit_pairs',0)+1
       g=gcd(n,j)
       if g**4>=3*n:continue
       stats['after_g']=stats.get('after_g',0)+1
       if 3*j*(j-1)%(n-1):continue
       stats['after_w1']=stats.get('after_w1',0)+1
       ok=6*j*(j-1)*(j-2)%(n-2)==0
       hits.append([p,A,B,a,b,n,j,ok])
       if ok:stats['after_w2']=stats.get('after_w2',0)+1
out={'C':C,'stats':stats,'w1_candidates':hits,'seconds':time.perf_counter()-st}
(R/'exploration/probe.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out)[:4000])
