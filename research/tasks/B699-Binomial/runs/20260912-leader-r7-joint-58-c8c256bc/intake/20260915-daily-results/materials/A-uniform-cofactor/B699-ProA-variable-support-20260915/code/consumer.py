"""Conservative exact consumer for the NEW proven cofactor region.

A False answer means only that this consumer does not cover the input.
It does not mean NC9. Optional frozen C31 use is labelled separately.
"""
from __future__ import annotations
from math import gcd
from common import rough7


def power_leq(base:int, exponent:int, limit:int)->bool:
    if base<1 or exponent<0 or limit<0:raise ValueError('invalid nonnegative power comparison')
    if exponent==0:return limit>=1
    if base==1:return limit>=1
    if exponent>=limit.bit_length():return False
    value=1
    while exponent:
        if exponent&1:
            if base and value>limit//base:return False
            value*=base
        exponent//=2
        if exponent:
            base=min(base*base,limit+1)
    return value<=limit


def new_consumer(n:int,j:int,allow_frozen_C31:bool=False)->dict:
    if not isinstance(n,int) or not isinstance(j,int) or not 10<=j<=n//2:
        raise ValueError('requires integer legal i=9 input')
    g=gcd(n,j);W=rough7(g)
    if allow_frozen_C31:
        z=g
        for p in (2,3,5,7,11,13,17,19,23,29,31):
            while z%p==0:z//=p
        if z==1:return {'covered':True,'source':'frozen author C31, not reaccepted this round','g':g,'W':W}
    high_count=sum(n%q==0 for q in (16,9,25,49))
    k=60 if high_count<=1 else (72 if n%400==0 else 73)
    covered=W>=11 and power_leq(W,1<<k,n)
    return {'covered':covered,'source':'new corrected-publication + elementary proof' if covered else 'not covered by this consumer',
            'g':g,'W':W,'K_as_power_of_two':k,'rough_exponents_preserved':True}
