"""Exact small-prime linear algebra in binary64 with proved integer dot bounds.

All entries stay in [0,p). Every multiplication sum is bounded below 2**53.
The binary64 operations therefore represent exact integers, not approximate rank.
"""
from pathlib import Path
from datetime import datetime, timezone
import argparse
import ctypes
import hashlib
import json
import math
import os
import time

os.environ.setdefault('OPENBLAS_NUM_THREADS', '2')
import numpy as np

ROOT = Path(__file__).resolve().parent
ROWS = (1, 4, 5, 6)
POINTS = [(x, r-x) for r in ROWS for x in range(r+1)]


def memory():
    class Status(ctypes.Structure):
        _fields_ = [('length', ctypes.c_ulong), ('load', ctypes.c_ulong)] + [
            (name, ctypes.c_ulonglong) for name in ('total', 'available', 'page_total',
            'page_available', 'virtual_total', 'virtual_available', 'extended')]
    m = Status()
    m.length = ctypes.sizeof(m)
    ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(m))
    return {'available_memory': m.available, 'memory_load_percent': m.load}


def is_prime(p):
    return p >= 2 and all(p % d for d in range(2, math.isqrt(p)+1))


def dimensions(D, weights):
    limit = D-weights[1]-2
    total = D-4
    exps = [(a, b) for a in range(limit+1) for b in range(a+1) if a+b <= total]
    labels = []
    for x, y in POINTS:
        if x > y or x+y == 1:
            continue
        mult = weights[x+y]-sum(int(x == c)+int(y == c) for c in (0, 1))
        for du in range(max(0, mult)):
            for dv in range(mult-du):
                if x == y and du > dv:
                    continue
                labels.append((x, y, du, dv))
    return limit, total, exps, labels


def matrix_rows(D, weights, p):
    limit, total, exps, labels = dimensions(D, weights)
    aa = np.array([a for a, b in exps], dtype=np.int64)
    bb = np.array([b for a, b in exps], dtype=np.int64)
    off = aa != bb
    cache = {}
    for x, y, du, dv in labels:
        if (x, y) not in cache:
            den = x+y-1
            inv = pow(den, -1, p)
            tx = np.zeros((limit+1, limit+1), dtype=np.float64)
            ty = np.zeros_like(tx)
            px, py = x*inv % p, y*inv % p
            for d in range(limit+1):
                for a in range(d, limit+1):
                    tx[d, a] = math.comb(a, d)*pow(px, a-d, p) % p
                    ty[d, a] = math.comb(a, d)*pow(py, a-d, p) % p
            cache[x, y] = tx, ty
        tx, ty = cache[x, y]
        row = np.remainder(tx[du, aa]*ty[dv, bb] + off*tx[du, bb]*ty[dv, aa], p)
        yield row


def build_matrix(D, weights, p):
    limit, total, exps, labels = dimensions(D, weights)
    assert 2*(p-1)**2 < 2**53
    out = np.empty((len(labels), len(exps)), dtype=np.float64)
    for i, row in enumerate(matrix_rows(D, weights, p)):
        out[i] = row
    return out, exps, labels


def invert_small(B, p):
    n = len(B)
    A = np.hstack((B.copy(), np.eye(n, dtype=np.float64)))
    for c in range(n):
        nz = np.flatnonzero(A[c:, c])
        assert len(nz)
        q = c+int(nz[0])
        if q != c:
            A[[c, q]] = A[[q, c]]
        A[c] = np.remainder(A[c]*pow(int(A[c, c]), -1, p), p)
        mult = A[:, c].copy()
        mult[c] = 0
        A = np.remainder(A-mult[:, None]*A[c][None, :], p)
    ans = A[:, n:]
    assert np.array_equal(np.remainder(B@ans, p), np.eye(n))
    return ans


def echelon(A, p, block=32, chunk=384, max_seconds=1500):
    nrows, ncols = A.shape
    assert max(nrows, ncols, block)*(p-1)**2 < 2**53
    start = time.time()
    r = c = 0
    pivots = []
    log = []
    while r < nrows and c < ncols:
        assert time.time()-start < max_seconds, 'matrix checkpoint deadline'
        width = min(block, ncols-c)
        panel = A[r:, c:c+width].copy()
        selected = []
        swaps = []
        t = 0
        for j in range(width):
            if t == len(panel):
                break
            nz = np.flatnonzero(panel[t:, j])
            if not len(nz):
                continue
            q = t+int(nz[0])
            if q != t:
                panel[[t, q]] = panel[[q, t]]
                swaps.append((r+t, r+q))
            panel[t, j:] = np.remainder(panel[t, j:]*pow(int(panel[t, j]), -1, p), p)
            mult = panel[t+1:, j].copy()
            panel[t+1:, j:] = np.remainder(panel[t+1:, j:]-mult[:, None]*panel[t, j:][None, :], p)
            selected.append(c+j)
            t += 1
        for a, b in swaps:
            A[[a, b]] = A[[b, a]]
        if t:
            B = A[r:r+t, selected].copy()
            inv = invert_small(B, p)
            top = np.remainder(inv@A[r:r+t, c:], p)
            A[r:r+t, c:] = top
            for q in range(r+t, nrows, chunk):
                end = min(q+chunk, nrows)
                mult = A[q:end, selected].copy()
                A[q:end, c:] = np.remainder(A[q:end, c:]-mult@top, p)
            assert np.array_equal(A[r:r+t, selected], np.eye(t))
            assert not np.any(A[r+t:, selected])
            pivots.extend(selected)
        r += t
        c += width
        if len(log) == 0 or c//256 != log[-1]['column']//256 or r == nrows:
            rec = {'column': c, 'rank': r, 'seconds': time.time()-start} | memory()
            log.append(rec)
            print(json.dumps({'progress': rec}), flush=True)
    assert not np.any(A[r:])
    return pivots, log


def nullspace_from_echelon(A, pivots, p):
    nrows, ncols = A.shape
    pivot_set = set(pivots)
    free = [c for c in range(ncols) if c not in pivot_set]
    K = np.zeros((ncols, len(free)), dtype=np.float64)
    K[free] = np.eye(len(free), dtype=np.float64)
    for i in range(len(pivots)-1, -1, -1):
        K[pivots[i]] = np.remainder(-(A[i]@K), p)
    assert np.array_equal(K[free], np.eye(len(free)))
    return K, free


def reference_rank(A, p):
    B = [[int(z) for z in row] for row in A]
    r = 0
    for c in range(A.shape[1]):
        q = next((i for i in range(r, len(B)) if B[i][c] % p), None)
        if q is None:
            continue
        B[r], B[q] = B[q], B[r]
        inv = pow(B[r][c], -1, p)
        B[r] = [(z*inv) % p for z in B[r]]
        for i in range(r+1, len(B)):
            f = B[i][c]
            B[i] = [(a-f*b) % p for a, b in zip(B[i], B[r])]
        r += 1
        if r == len(B):
            break
    return r


def trim(f):
    while f and f[-1] == 0:
        f.pop()
    return f


def gcd_univariate(f, g, p):
    f, g = trim(f[:]), trim(g[:])
    while g:
        inv = pow(g[-1], -1, p)
        while len(f) >= len(g):
            k = len(f)-len(g)
            z = f[-1]*inv % p
            for i, v in enumerate(g):
                f[i+k] = (f[i+k]-z*v) % p
            trim(f)
        f, g = g, f
    if not f:
        return []
    inv = pow(f[-1], -1, p)
    return [z*inv % p for z in f]


def specialize(K, exps, index, value, p, limit):
    f = [0]*(limit+1)
    for c, (a, b) in zip(K[:, index], exps):
        c = int(c)
        f[a] = (f[a]+c*pow(value, b, p)) % p
        if a != b:
            f[b] = (f[b]+c*pow(value, a, p)) % p
    return trim(f)


def gcd_probe(K, exps, p, limit):
    if K.shape[1] < 2:
        return {'tested': False}
    result = []
    for value in (7, 11, 19, 23, 101):
        f = specialize(K, exps, 0, value, p, limit)
        g = specialize(K, exps, 1, value, p, limit)
        h = gcd_univariate(f, g, p)
        result.append({'v': value, 'degree_f': len(f)-1, 'degree_g': len(g)-1,
                       'gcd_degree': len(h)-1})
    top = exps.index((limit, limit)) if (limit, limit) in exps else None
    return {'tested': True, 'specializations': result,
            'top_total_degree_coefficients': [int(K[top, i]) for i in range(min(4, K.shape[1]))] if top is not None else None,
            'criterion': 'symmetric forms; a full-u-degree coprime specialization plus retained total degree can exclude rational common factors only after row rank/lifting proof'}


def run(D, weights, p, tag, small=False):
    start = time.time()
    assert is_prime(p)
    resource_start = memory()
    A, exps, labels = build_matrix(D, weights, p)
    limit, total, _, _ = dimensions(D, weights)
    assert A.nbytes < 1_400_000_000
    initial = A.copy() if small else None
    checkpoint = {'D': D, 'weights': weights, 'p': p, 'shape': list(A.shape),
                  'matrix_bytes': A.nbytes, 'resource_start': resource_start,
                  'started_at_utc': datetime.now(timezone.utc).isoformat(),
                  'source_baseline': 'a7468a887224e35906d8486bd18d21d0e8368393',
                  'pending': 'blocked exact modular echelon, kernel verification, common factor diagnostic'}
    (ROOT/(tag+'_checkpoint.json')).write_text(json.dumps(checkpoint, indent=2), encoding='utf-8')
    print(json.dumps({'start': checkpoint}), flush=True)
    pivots, progress = echelon(A, p, block=8 if small else 32)
    K, free = nullspace_from_echelon(A, pivots, p)
    if small:
        ref = reference_rank(initial, p)
        assert ref == len(pivots)
        assert not np.any(np.remainder(initial@K, p))
    checks = 0
    for row in matrix_rows(D, weights, p):
        assert not np.any(np.remainder(row@K, p)), checks
        checks += 1
    data_path = ROOT/(tag+'_kernel.npz')
    np.savez_compressed(data_path, coefficients=K.astype(np.uint16),
                        exponents=np.array(exps, dtype=np.uint16),
                        pivots=np.array(pivots, dtype=np.uint16),
                        free=np.array(free, dtype=np.uint16))
    out = checkpoint | {'elapsed': time.time()-start, 'rank': len(pivots),
          'nullity': len(free), 'full_row_rank': len(pivots) == len(labels),
          'all_kernel_equations_verified': checks, 'progress': progress,
          'integer_dot_upper': max(A.shape[0], A.shape[1], 32)*(p-1)**2,
          'binary64_exact_integer_limit': 2**53,
          'kernel_sha256': hashlib.sha256(data_path.read_bytes()).hexdigest(),
          'gcd_probe': gcd_probe(K, exps, p, limit), 'resource_end': memory(),
          'scope': 'finite field exact rank and kernels; no automatic characteristic-zero or NC7 acceptance'}
    (ROOT/(tag+'_result.json')).write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps({k: v for k, v in out.items() if k != 'progress'}), flush=True)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--large', action='store_true')
    args = parser.parse_args()
    if args.large:
        run(246, {1: 123, 4: 49, 5: 41, 6: 34}, 32749, 'projective_d246')
    else:
        run(16, {1: 7, 4: 3, 5: 2, 6: 2}, 32749, 'projective_small', small=True)


if __name__ == '__main__':
    main()
