#!/usr/bin/env python3
"""Rebuild the B686 canonical-owner source slice from pinned upstream text.

The extractor is intentionally line-range based.  It never synthesizes a proof,
changes a declaration body, or fills a missing theorem.  The two large owner
files are copied as complete bodies (with only their import removed); the small
PadicLift/base file contains only the declarations used by those bodies.
"""

from __future__ import annotations

import hashlib
import json
from pathlib import Path


HERE = Path(__file__).resolve().parent
VENDOR = HERE.parent
SOURCE = VENDOR / "upstream" / "ErdosProblems"

EXPECTED = {
    "Erdos686.lean": "7c20c04d77d6e2f93b840382e15c676e312fe0f84b6ed23dd670ed8d50c2cabf",
    "Erdos686PadicLift.lean": "c79fc63ec49355d6d59f54577becb6dbf5b6650e3be60e11ddb4cf247515ffb8",
    "Erdos686CanonicalOwnerCleaning.lean": "7a1f6a276d0d45c747689f810c30e74a65d117f9a870121ccf03f2d39f8379da",
    "Erdos686CanonicalOwnerMatrix.lean": "e593e58228305b284e18456cee2522303afdd7a51e5bc7c3b5933178d120bd2e",
}


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def text_lines(path: Path) -> list[str]:
    # The pinned snapshot is LF text.  Keep line content byte-for-byte when
    # joining selected ranges; the generated files themselves use LF.
    return path.read_text(encoding="utf-8").splitlines(keepends=True)


def lines(path: Path, start: int, end: int) -> str:
    src = text_lines(path)
    if start < 1 or end > len(src) or start > end:
        raise ValueError(f"bad line range {path}:{start}-{end}")
    return "".join(src[start - 1 : end])


def check_sources() -> None:
    for name, expected in EXPECTED.items():
        path = SOURCE / name
        actual = sha256(path)
        if actual != expected:
            raise SystemExit(f"source hash mismatch for {path}: {actual} != {expected}")


FOCUSED_IMPORTS = """\
import Mathlib.Algebra.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Data.Nat.Dist
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.Ring
"""

# The generated files live at their repository path, so their imports must
# use the same stable module prefix.  Keeping this as one constant makes the
# extractor's path rewrite explicit and reproducible; it does not alter any
# mathematical namespace from the upstream bodies.
MODULE_PREFIX = (
    "research.tasks.«B686-Four».runs."
    "«20260908-formalization-92c221».lean.canonical.vendor.sliced"
)

PADIC_MODULE = f"{MODULE_PREFIX}.Erdos686CanonicalPadicSlice"
CLEANING_MODULE = f"{MODULE_PREFIX}.Erdos686CanonicalOwnerCleaning"
MATRIX_MODULE = f"{MODULE_PREFIX}.Erdos686CanonicalOwnerMatrix"
INTERFACE_MODULE = f"{MODULE_PREFIX}.CanonicalOwnerDensityInterface"

INTERFACE_CONTENT = """\
/- Stable consumer shape for the canonical-owner matrix provider.  This is a
   consumer input shape, not an existence claim. -/
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Order.Interval.Finset.Nat

namespace B686CanonicalVendor
namespace CanonicalOwnerDensity

structure SystemInput (P k n d : ℕ) where
  distinguished : ℕ
  cell : ℕ → ℕ → ℕ
  lowerResidual : ℕ → ℕ
  upperResidual : ℕ → ℕ
  residual : ℕ
  distinguished_mem : distinguished ∈ Finset.Icc 1 k
  distinguished_four_dvd : 4 ∣ n + d + distinguished
  residual_dvd_factorial : residual ∣ (k - 1).factorial
  lower_residual_product :
    (∏ j ∈ Finset.Icc 1 k, lowerResidual j) = residual
  upper_residual_product :
    (∏ i ∈ Finset.Icc 1 k, upperResidual i) = residual
  lower_factorization :
    ∀ j, j ∈ Finset.Icc 1 k →
      n + j = lowerResidual j * ∏ i ∈ Finset.Icc 1 k, cell j i
  upper_factorization :
    ∀ i, i ∈ Finset.Icc 1 k →
      n + d + i =
        (if i = distinguished then 4 else 1) * upperResidual i *
          ∏ j ∈ Finset.Icc 1 k, cell j i
  shifted_difference_dvd :
    ∀ j, j ∈ Finset.Icc 1 k → ∀ i, i ∈ Finset.Icc 1 k →
      cell j i ∣ d + i - j
  cells_pairwise_coprime :
    ∀ j, j ∈ Finset.Icc 1 k → ∀ i, i ∈ Finset.Icc 1 k →
      ∀ j', j' ∈ Finset.Icc 1 k → ∀ i', i' ∈ Finset.Icc 1 k →
        (j, i) ≠ (j', i') → Nat.Coprime (cell j i) (cell j' i')
  global_product :
    residual *
        (∏ j ∈ Finset.Icc 1 k,
          ∏ i ∈ Finset.Icc 1 k, cell j i) = P

end CanonicalOwnerDensity
end B686CanonicalVendor
"""


def generated_header(source: str, ranges: list[tuple[int, int]]) -> str:
    ranges_text = ", ".join(f"{a}-{b}" for a, b in ranges)
    return (
        "/- Generated mechanically from the pinned upstream snapshot.\n"
        f"   source: {source}; lines: {ranges_text}\n"
        "   Only imports/module paths are adapted; declaration/proof text below is copied. -/\n"
    )


def write(path: Path, content: str) -> dict[str, object]:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content, encoding="utf-8")
    return {
        "path": str(path.relative_to(VENDOR.parent.parent.parent.parent)),
        "bytes": path.stat().st_size,
        "lines": len(content.splitlines()),
        "sha256": sha256(path),
    }


def main() -> None:
    check_sources()
    generated: list[dict[str, object]] = []

    e686 = SOURCE / "Erdos686.lean"
    padic = SOURCE / "Erdos686PadicLift.lean"
    cleaning = SOURCE / "Erdos686CanonicalOwnerCleaning.lean"
    matrix = SOURCE / "Erdos686CanonicalOwnerMatrix.lean"

    # The matrix/cleaning bodies are retained in full.  The source import and
    # module header are supplied here so their declarations stay in a sliced
    # module path without changing their namespaces or proof text.
    cleaning_body = lines(cleaning, 4, len(text_lines(cleaning)))
    matrix_body_source = lines(matrix, 4, len(text_lines(matrix)))
    matrix_body = matrix_body_source
    # v4.33.1's simplifier no longer unfolds this local definition in these
    # four source proofs under the focused imports.  Unfolding the same
    # definition explicitly is a mechanical API adaptation; it does not alter
    # a proposition, hypothesis, or proof argument.
    matrix_body = matrix_body.replace(
        "simpa [hpCell] using data.lower_dvd",
        "simpa [canonicalOwnerPrimePower, hpCell] using data.lower_dvd",
    )
    matrix_body = matrix_body.replace(
        "simpa [hpColumn] using data.upper_dvd",
        "simpa [canonicalOwnerPrimePower, hpColumn] using data.upper_dvd",
    )
    matrix_body = matrix_body.replace(
        "simpa [hpRow] using data.lower_dvd",
        "simpa [canonicalOwnerPrimePower, hpRow] using data.lower_dvd",
    )
    matrix_body = matrix_body.replace(
        "simpa [hpCell.1, hpCell] using data.lower_dvd",
        "simpa [canonicalOwnerPrimePower, hpCell.1, hpCell] using data.lower_dvd",
    )
    matrix_body = matrix_body.replace(
        "simpa [hpCell.2, hpCell] using data.upper_dvd",
        "simpa [canonicalOwnerPrimePower, hpCell.2, hpCell] using data.upper_dvd",
    )

    # Exact base block and the PadicLift declarations transitively needed by
    # Cleaning's concentration and cofactor proofs.  No other PadicLift or
    # historical Erdos686 declaration is copied.
    padic_ranges = [(56, 57), (168, 177), (179, 208), (210, 239),
                    (241, 261), (263, 343), (580, 587)]
    base_ranges = [(4716, 4717), (5060, 5065)]
    padic_parts = [lines(padic, a, b) for a, b in padic_ranges]
    base_parts = [lines(e686, a, b) for a, b in base_ranges]

    padic_content = (
        generated_header("Erdos686.lean + Erdos686PadicLift.lean", base_ranges + padic_ranges)
        + FOCUSED_IMPORTS
        + "\nnamespace Erdos686\nnamespace Erdos686Variant\n\n"
        + "open scoped BigOperators\n\n"
        + "\n\n".join(base_parts + padic_parts)
        + "\nend Erdos686Variant\nend Erdos686\n"
    )
    generated.append(write(HERE / "Erdos686CanonicalPadicSlice.lean", padic_content))

    interface_content = (
        generated_header("local consumer interface; no upstream theorem body", [])
        + INTERFACE_CONTENT
    )
    generated.append(write(HERE / "CanonicalOwnerDensityInterface.lean", interface_content))

    cleaning_content = (
        generated_header("Erdos686CanonicalOwnerCleaning.lean", [(4, len(text_lines(cleaning)) - 0)])
        + FOCUSED_IMPORTS
        + f"import {PADIC_MODULE}\n\n"
        + cleaning_body
    )
    generated.append(write(HERE / "Erdos686CanonicalOwnerCleaning.lean", cleaning_content))

    matrix_content = (
        generated_header("Erdos686CanonicalOwnerMatrix.lean", [(4, len(text_lines(matrix)) - 0)])
        + FOCUSED_IMPORTS
        + f"import {CLEANING_MODULE}\n\n"
        + matrix_body
    )
    generated.append(write(HERE / "Erdos686CanonicalOwnerMatrix.lean", matrix_content))

    adapter_content = """\
/- Mechanical adapter for the sliced canonical-owner provider.  This is a
   projection of the exact upstream conclusion; it adds no existence claim. -/
""" + f"import {MATRIX_MODULE}\nimport {INTERFACE_MODULE}\n""" + """

namespace B686CanonicalVendor
namespace CanonicalOwnerDensity

open Erdos686.Erdos686Variant

theorem systemInput_of_sliced_external
    {k n d : ℕ}
    (hk4 : 4 ≤ k)
    (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    Nonempty (SystemInput (blockProduct k n) k n d) := by
  obtain ⟨t, data, ht, hfour, hresidual, hlower, hupper,
      hlowerFactor, hupperFactor, hshifted, hpairs, hglobal⟩ :=
    exists_canonicalOwnerSystem hk4 hd heq
  exact ⟨{
    distinguished := t
    cell := canonicalOwnerCell data
    lowerResidual := canonicalLowerResidual data
    upperResidual := canonicalUpperResidual data
    residual := canonicalOwnerResidual data
    distinguished_mem := ht
    distinguished_four_dvd := hfour
    residual_dvd_factorial := hresidual
    lower_residual_product := hlower
    upper_residual_product := hupper
    lower_factorization := hlowerFactor
    upper_factorization := hupperFactor
    shifted_difference_dvd := hshifted
    cells_pairwise_coprime := hpairs
    global_product := hglobal }⟩

end CanonicalOwnerDensity
end B686CanonicalVendor
"""
    generated.append(write(HERE / "CanonicalOwnerMatrixAdapter.lean", adapter_content))

    manifest = {
        "schema": "B686 canonical sliced declaration closure v1",
        "recorded_at": "2026-09-08",
        "source_root": "../upstream/ErdosProblems",
        "source_sha256": EXPECTED,
        "slice_policy": {
            "owner_matrix": "complete body copied from source lines 4-end",
            "owner_cleaning": "complete body copied from source lines 4-end",
            "padic_base": "Erdos686 lines 4716-4717 and 5060-5065",
            "padic_selected_ranges": padic_ranges,
            "excluded": "all other Erdos686/PadicLift/QuotientConfinement/ConstantQuotient declarations",
            "proof_policy": "source proof text copied; only listed API-only simp qualification is applied; no axiom/admit/sorry/native_decide substitutions",
        },
        "mechanical_api_adaptations": [
            "Matrix: four simp calls explicitly unfold canonicalOwnerPrimePower for v4.33.1 focused-import elaboration",
            "Imports: add Mathlib.Data.Nat.GCD.BigOperators for Nat.Coprime.prod_left/prod_right",
        ],
        "focused_imports": FOCUSED_IMPORTS.splitlines(),
        "generated": generated,
        "module_prefix": MODULE_PREFIX,
        "generated_modules": {
            "padic": PADIC_MODULE,
            "cleaning": CLEANING_MODULE,
            "matrix": MATRIX_MODULE,
            "interface": INTERFACE_MODULE,
            "adapter": f"{MODULE_PREFIX}.CanonicalOwnerMatrixAdapter",
        },
        "source_body_sha256": {
            "cleaning_lines_4_end": hashlib.sha256(cleaning_body.encode()).hexdigest(),
            "matrix_lines_4_end": hashlib.sha256(matrix_body_source.encode()).hexdigest(),
        },
        "generated_body_sha256": {
            "cleaning_lines_4_end": hashlib.sha256(cleaning_body.encode()).hexdigest(),
            "matrix_lines_4_end": hashlib.sha256(matrix_body.encode()).hexdigest(),
        },
    }
    (HERE / "slice-manifest.json").write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False) + "\n", encoding="utf-8"
    )


if __name__ == "__main__":
    main()
