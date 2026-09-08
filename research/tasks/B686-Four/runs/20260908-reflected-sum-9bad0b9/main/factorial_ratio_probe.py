"""Preselected legal controls for the Landau-all-dilations quantifier trap.

Exact fractions throughout. This is not an original-solution scan and not a
proof of a uniform prime-sampling estimate.
"""

from fractions import Fraction as F
from math import gcd, prod


def ratio(k, n, m, dilation):
    return F(prod(range(m*dilation+1, (m+k)*dilation+1)),
             prod(range(n*dilation+1, (n+k)*dilation+1)))


def floor_fraction(value):
    return value.numerator // value.denominator


def step(k, n, m, x):
    return (floor_fraction((m+k)*x)+floor_fraction(n*x)
            -floor_fraction(m*x)-floor_fraction((n+k)*x))


def continuous_norm(k, n, m):
    coefficients = [m+k, n, -m, -(n+k)]
    assert sum(coefficients) == 0 and 0 not in coefficients
    formula = sum((F(gcd(a, b)**2, 12*a*b)
                   for a in coefficients for b in coefficients), F(0))
    breaks = sorted({F(j, abs(a)) for a in coefficients
                     for j in range(abs(a)+1)})
    exact = sum(((right-left)*step(k, n, m, (left+right)/2)**2
                 for left, right in zip(breaks, breaks[1:])), F(0))
    assert formula == exact > 0
    return exact, len(breaks)-1


def main():
    for k, n, m, multiplier in [(2, 83, 118, 2), (3, 11, 25, 9)]:
        assert k >= 2 and m >= n+k
        assert ratio(k, n, m, 1) == multiplier
        dilated = ratio(k, n, m, 2)
        assert dilated.denominator != 1
        x = (F(1, m+k)+F(1, m))/2
        assert step(k, n, m, x) == 1
        assert step(k, n, m, 1-x) == -1
        energy, cells = continuous_norm(k, n, m)
        print({"legal_control": (k, n, m), "ratio_at_1": multiplier,
               "ratio_at_2": str(dilated), "negative_step_point": str(1-x),
               "continuous_square_norm": str(energy), "exact_cells": cells})
    print("PASS: integrality at one dilation does not imply integrality at all dilations.")


if __name__ == "__main__":
    main()
