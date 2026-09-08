"""Finite k=5, mu=6, D=8 SNF+saturated-kernel+LLL diagnostic."""

from __future__ import annotations

from datetime import datetime, timezone
from fractions import Fraction
from math import gcd, factorial, lcm
from pathlib import Path
import json
import platform
import traceback

from sympy import Matrix, ZZ
from sympy.polys.matrices import DomainMatrix
from sympy.polys.matrices.normalforms import smith_normal_decomp


HERE = Path(__file__).resolve().parent
INPUT = HERE / "highjet-input.json"
RESULT = HERE / "highjet-results.json"
DIAGNOSTIC = HERE / "highjet-diagnostic.json"


def frac_pair(value: Fraction) -> list[int]:
    return [value.numerator, value.denominator]


def frac_matrix(rows: list[list[Fraction]]) -> list[list[list[int]]]:
    return [[frac_pair(value) for value in row] for row in rows]


def int_matrix(matrix: Matrix) -> list[list[int]]:
    return [[int(matrix[r, c]) for c in range(matrix.cols)] for r in range(matrix.rows)]


def poly_mul(a: list[Fraction], b: list[Fraction]) -> list[Fraction]:
    out = [Fraction(0)] * (len(a) + len(b) - 1)
    for i, ai in enumerate(a):
        for j, bj in enumerate(b):
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


def product_poly(factors: list[list[Fraction]]) -> list[Fraction]:
    result = [Fraction(1)]
    for factor in factors:
        result = poly_mul(result, factor)
    return result


def block_poly(k: int) -> list[Fraction]:
    return product_poly([[Fraction(r), Fraction(1)] for r in range(1, k + 1)])


def shifted_block(k: int, h: int) -> list[Fraction]:
    return product_poly([[Fraction(r - h), Fraction(1)] for r in range(1, k + 1)])


def implicit_branch(k: int, i: int, j: int, mu: int) -> list[Fraction]:
    size = mu
    lower = shifted_block(k, i)
    upper = shifted_block(k, j)
    rhs = [Fraction(4) * value for value in upper]
    rhs += [Fraction(0)] * max(0, size - len(rhs))
    rhs = rhs[:size]
    y = [Fraction(0)] * size
    for h in range(1, size):
        known = eval_poly(lower, y, size)[h]
        y[h] = (rhs[h] - known) / lower[1]
    lhs = eval_poly(lower, y, size)
    assert lhs == rhs
    return y


def binomial_poly(a: int) -> list[Fraction]:
    if a == 0:
        return [Fraction(1)]
    return [value / factorial(a) for value in product_poly([[Fraction(r), Fraction(1)] for r in range(1, a + 1)])]


def basis_series(k: int, q: int, a: int, b: int, j: int, i: int, branch: list[Fraction], size: int) -> list[Fraction]:
    x = [Fraction(0)] * size
    x[0] = Fraction(-j)
    if size > 1:
        x[1] = Fraction(1)
    y = branch[:size]
    y[0] -= i
    U = [value / factorial(k) for value in eval_poly(block_poly(k), x, size)]
    BX = eval_poly(binomial_poly(a), x, size)
    BY = eval_poly(binomial_poly(b), y, size)
    return series_mul(series_mul(series_pow(U, q, size), BX, size), BY, size)


def primitive_row(row: list[Fraction]) -> tuple[list[int], int]:
    denominator = 1
    for value in row:
        denominator = lcm(denominator, value.denominator)
    integers = [int(value * denominator) for value in row]
    content = 0
    for value in integers:
        content = gcd(content, abs(value))
    if content:
        integers = [value // content for value in integers]
        denominator //= content
    first = next((value for value in integers if value), 0)
    if first < 0:
        integers = [-value for value in integers]
    return integers, denominator


def zero_columns(diagonal: Matrix, columns: int) -> list[int]:
    diagonal_length = min(diagonal.rows, diagonal.cols)
    return [column for column in range(columns) if column >= diagonal_length or int(diagonal[column, column]) == 0]


def main() -> int:
    k, mu, degree = 5, 6, 8
    support = [[-1, -1], [-2, -3], [-3, -5], [-5, -2]]
    basis_order = [
        [q, a, b]
        for q in range(degree // k + 1)
        for a in range(k)
        for b in range(k)
        if k * q + a + b <= degree
    ]
    branches = []
    rational_rows: list[list[Fraction]] = []
    integer_rows: list[list[int]] = []
    row_denominators: list[int] = []
    for X, Y in support:
        j, i = -X, -Y
        branch = implicit_branch(k, i, j, mu)
        branches.append({"X": X, "Y": Y, "i": i, "j": j, "coefficients": frac_pair(branch[1])})
        series_columns = [basis_series(k, q, a, b, j, i, branch, mu) for q, a, b in basis_order]
        for h in range(mu):
            rational_row = [column[h] for column in series_columns]
            integer_row, denominator = primitive_row(rational_row)
            rational_rows.append(rational_row)
            integer_rows.append(integer_row)
            row_denominators.append(denominator)
    input_report = {
        "k": k,
        "mu": mu,
        "degree": degree,
        "support_XY": support,
        "curve": "P5(Y)=4*P5(X)",
        "basis_order_qab": basis_order,
        "basis_count": len(basis_order),
        "branch_coefficients_first_nonzero": branches,
        "rational_rows": frac_matrix(rational_rows),
        "primitive_integer_rows": integer_rows,
        "row_denominators": row_denominators,
    }
    INPUT.write_text(json.dumps(input_report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"input matrix ready: rows={len(integer_rows)} cols={len(basis_order)}", flush=True)

    try:
        A = Matrix(integer_rows)
        dm = DomainMatrix([[ZZ(value) for value in row] for row in integer_rows], A.shape, ZZ)
        print("smith_normal_decomp starting", flush=True)
        Ddm, Sdm, Tdm = __import__("sympy.polys.matrices.normalforms", fromlist=["smith_normal_decomp"]).smith_normal_decomp(dm)
        D, S, T = Ddm.to_Matrix(), Sdm.to_Matrix(), Tdm.to_Matrix()
        K_columns = zero_columns(D, T.cols)
        K = T[:, K_columns]
        snf_checks = {
            "S_T_integral": all(value.is_Integer for value in list(D) + list(S) + list(T)),
            "det_S_plus_or_minus_one": abs(int(S.det())) == 1,
            "det_T_plus_or_minus_one": abs(int(T.det())) == 1,
            "D_equals_S_A_T": D == S * A * T,
            "rank": sum(1 for value in [int(D[i, i]) for i in range(min(D.rows, D.cols))] if value != 0),
            "kernel_columns": K_columns,
            "A_times_K_zero": all(int(value) == 0 for value in A * K),
        }
        print(f"SNF done: rank={snf_checks['rank']} nullity={len(K_columns)}", flush=True)

        K_rows = K.T
        Kdm = DomainMatrix([[ZZ(int(K_rows[r, c])) for c in range(K_rows.cols)] for r in range(K_rows.rows)], K_rows.shape, ZZ)
        print("lll_transform starting", flush=True)
        reduced_dm, transform_dm = Kdm.lll_transform()
        reduced = reduced_dm.to_Matrix()
        transform = transform_dm.to_Matrix()
        lll_checks = {
            "transform_integral": all(value.is_Integer for value in list(transform)),
            "det_transform_plus_or_minus_one": abs(int(transform.det())) == 1,
            "reduced_equals_transform_times_unreduced": reduced == transform * K_rows,
            "reduced_kernel": all(int(value) == 0 for value in A * reduced.T),
        }
        print("LLL done", flush=True)
        result = {
            "generated_utc": datetime.now(timezone.utc).isoformat(),
            "python": platform.python_version(),
            "sympy": __import__("sympy").__version__,
            "k": k,
            "mu": mu,
            "degree": degree,
            "input": "highjet-input.json",
            "rational_rows": frac_matrix(rational_rows),
            "primitive_integer_rows": integer_rows,
            "basis_order_qab": basis_order,
            "snf": {
                "D": int_matrix(D),
                "S": int_matrix(S),
                "T": int_matrix(T),
                "kernel_basis_columns": int_matrix(K),
                "checks": snf_checks,
            },
            "lll": {
                "unreduced_kernel_rows": int_matrix(K_rows),
                "reduced_kernel_rows": int_matrix(reduced),
                "transform": int_matrix(transform),
                "unreduced_max_abs": max(abs(int(value)) for value in K_rows),
                "reduced_max_abs": max(abs(int(value)) for value in reduced),
                "checks": lll_checks,
            },
        }
        result["all_pass"] = all(snf_checks.values()) and all(lll_checks.values())
        RESULT.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        print(json.dumps({"all_pass": result["all_pass"], "snf": snf_checks, "lll": lll_checks}, indent=2), flush=True)
        return 0 if result["all_pass"] else 1
    except Exception as error:
        diagnostic = {
            "generated_utc": datetime.now(timezone.utc).isoformat(),
            "stage": "snf_or_lll",
            "error_type": type(error).__name__,
            "error": str(error),
            "traceback": traceback.format_exc(),
            "input": "highjet-input.json",
        }
        DIAGNOSTIC.write_text(json.dumps(diagnostic, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        print(json.dumps({"all_pass": False, "diagnostic": "highjet-diagnostic.json", "error": str(error)}), flush=True)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
