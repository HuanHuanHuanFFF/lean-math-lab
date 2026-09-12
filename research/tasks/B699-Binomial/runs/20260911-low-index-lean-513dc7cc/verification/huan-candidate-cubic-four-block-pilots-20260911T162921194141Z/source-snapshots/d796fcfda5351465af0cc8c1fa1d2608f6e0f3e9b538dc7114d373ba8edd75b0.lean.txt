import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

/-!
# Composition of already checked cubic exponent-cover batches

UNCOMPILED CANDIDATE. This imports the accepted coverageCheck definition.
No checker is redefined. The append proof only reuses the two supplied
Boolean proofs; it never asks for a new numerical check of the blocks.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.CubicBlockCover

open Math.B699.CubicExponentBlock

/-- The empty batch preserves its endpoint. -/
theorem coverageCheck_empty (p q w endpoint : ℕ) :
    coverageCheck p q w endpoint endpoint [] = true := by
  simp [coverageCheck]

/-- A single accepted numerical block gives its exact one-row cover. -/
theorem coverageCheck_single (p q w : ℕ) (row : BlockDatum)
    (hrow : blockCheck p q row.u row.L row.b0 w row.v = true) :
    coverageCheck p q w row.u (row.u + row.L + 1) [row] = true := by
  simpa [coverageCheck] using hrow

/-- Compose adjacent already accepted batches, retaining the common endpoint.
The list structure is traversed in the proof, not the numerical block checks. -/
theorem coverageCheck_append (p q w : ℕ) (left right : List BlockDatum) :
    ∀ {start mid stop : ℕ},
      coverageCheck p q w start mid left = true →
      coverageCheck p q w mid stop right = true →
      coverageCheck p q w start stop (left ++ right) = true := by
  induction left with
  | nil =>
      intro start mid stop hleft hright
      change decide (start = mid) = true at hleft
      have hjoin : start = mid := of_decide_eq_true hleft
      simpa only [List.nil_append, hjoin] using hright
  | cons row left ih =>
      intro start mid stop hleft hright
      change (decide (row.u = start) &&
        (blockCheck p q row.u row.L row.b0 w row.v &&
          coverageCheck p q w (row.u + row.L + 1) mid left)) = true at hleft
      simp only [Bool.and_eq_true] at hleft
      have htail : coverageCheck p q w (row.u + row.L + 1) stop (left ++ right) = true :=
        ih (start := row.u + row.L + 1) (mid := mid) (stop := stop) hleft.2.2 hright
      change (decide (row.u = start) &&
        (blockCheck p q row.u row.L row.b0 w row.v &&
          coverageCheck p q w (row.u + row.L + 1) stop (left ++ right))) = true
      simp only [Bool.and_eq_true]
      exact ⟨hleft.1, hleft.2.1, htail⟩

end Math.B699.CubicBlockCover
