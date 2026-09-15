from math import prod
from itertools import combinations,permutations
from pathlib import Path
import json,time
root=Path(__file__).resolve().parents[1]
def power(n,p):
 q=1
 while n%p==0:q*=p;n//=p
 return q
start=time.monotonic();out=[]
for m,B,N,T in [(5,4,2**24*4**7,11125),(7,6,2**211*6**47,262144)]:
 ps=[p for p in [2,3,5] if p<m];d=m
 def qualifies(n):
  return (n%8>=5 or n%9>=5) if m==5 else (n%8==7 or n%9>=7 or n%25>=7) # for5 p2 no8? Q2<=4 yes; p3 no9; for7 same
 powers={}
 for p in ps:
  powers[p]=[];Q=p
  while Q<N:powers[p].append(Q);Q*=p
 result=set();stats={'pairs':0,'positions':0,'exact':0};seen=set()
 for p,q in combinations(ps,2):
  for P in powers[p]:
   for Q in powers[q]:
    stats['pairs']+=1
    if P*Q<=T:continue
    inv=pow(P,-1,Q)
    for r,s in permutations(range(d),2):
     stats['positions']+=1;n=r+P*((s-r)*inv%Q)
     if not T<=n<N or n>=P*Q or n in seen:continue
     if not qualifies(n):continue
     if (n-r)%(P*p)==0 or (n-s)%(Q*q)==0:continue
     vals=[max(power(n-h,t) for h in range(d)) for t in ps]
     if vals[ps.index(p)]!=P or vals[ps.index(q)]!=Q:continue
     seen.add(n);stats['exact']+=1
     if min(vals)>B:continue
     M=prod(vals)
     if (M>n if m==5 else M*M>n**3):result.add(n)
 print('RESULT',m,stats,len(result),sorted(result)[:20],'max',max(result,default=0),'secs',time.monotonic()-start,flush=True)
 out.append({'m':m,'B':B,'N':str(N),'T':T,'high':sorted(result),'stats':stats})
(root/'exploration/bounded_min_probe.json').write_text(json.dumps(out,indent=2))
