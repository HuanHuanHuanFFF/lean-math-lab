from pathlib import Path
from fractions import Fraction as F
from math import comb,factorial
import json,hashlib,time
out=Path(__file__).resolve().parent
g=json.loads((out/'probe-results.json').read_text())
t0=time.perf_counter();P=243;Q=121;Y=1<<8230
assert 2**405<3**256<2**406 and 2**885<11**256<2**886
for H in [8191,8230]:
 assert H*679*256>406*35000*100
 assert H*593*256>886*14000*100
 assert 405*35000*101>H*679*256
 assert 885*14000*101>H*593*256
minimum={0:None,1:None};dig=hashlib.sha256();maxbits=0
# Direct binomial formula and explicit sum, not the generator recurrences/Horner.
for m in range(1,101):
 for delta in [0,1]:
  u=5*m-delta;v=2*m+delta-1;f=v//2;N=2*u+v+1
  D=F(factorial(u+f)*factorial(f),factorial(u)*factorial(v))
  E=sum((-1)**r*comb(u+r,r)*comb(N,2*u+r+1)*P**(v-r) for r in range(v+1))
  assert E>0
  eta=F(Y*E,(P*Q)**(7*m))/D
  assert eta>1
  if minimum[delta] is None or eta<minimum[delta][1]:minimum[delta]=(m,eta)
  maxbits=max(maxbits,eta.numerator.bit_length(),eta.denominator.bit_length())
  dig.update(str((m,delta,E,D.numerator,D.denominator,eta.numerator,eta.denominator)).encode())
assert minimum[0][0]==minimum[1][0]==100
assert minimum[0][1]>128 and minimum[1][1]>512
# Check the proposed homogeneous recurrence polynomial by independent evaluation
# at degree+1 points; its coefficients are explicitly positive.
a=g['uniform_bound_next_candidate']['cleared_difference_coefficients_m_ascending']
assert len(a)==6 and all(c>0 for c in a)
for m in range(8):
 lhs=3125*3*m*(24*m+23)
 rhs=11664*(24*m-1)*(2*m+1)
 for j in range(1,6):lhs*=6*m+j;rhs*=5*m+j
 assert lhs-rhs==sum(c*m**k for k,c in enumerate(a))
# Degree-seven cancellation was checked by exact coefficient convolution in the
# generator; these point evaluations are regression, not the proof of identity.
fz=out/'FREEZE.json'
if fz.exists():
 z=json.loads(fz.read_text());assert all(hashlib.sha256((out/n).read_bytes()).hexdigest()==v['sha256'] for n,v in z['files'].items())
res={'status':'PASS_INDEPENDENT_FINITE_E_AND_CAPACITY_CHECKS_NOT_LEAN','m_values':100,'deltas_each':2,'finite_E_values_checked':200,'minimum_m_by_delta':{str(d):minimum[d][0] for d in [0,1]},'minimum_E_term_floor':{str(d):minimum[d][1].numerator//minimum[d][1].denominator for d in [0,1]},'max_eta_integer_bits':maxbits,'trace_sha256':dig.hexdigest(),'seconds':time.perf_counter()-t0,'lean_invocations':0}
print(json.dumps(res,indent=2))
