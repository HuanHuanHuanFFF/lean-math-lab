import Math.A071999

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace ReviewF1
open Math.A071999

-- Transcription of the source convention, independent of Fin indexing.
def sourceEntry (n i j : ℕ) : ℤ :=
  if i = j then 1 else if i + j = n then i else 0

theorem source_agreement (n : ℕ) (i j : Fin n) :
    matrix n i j = sourceEntry n (i.val + 1) (j.val + 1) := by
  simp only [matrix, sourceEntry, Nat.add_right_cancel_iff, Fin.ext_iff]
  have hsum : i.val + 1 + (j.val + 1) = i.val + j.val + 2 := by omega
  rw [hsum]
  simp

-- Direct determinant checks: these proofs do not invoke either final formula.
theorem direct_zero : (matrix 0).det = 1 := by simp
theorem direct_two : (matrix 2).det = 1 := by norm_num [Matrix.det_fin_two, matrix]
theorem direct_three : (matrix 3).det = -1 := by norm_num [Matrix.det_fin_three, matrix, Fin.ext_iff]

-- The diagonal fixed point must retain 1 at the larger even boundary.
example : matrix 6 (2 : Fin 6) (2 : Fin 6) = 1 := by decide
example : matrix 6 (1 : Fin 6) (3 : Fin 6) = 2 := by decide
example : matrix 6 (3 : Fin 6) (1 : Fin 6) = 4 := by decide

-- A fully quantified restatement with no ambient assumptions.
example : ∀ n : ℕ, (matrix n).det =
    ∏ i ∈ Finset.Icc 1 ((n - 1) / 2), (1 - (i : ℤ) * ((n : ℤ) - i)) :=
  Math.A071999.det_matrix

#print Math.A071999.matrix
#check @Math.A071999.det_matrix
/-- info: 'Math.A071999.det_matrix_range' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms Math.A071999.det_matrix_range
/-- info: 'Math.A071999.det_matrix' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms Math.A071999.det_matrix
/-- info: 'ReviewF1.source_agreement' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms source_agreement
/-- info: 'ReviewF1.direct_three' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms direct_three
end ReviewF1
