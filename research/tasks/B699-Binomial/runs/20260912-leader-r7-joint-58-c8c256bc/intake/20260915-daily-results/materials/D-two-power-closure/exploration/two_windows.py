from math import gcd,isqrt
from time import perf_counter
N=1000000
t=perf_counter()
spf=list(range(N+1))
for p in range(2,isqrt(N)+1):
 if spf[p]==p:
  for x in range(p*p,N+1,p):
   if spf[x]==x:spf[x]=p

def primepowers(x):
 z=[]
 while x>1:
  p=spf[x];q=1
  while x%p==0:x//=p;q*=p
  z.append(q)
 return z
sol=[];tested=0
for n in range(8,N+1,12):
 if n%8:continue
 mod=1;roots=[0]
 for q in primepowers(n-1):
  iv=pow(mod,-1,q)
  roots=[x+mod*((r-x)*iv%q) for x in roots for r in (0,1)]
  mod*=q
 for j in roots:
  if not 5<=j<=n//2:continue
  tested+=1
  if (j*(j-1)*(j-2)*(j-3))%(n-3)==0:
   sol.append((n,j,gcd(n,j),primepowers(n-1),primepowers(n-3)))
print('time',perf_counter()-t,'tests',tested,'solutions',len(sol),sol[:40])
