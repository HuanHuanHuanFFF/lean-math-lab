"""Finite diagnostics. These are not a substitute for infinite proofs."""
from pathlib import Path
from math import comb,gcd,isqrt
import json,time
from fractions import Fraction as F
from common import factors,vp,vp_binom,carry_count,block_decomposition,primes_to,rough,power_product_ge,elementary_consumer,elementary_beta_consumer
R=Path(__file__).resolve().parents[1];start=time.monotonic()
out={'status':'RUNNING','scope':'new finite diagnostics; NOT universal acceptance'}
# Unconditional avoided-part divisibility with all full prime powers retained.
fs={n:factors(n) for n in range(1,257)}
pairs=divs=active=0
for n in range(20,257):
 for j in range(10,n//2+1):
  pairs+=1;g=gcd(n,j);beta=j//g;gamma=(n-j)//g
  lhs=1
  for t in range(1,9):
   D=1
   for p,e in fs[n-t].items():
    if p>=11 and vp_binom(n,j,p)==0:D*=p**e
   if D>1:active+=1
   lhs*=D**(12-t)
  rhs=(beta*gamma)**6
  for h in range(1,6):rhs*=((j-h)*(n-j-h))**(6-h)
  assert rhs%lhs==0;divs+=1
  # Target factor bound is checked without any NC or source-size assumption.
  J=j*(n-j)
  assert rhs<=g**30*(beta*gamma)**21
  kap=F(3,10)**9*F(7,10)**21
  assert F(g**30*(beta*gamma)**21,n**30*beta**12)<=kap
out['avoided_divisibility']={'legal_pairs':pairs,'divisibility_checks':divs,'nontrivial_rows':active}
# Independent direct binomial valuations versus factorial and digit implementations.
valuation=0
for n in range(20,101):
 for j in range(10,n//2+1):
  z=comb(n,j)
  for p in (11,13,17,37):
   assert vp(z,p)==vp_binom(n,j,p)==carry_count(n,j,p);valuation+=1
out['three_way_valuations']=valuation
# Complete prime-power layers and nonzero upper carries, no enormous binomials.
power=nonzero=0
for p in (11,13,17,37):
 for e in range(1,9):
  Q=p**e
  for A in (2,p+1,2*p+3,p*p+1):
   for B in sorted(set((0,1,A//2,A-1))):
    for r in (0,1,4,8):
     for s in range(r+1):
      n=Q*A+r;j=Q*B+s
      val=vp_binom(n,j,p)
      assert val==vp_binom(A,B,p)+vp_binom(r,s,p)
      assert val==carry_count(n,j,p)
      if val:nonzero+=1
      power+=1
out['full_prime_power_layers']={'checks':power,'nonzero_upper_carries':nonzero,'max_e':8}
# Exhaust the allowed TWO-BLOCK digit submasks for 4 prime bases and selected exponents.
block=zero=positive=rejects=0
for p in (11,13,37,43):
 for e in (1,2,3):
  Q=p**e
  for k in (e,2*e+1):
   for A in (1,2,3,min(7,Q-1)):
    for tail in (1,2,5,8):
     n=Q*(A*p**k+tail)
     for B in range(A+1):
      for S in range(tail+1):
       j=Q*(B*p**k+S)
       if j==0 or 2*j>n:continue
       dec=block_decomposition(n,j,p,k)
       assert not dec.get('p_common_if_i9_legal',False)
       assert dec['B']==B and dec['S']==S
       if B==0:
        assert j//gcd(n,j)<=tail;zero+=1
       else:
        assert 1<=B<A and abs(B*n-A*j)<=Q*A*tail;positive+=1
       block+=1
     # One deliberately forbidden low digit (provided it is a legal target).
     j=Q*(tail+1)
     if 2*j<=n:
      assert vp_binom(n,j,p)>0;rejects+=1
out['two_block_diagnostics']={'allowed_submasks':block,'zero_leading':zero,'positive_leading':positive,'forbidden_low_masks':rejects}
# Forbidden composite-base compression: individually carry-free does not combine.
n,j=20735,3146
assert gcd(n,j)==143
assert vp_binom(n,j,11)==vp_binom(n,j,13)==0
assert (j//143)%143==22>(n//143)%143==2
assert vp_binom(n,9,29)>0 and vp_binom(n,j,29)>0
out['composite_base_counterexample']={'n':n,'j':j,'g':143,'avoided_primes':[11,13],'common_prime':29,'base143_carry':True}
# The failed witness-only scaling is retained just as a local obstruction.
assert vp_binom(23,9,11)>0 and vp_binom(23,10,11)>0
assert vp_binom(989,9,11)==0
assert vp_binom(989,9,23)>0 and vp_binom(989,430,23)>0
out['witness_scaling_counterexample']={'old':[23,10,11],'scaled':[989,430],'replacement_common_prime':23}
# Scaled-down algebraic family tests; NOT the theorem's giant entry.
M=1
for p in primes_to(31):M*=p
L=147*439**2*M
families=0;projections=0
for T in (2100,4200,6300,8400,10500,12600):
 X=10**(T//100);s=max(0,(X-439+L-1)//L);W=439+L*s
 if W>2*X:continue
 alpha=1200*10**T;beta=10**(6*T//7)+3;n=alpha*W;j=beta*W
 assert gcd(n,j)==W and rough(n)==W
 assert n%176400==174000 and vp(n//3,439)==1
 assert gcd(alpha,beta)==1 and 10<=j<=n//2
 assert (2*j)**8<n**7
 assert n< (2**203)*beta**2
 assert n<W**102
 assert 2**213*j**7<n**6*W**4
 assert n%13==j%13==1
 families+=1
 # Real integer magnitude projection with a definite common prime 13.
 b0=isqrt(2*alpha**2)-alpha
 bp=b0+(41-b0)%390
 jp=W*bp
 assert gcd(alpha,bp)==1 and 3*bp>alpha and 2*bp<alpha
 assert n%13==1 and jp%13==7
 assert vp_binom(n,9,13)>0 and vp_binom(n,jp,13)>0
 assert power_product_ge([(bp,60000)],[(n,54167)],lshift=3075000) is True
 assert power_product_ge([(jp*(n-jp),105000)],[(n,204167),(W,60000)],lshift=3205000) is True
 projections+=1
out['scaled_family_diagnostics']={'positive_family_instances':families,'projection_instances':projections,'theorem_entry_executed':False}
# Conservative comparison: every resolved answer checked against direct powers.
cmps=0;unknown=0
for a in range(2,40):
 for b in range(2,40):
  for e in (1,3,9):
   got=power_product_ge([(a,e)],[(b,e+1)],lshift=2,max_bits=16)
   if got is None:unknown+=1
   else:assert got==((4*a**e)>=b**(e+1));cmps+=1
out['safe_power_comparisons']={'resolved_checked':cmps,'correctly_unresolved':unknown}
# Convenience wrappers: exact positive tests and illegal-input no-conclusions.
wrappers=0
for exponent in (80,100,160,400):
 nn=400*2**exponent;jj=10
 assert elementary_consumer(nn,jj)['status']=='COMMON9_BY_NEW_ELEMENTARY_EDGE'
 assert elementary_beta_consumer(nn,jj)['status']=='COMMON9_BY_NEW_ELEMENTARY_BETA'
 witnesses=[p for p in primes_to(1000) if p>=11 and vp_binom(nn,9,p)>0 and vp_binom(nn,jj,p)>0]
 assert witnesses;wrappers+=1
assert elementary_consumer(0,0)['status']=='NOT_APPLICABLE'
assert elementary_consumer(400,201)['status']=='NOT_APPLICABLE'
assert elementary_consumer(401,10)['status']=='NOT_APPLICABLE'
assert elementary_beta_consumer(399,10)['status']=='NOT_APPLICABLE'
out['consumer_wrapper_diagnostics']={'positive_inputs_with_explicit_common_prime':wrappers,'invalid_inputs_rejected':4}
out['status']='PASS_NEW_FINITE_DIAGNOSTICS';out['seconds']=time.monotonic()-start
(R/'logs/diagnostics.json').write_text(json.dumps(out,indent=2));print(json.dumps(out))
