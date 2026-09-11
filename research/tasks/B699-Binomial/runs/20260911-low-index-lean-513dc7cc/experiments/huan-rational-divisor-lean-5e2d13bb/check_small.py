"""Independent bounded exact checks; this is not Lean acceptance or a proof."""
from fractions import Fraction
from math import comb, factorial, gcd
from functools import reduce
from hashlib import sha256
from pathlib import Path
from datetime import datetime, timezone
import json
import time

HERE = Path(__file__).resolve().parent
RUN = HERE.parent.parent
START = time.perf_counter()


def digest(path):
    data = path.read_bytes()
    return {"sha256": sha256(data).hexdigest(), "bytes": len(data)}


# All residue triples for only n<=10, plus nontrivial integer quotient parts.
layers = 0
for n in range(1, 11):
    for A in range(n):
        for B in range(n):
            for F in range(n):
                for qa, qb, qf in [(0, 0, 0), (1, 2, 3)]:
                    a, b, f = A + n * qa, B + n * qb, F + n * qf
                    lhs = a // n + b // n + (a + b + f) // n + f // n
                    rhs = (2 * a + b) // n + (2 * f + b) // n
                    assert lhs <= rhs
                    assert (2 * a + b) // n == 2 * qa + qb + (2 * A + B) // n
                    assert (a + b + f) // n == qa + qb + qf + (A + B + F) // n
                    layers += 1

coefficients = 0
nonintegral_D = 0
examples = []
for u in range(13):
    for v in range(13):
        f = v // 2
        N = factorial(u + f) * factorial(f)
        V = factorial(u) * factorial(v)
        D = Fraction(N, V)
        nonintegral_D += D.denominator != 1
        qs = []
        for h in range(u + 1):
            a, b = u - h, h
            den = factorial(a) * factorial(b) * factorial(a + b + f) * factorial(f)
            num = factorial(2 * a + b) * factorial(v + b)
            q = comb(2 * u - h, u) * comb(v + h, h)
            assert num % den == 0
            assert q / D == Fraction(num, den)
            assert (V * q) % N == 0
            assert q / D > 0 and (q / D).denominator == 1
            qs.append(q)
            coefficients += 1
        G = reduce(gcd, qs)
        assert (V * G) % N == 0
        assert G / D > 0 and (G / D).denominator == 1
        assert D <= G
        if (u, v) in [(0, 0), (1, 0), (2, 2), (3, 5), (12, 11)]:
            examples.append({"u": u, "v": v, "D": str(D), "q": qs,
                             "G": G, "G_over_D": str(G / D)})

# h-range and parity are material: the signed coefficient is negative at this input.
su, sv, sh = 1, 0, 0
sf = sv // 2
sD = Fraction(factorial(su + sf) * factorial(sf), factorial(su) * factorial(sv))
sMagnitude = comb(2 * su - sh, su) * comb(sv + sh, sh)
sCoefficient = (-1) ** su * sMagnitude
assert sCoefficient / sD == -2
signed_boundary = {"u": su, "v": sv, "h": sh, "D": str(sD),
                   "qMagnitude": sMagnitude, "qCoefficient": sCoefficient,
                   "signed_quotient": str(sCoefficient / sD)}

inputs = [
    RUN / "lean/PadeInteger.lean",
    RUN / "experiments/huan-G-rational-factorial-test-5e2d13bb/REPORT.md",
    RUN / "experiments/huan-G-rational-factorial-test-5e2d13bb/rational-factorial-checks.json",
    RUN / "experiments/huan-G-rational-factorial-test-5e2d13bb/FREEZE_V1.json",
]
result = {
    "utc": datetime.now(timezone.utc).isoformat(),
    "status": "bounded exact Python check only; no Lean launched",
    "source_hashes": {str(p.relative_to(RUN)): digest(p) for p in inputs},
    "range": {"moduli": [1, 10], "all_residue_triples": True,
              "quotient_vectors": [[0, 0, 0], [1, 2, 3]], "u_v": [0, 12]},
    "layer_instances": layers, "uv_pairs": 169, "coefficient_instances": coefficients,
    "nonintegral_D_pairs": nonintegral_D, "examples": examples,
    "signed_positivity_counterexample": signed_boundary,
    "elapsed_seconds": round(time.perf_counter() - START, 6),
}
out = HERE / "small-checks.json"
out.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
print(json.dumps({k: result[k] for k in ["status", "layer_instances", "uv_pairs",
                 "coefficient_instances", "nonintegral_D_pairs", "elapsed_seconds"]},
                 ensure_ascii=False))
