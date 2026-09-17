#!/usr/bin/env python3
"""Small-C COMPLETE terminal and exact isolated-3 diagnostics; standard library."""
from __future__ import annotations
import argparse
import hashlib
import json
from math import comb, gcd


def valuation(x: int, p: int) -> int:
    if x <= 0 or p < 2:
        raise ValueError('positive x and p >= 2 required')
    e = 0
    while x % p == 0:
        x //= p
        e += 1
    return e


def least_odd_prime(x: int) -> int:
    while x > 0 and x % 2 == 0:
        x //= 2
    if x <= 1:
        raise AssertionError('no odd prime witness')
    p = 3
    while p*p <= x:
        if x % p == 0:
            return p
        p += 2
    return x


def main(output: str) -> None:
    witnesses = []
    for n in range(8,82):
        for j in range(4,n//2+1):
            a,b=comb(n,3),comb(n,j)
            p=least_odd_prime(gcd(a,b))
            assert p >= 3 and a%p == 0 and b%p == 0
            assert all(p%d for d in range(2,__import__('math').isqrt(p)+1))
            witnesses.append([n,j,p])
    data=[]
    for n,j,la,mu in ((496,210,3,1),(56,11,1,3),(56,11,3,1)):
        lv=valuation(n-1,3);mv=valuation((n-2)//2,3)
        actual=(3 if lv==1 else 1,3 if mv==1 else 1)
        assert actual != (la,mu)
        data.append(dict(n=n,j=j,proposed_lambda=la,proposed_mu=mu,
            actual_lambda=actual[0],actual_mu=actual[1],v3_n_minus_1=lv,
            v3_half_n_minus_2=mv,v3_binom_n3=valuation(comb(n,3),3),
            v3_binom_nj=valuation(comb(n,j),3),common_prime=3))
    result=dict(small_C_reason='C odd and C<5 => C<=3 => n<=81; all legal pairs checked',
        small_C_n_range=[8,81],small_C_pair_count=len(witnesses),
        witnesses=witnesses,weak_terminal_states=data,
        scope='Complete only for the proved small-C terminal; weak states are not NC3')
    with open(output,'w',encoding='utf-8') as f:
        json.dump(result,f,ensure_ascii=False,indent=2)
    print(json.dumps({k:v for k,v in result.items() if k!='witnesses'},ensure_ascii=False,indent=2))

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True)
    main(ap.parse_args().output)
