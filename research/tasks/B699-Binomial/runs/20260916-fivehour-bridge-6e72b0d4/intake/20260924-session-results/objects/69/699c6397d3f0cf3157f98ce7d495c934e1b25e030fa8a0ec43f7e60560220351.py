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
                    c * comb(i, u) * a ** (i - u)
                    * comb(j, v) * b ** (j - v)
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
assert all(c > 0 for c in H_shift.values())
L = sum(abs(c) for c in H.values())
assert L == 1388988

pairs = json.loads(EXC_FILE.read_text(encoding="utf-8"))
assert len(pairs) == 40
assert max(max(a, b) for a, b in pairs) == 1771561
by_diff = {}
for a, b in pairs:
    by_diff.setdefault(abs(a - b), []).append([a, b])
assert by_diff.get(2, []) == []
diff5 = sorted(by_diff.get(5, []))
assert diff5 == [[1029, 1024], [1215, 1210], [30618, 30613]]
assert all(max(pair) % 1800 not in {1280, 1530} for pair in diff5)

a23 = Fraction(57, 200)
a25 = Fraction(129, 500)
a35 = Fraction(27, 125)
delta_A = 3 * a23 + a25
delta_B = 3 * a23 + a35
assert delta_A == Fraction(1113, 1000)
assert delta_B == Fraction(1071, 1000)

# Verify all payer exponents.
payer_A = [
    4 * a23,
    3 * a23 + 4 * a25,
    4 * a23 + a25,
    3 * a23 + a25,
]
payer_B = [
    4 * a23,
    3 * a23 + 4 * a35,
    4 * a23 + a35,
    3 * a23 + a35,
]
assert min(payer_A) == delta_A > 1
assert min(payer_B) == delta_B > 1

templates = []

def max_a(K: int, c: int, base: int) -> int:
    # g>=7 and n=g*c*base^a <2^K
    a = 0
    while 7 * c * base ** (a + 1) < 2 ** K:
        a += 1
    return a

def max_E(K: int, front: int) -> int:
    e = 0
    while front * 5 ** (e + 1) < 2 ** K:
        e += 1
    return e

# A tail exact bounds.
for c, K in [(1, 223), (5, 291)]:
    D = max(8 * c**4, 24)
    R = 2**113 * (D * L)**1000
    assert R < 2 ** (113 * K)
    assert not (R < 2 ** (113 * (K - 1)))
    templates.append({
        "tail": "A",
        "residue_mod_1800": 1280,
        "alpha": f"{c if c != 1 else ''}*2^a".lstrip("*"),
        "c": c,
        "payer_denominator": D,
        "growth_exponent": str(delta_A),
        "n_bound": f"n < 2^{K}",
        "K": K,
        "a_max": max_a(K, c, 2),
        "E_max": max_E(K, 3),
    })

# B tail exact bounds.
for c, K in [(1, 336), (2, 392), (5, 467), (10, 523)]:
    Aint = 81 * L * c**4
    assert Aint**1000 < 2 ** (2929 + 71 * K)
    assert not (Aint**1000 < 2 ** (2929 + 71 * (K - 1)))
    templates.append({
        "tail": "B",
        "residue_mod_1800": 1530,
        "alpha": f"{c if c != 1 else ''}*3^a".lstrip("*"),
        "c": c,
        "growth_exponent": str(delta_B),
        "n_bound": f"n < 2^{K}",
        "K": K,
        "a_max": max_a(K, c, 3),
        "E_max": max_E(K, 1),
    })

assert [t["a_max"] for t in templates] == [220, 285, 210, 244, 291, 326]
assert [t["E_max"] for t in templates] == [95, 124, 144, 168, 201, 225]

result = {
    "status": "PASS_C12_H025_EFFECTIVE_FINITENESS",
    "scope": "same original i=6 H025 tail inputs with complete prime powers",
    "kernel": {
        "degree": 16,
        "origin_order": 4,
        "source_orders": actual_orders,
        "H8_l1": L,
        "positive_shift_coefficients": len(H_shift),
        "positive_shift_min": min(H_shift.values()),
    },
    "general_divisibility": (
        "q1^8*q2^3*q3^4*q4^3*q5*M2*Q50*Q51 | F16/g^4"
    ),
    "bft": {
        "exception_count": len(pairs),
        "difference_2_exceptions": [],
        "difference_5_exceptions": diff5,
        "lambda_23": str(a23),
        "lambda_25": str(a25),
        "lambda_35": str(a35),
        "A_worst_exponent": str(delta_A),
        "B_worst_exponent": str(delta_B),
    },
    "template_bounds": templates,
    "uniform_bounds": {
        "A_tail": "n < 2^291",
        "B_tail": "n < 2^523",
    },
    "true_frontier_reduction": (
        "all unbounded NC6 parameter families inside both old H025 tail classes"
    ),
    "finite_terminal_completed": False,
    "remaining_unbounded_parameters_inside_scope": [],
    "not_claimed": [
        "complete closure of either tail",
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
