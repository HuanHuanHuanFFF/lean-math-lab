from math import isqrt
from pathlib import Path
import json,time
primes=[p for p in range(5,2000,2) if all(p%d for d in range(3,isqrt(p)+1,2))]
out=[]; seen=0; start=time.perf_counter()
for P in primes:
 for m0 in range(1,52,2):
  if m0%P==0: continue
  m=P*m0
  for v in range(8,121):
   n=m<<v; S=n//P
   X=1;e=0
   while X*P<=S:X*=P;e+=1
   A,B=divmod(S,X)
   if B<P or X<P*max(B,5)**2:continue
   seen+=1
   def val3(a):
    t=0
    while a%3==0:a//=3;t+=1
    return t
   de=3 if val3(n)==1 else 1
   la=3 if val3(n-1)==1 else 1
   mu=3 if val3((n-2)//2)==1 else 1
   kap=de**3*la**3*mu**2
   passed=128*m**4*(n-1)**3<kap*n**4
   out.append({'P':P,'m0':m0,'v':v,'n':n,'A':A,'B':B,'e':e,'old_ROW128_pass':passed})
r={'box':{'P_lt':2000,'odd_m0_le':51,'v':[8,120]},'hits':out,'count':len(out),'old_ROW128_survivors':sum(o['old_ROW128_pass'] for o in out),'seconds':time.perf_counter()-start}
Path(__file__).resolve().parents[1].joinpath('outputs/overlap_probe.json').write_text(json.dumps(r,indent=2));print({k:v for k,v in r.items() if k!='hits'});print('first survivors',[o for o in out if o['old_ROW128_pass']][:5])
