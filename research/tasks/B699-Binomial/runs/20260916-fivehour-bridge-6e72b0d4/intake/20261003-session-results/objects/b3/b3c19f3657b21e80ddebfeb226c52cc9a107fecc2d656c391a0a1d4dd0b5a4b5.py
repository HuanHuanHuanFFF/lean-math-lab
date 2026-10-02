from fractions import Fraction as F
from math import gcd,isqrt
from pathlib import Path
import json,itertools
cls=[(352,(2,3,5),(1,1,2),(1,12,1)),(425,(5,2,3),(1,1,1),(2,1,60)),(776,(2,5,3),(1,1,2),(1,4,3)),(1026,(3,5,2),(2,1,1),(3,2,1)),(1377,(3,2,5),(1,1,1),(6,1,4)),(1450,(5,3,2),(2,1,1),(1,6,5))]
lam={(2,3):F(57,200),(2,5):F(129,500),(3,5):F(27,125)}
def sp(a):
 ss=1
 for p in (2,3,5):
  while a%p==0:a//=p;ss*=p
 return ss,a
def vp(a,p):
 e=0
 while a%p==0:a//=p;e+=1
 return e
allrows=[]
for a,ps,ks,tail in cls:
 sig=tail[0]*tail[1]*tail[2];B=92*sig;C=F(max(ks[0],ks[1])*B,7);la=lam[tuple(sorted(ps[:2]))];A,D=la.numerator,la.denominator
 K=10
 while 2**((K-1)*A)*C.denominator**D<C.numerator**D:K+=1
 N0=ks[0]*ks[1]*B+1
 powers=[]
 for p in ps[:2]:
  ar=[];e=3 if p==2 else 2;P=p**e
  while P<2**K:ar.append((e,P));e+=1;P*=p
  powers.append(ar)
 rows=[];pairs=0
 for (e,P),(f,Q) in itertools.product(*powers):
  pairs+=1;n=P*pow(P,-1,Q)
  if n<N0 or n>=2**K or n%1800!=a:continue
  if vp(n,ps[0])!=e or vp(n-1,ps[1])!=f:continue
  ssqq=[sp(n-h) for h in range(6)];q=[x[1] for x in ssqq]
  if q[0]*q[1]>=B or any(u==1 for u in q):continue
  rows.append(n)
 low=[n for n in range(a,N0,1800) if sp(n)[1]*sp(n-1)[1]<B and all(sp(n-h)[1]>1 for h in range(6))]
 both=sorted(set(low+rows))
 allrows+=both
 print(a,'B',B,'K',K,'N0',N0,'pairs',pairs,'low',low,'high',rows,'all',len(both),'max',max(both,default=0))
Path('/mnt/data/c_r8_work/candidate_n.json').write_text(json.dumps(sorted(set(allrows))))
print('total',len(allrows),'max',max(allrows))
