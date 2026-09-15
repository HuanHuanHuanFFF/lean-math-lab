"""Independent small semantic and integer elimination checks before the large probe."""
from pathlib import Path
import json
import math
import random

import numpy as np
import projective_kernel as alg

ROOT = Path(__file__).resolve().parent


def original_basis(D, a, b, p):
    out = {}
    for aa, bb in ([(a, b)] if a == b else [(a, b), (b, a)]):
        e = D-4-aa-bb
        assert e >= 0
        for u in range(e+1):
            for v in range(e-u+1):
                c = math.comb(e, u)*math.comb(e-u, v)*(-1)**(e-u-v)
                for x, y, z in ((2, 2, 1), (2, 1, -1), (1, 2, -1), (1, 1, 1)):
                    key = aa+u+x, bb+v+y
                    out[key] = (out.get(key, 0)+c*z) % p
    return {k: v for k, v in out.items() if v}


def main():
    rng = random.Random(20260916)
    p = 32749
    rank_cases = []
    for rows, cols, artificial_rank in ((3, 7, 3), (17, 11, 9), (29, 37, 25), (67, 61, 59), (73, 83, 73)):
        L = np.array([[rng.randrange(p) for _ in range(artificial_rank)] for _ in range(rows)], dtype=np.float64)
        R = np.array([[rng.randrange(p) for _ in range(cols)] for _ in range(artificial_rank)], dtype=np.float64)
        A = np.remainder(L@R, p)
        B = A.copy()
        pivots, log = alg.echelon(B, p, block=8)
        K, free = alg.nullspace_from_echelon(B, pivots, p)
        ref = alg.reference_rank(A, p)
        assert ref == len(pivots)
        assert not np.any(np.remainder(A@K, p))
        rank_cases.append({'shape': [rows, cols], 'integer_reference_rank': ref,
                           'nullity': len(free), 'kernel_verified': True})
    small = json.loads((ROOT/'projective_small_result.json').read_text())
    raw = np.load(ROOT/'projective_small_kernel.npz')
    K = raw['coefficients']
    exps = raw['exponents']
    D = small['D']
    w = {int(r): m for r, m in small['weights'].items()}
    bases = [original_basis(D, int(a), int(b), p) for a, b in exps]
    checks = 0
    for column in range(K.shape[1]):
        F = {}
        for c, basis in zip(K[:, column], bases):
            for mon, b in basis.items():
                F[mon] = (F.get(mon, 0)+int(c)*b) % p
        assert any(F.values())
        for x, y in alg.POINTS:
            m = w[x+y]
            for du in range(m):
                for dv in range(m-du):
                    z = sum(c*math.comb(a, du)*math.comb(b, dv)*x**(a-du)*y**(b-dv)
                            for (a, b), c in F.items() if a >= du and b >= dv)
                    assert z % p == 0, (column, x, y, du, dv)
                    checks += 1
    out = {'passed': True, 'random_integer_elimination_cases': rank_cases,
           'small_original_full_taylor_equations': checks,
           'small_modular_kernels': int(K.shape[1]),
           'projective_pullback_checked_in_original_XY': True,
           'scope': 'small finite tests; large rank and common-factor claims still pending'}
    (ROOT/'projective_small_verification.json').write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps(out))


if __name__ == '__main__':
    main()
