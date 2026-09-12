from pathlib import Path
from math import comb
from datetime import datetime,timezone
import time,json
out=Path(__file__).resolve().parent
start=time.perf_counter()
window_count=gap_count=power_count=0
for n in range(301):
 Y=(n+1)//2
 for a in range(11):
  N=max(n-a,0)
  if n>=20:
   assert Y<=N<=2*Y
   window_count+=1
  for b in range(11):
   assert abs(N-max(n-b,0))<=10
   gap_count+=1
for k in range(13):
 for n in range(2**(k+1),2**(k+1)+65):
  assert 2**k<=(n+1)//2
  power_count+=1
assert (19+1)//2>19-10
assert (21+1)//2==21-10
assert 21>2*(21//2)
actual_pairs=collision_pairs=zero_valuation_pairs=cofactor_implications=0
for n in range(20,161):
 Y=(n+1)//2;B=comb(n,11);data={}
 for p in [5,3]:
  e=0;t=B
  while t%p==0:t//=p;e+=1
  X=p**e
  windows=[(a,(n-a)//X) for a in range(11) if (n-a)%X==0]
  assert windows
  for a,C in windows:
   assert C>=1 and C*X==n-a and Y<=C*X<=2*Y
  data[p]=(e,X,windows)
 e,X,wp=data[5];f,Z,wq=data[3]
 n1000=n**1000;X1000=X**1000;Z1000=Z**1000
 yp,yq=Y**354,Y**228
 for a,A in wp:
  for b,C in wq:
   actual_pairs+=1
   assert abs(5**e*A-3**f*C)<=10
   collision_pairs+=a==b
   zero_valuation_pairs+=(e==0 or f==0)
   if yp<=A**1000:
    cofactor_implications+=1
    assert X1000*yp<=n1000
   if yq<=C**1000:
    cofactor_implications+=1
    assert Z1000*yq<=n1000
results={'utc':datetime.now(timezone.utc).isoformat(),'status':'bounded exact window and consumer checks; not Lean or proof of large-n cofactor edge','ceil_interval_domain':{'n':[20,300],'offset':[0,10],'cases':window_count},'integer_gap_domain':{'n':[0,300],'offsets':[0,10],'cases':gap_count},'generic_dyadic_domain':{'k':[0,12],'n':'2^(k+1)..2^(k+1)+64','cases':power_count},'actual_binomial_domain':{'n':[20,160],'primes':[5,3],'all_legal_window_pairs':actual_pairs,'coincident_offsets':collision_pairs,'pairs_with_zero_actual_valuation':zero_valuation_pairs,'true_cofactor_cut_to_component_implications':cofactor_implications,'did_not_assume_large_height_for_small_examples':True},'boundary_witnesses':{'n19_offset10_fails_lower_interval':True,'n21_offset10_attains_ceil_lower':True,'floor_half_fails_upper_at_n21_offset0':True},'elapsed_seconds':time.perf_counter()-start,'worker_lean_runs':0}
(out/'bounded-check-results.json').write_text(json.dumps(results,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'ceil_interval_cases':window_count,'gap_cases':gap_count,'dyadic_cases':power_count,'actual_window_pairs':actual_pairs,'collision_pairs':collision_pairs,'zero_valuation_pairs':zero_valuation_pairs,'valid_graph_implications':cofactor_implications,'seconds':results['elapsed_seconds']}))
