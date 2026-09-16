"""Diagnostics for exported sufficient-predicate functions and exact identities.
No exhaustive NC9 search, no old proof-chain replay.
"""
from math import gcd
from consumers import target_covered,source_covered,target_covered_d10,source_covered_s10,power_denominator

def run():
 examples=[]
 for a,b,W in [(1,1,37),(12,7,37),(31,13,37*41),(200,100,37**3*101)]:
  G=2**a*5**b;n=W*G**10
  for beta in (1,3,G**9//2-1):
   if gcd(beta,10)!=1:continue
   j=W*G*beta
   assert gcd(n,j)==W*G
   assert power_denominator(n,j,6)==G**4
   assert power_denominator(n,j,10)==1
   assert target_covered_d10(n,j,allow_frozen_400_extension=True)['covered']
   examples.append({'a':a,'b':b,'W':W,'n_bits':n.bit_length(),
                    'd6_bits':(G**4).bit_length(),'d10':1,
                    'old_rational_band_overlap':'not tested / no disjointness claim'})
 # Exact formal enlargement of the source threshold at actual integer n.
 # Choose structured powers with exact integer checks, not logarithmic acceptance.
 # n=10^60 * 37^6 separates the two explicitly stated source predicates.
 n=10**60*37**6;s=10**60
 assert n%400==0 and s**10<=n**9 and s**6>n**5
 assert source_covered_s10(n,allow_frozen_400_extension=True)['covered']
 # A small source predicate check only, not all-target verification.
 n0=400*11**2;s0=400
 assert s0**10<=n0**9
 # Avoid massive direct binomials: verify the source predicate, not all j.
 assert source_covered_s10(n0,allow_frozen_400_extension=True)['covered']
 wrong=0
 for n,j,h in [(10,10,6),(20,9,6),(20,10,0)]:
  try:power_denominator(n,j,h)
  except ValueError:wrong+=1
  else:raise AssertionError('invalid input accepted')
 return {'status':'PASS_NEW_CONSUMER_API_DIAGNOSTICS','d10_examples':examples,
         'examples_count':len(examples),'source_threshold_separation':{'n_bits':n.bit_length(),'old_S6':False,'new_S10':True},
         'invalid_inputs_rejected':wrong,'claims_disjointness_from_all_history':False}
