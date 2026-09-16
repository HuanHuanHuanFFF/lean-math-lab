#!/usr/bin/env python3
"""Bounded diagnostics of new universal identities, NOT an infinite proof."""
from __future__ import annotations
from math import gcd,lcm

def P(u:int)->int:
 return u**5*(u-1)**4*(u-2)**3*(u-3)**2

def test_polynomial(n:int,j:int)->int:
 k=n-j;J=j*k
 # Explicit symmetric probe with the same guaranteed orders (not a frozen kernel).
 return P(j)*P(k)*(n**3+n*J+J**2)

def vp(x:int,p:int)->int:
 if x==0:raise ValueError('valuation at zero not admitted')
 e=0
 while x%p==0:x//=p;e+=1
 return e

def vp_factorial(n:int,p:int)->int:
 ans=0
 while n:n//=p;ans+=n
 return ans

def vp_choose(n:int,j:int,p:int)->int:
 return vp_factorial(n,p)-vp_factorial(j,p)-vp_factorial(n-j,p)

def h_values(n:int,j:int):
 h1=gcd(n-1,j*(j-1))
 h2=gcd(n-2,j*(j-1)*(j-2)//gcd(j,2))
 return h1,h2

def run()->dict:
 pairs=0;divisions=0
 for n in range(20,513):
  for j in range(10,n//2+1):
   g=gcd(n,j);h1,h2=h_values(n,j)
   assert h1==lcm(gcd(n-1,j),gcd(n-1,j-1))
   assert h2==lcm(*(gcd(n-2,j-s) for s in range(3)))
   assert gcd(g,h1)==1 and gcd(h1,h2)==1
   assert 2**13%gcd(g**13,h2**8)==0
   F=test_polynomial(n,j)
   assert F>0 and (2**13*F)%(g**13*h1**9*h2**8)==0
   alpha=n//g
   assert n//gcd(n,j**6)==alpha//gcd(alpha,g**5)
   pairs+=1;divisions+=1
 # Full prime powers, arbitrary upper layers, both source rows.
 prime_layers=0;nonzero_upper=0;nonzero_residual=0
 for p in [2,3,5,7,11,13,17,19]:
  for e in range(1,13):
   q=p**e
   for r in [1,2]:
    if q<=r:continue
    w={1:9,2:8}[r]
    for A in [3,p+1,p+2,2*p+1]:
     if A%p==0:continue  # q is the full p power in n-r.
     for B in sorted(set([1,2,A//2])):
      if not 0<=B<=A:continue
      for s in range(r+1):
       n=q*A+r;j=q*B+s
       if not 10<=j<=n//2:continue
       assert (n-r)%q==0 and (n-r)//q%p!=0
       assert test_polynomial(n,j)%(q**w)==0
       a=vp_choose(n,j,p);b=vp_choose(A,B,p);c=vp_choose(r,s,p)
       assert a==b+c
       nonzero_upper+=b>0;nonzero_residual+=c>0;prime_layers+=1
 # Source/target valuation coupling, with independently checked avoidance
 # of each additional rough prime. This is a local diagnostic, not NC9.
 carry_links=0
 for p in [3,7]:
  for e in range(1,21):
   for r in [1,2]:
    for A in [1,11,13,121,143]:
     n=(1 if r==1 else 2)*p**e*A+r
     for j in sorted(set([10,n//2,n//3,n//5])):
      if not 10<=j<=n//2:continue
      if any(A%q==0 and vp_choose(n,j,q)!=0 for q in [11,13]):continue
      h=h_values(n,j)[r-1]
      assert h*p**vp_choose(n,j,p)>=n-r
      carry_links+=1
 # A concrete distinction between complete root moduli and product-gcd.
 assert h_values(34,10)[1]==8
 assert gcd(32,10*9*8)==16
 assert gcd(gcd(34,10)**13,8**8)==2**13
 # Lower source-power compatibility is not complete no-carry.
 assert 56%11<=1 and vp_choose(133,56,11)==1
 # The explicit unbounded d6 family: polynomial and congruence identities.
 family=[]
 for t in [0,1,2,3]:
  X=2**(11+42*t)*5**(6+42*t)
  d=X**4-X**3+X**2-X+1
  g=d-1;alpha=X**45
  beta,rem=divmod(alpha+1,d);assert rem==0
  n=g*alpha;j=g*beta
  assert gcd(n,j)==g and n%400==0
  assert n%9==2 and n%49==1
  assert gcd(alpha,g**5)==X**5
  d6=n//gcd(n,j**6);assert d6==X**40
  h1,h2=h_values(n,j)
  assert n-1==d*(j-1) and h1>=j-1>=X**44
  assert d6**13<=h1**54*h2**48
  assert g**13<n**2  # old relative G inequality alone does not exclude.
  assert X**276>n**5 # old S25^6<=n^5 source test does not trigger.
  assert 2**37*d**8<=n and 128*abs(n-d*j)**9<=n**6
  family.append({'t':t,'n_bits':n.bit_length(),'d6_bits':d6.bit_length(),'old_rational_band_overlap':True})
 return {'status':'PASS_NEW_JOINT_WINDOW_DIAGNOSTICS','legal_pairs':pairs,'probe_divisibilities':divisions,'full_prime_power_examples':prime_layers,'nonzero_upper_carry_cases':nonzero_upper,'nonzero_residual_cases':nonzero_residual,'source_target_carry_links':carry_links,'counterexamples':{'uncorrected_H2':[34,10,16,8],'weighted_two_overlap_bits':13,'lower_layer_not_NC':[133,56,11,1]},'family_examples':family,'finite_diagnostics_are_not_infinite_proofs':True}

if __name__=='__main__':
 import json
 print(json.dumps(run(),indent=2))
