import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBlock.Checker

/-!
# Continuous checked cubic exponent blocks

UNCOMPILED CANDIDATE. A block covers [u,u+L], and the next block must start
at u+L+1. The final endpoint is exclusive. Every row calls the actually
accepted blockCheck; endpoints alone are never sufficient for acceptance.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.CubicBlockCover

open Math.B699.CubicExponentBlock

structure BlockDatum where
  u : ℕ
  L : ℕ
  b0 : ℕ
  v : ℕ
  deriving DecidableEq, Repr

/-- Exact continuity, actual validity of every block, and exact final endpoint. -/
def coverageCheck (p q w : ℕ) : ℕ → ℕ → List BlockDatum → Bool
  | start, stop, [] => decide (start = stop)
  | start, stop, row :: rows =>
      decide (row.u = start) &&
        (blockCheck p q row.u row.L row.b0 w row.v &&
          coverageCheck p q w (row.u + row.L + 1) stop rows)

/-- Every exponent in the whole covered interval is excluded.
The second exponent k and both positive cofactors remain unrestricted. -/
theorem coverageCheck_excludes (p q w : ℕ) (rows : List BlockDatum) :
    ∀ {start stop h k A C : ℕ},
      coverageCheck p q w start stop rows = true → start ≤ h → h < stop →
      1 ≤ A → 1 ≤ C → Nat.dist (p ^ h * A) (q ^ k * C) ≤ w →
      A ^ 3 ≤ min (p ^ h * A) (q ^ k * C) →
      C ^ 3 ≤ min (p ^ h * A) (q ^ k * C) → False := by
  induction rows with
  | nil =>
      intro start stop h k A C hc hstart hstop hA hC hdist hsmallA hsmallC
      change decide (start = stop) = true at hc
      have heq : start = stop := of_decide_eq_true hc
      omega
  | cons row rows ih =>
      intro start stop h k A C hc hstart hstop hA hC hdist hsmallA hsmallC
      change (decide (row.u = start) &&
        (blockCheck p q row.u row.L row.b0 w row.v &&
          coverageCheck p q w (row.u + row.L + 1) stop rows)) = true at hc
      simp only [Bool.and_eq_true] at hc
      have hsplit := hc
      have heq : row.u = start := of_decide_eq_true hsplit.1
      have hrest := hsplit.2
      by_cases hend : h ≤ row.u + row.L
      · exact blockCheck_sound (a := h) (b := k) (A := A) (C := C)
          hrest.1 (by omega) hend hA hC hdist hsmallA hsmallC
      · exact ih (start := row.u + row.L + 1) (stop := stop)
          (h := h) (k := k) (A := A) (C := C)
          hrest.2 (by omega) hstop hA hC hdist hsmallA hsmallC

end Math.B699.CubicBlockCover
