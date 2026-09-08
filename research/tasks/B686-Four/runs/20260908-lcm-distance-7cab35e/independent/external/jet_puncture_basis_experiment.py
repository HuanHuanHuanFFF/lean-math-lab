#!/usr/bin/env python3
"""Exact punctured-grid jet basis experiment for the odd Erdős 686 rows.

For C_k : B_k(Y) = 4 B_k(X), this constructs the degree-r coordinate-ring
space (Y-degree < k), imposes order-mu vanishing at every grid point except
one puncture, and computes a primitive integral nullspace basis.

The matrix has Hilbert-polynomial width k*r-g+1 rather than the quadratic
number of ambient bivariate monomials.  This is a research verifier, not a
Lean certificate generator.
"""

from __future__ import annotations

import argparse
import concurrent.futures
import json
import math
from fractions import Fraction
from functools import lru_cache

import sympy as sp
from sympy.polys.matrices import DomainMatrix

try:
    from flint import fmpz_mat
except ImportError:  # optional fast backend for the research computation
    fmpz_mat = None


def convolution(a: tuple[Fraction, ...], b: tuple[Fraction, ...], n: int) -> tuple[Fraction, ...]:
    out = [Fraction(0) for _ in range(n)]
    for i, ai in enumerate(a):
        if ai:
            for j, bj in enumerate(b[: n - i]):
                if bj:
                    out[i + j] += ai * bj
    return tuple(out)


def series_pow(a: tuple[Fraction, ...], exponent: int, n: int) -> tuple[Fraction, ...]:
    result = (Fraction(1),) + (Fraction(0),) * (n - 1)
    base = a
    e = exponent
    while e:
        if e & 1:
            result = convolution(result, base, n)
        e >>= 1
        if e:
            base = convolution(base, base, n)
    return result


def shifted_block_coefficients(k: int, h: int) -> tuple[int, ...]:
    """Coefficients of B_k(-h+z), constant through degree k."""
    coeffs = [1]
    for q in range(1, k + 1):
        shift = q - h
        nxt = [0] * (len(coeffs) + 1)
        for degree, value in enumerate(coeffs):
            nxt[degree] += shift * value
            nxt[degree + 1] += value
        coeffs = nxt
    assert coeffs[0] == 0
    assert coeffs[1] != 0
    return tuple(coeffs)


def implicit_y_series(k: int, j: int, i: int, mu: int) -> tuple[Fraction, ...]:
    """Y+i as a series in x=X+j on C_k, modulo x^mu."""
    cx = shifted_block_coefficients(k, j)
    cy = shifted_block_coefficients(k, i)
    y = [Fraction(0) for _ in range(mu)]
    x = (Fraction(0), Fraction(1)) + (Fraction(0),) * max(0, mu - 2)
    rhs = [Fraction(0) for _ in range(mu)]
    for ell in range(1, min(k, mu - 1) + 1):
        rhs[ell] = Fraction(4 * cx[ell])

    # At stage m, the coefficient of x^m in y^ell for ell>=2 depends only
    # on y_1,...,y_{m-1}; the remaining linear term is cy[1]*y_m.
    for m in range(1, mu):
        known = Fraction(0)
        current = tuple(y)
        for ell in range(2, k + 1):
            if cy[ell]:
                known += cy[ell] * series_pow(current, ell, mu)[m]
        y[m] = (rhs[m] - known) / cy[1]

    result = tuple(y)
    lhs = [Fraction(0) for _ in range(mu)]
    for ell in range(1, k + 1):
        if cy[ell]:
            term = series_pow(result, ell, mu)
            for degree in range(mu):
                lhs[degree] += cy[ell] * term[degree]
    assert tuple(lhs) == tuple(rhs)
    return result


def affine_power_series(constant: int, exponent: int, mu: int) -> tuple[Fraction, ...]:
    out = [Fraction(0) for _ in range(mu)]
    for degree in range(min(exponent, mu - 1) + 1):
        out[degree] = Fraction(math.comb(exponent, degree) * constant ** (exponent - degree))
    return tuple(out)


def integer_polynomial_product(a: list[int], b: list[int]) -> list[int]:
    out = [0] * (len(a) + len(b) - 1)
    for i, ai in enumerate(a):
        for j, bj in enumerate(b):
            out[i + j] += ai * bj
    return out


def block_polynomial_coefficients(k: int) -> list[int]:
    out = [1]
    for h in range(1, k + 1):
        out = integer_polynomial_product(out, [h, 1])
    return out


def block_quotient_coefficients(k: int, omitted: int) -> list[int]:
    out = [1]
    for h in range(1, k + 1):
        if h != omitted:
            out = integer_polynomial_product(out, [h, 1])
    return out


def polynomial_at_affine_series(coefficients: list[int], constant: int, mu: int) -> tuple[Fraction, ...]:
    out = [Fraction(0) for _ in range(mu)]
    for exponent, coefficient in enumerate(coefficients):
        if coefficient:
            power = affine_power_series(constant, exponent, mu)
            for degree in range(mu):
                out[degree] += coefficient * power[degree]
    return tuple(out)


def polynomial_at_series(coefficients: list[int], series: tuple[Fraction, ...], mu: int) -> tuple[Fraction, ...]:
    out = [Fraction(0) for _ in range(mu)]
    for exponent, coefficient in enumerate(coefficients):
        if coefficient:
            power = series_pow(series, exponent, mu)
            for degree in range(mu):
                out[degree] += coefficient * power[degree]
    return tuple(out)


def standard_coefficients_from_block_basis(
    vector: list[int], basis: list[tuple[int, int, int, int]], k: int, r: int
) -> list[int]:
    """Expand the block/Lagrange basis in the standard X^A Y^b basis."""
    block = block_polynomial_coefficients(k)
    max_q = max(q for q, _, _, _ in basis)
    block_powers = [[1]]
    for _ in range(max_q):
        block_powers.append(integer_polynomial_product(block_powers[-1], block))
    coefficients: dict[tuple[int, int], int] = {}
    quotients = {h: block_quotient_coefficients(k, h) for h in range(1, k + 1)}
    for scalar, (q, kind, a, b) in zip(vector, basis):
        if not scalar:
            continue
        if kind == 0:
            x_polynomial = [0] * a + block_powers[q]
            y_polynomial = [0] * b + [1]
        else:
            x_polynomial = integer_polynomial_product(block_powers[q], quotients[a])
            y_polynomial = quotients[b]
        for x_degree, x_coefficient in enumerate(x_polynomial):
            for y_degree, y_coefficient in enumerate(y_polynomial):
                key = (x_degree, y_degree)
                coefficients[key] = coefficients.get(key, 0) + scalar * x_coefficient * y_coefficient
    standard_monomials = [(a, b) for b in range(k) for a in range(r - b + 1)]
    return [coefficients.get(monomial, 0) for monomial in standard_monomials]


def primitive_integer_vector(vector: sp.Matrix) -> list[int]:
    rationals = [sp.Rational(value) for value in vector]
    denominator = 1
    for value in rationals:
        denominator = math.lcm(denominator, int(value.q))
    integers = [int(value * denominator) for value in rationals]
    content = 0
    for value in integers:
        content = math.gcd(content, abs(value))
    if content:
        integers = [value // content for value in integers]
    first = next((value for value in integers if value), 1)
    if first < 0:
        integers = [-value for value in integers]
    return integers


def extended_gcd(a: int, b: int) -> tuple[int, int, int]:
    """Return positive g and s,t with s*a+t*b=g."""
    old_r, r = abs(a), abs(b)
    old_s, s = 1, 0
    old_t, t = 0, 1
    while r:
        quotient = old_r // r
        old_r, r = r, old_r - quotient * r
        old_s, s = s, old_s - quotient * s
        old_t, t = t, old_t - quotient * t
    return old_r, old_s * (1 if a >= 0 else -1), old_t * (1 if b >= 0 else -1)


def congruence_kernel_basis(a: list[int], modulus: int) -> list[list[int]]:
    """Columns generate z with a*z == 0 modulo modulus."""
    dimension = len(a)
    current = list(a)
    transform = [[int(row == column) for column in range(dimension)]
                 for row in range(dimension)]
    for column in range(1, dimension):
        x, y = current[0], current[column]
        if y == 0:
            continue
        g, s, t = extended_gcd(x, y)
        old_zero = [transform[row][0] for row in range(dimension)]
        old_column = [transform[row][column] for row in range(dimension)]
        for row in range(dimension):
            transform[row][0] = s * old_zero[row] + t * old_column[row]
            transform[row][column] = (-y // g) * old_zero[row] + (x // g) * old_column[row]
        current[0] = g
        current[column] = 0
    step = modulus // math.gcd(modulus, abs(current[0]))
    for row in range(dimension):
        transform[row][0] *= step
    return transform


def saturated_integer_rowspace(rows: list[list[int]]) -> tuple[list[list[int]], int]:
    """Compute (Q-rowspan rows) intersect Z^n using small-rank congruences."""
    assert fmpz_mat is not None
    raw = fmpz_mat(rows)
    rref, denominator_flint, rank = raw.rref()
    denominator = int(denominator_flint)
    assert rank == len(rows)
    dimension = rank
    pivots: list[int] = []
    for column in range(rref.ncols()):
        nonzero = [row for row in range(dimension) if int(rref[row, column]) != 0]
        if len(nonzero) == 1 and int(rref[nonzero[0], column]) == denominator:
            if nonzero[0] == len(pivots):
                pivots.append(column)
    assert len(pivots) == dimension
    pivot_set = set(pivots)

    lattice = fmpz_mat([[int(row == column) for column in range(dimension)]
                        for row in range(dimension)])
    for column in range(rref.ncols()):
        if column in pivot_set:
            continue
        residue = [int(rref[row, column]) % denominator for row in range(dimension)]
        if all(value == 0 for value in residue):
            continue
        # c=lattice*z, so the new congruence on z is residue^T*lattice*z.
        transformed = [
            sum(residue[row] * int(lattice[row, coordinate]) for row in range(dimension))
            % denominator
            for coordinate in range(dimension)
        ]
        kernel = fmpz_mat(congruence_kernel_basis(transformed, denominator))
        lattice = lattice * kernel
        lattice = lattice.transpose().hnf().transpose()

    numerator = lattice.transpose() * rref
    saturated = [
        [int(numerator[row, column]) // denominator for column in range(numerator.ncols())]
        for row in range(numerator.nrows())
    ]
    assert all(
        int(numerator[row, column]) % denominator == 0
        for row in range(numerator.nrows())
        for column in range(numerator.ncols())
    )
    index = abs(int(lattice.det()))
    return saturated, index


def truncated_taylor_coefficients(
    vector: list[int], k: int, r: int, j: int, i: int, mu: int
) -> dict[tuple[int, int], Fraction]:
    """Taylor coefficients of F(-j+x,-i+y), in total degree < mu."""
    out = {(x_degree, y_degree): Fraction(0)
           for total in range(mu)
           for y_degree in range(total + 1)
           for x_degree in (total - y_degree,)}
    index = 0
    for y_power in range(k):
        for x_power in range(r - y_power + 1):
            coefficient = vector[index]
            index += 1
            if not coefficient:
                continue
            for x_degree in range(min(x_power, mu - 1) + 1):
                x_coefficient = math.comb(x_power, x_degree) * (-j) ** (x_power - x_degree)
                for y_degree in range(min(y_power, mu - 1 - x_degree) + 1):
                    y_coefficient = math.comb(y_power, y_degree) * (-i) ** (y_power - y_degree)
                    out[(x_degree, y_degree)] += coefficient * x_coefficient * y_coefficient
    assert index == len(vector)
    return out


def local_curve_quotient(
    vector: list[int], k: int, r: int, j: int, i: int, mu: int
) -> dict[tuple[int, int], Fraction]:
    """Return Q in F=Q*Phi mod (x,y)^mu at the grid point (-j,-i)."""
    remainder = truncated_taylor_coefficients(vector, k, r, j, i, mu)
    cx = shifted_block_coefficients(k, j)
    cy = shifted_block_coefficients(k, i)
    linear_y = cy[1]
    quotient: dict[tuple[int, int], Fraction] = {}
    for total in range(mu):
        for y_degree in range(total, 0, -1):
            x_degree = total - y_degree
            coefficient = remainder[(x_degree, y_degree)]
            if not coefficient:
                continue
            q_key = (x_degree, y_degree - 1)
            q_coefficient = coefficient / linear_y
            quotient[q_key] = quotient.get(q_key, Fraction(0)) + q_coefficient
            for ell in range(1, k + 1):
                if total - 1 + ell >= mu:
                    break
                remainder[(x_degree, y_degree - 1 + ell)] -= q_coefficient * cy[ell]
                remainder[(x_degree + ell, y_degree - 1)] += q_coefficient * 4 * cx[ell]
            assert remainder[(x_degree, y_degree)] == 0
        assert remainder[(total, 0)] == 0
    return quotient


def local_curve_quotient_denominator(
    vector: list[int], k: int, r: int, j: int, i: int, mu: int
) -> int:
    """Denominator needed to clear the local quotient coefficients."""
    quotient = local_curve_quotient(vector, k, r, j, i, mu)
    denominator = 1
    for coefficient in quotient.values():
        denominator = math.lcm(denominator, coefficient.denominator)
    return denominator


def denominator_clearing_multipliers(
    standard_basis: list[list[int]], k: int, r: int, mu: int,
    puncture_j: int, puncture_i: int,
) -> list[int]:
    result: list[int] = []
    for vector in standard_basis:
        multiplier = 1
        for j in range(1, k + 1):
            for i in range(1, k + 1):
                if (j, i) == (puncture_j, puncture_i):
                    continue
                multiplier = math.lcm(
                    multiplier,
                    local_curve_quotient_denominator(vector, k, r, j, i, mu),
                )
        result.append(multiplier)
    return result


def find_nonnegative_combination(coordinate_basis: list[list[int]]) -> dict[str, object] | None:
    """Heuristic LP search, followed by an exact integer sign check.

    The rows are kernel vectors and the columns are coordinates in any fixed
    polynomial basis.  A successful result is therefore an exact integral
    kernel vector whose coordinates in that basis are all nonnegative.
    """
    import numpy as np
    from scipy.optimize import linprog

    coefficient_rows = list(zip(*coordinate_basis))
    active_rows = [row for row in coefficient_rows if any(row)]
    normalized = np.array([
        [float(value) / max(abs(entry) for entry in row) for value in row]
        for row in active_rows
    ])
    objective = -normalized.sum(axis=0)
    solution = linprog(
        objective,
        A_ub=-normalized,
        b_ub=np.zeros(normalized.shape[0]),
        bounds=[(-1.0, 1.0)] * normalized.shape[1],
        method="highs",
    )
    if not solution.success or -solution.fun <= 1e-8:
        return None
    for limit in (10**3, 10**5, 10**7, 10**9):
        rationals = [Fraction(float(value)).limit_denominator(limit) for value in solution.x]
        denominator = 1
        for value in rationals:
            denominator = math.lcm(denominator, value.denominator)
        combination = [int(value * denominator) for value in rationals]
        content = 0
        for value in combination:
            content = math.gcd(content, abs(value))
        if content:
            combination = [value // content for value in combination]
        polynomial = [
            sum(weight * coefficient for weight, coefficient in zip(combination, row))
            for row in coefficient_rows
        ]
        if any(polynomial) and all(value >= 0 for value in polynomial):
            return {
                "combination": combination,
                "l1_norm": sum(polynomial),
                "nonzero_coefficient_count": sum(value != 0 for value in polynomial),
            }
    return None


def construct(
    k: int, puncture_j: int, puncture_i: int, s: int,
    basis_mode: str = "block", reduce_lll: bool = True, saturate: bool = True,
    audit_integral_quotients: bool = False,
    search_nonnegative: bool = False,
    emit_standard_basis: bool = False,
) -> dict[str, object]:
    assert k % 2 == 1 and k >= 5
    assert 1 <= puncture_j <= k and 1 <= puncture_i <= k and s >= 1
    genus = (k - 1) * (k - 2) // 2
    mu = k * s + 2 * genus
    r = k * mu - s
    if basis_mode == "monomial":
        basis = [(0, 0, a, b) for b in range(k) for a in range(r - b + 1)]
    elif basis_mode == "block":
        basis = [
            (q, 0, a, b)
            for q in range(r // k + 1)
            for b in range(k)
            for a in range(k)
            if k * q + a + b <= r
        ]
    elif basis_mode == "lagrange":
        basis = []
        for q in range(r // k + 1):
            residual_degree = r - k * q
            if residual_degree >= 2 * k - 2:
                basis.extend((q, 1, j0, i0)
                             for j0 in range(1, k + 1)
                             for i0 in range(1, k + 1))
            else:
                basis.extend((q, 0, a, b)
                             for b in range(k)
                             for a in range(k)
                             if a + b <= residual_degree)
    else:
        raise ValueError(f"unknown basis mode: {basis_mode}")
    expected_columns = k * r - genus + 1
    assert len(basis) == expected_columns

    rows: list[list[int]] = []
    max_row_denominator_digits = 0
    for j in range(1, k + 1):
        for i in range(1, k + 1):
            if (j, i) == (puncture_j, puncture_i):
                continue
            y = implicit_y_series(k, j, i, mu)
            y_affine = list(y)
            y_affine[0] -= i
            y_powers = [series_pow(tuple(y_affine), b, mu) for b in range(k)]
            max_a = r if basis_mode == "monomial" else k - 1
            x_powers = [affine_power_series(-j, a, mu) for a in range(max_a + 1)]
            local_block = tuple(Fraction(value) for value in shifted_block_coefficients(k, j))
            local_block += (Fraction(0),) * (mu - len(local_block))
            block_powers = [series_pow(local_block, q, mu)
                            for q in range(max(q for q, _, _, _ in basis) + 1)]
            if basis_mode == "lagrange":
                x_quotients = {
                    h: polynomial_at_affine_series(block_quotient_coefficients(k, h), -j, mu)
                    for h in range(1, k + 1)
                }
                y_quotients = {
                    h: polynomial_at_series(
                        block_quotient_coefficients(k, h), tuple(y_affine), mu
                    )
                    for h in range(1, k + 1)
                }
            expansions = [
                convolution(
                    block_powers[q],
                    convolution(
                        x_powers[a] if kind == 0 else x_quotients[a],
                        y_powers[b] if kind == 0 else y_quotients[b],
                        mu,
                    ),
                    mu,
                )
                for q, kind, a, b in basis
            ]
            for degree in range(mu):
                rational_row = [expansion[degree] for expansion in expansions]
                denominator = 1
                for value in rational_row:
                    denominator = math.lcm(denominator, value.denominator)
                max_row_denominator_digits = max(
                    max_row_denominator_digits, len(str(denominator))
                )
                integer_row = [int(value * denominator) for value in rational_row]
                content = 0
                for value in integer_row:
                    content = math.gcd(content, abs(value))
                if content:
                    integer_row = [value // content for value in integer_row]
                rows.append(integer_row)

    expected_rows = mu * (k * k - 1)
    assert len(rows) == expected_rows
    if fmpz_mat is not None:
        matrix = fmpz_mat(rows)
        rank = matrix.rank()
        kernel, nullity = matrix.nullspace()
        assert (matrix * kernel).is_zero()
        integral_basis = [
            primitive_integer_vector(
                sp.Matrix([int(kernel[row, column]) for row in range(expected_columns)])
            )
            for column in range(nullity)
        ]
        backend = "python-flint-fmpz_mat"
    else:
        matrix = DomainMatrix.from_list_sympy(expected_rows, expected_columns, rows)
        assert matrix.domain == sp.ZZ
        rank = matrix.rank()
        nullspace_matrix = matrix.nullspace().to_Matrix()
        # DomainMatrix returns a fraction-free integral basis as rows.
        integral_basis = [primitive_integer_vector(nullspace_matrix.row(index).T)
                          for index in range(nullspace_matrix.rows)]
        backend = "sympy-domainmatrix"
    standard_basis = [
        standard_coefficients_from_block_basis(vector, basis, k, r)
        if basis_mode in ("block", "lagrange") else vector
        for vector in integral_basis
    ]
    saturation_index = 1
    if fmpz_mat is not None and saturate:
        standard_basis, saturation_index = saturated_integer_rowspace(standard_basis)
    if fmpz_mat is not None and reduce_lll:
        reduced = fmpz_mat(standard_basis).lll()
        standard_basis = [
            [int(reduced[row, column]) for column in range(expected_columns)]
            for row in range(reduced.nrows())
        ]
    l1_norms = [sum(abs(value) for value in vector) for vector in standard_basis]
    max_abs = [max(abs(value) for value in vector) for vector in standard_basis]
    one_sign_basis_count = sum(
        1 for vector in standard_basis
        if all(value >= 0 for value in vector) or all(value <= 0 for value in vector)
    )
    max_l1 = max(l1_norms)
    budget_left = math.factorial(k - 1) ** mu * max_l1 * (k + 1) ** r
    budget_right = 3 ** (k * mu) * 10 ** (1000 * s)
    quotient_multipliers: list[int] | None = None
    cleared_l1_norms: list[int] | None = None
    if audit_integral_quotients:
        quotient_multipliers = denominator_clearing_multipliers(
            standard_basis, k, r, mu, puncture_j, puncture_i
        )
        cleared_l1_norms = [
            multiplier * norm
            for multiplier, norm in zip(quotient_multipliers, l1_norms)
        ]
    nonnegative_combination = (
        find_nonnegative_combination(standard_basis) if search_nonnegative else None
    )
    nonnegative_lagrange_combination = (
        find_nonnegative_combination(integral_basis)
        if search_nonnegative and basis_mode == "lagrange" else None
    )
    expected_nullity = genus + 1
    assert len(basis) - rank == len(integral_basis) == expected_nullity
    if fmpz_mat is None:
        assert all(
            all(sum(value * coefficient for value, coefficient in zip(row, vector)) == 0
                for row in rows)
            for vector in integral_basis
        )

    result: dict[str, object] = {
        "k": k,
        "puncture": [puncture_j, puncture_i],
        "s": s,
        "genus": genus,
        "mu": mu,
        "r": r,
        "matrix_rows": expected_rows,
        "matrix_columns": expected_columns,
        "rank": rank,
        "nullity": len(integral_basis),
        "backend": backend,
        "basis_mode": basis_mode,
        "lll_reduced": bool(fmpz_mat is not None and reduce_lll),
        "saturated": bool(fmpz_mat is not None and saturate),
        "saturation_congruence_index_digits": len(str(saturation_index)),
        "max_row_denominator_digits": max_row_denominator_digits,
        "basis_l1_norms": l1_norms,
        "basis_max_abs": max_abs,
        "max_l1": max_l1,
        "max_l1_digits": max(len(str(value)) for value in l1_norms),
        "max_abs_digits": max(len(str(value)) for value in max_abs),
        "one_sign_basis_count": one_sign_basis_count,
        "budget_pass": budget_left < budget_right,
        "budget_ratio_floor_digits": len(str(budget_right // budget_left)) - 1,
    }
    if quotient_multipliers is not None and cleared_l1_norms is not None:
        cleared_max_l1 = max(cleared_l1_norms)
        cleared_left = math.factorial(k - 1) ** mu * cleared_max_l1 * (k + 1) ** r
        result.update({
            "local_quotient_multiplier_digits": [len(str(value)) for value in quotient_multipliers],
            "denominator_cleared_max_l1": cleared_max_l1,
            "denominator_cleared_max_l1_digits": len(str(cleared_max_l1)),
            "denominator_cleared_budget_pass": cleared_left < budget_right,
            "denominator_cleared_budget_ratio_floor_digits": (
                len(str(budget_right // cleared_left)) - 1 if cleared_left < budget_right else None
            ),
        })
    if search_nonnegative:
        result["nonnegative_combination"] = nonnegative_combination
        result["nonnegative_lagrange_combination"] = nonnegative_lagrange_combination
    if emit_standard_basis:
        result["standard_monomial_order"] = (
            "Y-major: Y^b X^a, b=0..k-1, a=0..r-b"
        )
        result["standard_basis"] = standard_basis
    return result


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--k", type=int, default=5)
    parser.add_argument("--j", type=int, default=1)
    parser.add_argument("--i", type=int, default=1)
    parser.add_argument("--s", type=int, default=1)
    parser.add_argument("--basis", choices=("lagrange", "block", "monomial"), default="lagrange")
    parser.add_argument("--no-lll", action="store_true")
    parser.add_argument("--no-saturate", action="store_true")
    parser.add_argument("--audit-integral-quotients", action="store_true")
    parser.add_argument("--search-nonnegative", action="store_true")
    parser.add_argument("--emit-standard-basis", action="store_true")
    parser.add_argument("--all-punctures", action="store_true")
    parser.add_argument("--workers", type=int, default=1)
    args = parser.parse_args()
    if not args.all_punctures:
        print(json.dumps(construct(
            args.k, args.j, args.i, args.s, args.basis, not args.no_lll,
            not args.no_saturate, args.audit_integral_quotients,
            args.search_nonnegative, args.emit_standard_basis,
        ), indent=2))
        return

    punctures = [(args.k, j, i, args.s, args.basis, not args.no_lll,
                  not args.no_saturate, args.audit_integral_quotients,
                  args.search_nonnegative, args.emit_standard_basis)
                 for j in range(1, args.k + 1)
                 for i in range(1, args.k + 1)]
    if args.workers == 1:
        results = [construct(*task) for task in punctures]
    else:
        with concurrent.futures.ProcessPoolExecutor(max_workers=args.workers) as executor:
            results = list(executor.map(_construct_tuple, punctures))
    worst_l1 = max(results, key=lambda result: int(result["max_l1_digits"]))
    worst_abs = max(results, key=lambda result: int(result["max_abs_digits"]))
    max_l1 = max(
        int(value)
        for result in results
        for value in result["basis_l1_norms"]
    )
    genus = (args.k - 1) * (args.k - 2) // 2
    mu = args.k * args.s + 2 * genus
    r = args.k * mu - args.s
    budget_left = math.factorial(args.k - 1) ** mu * max_l1 * (args.k + 1) ** r
    budget_right = 3 ** (args.k * mu) * 10 ** (1000 * args.s)
    print(json.dumps({
        "k": args.k,
        "s": args.s,
        "puncture_count": len(results),
        "nullities": sorted({int(result["nullity"]) for result in results}),
        "ranks": sorted({int(result["rank"]) for result in results}),
        "max_l1_digits": max(int(result["max_l1_digits"]) for result in results),
        "max_l1": max_l1,
        "worst_l1_puncture": worst_l1["puncture"],
        "max_abs_digits": max(int(result["max_abs_digits"]) for result in results),
        "worst_abs_puncture": worst_abs["puncture"],
        "budget_pass": budget_left < budget_right,
        "budget_ratio_floor_digits": len(str(budget_right // budget_left)) - 1,
        "results": results,
    }, indent=2))


def _construct_tuple(
    task: tuple[int, int, int, int, str, bool, bool, bool, bool, bool]
) -> dict[str, object]:
    return construct(*task)


if __name__ == "__main__":
    main()
