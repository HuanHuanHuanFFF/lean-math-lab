#!/usr/bin/env python3
"""Exact bounded diagnostics only: these rows do not prove any infinite claim.

The complete mathematical endpoints are only x=2,4. The other displayed rows
were used for early falsification/pattern checks and are not proof premises.
"""
from __future__ import annotations
import json
import sys
sys.dont_write_bytecode = True

def factor(n: int) -> list[list[int]]:
    result = []
    p = 2
    while p*p <= n:
        e = 0
        while n % p == 0:
            n //= p
            e += 1
        if e:
            result.append([p, e])
        p = 3 if p == 2 else p+2
    if n > 1:
        result.append([n, 1])
    return result

def run() -> dict:
    rows = []
    for x in (2, 4, 5, 7, 8, 16, 32, 64, 128):
        M = x**6-1
        fs = factor(M)
        eligible = sorted((p**e for p,e in fs if p%2 and p**e >= 11), reverse=True)
        product = eligible[0]*eligible[1] if len(eligible) >= 2 else None
        rows.append({'x':x, 'M':M, 'factorization':fs,
                     'largest_two_eligible':eligible[:2],
                     'largest_two_product':product, 'cap_x4_minus1':x**4-1})
    return {'status':'DIAGNOSTIC_ONLY', 'range':'nine explicitly listed x values',
            'infinite_claim':False, 'proof_endpoints':[2,4], 'rows':rows}

if __name__ == '__main__':
    print(json.dumps(run(), ensure_ascii=False, indent=2))
