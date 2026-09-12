from pathlib import Path
from itertools import product
from math import comb,prod
from datetime import datetime,timezone
import json,time
out=Path(__file__).resolve().parent
start=time.perf_counter()
generic_total=generic_valid=0
for n in range(2,13):
 for M in range(1,min(n,7)):
  for xs in product(range(1,min(n,5)+1),repeat=4):
   generic_total+=1
   if n**4<M**3*prod(xs):
    generic_valid+=1
    assert sum(M*x>n for x in xs)>=2,(n,M,xs)
cofactor_total=cofactor_valid=0
for n in range(21):
 for M in range(13):
  for X in range(13):
   for A in range(13):
    cofactor_total+=1
    if A*X<=n<M*X:
     cofactor_valid+=1
     assert A<M,(n,M,X,A)
exponent_total=exponent_valid=0
for n in range(17):
 for M in range(17):
  for p in range(8):
   for e in range(5):
    exponent_total+=1
    if M<n<M*p**e:
     exponent_valid+=1
     assert e>0,(n,M,p,e)
actual_cases=actual_valid=collisions=0
actual_examples=[]
for n in range(110,181):
 B=comb(n,11);parts=[]
 for p in [2,3,5,7]:
  t=B;e=0
  while t%p==0:t//=p;e+=1
  X=p**e
  assert 1<=X<=n
  offsets=[a for a in range(11) if (n-a)%X==0]
  assert offsets,(n,p,e)
  parts.append((p,e,X,offsets))
 U=prod(x[2] for x in parts)
 for M in range(1,n):
  actual_cases+=1
  if n**4>=M**3*U:continue
  actual_valid+=1
  selected=[entry for entry in parts if n<M*entry[2]]
  assert len(selected)>=2
  first,second=selected[:2]
  p,h,Xp,aps=first;q,k,Xq,aqs=second
  assert p!=q and h>0 and k>0
  a,b=aps[0],aqs[0]
  A,C=(n-a)//Xp,(n-b)//Xq
  assert 1<=A<M and 1<=C<M
  assert n-a==p**h*A and n-b==q**k*C and abs((n-a)-(n-b))<=10
  common=set(aps)&set(aqs)
  if common:
   collisions+=1
   offset=min(common)
   assert 1<=(n-offset)//Xp<M and 1<=(n-offset)//Xq<M
  if len(actual_examples)<6 or (common and not any(x['coincident_offset_available'] for x in actual_examples)):
   actual_examples.append({'n':n,'M':M,'p':p,'q':q,'actual_exponents':[h,k],'offsets':[a,b],'cofactors':[A,C],'coincident_offset_available':bool(common)})
# Why strict n<H must not silently become n<=H in the abstract step:
# n=H=M=U=K=C=1 satisfies the corresponding nonstrict inequalities,
# but n^4 < M^3*U is false. This is not a B699 counterexample.
assert 1**4==1**3*1
results={'utc':datetime.now(timezone.utc).isoformat(),'status':'bounded exact structural checks; no Lean or CRT enumeration','generic_selection':{'n':[2,12],'M':'1..min(n-1,6)','X':'each 1..min(n,5)','tuples':generic_total,'strict_product_cases':generic_valid},'generic_cofactor':{'n':[0,20],'M_X_A':[0,12],'tuples':cofactor_total,'valid_premise_cases':cofactor_valid},'generic_exponent':{'n_M':[0,16],'p':[0,7],'e':[0,4],'tuples':exponent_total,'valid_premise_cases':exponent_valid},'actual_binomial':{'n':[110,180],'M':'1..n-1','pairs_checked':actual_cases,'actual_strict_U_cases':actual_valid,'pairs_allowing_coincident_offset':collisions,'examples':actual_examples,'noCommon_was_not_enumerated':True},'strict_endpoint_note':'n=H=M=U=K=C=1 disproves strict upgrade from only nonstrict abstract hypotheses; not an original-problem counterexample','elapsed_seconds':time.perf_counter()-start,'worker_lean_runs':0}
(out/'bounded-check-results.json').write_text(json.dumps(results,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'generic_selection_tuples':generic_total,'selection_valid':generic_valid,'cofactor_tuples':cofactor_total,'cofactor_valid':cofactor_valid,'exponent_tuples':exponent_total,'exponent_valid':exponent_valid,'actual_pairs':actual_cases,'actual_U_valid':actual_valid,'coincident_offset_pairs':collisions,'seconds':results['elapsed_seconds']}))
