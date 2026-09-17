"""Small residual intersection polynomial from the fixed D246 modular pencil.

The degree-78 bound and exact source-factor divisibility are paper obligations;
the code checks the resulting interpolation, independent resultants, and roots.
"""
from pathlib import Path
from collections import Counter
import hashlib
import json
import math
import random
import time

import numpy as np
from verify_d246_integer import P, trim, divmod_poly

ROOT = Path(__file__).resolve().parent


def resultant(f, g):
    f, g = trim(f[:]), trim(g[:])
    if not f or not g:
        return 0
    out = 1
    while len(g) > 1:
        m, n = len(f)-1, len(g)-1
        q, r = divmod_poly(f, g)
        if not r:
            return 0
        k = len(r)-1
        out = out*pow(g[-1], m-k, P) % P
        if m*n % 2:
            out = -out % P
        f, g = g, r
    return out*pow(g[0], len(f)-1, P) % P


def sylvester_resultant(f, g):
    m, n = len(f)-1, len(g)-1
    A = []
    for shift in range(n):
        A.append([0]*shift+list(reversed(f))+[0]*(n-1-shift))
    for shift in range(m):
        A.append([0]*shift+list(reversed(g))+[0]*(m-1-shift))
    out = 1
    size = m+n
    for c in range(size):
        r = next((i for i in range(c, size) if A[i][c]), None)
        if r is None:
            return 0
        if r != c:
            A[c], A[r] = A[r], A[c]
            out = -out
        pivot = A[c][c]
        out = out*pivot % P
        inv = pow(pivot, -1, P)
        pivot_row = A[c]
        for i in range(c+1, size):
            if A[i][c] == 0:
                continue
            factor = A[i][c]*inv % P
            row = A[i]
            for j in range(c+1, size):
                row[j] = (row[j]-factor*pivot_row[j]) % P
            row[c] = 0
    return out % P


def evaluate(poly, x):
    out = 0
    for c in reversed(poly):
        out = (out*x+c) % P
    return out


def interpolate(samples):
    poly = []
    basis = [1]
    for x, y in samples:
        factor = (y-evaluate(poly, x))*pow(evaluate(basis, x), -1, P) % P
        poly += [0]*max(0, len(basis)-len(poly))
        poly = [(a+factor*b) % P for a, b in zip(poly, basis)]
        new = [0]*(len(basis)+1)
        for i, b in enumerate(basis):
            new[i] = (new[i]-x*b) % P
            new[i+1] = (new[i+1]+b) % P
        basis = new
    return trim(poly)


def main():
    start = time.time()
    raw = np.load(ROOT/'projective_d246_kernel.npz')
    forms = []
    for k in range(2):
        C = np.zeros((122, 122), dtype=np.int64)
        for z, (a, b) in zip(raw['coefficients'][:, k], raw['exponents']):
            C[a, b] = int(z)
            C[b, a] = int(z)
        forms.append(C)
    source = Counter()
    for r, w in ((4, 49), (5, 41), (6, 34)):
        for x in range(r+1):
            y = r-x
            m = w-int(x in (0, 1))-int(y in (0, 1))
            source[y*pow(r-1, -1, P) % P] += m*m+int((x, y) == (2, 2))
    assert sum(source.values()) == 29204
    assert 2*121**2-sum(source.values()) == 78

    def sample(v):
        powers = np.array([pow(v, b, P) for b in range(122)], dtype=np.int64)
        f, g = [trim([int(z) for z in (C@powers) % P]) for C in forms]
        if len(f) != 122 or len(g) != 122 or v in source:
            return None
        res = resultant(f, g)
        denominator = math.prod(pow((v-x) % P, e, P) for x, e in source.items()) % P
        reduced = res*pow(denominator, -1, P) % P
        return {'v': v, 'resultant': res, 'source_product': denominator,
                'residual_value': reduced, 'f': f, 'g': g}

    samples = []
    v = 0
    while len(samples) < 79:
        got = sample(v)
        if got is not None:
            samples.append(got)
        v += 1
    poly = interpolate([(s['v'], s['residual_value']) for s in samples])
    holdouts = []
    v = 1001
    while len(holdouts) < 20:
        got = sample(v)
        if got is not None:
            assert evaluate(poly, v) == got['residual_value'], v
            holdouts.append(got)
        v += 1
    independent = []
    for s in (samples[0], holdouts[-1]):
        det = sylvester_resultant(s['f'], s['g'])
        assert det == s['resultant']
        independent.append({'v': s['v'], 'sylvester_determinant': det,
                            'euclidean_resultant': s['resultant']})
    xs = np.arange(P, dtype=np.int64)
    values = np.zeros(P, dtype=np.int64)
    for c in reversed(poly):
        values = (values*xs+c) % P
    roots = [int(v) for v in np.flatnonzero(values == 0)]
    out = {'p': P, 'degree_bound': 78, 'actual_degree': len(poly)-1,
           'coefficients_increasing': poly,
           'source_factor_degree': sum(source.values()),
           'source_factors': [{'v_mod_p': v, 'exponent': e} for v, e in sorted(source.items())],
           'interpolation_samples': [{k: v for k, v in s.items() if k not in ('f', 'g')} for s in samples],
           'holdout_count': len(holdouts), 'all_holdouts_passed': True,
           'independent_sylvester_checks': independent,
           'Fp_roots': roots, 'root_at_infinity_at_degree_78': len(poly) < 79,
           'source_coordinate_roots': [r for r in roots if r in source],
           'elapsed': time.time()-start,
           'kernel_sha256': hashlib.sha256((ROOT/'projective_d246_kernel.npz').read_bytes()).hexdigest(),
           'scope': 'modular residual resultant, assuming proved characteristic-zero lift/source multiplicities; Fp roots are not Q roots'}
    (ROOT/'d246_residual_resultant.json').write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps({k: v for k, v in out.items() if k not in ('coefficients_increasing', 'source_factors', 'interpolation_samples')}))


if __name__ == '__main__':
    main()
