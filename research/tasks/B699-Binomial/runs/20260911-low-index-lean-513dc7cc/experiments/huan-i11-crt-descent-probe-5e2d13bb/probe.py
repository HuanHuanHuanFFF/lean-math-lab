from pathlib import Path
from datetime import datetime, timezone
from itertools import combinations
from math import factorial
from time import perf_counter
import hashlib,json,re
RUN=Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc')
OUT=Path(__file__).resolve().parent
SRC=RUN/'lean/UpperHeight/I11SmallPart.lean'
K=int(re.search(r'def i11K : ℕ := (\d+)',SRC.read_text(encoding='utf-8')).group(1))
F=(2*factorial(11))**11
PRIMES=[2,3,5,7]
def cap_for(H):
 target=F*H**7
 low,high=0,1
 while K*high**33<target:high*=2
 while high-low>1:
  mid=(low+high)//2
  if K*mid**33>=target:high=mid
  else:low=mid
 assert K*high**33>=target and (high==1 or K*(high-1)**33<target)
 return high

def powers(p,H):
 a,v,out=1,p,[]
 while v<H:out.append((a,v));a+=1;v*=p
 return out

def stage(H):
 start=perf_counter();M=cap_for(H);pw={p:powers(p,H) for p in PRIMES}
 pair_count=sum(len(pw[p])*len(pw[q]) for p,q in combinations(PRIMES,2))
 assert pair_count*21<=2000000
 result={'H':H,'M':M,'power_counts':{str(p):len(pw[p]) for p in PRIMES},'pairs':[]}
 global_bound=max(M,109);total=0;digest=hashlib.sha256()
 for p,q in combinations(PRIMES,2):
  best=-1;witness=None;nonempty=0;negative_seed=0;zero=0
  for a,P in pw[p]:
   for b,Q in pw[q]:
    v=pow(P,-1,Q);ca=min(M,(H-1)//P);cc=min(M,(H-1)//Q)
    assert (P*v)%Q==1 and ca>=1 and cc>=1
    for d in range(-10,11):
     total+=1;rho=(d*v)%Q or Q;assert (P*rho-d)%Q==0
     c0=(P*rho-d)//Q;lo=max(0,(1-c0+P-1)//P)
     hi=min((ca-rho)//Q,(cc-c0)//P)
     assert lo<=0 or c0+P*(lo-1)<1
     assert ca<rho+Q*(hi+1) or cc<c0+P*(hi+1)
     negative_seed+=c0<0;zero+=(d*v)%Q==0
     empty=hi<lo;upper=min(P*(rho+Q*hi),Q*(c0+P*hi))+10
     if not empty:
      nonempty+=1;A=rho+Q*hi;C=c0+P*hi
      assert 1<=A<=ca and 1<=C<=cc and P*A-Q*C==d
      if upper>best:best=upper;witness=dict(a=a,b=b,d=d,A=A,C=C,lo=lo,hi=hi)
     digest.update(json.dumps([p,q,a,b,d,v,ca,cc,lo,hi,upper,empty],separators=(',',':')).encode()+b'\n')
  result['pairs'].append(dict(p=p,q=q,power_pairs=len(pw[p])*len(pw[q]),signed_checks=len(pw[p])*len(pw[q])*21,nonempty=nonempty,negative_seed=negative_seed,zero_residue=zero,max_window_upper=best,witness=witness))
  global_bound=max(global_bound,best)
 result.update(signed_checks=total,output_upper=global_bound,next_H=global_bound+1,ordered_rows_sha256=digest.hexdigest(),seconds=perf_counter()-start)
 return result

start=perf_counter();H=2**109;rows=[];total=0
for idx in range(10):
 s=stage(H);s['stage']=idx;rows.append(s);total+=s['signed_checks']
 print(json.dumps({k:s[k] for k in ['stage','H','M','signed_checks','output_upper','next_H','seconds']}),flush=True)
 assert total<=2000000
 if s['next_H']>=H:break
 H=s['next_H']
report=dict(status='exact_computation_not_Lean',created_utc=datetime.now(timezone.utc).isoformat(),source=SRC.as_posix(),source_sha256=hashlib.sha256(SRC.read_bytes()).hexdigest(),script_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),K=K,width=10,cofactor_inequality='(2*11!)^11 * H^7 <= K*M^33',positive_exponents_only=True,all_six_prime_pairs=True,all_signed_displacements=list(range(-10,11)),height_caps=True,small_branches_included=['n <= M','n < 110'],stages=rows,total_signed_checks=total,seconds=perf_counter()-start,new_B_original_results=0,missing=['Lean CRT generic acceptance','Lean bounded cofactor bridge acceptance','all numerical certificates and grid consumer','initial n < 2^15360','finite original terminal coverage'])
(OUT/'result.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')