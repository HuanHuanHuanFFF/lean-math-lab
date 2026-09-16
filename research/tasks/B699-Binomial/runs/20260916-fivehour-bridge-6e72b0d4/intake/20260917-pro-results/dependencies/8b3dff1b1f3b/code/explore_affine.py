import math,json,time,itertools,sys
from functools import lru_cache
from probe_matching import fac,match
PRIMES={m:[p for p in range(2,m) if len(fac(p))==1 and list(fac(p).values())==[1]] for m in range(4,10)}
@lru_cache(None)
def factor(n):return tuple(sorted(fac(n).items()))
def rough(n,m):
 n=abs(n)
 if not n:return 0
 for p in PRIMES[m]:
  while n%p==0:n//=p
 if m in (5,7) and n%m==0 and n%(m*m):n//=m
 return n

def norms(m,c,r,a,b):
 h=math.gcd(c,a);C=c//h;A=a//h
 out={}
 for t in range(m):
  if t==r:continue
  ds=[C*(b-d)+A*(t-r) for d in range(t+1)]
  if 0 in ds:continue
  B=rough(math.prod(ds),m)
  for p,e in factor(c):
   while B%p==0:B//=p
  out[t]=B
 return out
@lru_cache(None)
def divs(n):
 out=[1]
 for p,e in factor(n):
  old=out.copy();v=1
  for _ in range(e):
   v*=p;out.extend(x*v for x in old)
 return out

def vpbin(n,j,p):
 s=0
 while n:
  n,r=divmod(n,p);j,b=divmod(j,p)
  # instead use legendre direct below
 return s

def vpb(n,j,p):
 k=n-j;e=0
 while n:
  n//=p;j//=p;k//=p;e+=n-j-k
 return e

def run(m,Cmax,cofactors=None):
 K=math.prod(p**int(round(math.log(m-1,p))) for p in [])
 K=1
 for p in PRIMES[m]:
  q=p
  while q*p<=m-1:q*=p
  K*=q
 if m in(5,7):K*=m
 stats=dict(m=m,Cmax=Cmax,K=K,templates=0,unit=0,hall=0,pigeon=0,divisor_instances=0,affine_candidates=0,norm_pass=0,window_pass=0,witnesses=0,max_n=0)
 exceptions=[];pre=set();sur=[];at=time.time()
 for c in (range(1,Cmax+1) if cofactors is None else cofactors):
  for r in range(m):
   for a in range(1,c//2+1):
    for b in range(r+1):
     if 2*a==c and 2*b>r:continue
     stats['templates']+=1
     B=norms(m,c,r,a,b)
     if 1 in B.values():stats['unit']+=1;continue
     graph={t:set(p for p,e in factor(v)) for t,v in B.items()}
     if not match(graph):stats['hall']+=1;continue
     if len(B)<=len(PRIMES[m]):
      exceptions.append((c,r,a,b,B));continue
     stats['pigeon']+=1
     pool=set()
     for t,V in B.items():
      dd=divs(K*V);stats['divisor_instances']+=len(dd)
      for d in dd:
       n=t+d
       if n<2*(m+1) or (n-r)%c:continue
       Q=(n-r)//c;j=a*Q+b
       if Q<=r or not m<j<=n//2:continue
       pool.add((n,j))
     stats['affine_candidates']+=len(pool)
     for n,j in pool:
      stats['max_n']=max(stats['max_n'],n)
      if any(rough(n-t,m)==1 or V%rough(n-t,m) for t,V in B.items()):continue
      stats['norm_pass']+=1
      if any(math.prod(j-d for d in range(t+1))%rough(n-t,m) for t in range(m)):continue
      stats['window_pass']+=1
      ps=set(p for v in B.values() for p,e in factor(v))
      ws=[p for p in ps if p>=m and vpb(n,m,p)>0 and vpb(n,j,p)>0]
      if ws:stats['witnesses']+=1
      else:sur.append((c,r,a,b,n,j))
 stats['exceptions']=exceptions;stats['survivors']=sur;stats['seconds']=time.time()-at
 return stats
if __name__=='__main__':
 C=int(sys.argv[1]) if len(sys.argv)>1 else 12
 for m in range(4,9):
  st=run(m,C);print(json.dumps(st),flush=True)
