"""Exact boundary-adapted 2389-column representation of the H023 pencil."""
from pathlib import Path
from datetime import datetime, timezone
import argparse
import hashlib
import json
import math
import os
import time

os.environ.setdefault('OPENBLAS_NUM_THREADS', '2')
import numpy as np
from projective_kernel import echelon, nullspace_from_echelon, is_prime, memory

ROOT = Path(__file__).resolve().parent
BOUNDARY = ((4, 48), (5, 40), (6, 33))
LIMIT = 121


def basis():
    out = []
    for a in range(61):
        exponents = tuple(max(m-a, 0) for r, m in BOUNDARY)
        d = sum(exponents)
        for eps in (0, 1):
            for b in range(LIMIT-2*a-eps-d+1):
                out.append((a, eps, b))
    assert len(out) == 2389
    return out


def poly_add(A, B, p, scale=1):
    C = A.copy()
    for mon, value in B.items():
        C[mon] = (C.get(mon, 0)+scale*value) % p
    return {k: v for k, v in C.items() if v}


def poly_mul(A, B, p):
    C = {}
    for (q, s), a in A.items():
        for (r, t), b in B.items():
            mon = q+r, s+t
            C[mon] = (C.get(mon, 0)+a*b) % p
    return {k: v for k, v in C.items() if v}


def jet_multiply(J, polynomial, p, m, weight):
    result = np.zeros_like(J)
    for (q, s), c in polynomial.items():
        if q >= J.shape[0] or s >= m:
            continue
        result[q:, s:] = np.remainder(result[q:, s:]+c*J[:J.shape[0]-q, :m-s], p)
    for q in range(J.shape[0]):
        result[q, max(0, m-weight*q):] = 0
    return result


def q_taylor(a, t0, p, m):
    result = np.zeros(m, dtype=np.float64)
    result[0] = 1
    for r, mult in BOUNDARY:
        e = max(mult-a, 0)
        c = (r-(r-1)*t0) % p
        ell = -(r-1) % p
        factor = np.array([math.comb(e, k)*pow(c, e-k, p)*pow(ell, k, p) % p
                           for k in range(min(e, m-1)+1)], dtype=np.float64)
        result = np.remainder(np.convolve(result, factor)[:m], p)
    return result


def build_matrix(p):
    bs = basis()
    col_ids = {key: i for i, key in enumerate(bs)}
    rows = []
    cases = [(4, 2, 49, True), (5, 2, 41, False), (6, 2, 34, False), (6, 3, 34, True)]
    M = np.zeros((2387, len(bs)), dtype=np.float64)
    offset = 0
    for r, x, m, diagonal in cases:
        y = r-x
        t0 = r*pow(r-1, -1, p) % p
        U0 = x*y*pow((r-1)**2, -1, p) % p
        weight = 2 if diagonal else 1
        second = (m-1)//weight+1
        indices = [(q, s) for q in range(second) for s in range(m-weight*q)]
        nrows = len(indices)
        rows.extend((r, x, int(diagonal), q, s) for q, s in indices)
        if diagonal:
            U = {(0, 0): U0, (0, 1): t0*pow(2, -1, p) % p,
                 (0, 2): pow(4, -1, p), (1, 0): -pow(4, -1, p) % p}
        else:
            U = {(0, 0): U0, (1, 0): 1}
        t = {(0, 0): t0, (0, 1): 1}
        z = poly_add(poly_mul(U, U, p), poly_mul(t, U, p), p, -1)
        z = poly_add(z, U, p)
        Zpower = np.zeros((second, m), dtype=np.float64)
        Zpower[0, 0] = 1
        ix = np.arange(m)[:, None]-np.arange(m)[None, :]
        mask = ix >= 0
        ix = np.maximum(ix, 0)
        qq = np.array([q for q, s in indices], dtype=np.int64)
        ss = np.array([s for q, s in indices], dtype=np.int64)
        for a in range(61):
            d = sum(max(mult-a, 0) for rr, mult in BOUNDARY)
            Qa = q_taylor(a, t0, p, m)
            for eps in (0, 1):
                cap = LIMIT-2*a-eps-d
                if cap < 0:
                    continue
                J = jet_multiply(Zpower, U, p, m, weight) if eps else Zpower
                polynomial = Qa.copy()
                for b in range(cap+1):
                    toeplitz = polynomial[ix]*mask
                    product = np.remainder(J@toeplitz.T, p)
                    M[offset:offset+nrows, col_ids[a, eps, b]] = product[qq, ss]
                    polynomial = np.remainder(t0*polynomial+np.concatenate(([0.0], polynomial[:-1])), p)
            Zpower = jet_multiply(Zpower, z, p, m, weight)
        offset += nrows
    assert offset == 2387
    assert max(2389, 49)*(p-1)**2 < 2**53
    return M, bs, rows


def evaluate_compressed(coefficients, bs, u, v, p):
    t = (u+v) % p
    U = u*v % p
    z = U*((u-1)*(v-1) % p) % p
    out = np.zeros(coefficients.shape[1], dtype=np.int64)
    for i, (a, eps, b) in enumerate(bs):
        Q = math.prod(pow((r-(r-1)*t) % p, max(m-a, 0), p) for r, m in BOUNDARY) % p
        value = pow(z, a, p)*pow(U, eps, p)*pow(t, b, p)*Q % p
        out = (out+value*coefficients[i]) % p
    return out


def old_forms():
    raw = np.load(ROOT/'projective_d246_kernel.npz')
    C = []
    for k in range(2):
        H = np.zeros((122, 122), dtype=np.int64)
        for z, (a, b) in zip(raw['coefficients'][:, k], raw['exponents']):
            H[a, b] = int(z)
            H[b, a] = int(z)
        C.append(H)
    return C


def compare_original_space(K, bs, p):
    assert p == 32749
    original = old_forms()

    def old_at(u, v):
        up = np.array([pow(u, a, p) for a in range(122)], dtype=np.int64)
        vp = np.array([pow(v, b, p) for b in range(122)], dtype=np.int64)
        return np.array([int(((up@C) % p)@vp) % p for C in original], dtype=np.int64)

    points = [(2, 7), (3, 11)]
    A = np.array([old_at(u, v) for u, v in points], dtype=np.int64)
    B = np.array([evaluate_compressed(K, bs, u, v, p) for u, v in points], dtype=np.int64)
    det = int(A[0, 0]*A[1, 1]-A[0, 1]*A[1, 0]) % p
    assert det
    inv = np.array([[A[1, 1], -A[0, 1]], [-A[1, 0], A[0, 0]]], dtype=np.int64)
    inv = inv*pow(det, -1, p) % p
    change = inv@B % p
    assert int(change[0, 0]*change[1, 1]-change[0, 1]*change[1, 0]) % p
    # 122x122 distinct evaluations certify identity for the known bidegree bound.
    u = np.repeat(np.arange(2, 124, dtype=np.int64), 122)
    v = np.tile(np.arange(3, 125, dtype=np.int64), 122)
    t = (u+v) % p
    U = u*v % p
    z = U*(u-1)*(v-1) % p
    value = np.zeros((len(u), 2), dtype=np.int64)
    for i, (a, eps, b) in enumerate(bs):
        # Vector powers use repeated squaring with modular reduction.
        def power(values, exponent):
            ans = np.ones(len(values), dtype=np.int64)
            cur = values.copy()
            while exponent:
                if exponent & 1:
                    ans = ans*cur % p
                cur = cur*cur % p
                exponent //= 2
            return ans
        factor = power(z, a)*power(U, eps) % p*power(t, b) % p
        for r, m in BOUNDARY:
            factor = factor*power((r-(r-1)*t) % p, max(m-a, 0)) % p
        value = (value+factor[:, None]*K[i][None, :]) % p
    vp_u = np.array([[pow(int(x), a, p) for a in range(122)] for x in range(2, 124)], dtype=np.int64)
    vp_v = np.array([[pow(int(x), b, p) for b in range(122)] for x in range(3, 125)], dtype=np.int64)
    expected = np.column_stack([((vp_u@C) % p@vp_v.T % p).reshape(-1) for C in original])@change % p
    assert np.array_equal(value, expected)
    return {'change_of_basis': change.tolist(), 'grid_identity_points': len(u),
            'bidegree_uniqueness': [121, 121], 'all_equal': True}


def run(p=32749, tag='boundary_p32749', fixed_free=None, compare=False):
    start = time.time()
    assert is_prime(p)
    M, bs, labels = build_matrix(p)
    original = M.copy()
    ordering = list(range(len(bs)))
    if fixed_free is not None:
        ordering = [i for i in ordering if i not in fixed_free]+list(fixed_free)
        M = M[:, ordering].copy()
    pivots, progress = echelon(M, p)
    K, free = nullspace_from_echelon(M, pivots, p)
    if fixed_free is not None:
        assert free == [2387, 2388], 'fixed rational pivot minor is bad at this prime'
        recovered = np.zeros_like(K)
        recovered[ordering] = K
        K = recovered
        free = list(fixed_free)
    assert K.shape == (2389, 2)
    assert not np.any(np.remainder(original@K, p))
    K = K.astype(np.int64)
    identity = compare_original_space(K, bs, p) if compare else None
    path = ROOT/(tag+'_kernel.npz')
    np.savez_compressed(path, coefficients=K.astype(np.uint32), basis=np.array(bs, dtype=np.uint16),
                        free=np.array(free, dtype=np.uint16))
    out = {'p': p, 'rank': len(pivots), 'nullity': len(free), 'shape': list(M.shape),
           'free_columns': free, 'free_basis_labels': [bs[i] for i in free],
           'matrix_bytes': M.nbytes, 'all_kernel_equations_verified': 2387,
           'nonzero_coefficients': [int(np.count_nonzero(K[:, k])) for k in range(2)],
           'identity_with_frozen_pencil': identity, 'elapsed': time.time()-start,
           'resource_end': memory(), 'progress': progress,
           'kernel_sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
           'scope': 'exact boundary module and modular coefficients; rational signs/heights not yet recovered'}
    (ROOT/(tag+'_result.json')).write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps({k: v for k, v in out.items() if k != 'progress'}), flush=True)
    return K, free, out


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--p', type=int, default=32749)
    args = parser.parse_args()
    run(args.p, f'boundary_p{args.p}', compare=args.p == 32749)


if __name__ == '__main__':
    main()
