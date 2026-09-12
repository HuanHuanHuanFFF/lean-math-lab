from pathlib import Path
from math import factorial
from itertools import product,permutations
from datetime import datetime,timezone
import json,hashlib,re,time
out=Path(__file__).resolve().parent
run=out.parent.parent
start=time.perf_counter()
primes=[2,3,5,7];mapping=[];window_checks=0
for p,q in permutations(primes,2):
 small,big=sorted([p,q]);swapped=p>q
 mapping.append({'ordered_pair':[p,q],'certificate_pair':[small,big],'swapped':swapped,'checked_p_exponent':'k' if swapped else 'h','checked_q_exponent':'h' if swapped else 'k'})
 for h,k,A,C in product(range(1,4),range(1,4),range(1,9),range(1,9)):
  NP,NQ=p**h*A,q**k*C;d=NP-NQ
  if abs(d)>10:continue
  n=max(NP,NQ);r,s=n-NP,n-NQ
  assert 0<=r<=10 and 0<=s<=10
  if swapped:
   PP,QQ=small**k,big**h;AA,CC=C,A;rr,ss=s,r
  else:
   PP,QQ=small**h,big**k;AA,CC=A,C;rr,ss=r,s
  assert PP*AA==n-rr and QQ*CC==n-ss
  assert PP*AA-QQ*CC==(-d if swapped else d)
  assert -10<=PP*AA-QQ*CC<=10
  window_checks+=1
assert len(mapping)==12 and sum(x['swapped'] for x in mapping)==6
source=run/'experiments/huan-i11-crt-descent-probe-5e2d13bb/result.json'
d=json.loads(source.read_text(encoding='utf-8-sig'));K=d['K'];Tfactor=(2*factorial(11))**11
cutoff_checks=underreport_rejections=0
for stage in d['stages']:
 H,M=stage['H'],stage['M'];assert 1<=M and Tfactor*H**7<=K*M**33
 for row in stage['pairs']:
  p,q=row['p'],row['q'];a=stage['power_counts'][str(p)];b=stage['power_counts'][str(q)]
  assert 1<p and 1<q and H<=p**(a+1) and H<=q**(b+1);cutoff_checks+=1
  assert not H<=p**a;underreport_rejections+=1
  assert not H<=q**b;underreport_rejections+=1
 # The new wrapper's formula agrees with the probe's preserved small branches.
 T=max(x['max_window_upper'] for x in stage['pairs'])
 bound=max(M,max(109,T));assert bound==stage['output_upper'] and bound+1==stage['next_H']
case_checks=0
for n,M,T in product(range(141),range(13),[0,108,109,110,139]):
 if n<=M or n<110 or n<=T:
  bound=max(M,max(109,T));assert n<=bound and n<bound+1;case_checks+=1
assert 109<max(0,max(109,0))+1
assert not 109<max(0,max(109,0))
# Static guard against accidentally adding windows/components to the final interface.
src=(out/'ActualStep.lean').read_text(encoding='utf-8')
headers={}
for name in ['actual_i11_step','actual_i11_next_height']:
 m=re.search(r'theorem '+name+r'([\s\S]*?) := by',src);assert m
 header=m.group(1)
 assert all(x not in header for x in ['hP :','hQ :','primeComponent','PrimeWindow'])
 assert header.count('pairGridCheck')==6
 headers[name]=header.strip()
result={'utc':datetime.now(timezone.utc).isoformat(),'status':'bounded orientation/metadata/endpoint checks; not Lean or full grids','ordered_pair_mapping':mapping,'small_window_equation_checks':window_checks,'probe_stage_cutoff_checks':cutoff_checks,'underreported_cutoff_rejections':underreport_rejections,'stage_H_M_checks':len(d['stages']),'small_branch_and_next_height_checks':case_checks,'final_headers':headers,'probe_result_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'elapsed_seconds':time.perf_counter()-start,'worker_lean_runs':0,'numeric_full_grids_supplied':False}
(out/'bounded-check-results.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'ordered_pairs':len(mapping),'swaps':6,'window_checks':window_checks,'cutoff_checks':cutoff_checks,'cutoff_rejections':underreport_rejections,'branch_checks':case_checks,'seconds':result['elapsed_seconds']}))
