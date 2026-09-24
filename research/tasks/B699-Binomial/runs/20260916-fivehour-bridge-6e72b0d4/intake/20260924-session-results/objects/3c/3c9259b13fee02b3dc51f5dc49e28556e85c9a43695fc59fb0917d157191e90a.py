#!/usr/bin/env python3
import json
from pathlib import Path
import sympy as s
ROOT=Path(__file__).resolve().parents[1]
d,v,a,z=s.symbols('d v a z')
Q=d+v
R=s.expand(Q**10-12*Q**7+15*d*Q**6-4*d**2*Q**5-4*d*Q**3+12*d**2*Q**2-12*d**3*Q+4*d**4)
G=128*a**9+640*a**8+1440*a**7+1728*a**6+1128*a**5+344*a**4-10*a**3-44*a**2-11*a-1
assert s.expand(R.subs({d:1,v:2*a})-8*a*G)==0
H=s.expand(a*G)
odd=s.expand((H-(3-a)).subs(a,2*z+1))
coeff=[int(c) for c in s.Poly(odd,z).all_coeffs()]
assert all(c%4==0 for c in coeff)
total=sum(27*(2**(rho-2)) for rho in range(12,28))
assert total==1811911680
out={'status':'PASS','identity':'R(1,2a)=8aG(a)','odd_congruence':'aG(a)=3-a mod4 for odd a','candidate_count':total}
(ROOT/'certificates'/'symbolic.json').write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
print(json.dumps(out,indent=2))
