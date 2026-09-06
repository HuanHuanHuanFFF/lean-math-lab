"""Exact polynomial experiments for M1; coefficients are low-to-high."""
from __future__ import annotations

import json
from pathlib import Path


def add(a, b):
    c = [0] * max(len(a), len(b))
    for i, v in enumerate(a):
        c[i] += v
    for i, v in enumerate(b):
        c[i] += v
    return trim(c)


def trim(a):
    while len(a) > 1 and a[-1] == 0:
        a.pop()
    return a


def mul(a, b):
    c = [0] * (len(a) + len(b) - 1)
    for i, u in enumerate(a):
        for j, v in enumerate(b):
            c[i + j] += u * v
    return trim(c)


def scale(a, k):
    return [k * v for v in a]


def get(a, k):
    return a[k] if 0 <= k < len(a) else 0


def logconcavity_failures(a):
    return [(k, a[k] ** 2 - a[k - 1] * a[k + 1])
            for k in range(1, len(a) - 1)
            if a[k] ** 2 < a[k - 1] * a[k + 1]]


def unimodality_failure(a):
    descent = None
    for k in range(len(a) - 1):
        if a[k] > a[k + 1] and descent is None:
            descent = k
        if a[k] < a[k + 1] and descent is not None:
            return (descent, k)
    return None


def hypercombs(ell, nmax):
    r = ell - 2
    q, rr = [1, r + 1], [1, r]
    aa, bb = mul(q, rr), [0, 1, r + 1]
    c0, c1 = [1, ell], mul(q, add(aa, [0, 2]))
    yield c0
    if nmax == 0:
        return
    yield c1
    for _ in range(2, nmax + 1):
        c0, c1 = c1, add(mul(aa, c1), mul(bb, c0))
        yield c1


def polynomial_divide(a, b):
    a = a[:]
    out = [0] * (len(a) - len(b) + 1)
    for i in range(len(out) - 1, -1, -1):
        assert a[i + len(b) - 1] % b[-1] == 0
        v = a[i + len(b) - 1] // b[-1]
        out[i] = v
        for j, w in enumerate(b):
            a[i + j] -= v * w
    assert all(v == 0 for v in a)
    return trim(out)


def cross_failures(a, b):
    # Synchronization: a[k]*b[k] >= max(a[k-1]*b[k+1], a[k+1]*b[k-1]).
    bad = []
    for k in range(max(len(a), len(b))):
        cross = get(a, k) * get(b, k)
        for label, rhs in [("left", get(a, k - 1) * get(b, k + 1)),
                           ("right", get(a, k + 1) * get(b, k - 1))]:
            if cross < rhs:
                bad.append((k, label, cross - rhs))
    return bad


def write_report(name, data):
    path = Path(__file__).parent / name
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(data, ensure_ascii=False, indent=2))
