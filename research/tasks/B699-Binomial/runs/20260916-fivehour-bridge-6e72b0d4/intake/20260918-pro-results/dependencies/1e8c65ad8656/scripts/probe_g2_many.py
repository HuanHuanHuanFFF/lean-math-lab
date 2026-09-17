from sympy.solvers.diophantine.diophantine import diop_DN
from math import gcd,isqrt
from sympy import primerange, factorint
import json,time
from pathlib import Path
from probe_pell_g2 import canon
# This import currently reruns the bounded pilot; it will be cleaned before delivery.
out=[];seen=set();start=time.time();primes=list(primerange(3,1000))
for D in range(9,202,2):
 d=D*(D-8)
 if isqrt(d)**2==d:continue
 unit=diop_DN(d,1)[0]
 for a,b in diop_DN(d,16*(D+1)):
  for sign in [-1,1]:
   x,y=int(a),int(sign*b)
   for idx in range(90):
    if abs(x).bit_length()>420:break
    if x>12 and (x-12)%(D-8)==0:
     n=(x-12)//(D-8);T=abs(y)
     if n%4==0 and n>=8 and T<n and (n-T)%2==0:
      j=(n-T)//2
      if j>=4 and (n,j) not in seen:
       seen.add((n,j));o=canon(n,j)
       if o and o['g']==2 and o['u']==1:
        small=[p for p in primes if o['C']%p==0]
        if len(small)<3 and o['C'].bit_length()<56:
         fac={int(p):int(e) for p,e in factorint(o['C']).items()}
        else:fac={}
        out.append(dict(o,D=D,small_factors=small,factors=fac,pell_index=idx))
    x,y=int(unit[0])*x+int(unit[1])*d*y,int(unit[1])*x+int(unit[0])*y
out.sort(key=lambda r:r['n'])
p=Path(__file__).resolve().parents[1]/'outputs/g2_many.json';p.write_text(json.dumps({'D_max':201,'index_max':89,'max_bits':420,'models':out,'seconds':time.time()-start},indent=2)+'\n')
print('models',len(out),'seconds',time.time()-start)
print('smallest',out[:2]); print('less3small',sum(len(r['small_factors'])<3 for r in out))
print('two_actual', [o for o in out if o['factors'] and len(o['factors'])<=2])
