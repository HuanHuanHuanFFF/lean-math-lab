import math,sys,time,json
from pathlib import Path
from probe_front import ds,cap,canon_small,norm,mul,divs,factors
from collections import Counter
for m in map(int,sys.argv[1:] or range(4,9)):
 t=time.time();L=math.lcm(*range(1,m+1));D=math.prod(cap(p,m)//p for p in (2,3,5,7) if p<m)*(m if m in(5,7) else 1)
 divcnt=0;pre=0;normchecks=0;surv=[];seen=set();maxn=0
 for a in ds(L):
  if a==1:continue
  for b in range(1,a//2+1):
   if math.gcd(a,b)!=1:continue
   norms={r:mul(norm(m,a,b,r)) for r in range(1,m) if r%a}
   for r,B in norms.items():
    ff=Counter(dict(factors(D)));ff.update(dict(norm(m,a,b,r)))
    for z in divs(tuple(sorted(ff.items()))):
     divcnt+=1;n=z+r
     if n%a:continue
     j=n//a*b
     if not m<j<=n//2:continue
     if m in(5,7) and a%m==0 and n%(m*m)==0:continue
     if any((n-r)%cap(p,m)==0 for p in(2,3,5,7) if p<m):continue
     pre+=1
     key=(n,a,b)
     if key in seen:continue
     seen.add(key);maxn=max(maxn,n)
     for rr,B0 in norms.items():
      normchecks+=1;q=(n-rr)//canon_small(m,n-rr)
      if B0%q:break
     else:surv.append((n,j,a,b))
 out={'m':m,'L':L,'D':D,'divisors':divcnt,'prefiltered':pre,'unique':len(seen),'norm_checks':normchecks,'maxn':maxn,'survivors':surv,'seconds':time.time()-t}
 print(json.dumps(out),flush=True)
 Path(f'/mnt/data/b699_d_next_20260915/exploration/probe_union_{m}.json').write_text(json.dumps(out,indent=2))
