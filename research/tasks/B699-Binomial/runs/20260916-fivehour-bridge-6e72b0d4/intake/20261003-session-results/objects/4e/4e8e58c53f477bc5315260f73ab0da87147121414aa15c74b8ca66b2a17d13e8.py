from math import gcd, isqrt
from collections import Counter
import json,time
SIX={252:(1,3,1),704:(1,1,3),850:(3,1,5),954:(1,3,1),1100:(1,1,15),1552:(3,1,1)}
EMAX=4096; NMAX=2234408; GMAX=30

def smallpart(n):
 s=1
 for p in [2,3,5]:
  while n%p==0:n//=p;s*=p
 return s

def source(n,j,r):
 q=(n-r)//smallpart(n-r)
 z=1
 for b in range(r+1): z=z*(j-b)%q
 return z==0

def smooth(limit):
 S=set();a=1
 while a<=limit:
  b=a
  while b<=limit:
   c=b
   while c<=limit:S.add(c);c*=5
   b*=3
  a*=2
 return sorted(S)
counts=Counter(); surv=[]; odds=[]; t0=time.time()
for a in smooth(NMAX):
 if a<2:continue
 for g in range(1,min(GMAX,NMAX//a)+1):
  n=g*a
  if n<252 or n%1800 not in SIX:continue
  counts['rows']+=1
  s1,s3,s5=SIX[n%1800]; M=s1**4*s3**2*s5; NN=s1**9*s3**5*s5**3
  q1=(n-1)//s1
  emin=max(1,isqrt(60*n*g*g//M))
  if (emin-a)%2:emin+=1
  for e in range(emin,min(a-2,EMAX)+1,2):
   if M*e*e<=60*n*g*g:continue
   if NN*e**8<=3500*n**5:continue
   b=(a-e)//2;j=g*b
   if j<7 or gcd(a,b)!=1:continue
   counts['primitive_candidates']+=1
   if b*(a-b)%q1:continue
   counts['source1']+=1
   record=[n,j,g,a,e]
   surv.append(record)
   if not source(n,j,3):continue
   counts['source3']+=1
   if not source(n,j,5):continue
   counts['source5']+=1;odds.append(record)
print(counts,'seconds',time.time()-t0)
print('source1 sample',surv[:10]);print('odd survivors',odds)
json.dump({'counts':dict(counts),'source1_candidates':surv,'odd_candidates':odds},open('/mnt/data/B699-C-NATIVE6-20261002/certificates/recovery_probe.json','w'),indent=2)
