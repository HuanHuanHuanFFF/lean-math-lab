"""Exact small checks of the multiplier-4 algebraic integer-gap mechanism."""

from fractions import Fraction as F
from math import comb, gcd
import json


def alpha_interval(k, bits=96):
    degree = k // gcd(k, 2)
    power = 2 ** (2 // gcd(k, 2))
    denominator = 1 << bits
    lo, hi = denominator, 2 * denominator
    target = power * denominator**degree
    while lo + 1 < hi:
        mid = (lo + hi) // 2
        if mid**degree < target:
            lo = mid
        else:
            hi = mid
    assert lo**degree < target < hi**degree  # k>=3: alpha is irrational.
    return F(lo, denominator), F(hi, denominator)


def gap_polynomial(k, A):
    divisor = gcd(k, 2)
    degree, power = k // divisor, 2 ** (2 // divisor)
    G = [comb(degree, j) * (4**(degree-j) - power) for j in range(degree+1)]
    product = [0] * (2*degree+1)
    for i, a in enumerate(G):
        for j, b in enumerate(G):
            product[i+j] += a*b*(-1)**j
    assert all(product[j] == 0 for j in range(1, 2*degree+1, 2))
    return [product[2*j]*A**(2*(degree-j)) for j in range(degree+1)]


def evaluate(poly, x):
    value = 0
    for coefficient in reversed(poly):
        value = value*x+coefficient
    return value


def check(k, A):
    alpha_lo, alpha_hi = alpha_interval(k)
    gamma_lo = (4-alpha_hi)/(alpha_hi-1)
    gamma_hi = (4-alpha_lo)/(alpha_lo-1)
    theta_lo, theta_hi = A*A*gamma_lo**2, A*A*gamma_hi**2
    mid = (theta_lo+theta_hi)/2
    nearest = (mid+F(1, 2)).numerator // (mid+F(1, 2)).denominator
    assert nearest-F(1, 2) < theta_lo < theta_hi < nearest+F(1, 2)
    if nearest < theta_lo:
        delta_lo, delta_hi = theta_lo-nearest, theta_hi-nearest
    else:
        assert theta_hi < nearest
        delta_lo, delta_hi = nearest-theta_hi, nearest-theta_lo
    degree = k // gcd(k, 2)
    elementary_lower = F(1, 9*(73*A*A*k*k)**(degree-1))
    assert delta_lo > elementary_lower
    polynomial = gap_polynomial(k, A)
    value = evaluate(polynomial, nearest)
    assert value != 0
    # Coarse explicit m ceiling derived in the note, not an observed solution height.
    m_ceiling = 36*A*A*k*(k-1)*(6*k+1)*(73*A*A*k*k)**(degree-1)
    scale = 10**12
    low_grid = (delta_lo*scale).numerator // (delta_lo*scale).denominator
    high_grid = -((-delta_hi*scale).numerator // (-delta_hi*scale).denominator)
    return {"k": k, "A": A, "algebraic_degree": degree,
            "nearest_integer": nearest,
            "delta_interval_in_units_1e_minus_12": [low_grid, high_grid],
            "H_at_nearest_is_nonzero": True,
            "H_at_nearest_digits": len(str(abs(value))),
            "coarse_m_ceiling_digits": len(str(m_ceiling))}


def main():
    rows = [check(k, 1) for k in (3, 4, 5, 9, 17, 33, 65, 129)]
    rows.extend(check(5, A) for A in (2, 3))
    print(json.dumps({
        "evidence": "exact algebraic isolating intervals and integer polynomial evaluations",
        "status": "finite consistency tests, not a uniform polynomial gap theorem",
        "checks": rows,
    }, indent=2))


if __name__ == "__main__":
    main()
