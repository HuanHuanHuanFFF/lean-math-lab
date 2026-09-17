"""Bounded differential-operator test for the fixed two-dimensional H023 space."""
from pathlib import Path
import json
import math
import os
import time

os.environ.setdefault('OPENBLAS_NUM_THREADS', '2')
import numpy as np
from projective_kernel import echelon, nullspace_from_echelon

ROOT = Path(__file__).resolve().parent
P = 32749


def symmetric_to_tU():
    raw = np.load(ROOT/'projective_d246_kernel.npz')
    forms = [{}, {}]
    for vector, (aa, bb) in zip(raw['coefficients'], raw['exponents']):
        a, b = int(aa), int(bb)
        if a == b:
            terms = [(0, a, 1)]
        else:
            d = a-b
            terms = []
            for k in range(d//2+1):
                c = math.comb(d-k, k)+(math.comb(d-k-1, k-1) if k else 0)
                c *= (-1)**k
                terms.append((d-2*k, b+k, c))
        for i, j, c in terms:
            for h in range(2):
                forms[h][i, j] = (forms[h].get((i, j), 0)+int(vector[h])*c) % P
    return [{m: c for m, c in F.items() if c} for F in forms]


def eval_poly(F, t, U):
    return sum(c*pow(t, i, P)*pow(U, j, P) for (i, j), c in F.items()) % P


def check_conversion(forms):
    raw = np.load(ROOT/'projective_d246_kernel.npz')
    for u, v in ((2, 7), (3, 11), (5, 17), (123, 237), (P-1, 4)):
        expected = [0, 0]
        for vector, (aa, bb) in zip(raw['coefficients'], raw['exponents']):
            a, b = int(aa), int(bb)
            value = pow(u, a, P)*pow(v, b, P) % P
            if a != b:
                value = (value+pow(u, b, P)*pow(v, a, P)) % P
            for h in range(2):
                expected[h] = (expected[h]+int(vector[h])*value) % P
        assert [eval_poly(F, (u+v) % P, u*v % P) for F in forms] == expected


def test(forms, coefficient_degree):
    total = 121+coefficient_degree
    monomials = [(i, j) for d in range(total+1) for i in range(d+1) for j in [d-i]]
    index = {m: k for k, m in enumerate(monomials)}
    operators = []
    for order in range(3):
        for a in range(order+1):
            b = order-a
            for degree in range(coefficient_degree+1):
                for i in range(degree+1):
                    j = degree-i
                    if order == 0 and degree == 0:
                        continue
                    operators.append((a, b, i, j))
    size = len(monomials)
    M = np.zeros((2*size, len(operators)+4), dtype=np.float64)
    for col, (a, b, i, j) in enumerate(operators):
        for h, F in enumerate(forms):
            for (x, y), c in F.items():
                if x < a or y < b:
                    continue
                value = c*math.prod(range(x-a+1, x+1))*math.prod(range(y-b+1, y+1)) % P
                M[h*size+index[x-a+i, y-b+j], col] = value
    for h in range(2):
        for g in range(2):
            col = len(operators)+2*h+g
            for mon, c in forms[g].items():
                M[h*size+index[mon], col] = -c % P
    pivots, progress = echelon(M, P, block=16)
    K, free = nullspace_from_echelon(M, pivots, P)
    return {'coefficient_degree': coefficient_degree, 'differential_order': 2,
            'shape': list(M.shape), 'rank': len(pivots), 'nullity': len(free),
            'operators': operators, 'kernel': K.astype(np.uint16).tolist() if free else [],
            'excluded_constant_identity': True,
            'interpretation': 'L preserves the two-dimensional space with a constant 2x2 action matrix; zero-order constant identity removed'}


def main():
    start = time.time()
    forms = symmetric_to_tU()
    assert all(max(i+j for i, j in F) <= 121 for F in forms)
    check_conversion(forms)
    tests = [test(forms, k) for k in (2, 3, 4)]
    out = {'p': P, 'elapsed': time.time()-start, 'tests': tests,
           'scope': 'bounded low-degree differential operator space; full column rank excludes that Q operator class by reduction, not all recurrences or individual-form equations'}
    (ROOT/'differential_structure.json').write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps({'p': P, 'elapsed': out['elapsed'],
                      'tests': [{k: v for k, v in t.items() if k not in ('operators', 'kernel')} for t in tests]}))


if __name__ == '__main__':
    main()
