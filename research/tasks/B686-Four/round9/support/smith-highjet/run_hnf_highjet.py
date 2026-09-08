"""Graph-HNF saturated-kernel and SymPy LLL check for saved highjet input."""

from __future__ import annotations

from datetime import datetime, timezone
from pathlib import Path
import hashlib
import json
import platform
import traceback

from sympy import Matrix, ZZ, eye
from sympy.matrices.normalforms import hermite_normal_form
from sympy.polys.matrices import DomainMatrix


HERE = Path(__file__).resolve().parent
INPUT = HERE / "highjet-input.json"
RESULT = HERE / "highjet-hnf-results.json"
DIAGNOSTIC = HERE / "highjet-hnf-diagnostic.json"


def int_matrix(matrix: Matrix) -> list[list[int]]:
    return [[int(matrix[r, c]) for c in range(matrix.cols)] for r in range(matrix.rows)]


def main() -> int:
    raw = INPUT.read_bytes()
    data = json.loads(raw.decode("utf-8"))
    rows = data["primitive_integer_rows"]
    A = Matrix(rows)
    n = A.cols
    G = eye(n).col_join(A)
    started = datetime.now(timezone.utc).isoformat()
    print(f"HNF starting: G={G.rows}x{G.cols}", flush=True)
    try:
        H = hermite_normal_form(G)
        T = H[:n, :]
        bottom = H[n:, :]
        zero_columns = [column for column in range(n) if all(bottom[row, column] == 0 for row in range(bottom.rows))]
        K = T[:, zero_columns]
        hnf_checks = {
            "H_shape_is_graph_shape": H.shape == G.shape,
            "T_integral": all(value.is_Integer for value in T),
            "det_T_plus_or_minus_one": abs(int(T.det())) == 1,
            "bottom_equals_A_times_T": bottom == A * T,
            "zero_columns_are_kernel": all(value == 0 for value in A * K),
            "kernel_column_count_matches_nullity": len(zero_columns) == n - A.rank(),
            "nonzero_bottom_columns_independent": bottom[:, [j for j in range(n) if j not in zero_columns]].rank() == A.rank(),
        }
        print(f"HNF done: rank={A.rank()} nullity={len(zero_columns)}", flush=True)
        K_rows = K.T
        Kdm = DomainMatrix([[ZZ(int(K_rows[r, c])) for c in range(K_rows.cols)] for r in range(K_rows.rows)], K_rows.shape, ZZ)
        print("LLL starting", flush=True)
        reduced_dm, transform_dm = Kdm.lll_transform()
        reduced = reduced_dm.to_Matrix()
        transform = transform_dm.to_Matrix()
        lll_checks = {
            "transform_integral": all(value.is_Integer for value in transform),
            "det_transform_plus_or_minus_one": abs(int(transform.det())) == 1,
            "reduced_equals_transform_times_unreduced": reduced == transform * K_rows,
            "reduced_kernel": all(int(value) == 0 for value in A * reduced.T),
        }
        print("LLL done", flush=True)
        report = {
            "generated_utc": datetime.now(timezone.utc).isoformat(),
            "started_utc": started,
            "python": platform.python_version(),
            "sympy": __import__("sympy").__version__,
            "input": "highjet-input.json",
            "input_sha256": hashlib.sha256(raw).hexdigest(),
            "A_rows": rows,
            "G": int_matrix(G),
            "H": int_matrix(H),
            "T": int_matrix(T),
            "bottom_A_times_T": int_matrix(bottom),
            "zero_columns": zero_columns,
            "saturated_kernel_columns": int_matrix(K),
            "hnf_checks": hnf_checks,
            "lll": {
                "unreduced_kernel_rows": int_matrix(K_rows),
                "reduced_kernel_rows": int_matrix(reduced),
                "transform": int_matrix(transform),
                "unreduced_max_abs": max(abs(int(value)) for value in K_rows),
                "reduced_max_abs": max(abs(int(value)) for value in reduced),
                "checks": lll_checks,
            },
        }
        report["all_pass"] = all(hnf_checks.values()) and all(lll_checks.values())
        RESULT.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        print(json.dumps({"all_pass": report["all_pass"], "hnf": hnf_checks, "lll": lll_checks}, indent=2), flush=True)
        return 0 if report["all_pass"] else 1
    except Exception as error:
        diagnostic = {
            "generated_utc": datetime.now(timezone.utc).isoformat(),
            "stage": "hnf_or_lll",
            "error_type": type(error).__name__,
            "error": str(error),
            "traceback": traceback.format_exc(),
            "input": "highjet-input.json",
            "input_sha256": hashlib.sha256(raw).hexdigest(),
        }
        DIAGNOSTIC.write_text(json.dumps(diagnostic, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        print(json.dumps({"all_pass": False, "diagnostic": "highjet-hnf-diagnostic.json", "error": str(error)}), flush=True)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
