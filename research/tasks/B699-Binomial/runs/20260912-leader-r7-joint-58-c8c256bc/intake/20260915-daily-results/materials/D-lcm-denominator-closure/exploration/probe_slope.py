import math,json,time,sys
from functools import lru_cache
from collections import defaultdict,Counter
from pathlib import Path
PS=(2,3,5,7)
@lru_cache(None)
def factors(x):
 out={};p=2
 while p*p<=x:
  while x%p==0:out[p]=out.get(p,0)+1;x//=p
  p+=1
 if x>1:out[x]=out.get(x,0)+1
 return tuple(out.items())
def mul(fs):return math.prod(p**e for p,e in fs)
def divs(fs):
 out=[1]
 for p,e in fs:
  old=out[:];q=1
  for _ in range(e):q*=p;out += [v*q for v in old]
 return out
@lru_cache(None)
def ds(x):return tuple(sorted(divs(factors(x))))
def cap(p,m):
 x=p
 while x<m:x*=p
 return x
@lru_cache(None)
def norm(m,a,b,r):
 out={}
 for h in range(r+1):
  z=abs(a*h-r*b)
  if not z:return None
  for p,e in factors(z):
   if p>=m:out[p]=out.get(p,0)+e
 return tuple(sorted(out.items()))
def canon_small(m,x):
 out=1
 for p in PS:
  if p>=m:break
  while x%p==0:out*=p;x//=p
 if m in (5,7) and x%m==0 and x%(m*m):out*=m
 return out
@lru_cache(None)
def targets(m,a,b,r,s):
 nf=Counter(dict(norm(m,a,b,r)));nf.update(dict(factors(s)))
 fs=tuple(sorted(nf.items()));return fs,math.prod(e+1 for p,e in fs)
def main(m):
 t=time.time();small=[p for p in PS if p<m];caps=[cap(p,m) for p in small];P=math.prod(caps)*(m*m if m in(5,7) else 1)
 groups=defaultdict(set);none=[];branches=0;rescount=0;maxalpha=0
 for v in range(P):
  # No restriction on the small-prime valuations of n.
  rescount+=1
  v0=v+P;s0=math.gcd(v,math.lcm(*range(1,m+1)))
  goodrows=[(r,canon_small(m,v0-r)) for r in range(1,m) if all((v-r)%q for q in caps)]
  for a in ds(s0):
   if a==1:continue
   if m in(5,7) and a%m==0 and v%(m*m)==0:continue
   maxalpha=max(maxalpha,a)
   for b in range(1,a//2+1):
    if math.gcd(a,b)!=1:continue
    branches+=1
    choices=[]
    for r,s in goodrows:
     if r%a==0:continue
     fs,cost=targets(m,a,b,r,s)
     choices.append((cost,mul(fs),r,s))
    if not choices:none.append([v,a,b]);continue
    _,_,r,s=min(choices)
    groups[a,b,r,s].add(v)
 print('PART',m,'P',P,'res',rescount,'branches',branches,'groups',len(groups),'no row',len(none),'maxalpha',maxalpha,'seconds',time.time()-t,flush=True)
 if none:print('NONE',none[:20],flush=True)
 survivors=[];legal=0;dcount=0;maxn=0;unique=set();hist=Counter();maxg=(0,None)
 for (a,b,r,s),vv in groups.items():
  fs,cost=targets(m,a,b,r,s);dcount+=cost
  if cost>maxg[0]:maxg=(cost,(a,b,r,s))
  for z in divs(fs):
   n=z+r
   if n%P not in vv:continue
   if n%a:raise AssertionError('alpha')
   j=n//a*b
   if not m<j<=n//2:continue
   legal+=1;maxn=max(maxn,n);unique.add((n,j));ok=True
   for rr in range(1,m):
    nf=norm(m,a,b,rr)
    if nf is None:continue
    q=(n-rr)//canon_small(m,n-rr)
    if mul(nf)%q:
     ok=False;hist[rr]+=1;break
   if ok:survivors.append((n,j,a,b))
 print('RESULT',m,'divs',dcount,'legal',legal,'unique',len(unique),'maxn',maxn,'survivors',len(survivors),survivors[:20],'cost',maxg,'seconds',time.time()-t,flush=True)
 result={'m':m,'period':P,'residues':rescount,'branches':branches,'groups':len(groups),'no_row':none,'max_alpha':maxalpha,'divisors':dcount,'legal':legal,'unique':len(unique),'max_n':maxn,'survivors':survivors,'hist':dict(hist),'max_divisors':maxg,'elapsed':time.time()-t}
 Path(f'/mnt/data/b699_d_next_20260915/exploration/probe_slope_{m}.json').write_text(json.dumps(result,indent=2))
 if survivors:Path(f'/mnt/data/b699_d_next_20260915/exploration/slope_survivors_{m}.json').write_text(json.dumps(survivors))
 return result
if __name__=='__main__':
 for m in map(int,sys.argv[1:] or range(4,9)):main(m)
