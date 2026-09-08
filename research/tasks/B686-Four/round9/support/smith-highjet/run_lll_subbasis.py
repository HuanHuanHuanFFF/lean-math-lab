"""LLL-reduce B's saved primitive Q-kernel vectors without claiming saturation."""

from __future__ import annotations

from datetime import datetime, timezone
from pathlib import Path
import hashlib
import json
import platform
import sys

from sympy import Matrix, ZZ
from sympy.polys.matrices import DomainMatrix


HERE = Path(__file__).resolve().parent
INPUT = HERE / "highjet-input.json"
BASIS = Path(__file__).resolve().parents[2] / "independent/highjet-acceptance/base-locus-audit.json"
RESULT = HERE / "lll-subbasis-results.json"


def int_matrix(matrix: Matrix) -> list[list[int]]:
    return [[int(matrix[r, c]) for c in range(matrix.cols)] for r in range(matrix.rows)]


def main() -> int:
    if hasattr(sys, "set_int_max_str_digits"):
        sys.set_int_max_str_digits(0)
    input_raw = INPUT.read_bytes()
    input_data = json.loads(input_raw.decode("utf-8"))
    basis_raw = BASIS.read_bytes()
    basis_data = json.loads(basis_raw.decode("utf-8"))
    rows = input_data["primitive_integer_rows"]
    A = Matrix(rows)
    vectors = basis_data["rational_kernel_vectors"]
    K_rows = Matrix([[int(value[0]) for value in vector] for vector in vectors])
    denominators_one = all(value[1] == 1 for vector in vectors for value in vector)
    rank = K_rows.rank()
    raw_kernel = all(value == 0 for value in A * K_rows.T)
    dm = DomainMatrix([[ZZ(int(value)) for value in K_rows.row(r)] for r in range(K_rows.rows)], K_rows.shape, ZZ)
    reduced_dm, transform_dm = dm.lll_transform()
    reduced = reduced_dm.to_Matrix()
    transform = transform_dm.to_Matrix()
    checks = {
        "input_vectors_are_integer": denominators_one,
        "source_rank_11": rank == 11,
        "source_A_times_K_transpose_zero": raw_kernel,
        "transform_integral": all(value.is_Integer for value in transform),
        "transform_unimodular": abs(int(transform.det())) == 1,
        "reduced_equals_transform_times_source": reduced == transform * K_rows,
        "reduced_rank_11": reduced.rank() == 11,
        "reduced_A_times_K_transpose_zero": all(value == 0 for value in A * reduced.T),
    }
    result = {
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "python": platform.python_version(),
        "sympy": __import__("sympy").__version__,
        "matrix_source": "independent/highjet-acceptance/base-locus-audit.json",
        "matrix_source_sha256": hashlib.sha256(basis_raw).hexdigest(),
        "jet_input": "smith-highjet/highjet-input.json",
        "jet_input_sha256": hashlib.sha256(input_raw).hexdigest(),
        "scope": "primitive Q-kernel spanning sublattice only; no saturation claim",
        "source_kernel_rows": int_matrix(K_rows),
        "reduced_kernel_rows": int_matrix(reduced),
        "transform": int_matrix(transform),
        "source_max_abs": max(abs(int(value)) for value in K_rows),
        "reduced_max_abs": max(abs(int(value)) for value in reduced),
        "transform_det": int(transform.det()),
        "checks": checks,
        "all_pass": all(checks.values()),
    }
    RESULT.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"all_pass": result["all_pass"], "source_max_abs": result["source_max_abs"], "reduced_max_abs": result["reduced_max_abs"], "transform_det": result["transform_det"]}, indent=2))
    return 0 if result["all_pass"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
