import json,math,time,sys
from pathlib import Path
B=Path(__file__).parent
PRIMES=[2,3,5,7]
def pp(x,p):
 v=1
 while x%p==0:x//=p;v*=p
 return v

def s_part(x,i):
 s=1
 for p in PRIMES:
  if p>=i:break
  while x%p==0:x//=p;s*=p
 if i in [5,7] and x%i==0 and x%(i*i):s*=i
 return s

def qig(n,i):
 T=math.prod(s_part(n-r,i)for r in range(4))
 return T**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3

def sixg(n,i):
 T=math.prod(s_part(n-r,i)for r in range(6))
 return T**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2

def powers(p,N,start):
 v=p**start
 while v<N:
  yield v
  v*=p

def run(i,E):
 st=time.monotonic();N=2**E;cut=8192 if i==5 else 256
 small=[];stats={'i':i,'E':E,'cut':cut,'power_pairs':0,'templates':0,'high_legal':0,'high_QIG':0,'high_SIXG':0,'low_legal':0,'low_QIG':0,'low_SIXG':0}
 def relevant(n):return n>=2*(i+1) and n%72 in (18,56) and (i==5 or n%5 in(0,2))
 def accepted(n,prefix):
  if qig(n,i):stats[prefix+'_QIG']+=1;return True
  if i==6 and sixg(n,i):stats[prefix+'_SIXG']+=1;return True
  return False
 for n in range(2*(i+1),cut):
  if not relevant(n):continue
  stats['low_legal']+=1
  if not accepted(n,'low'):small.append(n)
 candidates=set()
 pairs=[(2,3,[(0,2),(2,0)])]
 if i==6:pairs +=[(2,5,[(0,2),(0,5),(2,0),(2,5)]),(3,5,[(0,2),(0,5),(2,0),(2,5)])]
 for p,q,positions in pairs:
  cnt=0
  for P in powers(p,N,{2:3,3:2,5:1}[p]):
   for Q in powers(q,N,{2:3,3:2,5:1}[q]):
    stats['power_pairs']+=1
    if P*Q<=cut:continue
    inv=pow(P,-1,Q)
    for r,s in positions:
     stats['templates']+=1;n=r+P*((s-r)*inv%Q)
     if not(cut<=n<N and relevant(n)):continue
     if pp(n-r,p)!=P or pp(n-s,q)!=Q:continue
     if i==6:
      if P!=max(pp(n-a,p)for a in range(6))or Q!=max(pp(n-a,q)for a in range(6)):continue
     stats['high_legal']+=1
     if not accepted(n,'high'):candidates.add(n)
  print('DONEPAIR',i,p,q,'secs',round(time.monotonic()-st,2),'survivors',len(candidates),'maxbits',max(candidates).bit_length()if candidates else 0,flush=True)
 ans={'stats':stats,'low':sorted(small),'high':sorted(candidates),'rows':sorted(set(small)|candidates),'seconds':time.monotonic()-st}
 print('DOMAIN',i,'rows',len(ans['rows']),'max',max(ans['rows'],default=0),flush=True)
 (B/f'domain{i}.json').write_text(json.dumps(ans,indent=2))
if __name__=='__main__':run(int(sys.argv[1]),int(sys.argv[2]))
