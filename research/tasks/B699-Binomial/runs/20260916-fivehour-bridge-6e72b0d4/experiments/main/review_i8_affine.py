"""Root independent arithmetic acceptance of the fixed i8 affine certificate."""
from pathlib import Path
from fractions import Fraction as F
from itertools import product
import hashlib
import json


def ceil(x):
    return -((-x.numerator) // x.denominator)


def vp(n, p):
    v = 0
    while n % p == 0:
        n //= p
        v += 1
    return v


def interval(coefficients, constant, low, high):
    lo = hi = constant
    for c in coefficients:
        lo += min(c * low, c * high)
        hi += max(c * low, c * high)
    return ceil(lo), hi.numerator // hi.denominator


def main():
    run = Path(__file__).resolve().parents[2]
    source = run / "experiments/arithmetic/i8_5_7_affine_probe.json"
    data = json.loads(source.read_text())
    cap = 10**32
    cases = set()
    result = []
    for trace in data["traces"]:
        q, c = trace["q"], trace["source_coefficient"]
        assert (q, c) in [(2, 3), (3, 2)]
        assert int(trace["exponent_sum_cap"]) == cap
        levels = trace["levels"]
        assert [z["v"] for z in levels] == list(range(3 if q == 2 else 1, levels[-1]["v"] + 1))
        found = set()
        previous = None
        for z in levels:
            v, mod, order, L, T = [int(z[k]) for k in ["v", "modulus", "order", "L", "T"]]
            assert mod == q**v and order == q**(v - (3 if q == 2 else 1))
            assert pow(25, order, mod) == 1
            if order > 1:
                assert pow(25, order // q, mod) != 1
            assert 0 <= L < order and 0 <= T < order
            assert pow(25, L, mod) == 49 % mod
            assert pow(25, T, mod) == pow(c, -2, mod)
            if previous:
                po, pl, pt = previous
                assert L % po == pl and T % po == pt
            previous = order, L, T
            (a, b), (d, e) = z["basis"]
            det = a * e - b * d
            assert abs(det) == order
            assert (a + L * b) % order == 0 and (d + L * e) % order == 0
            if z is levels[-1]:
                bounds1 = interval((F(e, det), F(-d, det)), F(-e * T, det), 2, cap - 1)
                bounds2 = interval((F(-b, det), F(a, det)), F(b * T, det), 2, cap - 1)
                assert list(bounds1 + bounds2) == list(map(int, z["global_test"]["coefficient_bounds"]))
                points = []
                for u, w in product(range(bounds1[0], bounds1[1] + 1), range(bounds2[0], bounds2[1] + 1)):
                    A, B = T + u * a + w * d, u * b + w * e
                    if A >= 2 and B >= 2 and A + B < cap:
                        residue = (c * pow(5, A, mod) * pow(7, B, mod) - 1) % mod
                        assert residue != 0
                        points.append((A, B, residue))
                expected = [tuple(map(int, (p["A"], p["B"], p["residue"]))) for p in z["global_test"]["points"]]
                assert sorted(points) == sorted(expected)
                result.append({"q": q, "levels": len(levels), "stop": v, "global_points": len(points)})
                continue
            if v < 4:
                continue
            for B in range(2, 2 * v):
                first = 2 + ((T - L * B - 2) % order)
                for A in range(first, 2 * v + 2 - B, order):
                    if A + B < 8:
                        continue
                    residue = (c * pow(5, A, mod * q) * pow(7, B, mod * q) - 1) % (mod * q)
                    if residue % mod == 0 and residue != 0:
                        found.add((A, B, v))
                        cases.add((A, B))
        assert found == {(z["A"], z["B"], z["v"]) for z in trace["high_candidates"]}
    low = {(A, B) for A in range(2, 6) for B in range(2, 6) if A + B < 8}
    assert low == {(z["A"], z["B"]) for z in data["low_pairs"]}
    cases |= low
    assert len(cases) == 13
    margins = []
    for A, B in sorted(cases):
        n = 6 * 5**A * 7**B
        parts = [product_small(n - r) for r in range(6)]
        mass = 1
        for value in parts:
            mass *= value
        C2, C3 = vp(n - 2, 2), vp(n - 3, 3)
        assert parts == [n, 1, 2**C2, 3**C3, 2, 5]
        assert mass == 10 * n * 2**C2 * 3**C3
        margin = 2**18 * 27 * (n - 1)**4 * (n - 3)**3 * (n - 5)**2 - mass**4 * (3*n*n - 20*n + 24)
        assert margin > 0
        margins.append({"A": A, "B": B, "margin": str(margin)})
    output = {"status": "PASS", "source_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
              "scope": "Independent full affine towers, global termination triangles, 13 exact SIXG endpoints; paper Yu applicability reviewed separately; no Lean",
              "towers": result, "finite_cases": margins}
    target = Path(__file__).with_suffix(".json")
    target.write_text(json.dumps(output, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"status": "PASS", "towers": result, "finite_cases": len(margins)}))


def product_small(n):
    return 2**vp(n, 2) * 3**vp(n, 3) * 5**vp(n, 5) * 7**vp(n, 7)


if __name__ == "__main__":
    main()
