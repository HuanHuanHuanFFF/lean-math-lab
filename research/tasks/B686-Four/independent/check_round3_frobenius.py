"""Independent point counts and the shorter Howe-Zhu Theorem 6 test.

Fp2 evaluation uses a direct binomial expansion, independent of the
generator's extension-field Horner evaluation and character sums.
Only the specific genus-2 quotient is considered. The algebraic-geometric
implication is a cited paper result, not a Lean theorem or a k=5 solution.
"""
from datetime import datetime, timezone
from fractions import Fraction
import hashlib
import json
from math import comb, gcd
from pathlib import Path

HERE = Path(__file__).resolve().parent
SOURCE = HERE.parent / "experiments/round3-k5-frobenius-2026-09-07.json"
COEFFICIENTS = [144, 64, 0, -200, 0, 64, 9]


def trim(poly):
    while poly and poly[-1] == 0:
        poly.pop()
    return poly


def remainder(poly, divisor, p):
    result = trim([c % p for c in poly])
    divisor = trim([c % p for c in divisor])
    while len(result) >= len(divisor):
        c = result[-1] * pow(divisor[-1], -1, p) % p
        shift = len(result) - len(divisor)
        for i in range(len(divisor)):
            result[i + shift] = (result[i + shift] - c * divisor[i]) % p
        trim(result)
    return result


def main():
    raw = SOURCE.read_bytes()
    supplied = json.loads(raw)
    assert supplied["curve_ascending"] == COEFFICIENTS
    p = 11
    assert 2 not in {x * x % p for x in range(p)}
    first, second = COEFFICIENTS, [j * c for j, c in enumerate(COEFFICIENTS) if j]
    while second:
        first, second = second, remainder(first, second, p)
    assert len(first) == 1 and first[0] % p != 0

    def evaluate(a, b):
        # u^2=2: split binomial terms by parity of the exponent of u.
        result = [0, 0]
        for j, c in enumerate(COEFFICIENTS):
            for h in range(j + 1):
                result[h % 2] += c * comb(j, h) * a ** (j - h) * b ** h * 2 ** (h // 2)
        return tuple(x % p for x in result)

    elements = [(a, b) for a in range(p) for b in range(p)]
    affine1 = sum((y * y % p, 0) == evaluate(x, 0) for x in range(p) for y in range(p))
    affine2 = sum(((c * c + 2 * d * d) % p, 2 * c * d % p) == evaluate(a, b)
                  for a, b in elements for c, d in elements)
    infinity = sum(y * y % p == COEFFICIENTS[-1] % p for y in range(p))
    assert infinity == 2
    n1, n2 = affine1 + infinity, affine2 + infinity
    assert (n1, n2) == (17, 127)
    a = n1 - p - 1
    b = (a * a - (p * p + 1 - n2)) // 2
    assert 2 * b == a * a - (p * p + 1 - n2)
    characteristic = [1, a, b, a * p, p * p]
    assert characteristic == supplied["point_counts"]["frobenius_descending"]
    # A reducible quartic over F2 has a monic factor of degree one or two.
    for degree in (1, 2):
        for bits in range(2 ** degree):
            factor = [(bits >> i) & 1 for i in range(degree)] + [1]
            assert remainder(list(reversed(characteristic)), factor, 2)
    assert gcd(b, p) == 1
    exclusions = {"a_not_zero": a != 0, "a_sq_not_q_plus_b": a * a != p + b,
                  "a_sq_not_2b": a * a != 2 * b,
                  "a_sq_not_3b_minus_3q": a * a != 3 * b - 3 * p}
    assert all(exclusions.values())
    # Independently audit the newly supplied Coleman rank obstruction.
    p7 = 7
    first, second = COEFFICIENTS, [j * c for j, c in enumerate(COEFFICIENTS) if j]
    while second:
        first, second = second, remainder(first, second, p7)
    assert len(first) == 1 and first[0] % p7 != 0
    affine7 = sum(y * y % p7 == sum(c * x ** j for j, c in enumerate(COEFFICIENTS)) % p7
                  for x in range(p7) for y in range(p7))
    infinity7 = sum(y * y % p7 == COEFFICIENTS[-1] % p7 for y in range(p7))
    assert affine7 + infinity7 == 16 == supplied["point_counts_p7"]["N1"]
    point_set = set()
    for row in supplied["rational_point_witnesses"]["affine_positive_rows"]:
        t, z = Fraction(row["t"]), Fraction(row["positive_z"])
        assert z > 0 and z * z == sum(c * t ** j for j, c in enumerate(COEFFICIENTS))
        point_set.update(((t, z), (t, -z)))
    assert len(point_set) == 18
    genus = 2
    known_points = len(point_set) + 2
    coleman_bound_if_rank_below_genus = affine7 + infinity7 + 2 * genus - 2
    assert p7 > 2 * genus and known_points > coleman_bound_if_rank_below_genus
    report = {"checked_at": datetime.now(timezone.utc).isoformat(),
              "input_sha256": hashlib.sha256(raw).hexdigest(),
              "curve_ascending": COEFFICIENTS, "p": p, "N1": n1, "N2": n2,
              "evaluation_method": "binomial expansion of (a+b*u)^j; u^2=2; direct (x,y) enumeration",
              "good_reduction_squarefree": True, "points_at_infinity": infinity,
              "frobenius_descending": characteristic, "irreducible_mod_2": True,
              "ordinary_middle_coefficient_coprime": True, "howe_zhu_theorem_6": exclusions,
              "paper": "https://arxiv.org/pdf/math/0002205",
              "coleman_arithmetic": {"p": p7, "good_reduction_squarefree": True,
                  "points_mod_p": affine7 + infinity7, "distinct_affine_witnesses": len(point_set),
                  "rational_infinity_branches": 2, "known_points_lower_bound": known_points,
                  "bound_if_rank_below_genus": coleman_bound_if_rank_below_genus,
                  "conditional_rank_lower_bound": genus,
                  "paper": "https://arxiv.org/pdf/2009.01084",
                  "algebraic_geometry_formalized": False},
              "scope": "arithmetic hypotheses for absolute simplicity of this genus-2 reduction",
              "kernel_checked": False, "original_k5_nonexistence_proved": False}
    (HERE / "round3-frobenius-verification.json").write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"N1": n1, "N2": n2, "howe_zhu_exception_checks_passed": True}))


if __name__ == "__main__":
    main()
