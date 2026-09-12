from pathlib import Path
from fractions import Fraction as F
from math import comb, gcd
from functools import reduce
import json,time,hashlib
from datetime import datetime,timezone
out=Path(__file__).resolve().parent
run=out.parent.parent
start=time.perf_counter()
lamQ=F(440758604932333255282947863,39614081257132168796771975168)
lamE=F(618834739845914957406423393,39614081257132168796771975168)
beta=F(8**8,3**6*2**2)
BQ,BE=beta*lamQ,beta*lamE
L=F(1273397,1000000)**3
A3=F(625**5)*L/(2**5*4375**3*BQ)
W=F((625*2187)**5)*L/(4375**2*BE)
Z=5726930071079973414170
assert A3==F(625**2)*L/(7**3*2**5*BQ)
old=json.loads((run/'experiments/huan-i11-approximation-bridge-plan-5e2d13bb/log-free-selector-results.json').read_text(encoding='utf-8-sig'))
row=next(x for x in old['rows'] if x['seed']['p']==5 and x['seed']['q']==3)
assert A3==F(row['A3']) and W==F(row['W'])
assert A3>1 and A3**213>48 and W>=Z
assert 5**512<=2**1189 and 3**128<=2**203 and 2**289<=Z**4
results=[]
for m in [1,2,3,4,213]:
 for delta in [0,1]:
  u,v=3*m-delta,2*m+delta-1
  qs=[(-1)**u*comb(2*u-r,u)*comb(v+r,r) for r in range(u+1)]
  ps=[(-1)**(u+r)*comb(2*u+v+1,r)*comb(2*u-r,u) for r in range(u+1)]
  es=[(-1)**r*comb(u+r,r)*comb(2*u+v+1,2*u+r+1) for r in range(v+1)]
  qH=sum(c*4375**(u-r) for r,c in enumerate(qs))
  pH=sum(c*4375**(u-r) for r,c in enumerate(ps))
  eH=sum(c*4375**(v-r) for r,c in enumerate(es))
  Q,E=F(qH,4375**u),F(eH,4375**v)
  G=reduce(gcd,(abs(x) for x in qs))
  assert qH%G==0 and pH%G==0
  qN,pN=qH//G,pH//G
  error=4375**(5*m)*pN-4374**(5*m)*qN
  assert G*error==eH
  assert abs(Q)<=BQ**m and abs(E)<=BE**m
  result={'m':m,'delta':delta,'Q_standard_bound':True,'E_standard_bound':True,'actual_content_identity':True,'q_content_bits':G.bit_length()}
  if m==1:
   assert 2*abs(Q)<=BQ and 2*abs(E)<=BE
   result.update(Q=str(Q),E=str(E),Q_initial_ratio=str(2*abs(Q)/BQ),E_initial_ratio=str(2*abs(E)/BE))
  if m>=129:
   assert L**m<G
   assert L**m*abs(qN)<=(4375**3*BQ)**m
   assert L**m*abs(error)<=(4375**2*BE)**m
   assert 48*2**(5*m)*abs(qN)<625**(5*m)
   for V in [0,1,2,3]:
    Nq=2187**(5*m)*V
    assert 2*Nq<W**m
    assert 2*abs(error)*V<625**(5*m)
    assert 2**(5*m)*24*abs(qN)+abs(error)*V<625**(5*m)
   result.update(G_lower_at_sample=True,scaled_bounds_at_sample=True,V_samples=[0,1,2,3])
  results.append(result)
data={'utc':datetime.now(timezone.utc).isoformat(),'status':'bounded exact rational checks, not Lean or unrestricted proof','BQ':str(BQ),'BE':str(BE),'A3':str(A3),'W':str(W),'same_as_original_plan':True,'numeric_certificates_checked':['A3>1','A3^213>48','W>=Z','5^512<=2^1189','3^128<=2^203','2^289<=Z^4'],'actual_rows':results,'elapsed_seconds':time.perf_counter()-start,'worker_lean_runs':0}
(out/'bounded-check-results.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'elapsed_seconds':data['elapsed_seconds'],'actual_rows':len(results),'original_rates_matched':True,'all_checks':True}))
