import Math.A071999

/-! Public API usage; no private decomposition lemmas are needed. -/

example (n : ℕ) :
    (Math.A071999.matrix n).det =
      ∏ i ∈ Finset.Icc 1 ((n - 1) / 2),
        (1 - (i : ℤ) * ((n : ℤ) - i)) :=
  Math.A071999.det_matrix n

example : (Math.A071999.matrix 5).det = 15 := by
  norm_num [Math.A071999.det_matrix_range, Finset.prod_range_succ]
