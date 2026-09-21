#!/usr/bin/env python3
"""Diagnostic only: fixed small prime Q, not an infinite proof."""
import json
from math import isqrt, gcd

def is_prime(n: int) -> bool:
    if n < 2: return False
    return all(n % d for d in range(2, isqrt(n) + 1))

solutions=[]
for Q in range(11,3000,2):
    if not is_prime(Q): continue
    for v in range(2,Q,2):
        if 4*v<=Q or gcd(Q,v)!=1: continue
        numerator=Q**5-(Q-v)**2
        if numerator%v: continue
        b2=numerator//v; b=isqrt(b2)
        if b*b==b2:
            solutions.append(dict(Q=Q,v=v,B=b))
print(json.dumps(dict(range='prime 11 <= Q < 3000; even Q/4 < v < Q',solutions=solutions,proof_use='none: diagnostic only'),sort_keys=True,indent=2))
