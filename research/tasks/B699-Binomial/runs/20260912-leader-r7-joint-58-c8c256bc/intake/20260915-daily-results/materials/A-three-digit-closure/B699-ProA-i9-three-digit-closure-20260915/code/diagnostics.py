"""NEW finite diagnostics. None substitutes for the unbounded proof."""
from pathlib import Path
from math import gcd
import json,time
from math_core import *
ROOT=Path(__file__).resolve().parents[1]
t0=time.perf_counter();counts={'full_rough_square_congruences':0,'degree9_two_implementations':0,
 'local_nonzero_and_full_valuation':0,'resonance_cases':0,'II_73_outside_400':0,'source_symbolic_apps':0,'pratt_checks':0}
# Includes composite rough moduli and arbitrary smooth multipliers.
for w in (11,13,121,143,11**2*13,11**2*13**2):
 for smooth in (1,6,40):
  G=w*smooth
  for a in range(2,8):
   for b in range(1,a//2+1):
    n,j=G*a,G*b;g=gcd(n,j);W=rough7(g)
    for c,d in ((1,2),(1,3),(2,5),(3,7)):
     Z=coefficient(n,j,c,d)
     assert Z==coefficient_recurrence(n,j,c,d)
     assert (9*Z-((n-j)*c**9-j*(d-c)**9))%(W*W)==0
     T=(n//g)*c**9-(j//g)*(c**9+(d-c)**9)
     if T%W:assert Z!=0
     counts['full_rough_square_congruences']+=1
     counts['degree9_two_implementations']+=1
pairs=((2,1),(5,3),(9,8),(18,16),(27,24),(10,8))
for p in (11,13,17,19,73,199):
 for e in (1,2,3):
  Q=p**e
  for H,K in pairs:
   gap=H-K;D=p**gap
   for C in sorted({2,4,p-1}):
    if C>=p:continue
    n=Q*(p**H+p**K+C);d=D+1
    for S in sorted({0,C//2,C-1,C}):
     j=Q*(p**K+S)
     assert vbin(n,j,p)==carries(n,j,p)==0
     Z=coefficient(n,j,1,d)
     assert Z==coefficient_recurrence(n,j,1,d)
     if S<C:expected=e
     elif H!=9*gap:expected=e+min(H,9*gap)
     else:
      expected=e+H;counts['resonance_cases']+=1
     assert Z and vp(Z,p)==expected
     counts['local_nonzero_and_full_valuation']+=1
     counts['degree9_two_implementations']+=1
   # Type II, including the exceptional-prime resonance outside source scope.
   n=Q*(p**H+2*p**K+1);d=D+2
   for B,S in ((1,0),(1,1),(2,0),(2,1)):
    j=Q*(B*p**K+S)
    assert vbin(n,j,p)==carries(n,j,p)==0
    if B==2 and S==1 and H==9*gap and p==73:
     assert n%16!=0;counts['II_73_outside_400']+=1;continue
    Z=coefficient(n,j,B,d)
    assert Z==coefficient_recurrence(n,j,B,d)
    if (B,S)!=(2,1):expected=e
    elif H!=9*gap:expected=e+min(H,9*gap)
    else:expected=e+H;counts['resonance_cases']+=1
    assert Z and vp(Z,p)==expected
    counts['local_nonzero_and_full_valuation']+=1
    counts['degree9_two_implementations']+=1
# Actual integer counterexample to deleting the nonzero check, NOT to B699.
n=400*11**12;j=n//2
assert coefficient(n,j,1,2)==0
assert rational_unit_consumer(n,j,1,2)['reason']=='nonzero_certificate_missing'
# Full-prime source classifier never expands enormous n.
for p in (401,409,419,421):
 for e,H,K in ((1,2,1),(1,400,200),(10,3000,1000),(10**8,10**10,10**9)):
  C=(-pow(p,H,400)-pow(p,K,400))%400
  if C==0:C=400
  assert C%2==0 and 2<=C<p
  assert source_consumer(p,e,H,K,C)['status']=='ALL_LEGAL_J_COMMON9'
  counts['source_symbolic_apps']+=1
# Positive primality certificate path, and two invalid mutations.
p2={'p':2,'factors':[]}
p3={'p':3,'witness':2,'factors':[{'prime':p2,'exponent':1}]}
p11={'p':11,'witness':2,'factors':[{'prime':p2,'exponent':1},{'prime':{'p':5,'witness':2,'factors':[{'prime':p2,'exponent':2}]},'exponent':1}]}
assert verify_pratt(p2) and verify_pratt(p3) and verify_pratt(p11)
counts['pratt_checks']+=3
assert not verify_pratt({'p':15,'witness':2,'factors':[{'prime':p2,'exponent':1},{'prime':p3,'exponent':1}]})
assert checked_prime(1_000_003) is None
r={'status':'PASS_NEW_CONGRUENCE_DIGITAL_DIAGNOSTICS','counts':counts,'zero_example':{'n':'400*11^12','j':'n/2','c':1,'d':2,'K9':0,'is_original_counterexample':False},'seconds':time.perf_counter()-t0,
 'boundary':'finite new diagnostics, not an unbounded proof or any historical replay'}
(ROOT/'logs/diagnostics.json').write_text(json.dumps(r,indent=2))
print(json.dumps(r))
