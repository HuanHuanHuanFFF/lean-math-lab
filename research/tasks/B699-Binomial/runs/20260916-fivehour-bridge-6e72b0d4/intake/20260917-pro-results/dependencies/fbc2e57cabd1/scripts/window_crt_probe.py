from math import gcd,isqrt
from time import perf_counter
import json,sys
L=int(sys.argv[1]);start=perf_counter()
spf=list(range(L+1))
for p in range(2,isqrt(L)+1):
 if spf[p]==p:
  for m in range(p*p,L+1,p):
   if spf[m]==m:spf[m]=p

def pps(x):
 out=[]
 while x>1:
  p=spf[x];q=1
  while x%p==0:q*=p;x//=p
  out.append(q)
 return out
hits=[];tests=0
for n in range(8,L+1,4):
 lam=3 if (n-1)%3==0 and (n-1)%9 else 1
 mu=3 if ((n-2)//2)%3==0 and ((n-2)//2)%9 else 1
 N=(n-1)//lam; K=(n-2)//(2*mu)
 roots=[0];M=1
 for q in pps(N):
  inv=pow(M,-1,q)
  roots=[r+M*((a-r)*inv%q) for r in roots for a in (0,1)]
  M*=q
 for r in roots:
  j=r
  if j<4:j+=((4-j+N-1)//N)*N
  while 2*j<n:
   tests+=1
   if j*(j-1)*(j-2)%K==0:
    g=gcd(n,j);al=n//g;beta=j//g
    num=lam*beta*(al-beta)
    hits.append({'n':n,'j':j,'g':g,'alpha':al,'lambda':lam,'mu':mu,'t_num':num,'t_den':n-1})
   j+=N
res={'limit':L,'first_root_checks':tests,'hits':hits,'seconds':round(perf_counter()-start,3)}
open(sys.argv[2],'w').write(json.dumps(res,indent=2)+'\n')
print({k:v for k,v in res.items() if k!='hits'});print('hits',len(hits),'first',hits[:10])
