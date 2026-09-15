"""Independent int64 Taylor shifts and standard-library Bezout identity check."""
from pathlib import Path
import hashlib
import json
import math

import numpy as np

ROOT = Path(__file__).resolve().parent
P = 32749
LIMIT = 121
WEIGHTS = {1: 123, 4: 49, 5: 41, 6: 34}


def trim(f):
    while f and f[-1] == 0:
        f.pop()
    return f


def add(f, g, scale=1):
    out = [0]*max(len(f), len(g))
    for i, x in enumerate(f):
        out[i] = (out[i]+x) % P
    for i, x in enumerate(g):
        out[i] = (out[i]+scale*x) % P
    return trim(out)


def mul(f, g):
    out = [0]*max(0, len(f)+len(g)-1)
    for i, x in enumerate(f):
        for j, y in enumerate(g):
            out[i+j] = (out[i+j]+x*y) % P
    return trim(out)


def divmod_poly(f, g):
    f = f[:]
    q = [0]*max(0, len(f)-len(g)+1)
    inv = pow(g[-1], -1, P)
    while len(f) >= len(g):
        k = len(f)-len(g)
        a = f[-1]*inv % P
        q[k] = a
        for i, b in enumerate(g):
            f[i+k] = (f[i+k]-a*b) % P
        trim(f)
    return trim(q), f


def extended_gcd(f, g):
    r0, r1 = f[:], g[:]
    s0, s1, t0, t1 = [1], [], [], [1]
    while r1:
        q, r2 = divmod_poly(r0, r1)
        r0, r1 = r1, r2
        s0, s1 = s1, add(s0, mul(q, s1), -1)
        t0, t1 = t1, add(t0, mul(q, t1), -1)
    inv = pow(r0[-1], -1, P)
    return [v*inv % P for v in r0], [v*inv % P for v in s0], [v*inv % P for v in t0]


def shift_matrix(x):
    T = np.zeros((LIMIT+1, LIMIT+1), dtype=np.int64)
    for i in range(LIMIT+1):
        for a in range(i, LIMIT+1):
            T[i, a] = math.comb(a, i)*pow(x, a-i, P) % P
    return T


def main():
    path = ROOT/'projective_d246_kernel.npz'
    raw = np.load(path)
    coeff = raw['coefficients'].astype(np.int64)
    exps = [(int(a), int(b)) for a, b in raw['exponents']]
    assert exps == [(a, b) for a in range(122) for b in range(a+1)]
    assert coeff.shape == (7503, 2)
    free = [int(v) for v in raw['free']]
    assert free == [7500, 7502]
    assert np.array_equal(coeff[free], np.eye(2, dtype=np.int64))
    C = []
    for k in range(2):
        H = np.zeros((122, 122), dtype=np.int64)
        for z, (a, b) in zip(coeff[:, k], exps):
            H[a, b] = z
            H[b, a] = z
        assert np.array_equal(H, H.T)
        C.append(H)
    assert C[1][121, 121] == 1
    assert 122*(P-1)**2 < 2**63
    checks = 0
    rows = []
    for r in (4, 5, 6):
        for x in range(r+1):
            y = r-x
            m = WEIGHTS[r]-int(x in (0, 1))-int(y in (0, 1))
            px = x*pow(r-1, -1, P) % P
            py = y*pow(r-1, -1, P) % P
            Tx, Ty = shift_matrix(px), shift_matrix(py)
            for H in C:
                first = (Tx@H) % P
                translated = (first@Ty.T) % P
                for a in range(m):
                    for b in range(m-a):
                        assert translated[a, b] == 0, (r, x, a, b)
                        checks += 1
            rows.append({'point': [x, y], 'multiplicity': m})
    f = [sum(int(C[0][a, b])*pow(7, b, P) for b in range(122)) % P for a in range(122)]
    g = [sum(int(C[1][a, b])*pow(7, b, P) for b in range(122)) % P for a in range(122)]
    assert f[-1] and g[-1]
    gcd, s, t = extended_gcd(f, g)
    assert gcd == [1]
    assert add(mul(s, f), mul(t, g)) == [1]
    out = {'verified': True, 'prime': P, 'symmetric_forms': 2,
           'matrix_rows_claimed_by_echelon': 7501, 'matrix_columns': 7503,
           'free_columns': free,
           'all_18_source_points_checked': rows,
           'int64_full_taylor_zero_equations': checks,
           'int64_dot_bound': 122*(P-1)**2, 'int64_limit': 2**63,
           'specialization': {'v': 7, 'u_degrees': [121, 121],
                              'f': f, 'g': g, 'bezout_s': s, 'bezout_t': t,
                              'identity': 's*f+t*g=1 in F_32749[u]'},
           'top_coefficient_free_coordinate': {'exponent': [121, 121], 'second_form': 1},
           'kernel_sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
           'scope': 'integer semantic/kernel and Bezout recheck; rank certificate is the separate exact blocked echelon run'}
    (ROOT/'d246_integer_verification.json').write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps({k: v for k, v in out.items() if k not in ('specialization', 'all_18_source_points_checked')}))


if __name__ == '__main__':
    main()
