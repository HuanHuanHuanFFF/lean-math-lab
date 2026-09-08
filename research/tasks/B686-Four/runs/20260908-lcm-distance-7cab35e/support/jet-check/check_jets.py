"""Independent finite Fraction check for the J1/J2 jet denominator claims.

This script rebuilds the local factors from their products, derives the unique
formal branch coefficient-by-coefficient, and only then checks the stated
scaling and entry bound.  It does not import or call the existing jet scripts.
"""

from __future__ import annotations

from datetime import datetime, timezone
from fractions import Fraction
from math import comb, factorial, gcd, lcm
from pathlib import Path
import json
import platform
import sys


OUT = Path(__file__).with_name("jet-results.json")


def frac_pair(value: Fraction) -> list[int]:
    return [value.numerator, value.denominator]


def poly_mul(a: list[Fraction], b: list[Fraction]) -> list[Fraction]:
    out = [Fraction(0)] * (len(a) + len(b) - 1)
    for i, ai in enumerate(a):
        if ai:
            for j, bj in enumerate(b):
                if bj:
                    out[i + j] += ai * bj
    return out


def series_mul(a: list[Fraction], b: list[Fraction], size: int) -> list[Fraction]:
    out = [Fraction(0)] * size
    for i, ai in enumerate(a[:size]):
        if ai:
            for j, bj in enumerate(b[: size - i]):
                if bj:
                    out[i + j] += ai * bj
    return out


def series_pow(a: list[Fraction], exponent: int, size: int) -> list[Fraction]:
    result = [Fraction(0)] * size
    result[0] = Fraction(1)
    base = a[:size]
    power = exponent
    while power:
        if power & 1:
            result = series_mul(result, base, size)
        power >>= 1
        if power:
            base = series_mul(base, base, size)
    return result


def eval_poly(coefficients: list[Fraction], series: list[Fraction], size: int) -> list[Fraction]:
    out = [Fraction(0)] * size
    for degree, coefficient in enumerate(coefficients):
        if coefficient:
            term = series_pow(series, degree, size)
            for h in range(size):
                out[h] += coefficient * term[h]
    return out


def block_shifted_coefficients(k: int, h: int) -> list[Fraction]:
    """Coefficients of prod_(u=1..k) (z + u-h)."""
    result = [Fraction(1)]
    for u in range(1, k + 1):
        result = poly_mul(result, [Fraction(u - h), Fraction(1)])
    return result


def normalized_factor(k: int, h: int) -> list[Fraction]:
    """Coefficients of f_h(z)=z*prod_(u != h)(1+z/(u-h))."""
    result = [Fraction(1)]
    for u in range(1, k + 1):
        if u != h:
            result = poly_mul(result, [Fraction(1), Fraction(1, u - h)])
    return [Fraction(0)] + result


def scalar_series(series: list[Fraction], scalar: Fraction) -> list[Fraction]:
    return [scalar * value for value in series]


def solve_branch(k: int, i: int, j: int, mu: int) -> dict:
    size = mu + 1
    ci = comb(k - 1, i - 1)
    cj = comb(k - 1, j - 1)
    common = gcd(ci, cj)
    a = ci // common
    b = cj // common
    epsilon = -1 if (i + j) % 2 else 1
    lam = lcm(*range(1, k))
    fi = normalized_factor(k, i)
    fj = normalized_factor(k, j)
    x = [Fraction(0)] * size
    x[1] = Fraction(1)
    rhs = scalar_series(eval_poly(fj, x, size), Fraction(4 * epsilon * a))

    # Derive c_h independently: f_i has linear coefficient one, so the
    # coefficient at degree h is c_h plus an expression in earlier c's.
    coefficients = [Fraction(0)] * size
    for h in range(1, mu + 1):
        known = eval_poly(fi, coefficients, size)[h]
        coefficients[h] = rhs[h] / b - known
    lhs = scalar_series(eval_poly(fi, coefficients, size), Fraction(b))
    recurrence_pass = lhs == rhs

    # Rebuild the V(t)=y(b*Lambda*t)/Lambda change of variables.
    v = [Fraction(0)] * size
    for h in range(1, mu + 1):
        v[h] = coefficients[h] * (b**h) * (lam ** (h - 1))
    t = [Fraction(0)] * size
    t[1] = Fraction(b * lam)
    y_t = scalar_series(v, Fraction(lam))
    transformed_lhs = scalar_series(eval_poly(fi, y_t, size), Fraction(b))
    transformed_rhs = scalar_series(eval_poly(fj, t, size), Fraction(4 * epsilon * a))
    transformed_pass = transformed_lhs == transformed_rhs
    j1_pass = all(v[h].denominator == 1 for h in range(1, mu + 1))

    # Independently form translated standard monomials X^p Y^q at (-j,-i),
    # then clear the h-th coefficient by (b*Lambda)^h for h < mu.
    degree_bound = k * mu
    series_size = mu
    x_shift = [Fraction(0)] * series_size
    x_shift[0] = Fraction(-j)
    if series_size > 1:
        x_shift[1] = Fraction(1)
    y_shift = coefficients[:series_size]
    y_shift[0] -= i
    x_powers = [series_pow(x_shift, p, series_size) for p in range(degree_bound + 1)]
    y_powers = [series_pow(y_shift, q, series_size) for q in range(degree_bound + 1)]
    actual_max = 0
    integer_entries = True
    worst = None
    for p in range(degree_bound + 1):
        for q in range(degree_bound + 1 - p):
            entry_series = series_mul(x_powers[p], y_powers[q], series_size)
            for h in range(series_size):
                cleared = entry_series[h] * ((b * lam) ** h)
                if cleared.denominator != 1:
                    integer_entries = False
                magnitude = abs(cleared)
                if magnitude > actual_max:
                    actual_max = magnitude
                    worst = {"p": p, "q": q, "h": h, "value": frac_pair(cleared)}
    b_entry = ((mu + 1) ** 2) * (k**degree_bound) * (
        (2 ** (4 * k + 2)) * k * (mu**2) * (degree_bound + 1)
    ) ** mu
    bound_pass = integer_entries and actual_max <= b_entry

    # Verify the sign/direction map from the original shifted block products,
    # rather than assuming the normalized factor equation.
    di = (-1) ** (i - 1) * factorial(i - 1) * factorial(k - i)
    dj = (-1) ** (j - 1) * factorial(j - 1) * factorial(k - j)
    map_i = [di * value for value in fi]
    map_j = [dj * value for value in fj]
    map_i_pass = map_i == block_shifted_coefficients(k, i)
    map_j_pass = map_j == block_shifted_coefficients(k, j)
    ratio_map_pass = Fraction(dj, di) == Fraction(epsilon * a, b)
    mapping_pass = map_i_pass and map_j_pass and ratio_map_pass

    return {
        "k": k,
        "i": i,
        "j": j,
        "mu": mu,
        "lambda": lam,
        "C_i": ci,
        "C_j": cj,
        "a": a,
        "b": b,
        "epsilon": epsilon,
        "f_i_coefficients": [frac_pair(value) for value in fi],
        "f_j_coefficients": [frac_pair(value) for value in fj],
        "rhs_coefficients": [frac_pair(value) for value in rhs],
        "c_coefficients": [frac_pair(value) for value in coefficients],
        "V_coefficients": [frac_pair(value) for value in v],
        "J1_scaled_coefficients": [frac_pair(v[h]) for h in range(1, mu + 1)],
        "degree_bound_D": degree_bound,
        "actual_max_cleared_entry": frac_pair(actual_max),
        "B_entry": str(b_entry),
        "worst_entry": worst,
        "checks": {
            "mapping_direction_sign": mapping_pass,
            "recurrence_exact": recurrence_pass,
            "transformed_equation_exact": transformed_pass,
            "J1_integer": j1_pass,
            "cleared_monomial_entries_integer": integer_entries,
            "J2_entry_bound": bound_pass,
        },
        "all_pass": all([mapping_pass, recurrence_pass, transformed_pass, j1_pass, bound_pass]),
    }


def main() -> int:
    pairs = {
        4: [(1, 2), (2, 3), (3, 1)],
        5: [(1, 2), (2, 4), (4, 1)],
        8: [(1, 3), (3, 6), (6, 1)],
    }
    cases = []
    for k, grid in pairs.items():
        for i, j in grid:
            for mu in (4, 6):
                cases.append(solve_branch(k, i, j, mu))
    failures = [case for case in cases if not case["all_pass"]]
    result = {
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "python": platform.python_version(),
        "method": "independent Fraction polynomial products, coefficient recursion, transformed equation, and translated monomial jets",
        "J1": "b^h * Lambda^(h-1) * c_h is integral for 1 <= h <= mu",
        "J2": "actual translated monomial jet entries after (b*Lambda)^h clearing are bounded by B_entry",
        "degree_rule": "D = k * mu",
        "cases_total": len(cases),
        "cases_pass": len(cases) - len(failures),
        "cases_fail": len(failures),
        "all_pass": not failures,
        "failures": failures,
        "cases": cases,
    }
    OUT.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({key: result[key] for key in ("cases_total", "cases_pass", "cases_fail", "all_pass")}, indent=2))
    return 0 if not failures else 1


if __name__ == "__main__":
    raise SystemExit(main())
