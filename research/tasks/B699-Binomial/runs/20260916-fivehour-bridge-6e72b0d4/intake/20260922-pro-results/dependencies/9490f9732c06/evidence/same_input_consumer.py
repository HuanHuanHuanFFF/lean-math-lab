#!/usr/bin/env python3
"""Exact NSB64 sufficient-consumer checker. No scan is a proof of NC3.

The cheap band test needs h only. Full consumption checks the SAME supplied n,j
and original source q. Trial-division primality is exact but not optimized for
large q. The theorem itself does not depend on this primality implementation.
"""
from __future__ import annotations
import argparse,json
from math import comb,gcd,isqrt

def band(h:int)->dict:
    if h<1:return {'applicable':False,'reason':'h must be positive'}
    m=isqrt(h); a=h-m*m+1
    return {'h':h,'m':m,'A':a,'applicable':h%2==1 and h>=15 and m>=64*a*a}

def is_prime(q:int)->bool:
    if q<2:return False
    if q%2==0:return q==2
    return all(q%d for d in range(3,isqrt(q)+1,2))

def valuation_factorial(n:int,q:int)->int:
    total=0
    while n:
        n//=q;total+=n
    return total

def consume(t:dict)->dict:
    names=('n','j','h','P','Q','v','nu','q','r')
    if any(type(t.get(k)) is not int for k in names):
        raise ValueError('Provide integer '+', '.join(names))
    n,j,h,P,Q,v,nu,q,r=(t[k] for k in names)
    conditions={
      'legal_original_pair':4<=j<=n//2,
      'active_original_prime':q>=3 and is_prime(q) and n>=3 and (n*(n-1)*(n-2)//6)%q==0,
      'prime_power_working_layer':r>=1 and Q==q**r,
      'positive_core':h>=15 and h%2==1 and Q>=11 and v>0 and nu>0,
      'same_P':P==Q+h*v,
      'same_nu':2*nu==h*(Q-v)-Q,
      'full_norm':v*nu*nu==P*Q*Q-1,
      'same_original_n':n==P*Q*nu+2,
      'same_original_j':j==(P+nu)*Q*Q,
      'remaining_corridor':Q-v>=17 and v<Q and 3*v>Q,
      'NSB64_band':band(h)['applicable'],
    }
    if not all(conditions.values()):
        return {'status':'NOT_APPLICABLE','conditions':conditions,'band':band(h),
                'meaning':'Does not assert NC3 or failure of Common3'}
    level=Q**3
    assert j%level>n%level
    vp=valuation_factorial(n,q)-valuation_factorial(j,q)-valuation_factorial(n-j,q)
    assert vp>=1
    return {'status':'COMMON3_WITNESS','n':n,'j':j,'prime':q,
            'carry_level':level,'valuation_binomial_nj':vp,'band':band(h)}

def self_test():
    assert band(577**2+2)['applicable']
    assert band(258**2+1)['applicable']
    assert band(65**2)['applicable']
    assert not band(21)['applicable']
    # Deliberately outside the theorem: the historical small algebraic point.
    weak=dict(n=5342,j=981,h=43,P=89,Q=3,v=2,nu=20,q=3,r=1)
    assert consume(weak)['status']=='NOT_APPLICABLE'
    checked=0
    for n in range(8,101):
      for j in range(4,n//2+1):
        bj=comb(n,j)
        for q in (3,5,7,11,13,17,19,23,29,31):
          level=q
          while level<=n:
            if j%level>n%level:
              assert bj%q==0
              assert valuation_factorial(n,q)-valuation_factorial(j,q)-valuation_factorial(n-j,q)>0
              checked+=1
            level*=q
    print('NATIVE_CARRY_IMPLEMENTATION_TESTS=PASS; events='+str(checked))
    print('BAND_GATE_EXAMPLES_ARE_PARAMETERS_NOT_NC3_INPUTS=PASS')

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--h',type=int);p.add_argument('--input');p.add_argument('--self-test',action='store_true')
    a=p.parse_args()
    if a.self_test:self_test()
    elif a.input:print(json.dumps(consume(json.load(open(a.input))),indent=2))
    elif a.h is not None:print(json.dumps(band(a.h),indent=2))
    else:p.error('Choose --h, --input or --self-test')
if __name__=='__main__':main()
