from math import prod,comb,lcm
from sympy import primerange, factorint
from pathlib import Path
import json
out=Path(__file__).parent
rows=[]
for k in (2,3,5,8,10):
 Q=2*k-1; M=1
 for p in primerange(2,Q+1):
  e=1
  while p**e<=Q: e+=1
  M*=int(p)**e
 for t in (1,2,5):
  d=k+M*t
  I=list(range(d-k+1,d+k))
  L=lcm(*I); rough=L
  for p in primerange(2,Q+1):
   while rough%p==0: rough//=p
  delta=comb(d+k-1,Q)
  assert rough==delta
  assert all(delta%p for p in primerange(2,Q+1))
  # Baseline capacity with n=kd (the same d exponent as ratio-four candidates).
  n=k*d
  bound=prod(range(1,k))*((n+k)**len(list(primerange(2,Q+1))))*delta
  P=prod(range(n+1,n+k+1))
  rows.append({'k':k,'Q':Q,'M':M,'t':t,'d':d,'lcm_rough_part':str(rough),'binomial_delta':str(delta),'ratio_bound_to_P_lower_integer':bound//P})
(out/'lcm-capacity-exact.json').write_text(json.dumps(rows,indent=2),encoding='utf8')
print(json.dumps([{z:v for z,v in row.items() if z not in ('lcm_rough_part','binomial_delta')} for row in rows],indent=2))
print('Exact local-LCM identities passed:',len(rows))
