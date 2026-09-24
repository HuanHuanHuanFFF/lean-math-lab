#!/usr/bin/env python3
from __future__ import annotations
from fractions import Fraction
from pathlib import Path
import hashlib
import json

ROOT = Path(__file__).resolve().parents[1]
EXC = ROOT / "outputs" / "bft_exception_pairs.json"

def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for block in iter(lambda: f.read(1 << 20), b""):
            h.update(block)
    return h.hexdigest()

pairs = json.loads(EXC.read_text(encoding="utf-8"))
assert len(pairs) == 40
assert max(max(a, b) for a, b in pairs) == 1771561

by_diff: dict[int, list[list[int]]] = {}
for a, b in pairs:
    by_diff.setdefault(abs(a - b), []).append([a, b])

assert by_diff.get(2, []) == []
diff5 = sorted(by_diff.get(5, []))
assert diff5 == [[1029, 1024], [1215, 1210], [30618, 30613]]
assert all(max(x) % 9000 != 5130 for x in diff5)

lam23 = Fraction(57, 200)
lam35 = Fraction(27, 125)
assert lam23 + lam35 == Fraction(501, 1000)
assert 4 * lam23 > 1
assert 4 * lam35 + 2 * lam23 == Fraction(717, 500) > 1

# Automatic n > 10^24 gate from GLR-SF and q2 > X^(57/200).
N = 10**24
A = 4608 * 10**4 * 7**4
n_gate = A**100 * (N - 5)**57 > (5 * N)**100
assert n_gate

def central_constant_works(c: int) -> bool:
    return (N - 5)**501 * 4608**500 > (5 * c * c * N)**500

assert central_constant_works(32)
assert not central_constant_works(33)

g_upper = Fraction(43, 400)
block_upper = Fraction(43, 200)
central_growth = lam35 - block_upper
alpha_growth = 1 - g_upper
assert 4 * g_upper + 2 * lam23 == 1
assert 2 * block_upper + 2 * lam23 == 1
assert central_growth == Fraction(1, 1000)
assert alpha_growth == Fraction(357, 400)

central_min_rhs = 32 * 10**2 * 7 * 7
central_min_integer = central_min_rhs + 1
nonsquare_q50_ratio = 32 * 10**2 * 7 * 7 * 7
assert central_min_rhs == 156800
assert nonsquare_q50_ratio == 1097600

result = {
    "status": "PASS_C10_CENTRAL_DOMINANCE_32",
    "scope": "same original B/RES10 (n,j), complete i6 prime powers",
    "bft": {
        "exception_count": len(pairs),
        "exception_max": max(max(a, b) for a, b in pairs),
        "diff2_exceptions": by_diff.get(2, []),
        "diff5_exceptions": diff5,
        "diff5_compatible_with_n_5130_mod_9000": False,
        "lambda_23": str(lam23),
        "lambda_35": str(lam35),
        "sum": str(lam23 + lam35),
    },
    "exact_integer_gates": {
        "n_gt_10_pow_24": n_gate,
        "central_32": True,
        "central_33": False,
    },
    "new_necessary_conditions": {
        "GLR_SF": "4608*g^4*d^2*tau50^2*q2^2*sigma2^2*Q50^2*Q51^4 < 5*n",
        "central_dominance": "Q52 > 32*g^2*d*tau50*sigma2*Q51",
        "q2_growth": "q2 > (n-5)^(57/200)",
        "q5_growth": "q5 > (n-5)^(27/125)",
        "g_upper": "g < (n-5)^(43/400)",
        "near_endpoint_upper": "Q50*Q51^2 < (n-5)^(43/200)",
        "central_growth": "Q52 > (n-5)^(1/1000)",
        "alpha_growth": "n/g > (n-5)^(357/400)",
        "central_integer_min": central_min_integer,
        "if_Q50_nonsquare": f"Q52 > {nonsquare_q50_ratio}*Q51",
    },
    "true_frontier_reduction": [
        "all Q52=1 endpoint/near-side complete-source branches",
        "all Q52 <= 32*g^2*d*sf(Q50)*sf(q2)*Q51",
    ],
    "not_claimed": [
        "closure of the central-dominant branch",
        "general B/RES10 closure",
        "general i=6 closure",
        "effective global finiteness",
        "NC-preserving descent",
        "Lean verification",
        "complete B699 closure",
    ],
    "source_exception_sha256": sha256(EXC),
    "repository_actions": "none",
}
print(json.dumps(result, ensure_ascii=False, indent=2, sort_keys=True))
