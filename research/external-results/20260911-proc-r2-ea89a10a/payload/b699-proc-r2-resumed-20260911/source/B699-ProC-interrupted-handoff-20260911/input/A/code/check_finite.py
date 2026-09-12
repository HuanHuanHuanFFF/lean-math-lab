"""Independent reverse CRT, pairwise colour unions, and window-product terminal check.
No imports of the candidate or terminal generators; factorials are parameterized
using prime valuations. Every implicit largepart row is actually recomputed.
"""
from pathlib import Path
from itertools import combinations
import math,json,time,hashlib,resource
from reverse_crt import check_symbolic_stage,require,trial_prime,v_number
R=Path(__file__).resolve().parents[1]
def parameters():
 i=10;r=3;s=7;ps=[2,3,5,7];ell=i-1-r;lam=2*s-r;E=s*(s+1)+ell*(ell+1)//2
 def factorial_v(n,p):
  z=0
  while n:n//=p;z+=n
  return z
 exps={p:(s*(s+1) if p==2 else 0)+2*sum(factorial_v(h,p) for h in range(1,s+1))+sum(factorial_v(h,p) for h in range(1,ell+1)) for p in ps}
 K=math.prod(p**a for p,a in exps.items())
 return dict(i=i,r=r,s=s,ps=ps,t=4,lam=lam,E=E,d=E-lam*(i-4),K=K)
def union(intervals):
 out=[]
 for a,b in sorted(intervals):
  require(a<=b,'empty interval')
  if out and a<=out[-1][1]+1:out[-1][1]=max(out[-1][1],b)
  else:out.append([a,b])
 return out
def intersect(a,b):
 i=j=0;out=[]
 while i<len(a) and j<len(b):
  l=max(a[i][0],b[j][0]);h=min(a[i][1],b[j][1])
  if l<=h:out.append([l,h])
  if a[i][1]<=b[j][1]:i+=1
  else:j+=1
 return out

def reconstruct(par,term):
 i=par['i'];H=int(term['H']);M=term['M'];start=max(90,M+1)
 require(term['start']==start,'small branch mismatch')
 rhs=(2*math.factorial(i))**par['lam']*H**par['d'];ex=par['lam']*3
 require(par['K']*M**ex>=rhs and (M==1 or par['K']*(M-1)**ex<rhs),'M threshold')
 raw=0;families=[];colours=[]
 for p in par['ps']:
  v=v_number(10,p);q=1;h=0;intervals=[]
  while q<=(H-1)//p:
   q*=p;h+=1
   if h<=v:continue
   lo=max(1,-((-(start-9))//q));hi=min(M//p**v,(H-1)//q)
   if lo>hi:continue
   families.append([p,h,lo,hi]);raw+=hi-lo+1
   for a in range(hi,lo-1,-1):
    l=max(start,a*q);u=min(H-1,a*q+9);require(l<=u,'bad family endpoint');intervals.append([l,u])
  colours.append(union(intervals))
 require(raw==term['raw_intervals'] and families==term['families'],'missing power/cofactor family')
 cross=[]
 for a,b in combinations(colours,2):cross.extend(intersect(a,b))
 good=union(cross);require(good==term['segments'],'two-colour candidate discrepancy')
 return union([[22,start-1]]+good),raw,[len(c) for c in colours]

def main():
 ts=time.monotonic();par=parameters();conf=json.loads((R/'input/crt_parameters.json').read_text());require((conf['i'],conf['r'],conf['s'])==(10,3,7),'parameter source')
 bs=json.loads((R/'evidence/blocks_summary.json').read_text());require(bs['pairs']==6 and bs['cube_factor']==2662 and bs['D']==9,'block source')
 records=[]
 for p,q in combinations(par['ps'],2):
  b=json.loads((R/f'evidence/blocks/block_{p}_{q}.json').read_text());require((b['p'],b['q'],b['source_height_bits'],b['cube_factor'])==(p,q,1048577,2662),'block pair')
  records.append(b['small_exponent_height_bits'])
 h=max(7,*records);require(h==bs['destination_height_bits']==conf['source_height_bits']==184,'block-height join')
 H=1<<h;stages=json.loads((R/'evidence/crt_stages.json').read_text());require(stages,'no CRT stages');pairs=0
 for ix,stage in enumerate(stages):
  require(int(stage['H'])==H,'broken height induction');nxt=check_symbolic_stage(par,stage);pairs+=stage['prime_power_pairs'];require(nxt<H if ix+1<len(stages) else nxt==H,'bad descent/fixed point');H=nxt
 cand=json.loads((R/'evidence/candidates.json').read_text());require(int(cand['terminal_cover']['H'])==H,'terminal H');intervals,raw,colour_counts=reconstruct(par,cand['terminal_cover']);require(intervals==cand['candidate_intervals'],'candidate omission')
 rows=sum(b-a+1 for a,b in intervals);require(rows==cand['rows'] and len(intervals)==cand['intervals'] and intervals[-1][1]==cand['max_n']==H-1,'candidate counters')
 term=json.loads((R/'evidence/terminal_certificate.json').read_text());require((term['i'],term['r'],term['s'])==(10,3,7),'terminal params');require(term['unresolved_rows']==[],'residual candidates')
 top=term['top_prime_rows'];require(len({n for n,p in top})==len(top),'duplicate exceptional n');sp={p for n,p in top}
 for p in sp:require(trial_prime(p),'nonprime witness')
 td=dict(top);seen=set();large=0;digest=hashlib.sha256();j_checks=0
 for a,b in intervals:
  for n in range(a,b+1):
   if n in td:
    p=td[n];require(n-10<p<=n and p>=10 and 2*p>n,'top prime theorem domain');require(math.comb(n,10)%p==0,'first binomial witness')
    # Small exceptional rows also receive a direct all-j integer check.
    for j in range(11,n//2+1):require(math.comb(n,j)%p==0,'second binomial witness');j_checks+=1
    seen.add(n)
   else:
    V=1
    for k in range(n-9,n+1):
     z=k
     for p in par['ps']:
      while z%p==0:z//=p
     V*=z
    require(par['K']*V**par['lam']>n**par['E'],'largepart consumer fails')
    digest.update(f'{n}:{V}\n'.encode());large+=1
 require(seen==set(td),'exception outside candidate set')
 require(rows==term['candidate_rows'] and large==term['large_rows'] and large+len(top)==rows,'terminal partition')
 require(digest.hexdigest()==term['large_rows_sha256'],'full-power witnesses mismatch')
 out=dict(status='PASS_COMPLETE_REVERSE_CRT_AND_ALL_TERMINAL_ROWS',i=10,height_bits=h,terminal_height=H,CRT_stages=len(stages),CRT_pairs=pairs,raw_intervals=raw,colour_union_counts=colour_counts,candidate_intervals=len(intervals),candidate_rows=rows,largepart_rows=large,top_prime_rows=len(top),unique_primes=len(sp),max_prime=max(sp),direct_j_checks=j_checks,unresolved=0,seconds=time.monotonic()-ts,peak_rss_kib=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (R/'evidence/finite_check.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2),flush=True)
if __name__=='__main__':
 if not __debug__:raise RuntimeError('Do not use -O')
 main()
