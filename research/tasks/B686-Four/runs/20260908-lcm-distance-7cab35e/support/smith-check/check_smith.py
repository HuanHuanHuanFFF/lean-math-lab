"""Small exact SNF decomposition checks for the saturated Z-kernel question."""

from __future__ import annotations

from datetime import datetime, timezone
from itertools import combinations
from math import gcd
from pathlib import Path
import json
import platform
import sys

from sympy import Matrix, ZZ
from sympy.polys.matrices import DomainMatrix
from sympy.polys.matrices.normalforms import smith_normal_decomp


OUT = Path(__file__).with_name("smith-results.json")


def as_int_matrix(dm: DomainMatrix) -> Matrix:
    return dm.to_Matrix()


def matrix_json(matrix: Matrix) -> list[list[int]]:
    return [[int(matrix[r, c]) for c in range(matrix.cols)] for r in range(matrix.rows)]


def rank_mod(rows: list[list[int]], prime: int) -> int:
    work = [[value % prime for value in row] for row in rows]
    row_count = len(work)
    col_count = len(work[0]) if row_count else 0
    pivot_row = 0
    for col in range(col_count):
        pivot = next((r for r in range(pivot_row, row_count) if work[r][col]), None)
        if pivot is None:
            continue
        work[pivot_row], work[pivot] = work[pivot], work[pivot_row]
        inv = pow(work[pivot_row][col], -1, prime)
        work[pivot_row] = [(value * inv) % prime for value in work[pivot_row]]
        for r in range(row_count):
            if r != pivot_row and work[r][col]:
                factor = work[r][col]
                work[r] = [(x - factor * y) % prime for x, y in zip(work[r], work[pivot_row])]
        pivot_row += 1
        if pivot_row == row_count:
            break
    return pivot_row


def gcd_maximal_minors(rows: list[list[int]]) -> int:
    matrix = Matrix(rows)
    rank = matrix.rank()
    values: list[int] = []
    for row_indices in combinations(range(matrix.rows), rank):
        for col_indices in combinations(range(matrix.cols), rank):
            values.append(abs(int(matrix.extract(row_indices, col_indices).det())))
    result = 0
    for value in values:
        result = gcd(result, value)
    return result


def decompose(name: str, rows: list[list[int]], expected: dict | None = None) -> dict:
    shape = (len(rows), len(rows[0]))
    domain_rows = [[ZZ(value) for value in row] for row in rows]
    matrix = DomainMatrix(domain_rows, shape, ZZ)
    diagonal, left, right = smith_normal_decomp(matrix)
    A = as_int_matrix(matrix)
    D = as_int_matrix(diagonal)
    S = as_int_matrix(left)
    T = as_int_matrix(right)
    diagonal_length = min(D.rows, D.cols)
    diagonal_entries = [int(D[i, i]) for i in range(diagonal_length)]
    zero_columns = [
        column for column in range(T.cols)
        if column >= diagonal_length or int(D[column, column]) == 0
    ]
    kernel = T[:, zero_columns]
    product_identity = D == S * A * T
    det_left = int(S.det())
    det_right = int(T.det())
    kernel_product = A * kernel
    kernel_zero = all(int(value) == 0 for value in kernel_product)
    integral = all(value.is_Integer for value in list(D) + list(S) + list(T))
    unimodular = abs(det_left) == 1 and abs(det_right) == 1
    case = {
        "name": name,
        "input": rows,
        "D": matrix_json(D),
        "S": matrix_json(S),
        "T": matrix_json(T),
        "diagonal_entries": diagonal_entries,
        "zero_diagonal_columns": zero_columns,
        "kernel_basis_columns": matrix_json(kernel),
        "det_S": det_left,
        "det_T": det_right,
        "checks": {
            "S_T_integral": integral,
            "determinants_plus_or_minus_one": unimodular,
            "D_equals_S_A_T": product_identity,
            "zero_columns_are_kernel": kernel_zero,
        },
    }
    if expected is not None and "vector" in expected:
        expected_vector = Matrix(expected["vector"])
        coordinates = kernel.gauss_jordan_solve(expected_vector)[0]
        vector_reconstructed = kernel * coordinates == expected_vector
        coordinates_integral = all(value.is_Integer for value in list(coordinates))
        case["expected_kernel_vector"] = expected["vector"]
        case["expected_vector_coordinates_in_T_zero_columns"] = [int(value) for value in coordinates]
        case["checks"]["expected_vector_is_generated"] = vector_reconstructed and coordinates_integral
    if expected is not None and "gcd_maximal_minors" in expected:
        maximal_gcd = gcd_maximal_minors(rows)
        mod_rank = rank_mod(rows, 7)
        case["gcd_maximal_minors"] = maximal_gcd
        case["rank_mod_7"] = mod_rank
        case["checks"]["expected_gcd_maximal_minors"] = maximal_gcd == expected["gcd_maximal_minors"]
        case["checks"]["expected_rank_mod_7"] = mod_rank == expected["rank_mod_7"]
    case["all_pass"] = all(case["checks"].values())
    return case


def main() -> int:
    a_case = decompose(
        "A_2_1_1",
        [[2, 1, 1]],
        {"vector": [-1, 1, 1]},
    )
    b_rows = [
        [1, 0, 0, 0, 0, 0],
        [1, -1, -2, 0, 2, 1],
        [1, -2, -4, 1, 8, 6],
        [1, -4, -1, 6, 4, 0],
    ]
    b_case = decompose(
        "k5_mu1_D2_truncated_binomial_grid",
        b_rows,
        {"gcd_maximal_minors": 7, "rank_mod_7": 3},
    )
    cases = [a_case, b_case]
    report = {
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "python": platform.python_version(),
        "sympy": __import__("sympy").__version__,
        "method": "SymPy DomainMatrix over ZZ with smith_normal_decomp; D=S*A*T; zero diagonal columns of unimodular T generate the saturated Z-kernel",
        "cases": cases,
        "all_pass": all(case["all_pass"] for case in cases),
    }
    OUT.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"all_pass": report["all_pass"], "cases": [case["all_pass"] for case in cases]}, indent=2))
    return 0 if report["all_pass"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
