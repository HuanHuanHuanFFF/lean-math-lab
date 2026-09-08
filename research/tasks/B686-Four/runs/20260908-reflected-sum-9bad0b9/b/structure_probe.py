"""Exact, bounded checks of the odd-length radial quotient; no external packages.

Run from the repository root:
  python3 research/tasks/B686-Four/runs/20260908-reflected-sum-9bad0b9/b/structure_probe.py

This is an experiment, not an exhaustive solution of B686 or of a curve's
rational points. It writes no files and never scans the original (n,m) plane.
"""

from fractions import Fraction
from math import gcd, isqrt, prod
import json


def p(k, t):
    return prod(t + i for i in range(1, k + 1))


def delta(a, b, multiplier=4):
    return (
        9 * a**6
        + 16 * multiplier * a**5 * b
        - 50 * multiplier * a**3 * b**3
        + 16 * multiplier * a * b**5
        + 9 * multiplier**2 * b**6
    )


def square_root_fraction(value):
    if value < 0:
        return None
    a, b = isqrt(value.numerator), isqrt(value.denominator)
    if a * a == value.numerator and b * b == value.denominator:
        return Fraction(a, b)
    return None


def radial_lifts(a, b, multiplier=4):
    discriminant = delta(a, b, multiplier)
    if discriminant < 0:
        return []
    root = isqrt(discriminant)
    if root * root != discriminant:
        return []
    leading = a**5 - multiplier * b**5
    middle = 5 * (a**3 - multiplier * b**3)
    assert leading != 0  # multiplier 4 (or 9) is not a rational fifth power.
    result = []
    for signed_root in sorted({root, -root}):
        h2 = Fraction(middle + signed_root, 2 * leading)
        h = square_root_fraction(h2)
        row = {"a": a, "b": b, "S": signed_root, "h2": str(h2)}
        if h is not None:
            x, y = b * h, a * h
            assert y * (y*y - 1) * (y*y - 4) == (
                multiplier * x * (x*x - 1) * (x*x - 4)
            )
            row.update({"h": str(h), "x": str(x), "y": str(y)})
            if h > 0 and h.denominator == 1 and x >= 3 and y - x >= 5:
                n, m = int(x - 3), int(y - 3)
                assert p(5, m) == multiplier * p(5, n)
                row["legal_witness"] = {"k": 5, "n": n, "m": m}
        result.append(row)
    return result


def trim(poly):
    while len(poly) > 1 and poly[-1] == 0:
        poly.pop()
    return poly


def remainder_mod(poly, divisor, prime):
    poly = trim([x % prime for x in poly])
    divisor = trim([x % prime for x in divisor])
    while poly != [0] and len(poly) >= len(divisor):
        offset = len(poly) - len(divisor)
        scalar = poly[-1] * pow(divisor[-1], -1, prime) % prime
        for i, value in enumerate(divisor):
            poly[i + offset] = (poly[i + offset] - scalar * value) % prime
        trim(poly)
    return poly


def squarefree_mod(prime):
    # D(t) = 144 + 64t - 200t^3 + 64t^5 + 9t^6.
    f = [144, 64, 0, -200, 0, 64, 9]
    derivative = [i * f[i] for i in range(1, len(f))]
    steps = []
    a, b = [x % prime for x in f], [x % prime for x in derivative]
    while b != [0]:
        r = remainder_mod(a, b, prime)
        steps.append(r)
        a, b = b, r
    return {"prime": prime, "gcd": a, "remainders": steps}


def main():
    # Direct, original-definition control supplied neutrally by the main task.
    control = {"k": 3, "n": 11, "m": 25, "multiplier": 9}
    assert p(3, 25) == 9 * p(3, 11)
    control.update({"upper": p(3, 25), "lower": p(3, 11)})
    # The k=3 radial equation is (a^3 - lambda*b^3)h^2 = a-lambda*b.
    assert (27**3 - 9 * 13**3) == 27 - 9 * 13 == -90

    # Independent algebraic checks on a small grid, including signed/zero data.
    for a in range(-5, 6):
        for b in range(1, 6):
            for multiplier in (4, 9):
                A, B, C = a**5 - multiplier*b**5, a**3 - multiplier*b**3, a-multiplier*b
                assert delta(a, b, multiplier) == 25 * B * B - 16 * A * C
                for h in range(0, 4):
                    x, y = b*h, a*h
                    assert y*(y*y-1)*(y*y-4) - multiplier*x*(x*x-1)*(x*x-4) == (
                        h * (A*h**4 - 5*B*h*h + 4*C)
                    )

    # Probe only the precise real slope chamber needed by a legal k=5 witness.
    # Bound is in primitive slope height, not an asserted global height bound.
    height_bound = 128
    tested = 0
    points = []
    for b in range(1, height_bound + 1):
        for a in range(b + 1, height_bound + 1):
            if gcd(a, b) != 1 or a**5 >= 4 * b**5:
                continue
            tested += 1
            points.extend(radial_lifts(a, b))

    print(json.dumps({
        "evidence": "Python arbitrary-precision exact arithmetic; not Lean-checked",
        "multiplier9_control": control,
        "discriminant_and_radial_identity_grid": "passed",
        "squarefree_certificate": squarefree_mod(7),
        "height_bound": height_bound,
        "physical_primitive_slopes_tested": tested,
        "physical_quotient_lifts": points,
        "exceptional_and_known_slope_checks": {
            str(Fraction(a, b)): radial_lifts(a, b)
            for a, b in ((1, 1), (2, 1), (1, 2), (4, 1))
        },
    }, indent=2))


if __name__ == "__main__":
    main()
