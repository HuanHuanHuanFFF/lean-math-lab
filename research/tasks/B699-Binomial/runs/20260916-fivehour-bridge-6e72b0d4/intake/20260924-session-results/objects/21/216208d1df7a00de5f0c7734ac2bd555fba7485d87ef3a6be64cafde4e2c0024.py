#!/usr/bin/env python3
from __future__ import annotations
from pathlib import Path
from math import comb
from fractions import Fraction
import hashlib
import json

ROOT = Path(__file__).resolve().parents[1]
KERNEL_FILE = ROOT / "outputs" / "kernel16.json"
EXC_FILE = ROOT / "outputs" / "bft_exception_pairs.json"

def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for block in iter(lambda: f.read(1 << 20), b""):
            h.update(block)
    return h.hexdigest()

def mul(a, b):
    out = {}
    for (i, j), ca in a.items():
        for (u, v), cb in b.items():
            key = (i + u, j + v)
            out[key] = out.get(key, 0) + ca * cb
    return {k: v for k, v in out.items() if v}

def shift(poly, a, b):
    out = {}
    for (i, j), c in poly.items():
        for u in range(i + 1):
            for v in range(j + 1):
                key = (u, v)
                out[key] = out.get(key, 0) + (
                    c * comb(i, u) * a ** (i - u) * comb(j, v) * b ** (j - v)
                )
    return {k: v for k, v in out.items() if v}

def order(poly, a, b):
    s = shift(poly, a, b)
    return min(i + j for (i, j), c in s.items() if c)

kernel = json.loads(KERNEL_FILE.read_text(encoding="utf-8"))
H = {(i, j): c for i, j, c in kernel["H8_terms"]}
x2 = {(2, 0): 1}
y2 = {(0, 2): 1}
xm1sq = {(2, 0): 1, (1, 0): -2, (0, 0): 1}
ym1sq = {(0, 2): 1, (0, 1): -2, (0, 0): 1}
F = mul(mul(mul(mul(x2, y2), xm1sq), ym1sq), H)

expected_orders = {
    "0": [4],
    "1": [8, 8],
    "2": [3, 4, 3],
    "3": [4, 4, 4, 4],
    "4": [3, 3, 3, 3, 3],
    "5": [2, 2, 1, 1, 2, 2],
}
actual_orders = {
    str(r): [order(F, b, r - b) for b in range(r + 1)]
    for r in range(6)
}
assert actual_orders == expected_orders
assert max(i + j for i, j in F) == 16
assert order(F, 0, 0) == 4

H_shift = shift(H, 7, 7)
assert len(H_shift) == 45
assert min(H_shift.values()) == 34
assert H_shift[(0, 0)] == 5169449500
assert all(c > 0 for c in H_shift.values())
L = sum(abs(c) for c in H.values())
assert L == 1388988

# BFT exception table retained from C9/C10.
pairs = json.loads(EXC_FILE.read_text(encoding="utf-8"))
assert len(pairs) == 40
assert max(max(a, b) for a, b in pairs) == 1771561
by_diff = {}
for a, b in pairs:
    by_diff.setdefault(abs(a - b), []).append([a, b])
assert by_diff.get(2, []) == []
assert sorted(by_diff.get(5, [])) == [[1029, 1024], [1215, 1210], [30618, 30613]]

lam23 = Fraction(57, 200)
lam35 = Fraction(27, 125)
closure_exp = 3 * lam23 + lam35
assert closure_exp == Fraction(1071, 1000)

# Exact source-size constant.
upper_constant = Fraction(81 * L, 16 * 10**4 * 7**2)
assert upper_constant == Fraction(28127007, 1960000)

N = 10**24
closure_integer_gate = (
    1960000**1000 * (N - 5)**1071
    > 28127007**1000 * N**1000
)
assert closure_integer_gate

# Monotonicity numerator for ((n-5)^(1071/1000))/n.
assert 1071 * N - 1000 * (N - 5) == 71 * N + 5000 > 0

# Check the discarded central congruence identity on deterministic samples.
def K(n, U):
    return 10*n*n - 36*n*U - 34*n + 27*U*U + 81*U + 12

for n, U in [(5130, 80), (14130, 180), (23130, 320)]:
    left_num = 8*K(n, U) - 17*(n - 3)
    a = n - 5
    b = 2*U - 3
    right = 80*a*a - 144*a*b + 79*a + 54*b*b - 72*b
    assert left_num == right

result = {
    "status": "PASS_C11_POSITIVE_K16_RES10_CLOSURE",
    "scope": "same original B-tail RES10 (n,j), complete i=6 prime powers",
    "kernel": {
        "degree": 16,
        "origin_order": 4,
        "source_orders": actual_orders,
        "H8_raw_l1": L,
        "H8_shift_nonzero_coefficients": len(H_shift),
        "H8_shift_min_coefficient": min(H_shift.values()),
        "H8_shift_constant": H_shift[(0, 0)],
    },
    "divisibility": (
        "q1^8*q2^3*q3^4*q4^3*q5*M2*Q50*Q51*"
        "sf(E2)^2*sf(E3E4)^2*sf(Q50)^2 | F16/g^4"
    ),
    "mass_bound": (
        "16*g^4*sf(E2)^2*sf(E3E4)^2*sf(Q50)^2*"
        "M2*Q50*Q51*q2^3*q5 < 81*1388988*n"
    ),
    "bft": {
        "exception_count": len(pairs),
        "exception_max": max(max(a, b) for a, b in pairs),
        "lambda_23": str(lam23),
        "lambda_35": str(lam35),
        "closure_exponent": str(closure_exp),
    },
    "exact_final_constant": str(upper_constant),
    "entry_n": N,
    "exact_integer_gate": closure_integer_gate,
    "true_frontier_reduction": "entire B/RES10 branch",
    "remaining_unbounded_parameters_inside_scope": [],
    "not_claimed": [
        "entire B tail closure",
        "general i=6 closure",
        "new complete index",
        "NC-preserving descent",
        "Lean verification",
        "complete B699 closure",
    ],
    "source_hashes": {
        "kernel16.json": sha256(KERNEL_FILE),
        "bft_exception_pairs.json": sha256(EXC_FILE),
    },
    "repository_actions": "none",
}
print(json.dumps(result, ensure_ascii=False, indent=2, sort_keys=True))
