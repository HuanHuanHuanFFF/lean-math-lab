import Math.A071999

/-! Regression checks for the original indexing convention and boundary cases. -/

open Math.A071999

-- These explicit matrices independently fix the one-based OEIS interpretation.
example : matrix 3 = !![1, 1, 0; 2, 1, 0; 0, 0, 1] := by decide

example : matrix 4 = !![1, 0, 1, 0; 0, 1, 0, 0; 3, 0, 1, 0; 0, 0, 0, 1] := by decide

example : (matrix 0).det = 1 := by
  norm_num [det_matrix_range]

example : (matrix 1).det = 1 := by
  simp [matrix]

example : (matrix 2).det = 1 := by
  norm_num [det_matrix_range]

example : (matrix 3).det = -1 := by
  norm_num [det_matrix_range, Finset.prod_range_succ]

example : (matrix 4).det = -2 := by
  norm_num [det_matrix_range, Finset.prod_range_succ]

example : (matrix 7).det = -495 := by
  norm_num [det_matrix_range, Finset.prod_range_succ]

/-- info: 'Math.A071999.det_matrix' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms Math.A071999.det_matrix
