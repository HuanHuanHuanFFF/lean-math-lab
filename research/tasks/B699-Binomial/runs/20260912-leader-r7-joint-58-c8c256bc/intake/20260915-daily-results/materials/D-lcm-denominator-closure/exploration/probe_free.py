import math,sys,time,json
from pathlib import Path
from probe_front import ds,canon_small,norm,mul,divs,factors
from collections import Counter
for m in map(int,sys.argv[1:] or range(4,9)):
 t=time.time();L=math.lcm(*range(1,m+1));stats=Counter();surv=[];seen=set();records=[];maxn=0;maxW=0;specs=[]
 for a in ds(L):
  if a==1:continue
  ps=[p for p in (2,3,5,7) if p<m and a%p]
  R=[1]+ps;Rmax=max(R);D=1
  for p in ps:
   z=1
   while z*p<=Rmax:z*=p
   D*=z
  if m in (5,7) and a%m:D*=m
  for b in range(1,a//2+1):
   if math.gcd(a,b)!=1:continue
   norms={r:mul(norm(m,a,b,r)) for r in range(1,m) if r%a}
   for r in R:
    stats['specs']+=1;ff=Counter(dict(factors(D)));ff.update(dict(norm(m,a,b,r)));specs.append((a,b,r,D,tuple(sorted(ff.items()))));maxW=max(maxW,mul(tuple(sorted(ff.items())))+r)
    for z in divs(tuple(sorted(ff.items()))):
     stats['divisors']+=1;n=z+r
     if n%a:continue
     j=n//a*b
     if not m<j<=n//2:continue
     if m in(5,7) and a%m==0 and n%(m*m)==0:continue
     if D%canon_small(m,n-r):continue
     stats['prefiltered']+=1;key=(n,a,b)
     if key in seen:continue
     seen.add(key);maxn=max(maxn,n)
     for rr,B0 in norms.items():
      stats['norm_checks']+=1;q=(n-rr)//canon_small(m,n-rr)
      if B0%q:
       records.append([n,a,b,rr]);break
     else:surv.append((n,j,a,b))
 out={'m':m,'L':L,**stats,'unique':len(seen),'maxn':maxn,'max_height':maxW,'survivors':surv,'seconds':time.time()-t}
 print(json.dumps(out),flush=True)
 Path(f'/mnt/data/b699_d_next_20260915/exploration/probe_free_{m}.json').write_text(json.dumps(out,indent=2))
 Path(f'/mnt/data/b699_d_next_20260915/exploration/free_rejections_{m}.json').write_text(json.dumps(sorted(records)))
