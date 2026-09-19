#!/usr/bin/env python3
"""Algorithm A: direct polynomial evaluation and exact original binomials.
Standard library only. Writes solely below the selected delivery directory.
"""
from __future__ import annotations
import json
from math import comb, gcd
from pathlib import Path
from collections import Counter

ROOT = Path(__file__).resolve().parents[1]

def factors(n: int) -> list[int]:
    out: list[int] = []
    p = 2
    while p*p <= n:
        if n % p == 0:
            out.append(p)
            while n % p == 0:
                n //= p
        p = 3 if p == 2 else p+2
    if n > 1:
        out.append(n)
    return out

def v3(n: int) -> int:
    e = 0
    while n % 3 == 0:
        n //= 3
        e += 1
    return e

def main() -> None:
    cfg = json.loads((ROOT/'inputs/parameters.json').read_text())
    if cfg['small_x'] != list(range(2,32,2)) or cfg['D_values'] != list(range(1,30,2)):
        raise ValueError('Unexpected mathematical domain')
    rows = []
    eval_count = 0
    zero_count = 0
    for D in cfg['D_values']:
        for T in range(-D+1, D, 2):
            F = D*D-T*T-8*D
            B = 2*D*T
            C = T*T+4*D
            if F % 2 != 1:
                raise ArithmeticError('Leading coefficient must be odd')
            values = [(abs(F*x*x+B*x+C), x) for x in range(32,1653)]
            eval_count += len(values)
            zeros = sum(a == 0 for a, _ in values)
            zero_count += zeros
            minimum, argmin = min(values)
            rows.append({'D':D,'T':T,'F':F,'B':B,'C':C,
                         'zero_count':zeros,'minimum_absolute_value':minimum,
                         'first_argmin':argmin})
    small = []
    histogram: Counter[int] = Counter()
    weak_histogram: Counter[str] = Counter()
    for x in cfg['small_x']:
        n = 2*x*x
        n3 = comb(n,3)
        primes = [p for p in factors(n3) if p >= 3]
        mu = 3 if v3((n-2)//2) == 1 else 1
        N, K = n-1, (n-2)//(2*mu)
        for j in range(4,n//2+1):
            k = n-j
            nj = comb(n,j)
            witness = next((p for p in primes if nj % p == 0), None)
            if witness is None:
                raise ArithmeticError(f'No original witness at {n=},{j=}')
            histogram[witness] += 1
            if gcd(n,j) != 2:
                rejection = 'gcd_not_2'
            elif j*(j-1) % N:
                rejection = 'window_1_fails'
            elif j*(j-1)*(j-2) % K:
                rejection = 'window_2_fails'
            else:
                t = (j//2)*(k//2)//N
                H = gcd(K,j-1)
                C = K//H
                if t % C:
                    raise ArithmeticError('Window-to-C divisibility failed')
                if t == C:
                    raise ArithmeticError(f'Small g2,u1 window input survives: {n=},{j=}')
                rejection = 'u_not_1'
            weak_histogram[rejection] += 1
            small.append({'x':x,'n':n,'j':j,'p':witness,'rejection':rejection})
    cert = {'format_version':1,'theorem':cfg['theorem'],
            'polynomial_states':rows,'small_original_pairs':small}
    (ROOT/'outputs/certificate.json').write_text(json.dumps(cert,indent=2)+'\n')
    summary = {'algorithm':'A_direct_evaluation_and_math_comb',
               'polynomial_states':len(rows),'integer_x_range':[32,1652],
               'exact_polynomial_evaluations':eval_count,'polynomial_zeros':zero_count,
               'small_rows':len(cfg['small_x']),'small_original_pairs':len(small),
               'small_original_pairs_with_witness':len(small),
               'small_g2_u1_window_survivors':0,
               'witness_histogram':dict(sorted(histogram.items())),
               'small_rejection_histogram':dict(sorted(weak_histogram.items()))}
    if zero_count:
        raise ArithmeticError('Finite polynomial endpoint did not close')
    (ROOT/'outputs/primary.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps(summary,ensure_ascii=False))

if __name__ == '__main__':
    main()
