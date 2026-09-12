import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13FiveSevenEdge.Content
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11FiveSevenFinal.ActualInstance

/-! UNCOMPILED. True Q/E growth and two separately cleared content rows. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13FiveSevenEdge

open Math.B699.I11FiveSevenScaled
open Math.B699.I11FiveSevenFinalConsumers

theorem actual_growth (m : ℕ) (hm : 149 ≤ m) (row : Bool) :
    |qEval m row| ≤ qB ^ m ∧ |eEval m row| ≤ eB ^ m := by
  have h := standard_bounds_from_fixed_trees actual_q_tree_family actual_e_tree_family
    fixed_initial_q_cap fixed_initial_e_cap
  exact ⟨h.1 m hm row, h.2 m hm row⟩

theorem q_row_weighted (m : ℕ) (hm : 149 ≤ m) (row : Bool) :
    lowerG m * |(qRow m row : ℚ)| ≤ ((50 : ℚ) ^ 7 * qB) ^ m := by
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m row) (lowerG m) ((50 : ℚ) ^ (7 * m - rowDelta row))
    (qRow m row) (qEval m row) (qB ^ m)
    (lowerG_pos m).le (content_common_lower m (by omega) row)
    (by positivity) (q_content_identity m (by omega) row) (actual_growth m hm row).1
  calc
    _ ≤ (50 : ℚ) ^ (7 * m - rowDelta row) * qB ^ m := h
    _ ≤ (50 : ℚ) ^ (7 * m) * qB ^ m :=
      mul_le_mul_of_nonneg_right
        (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 50) (Nat.sub_le _ _))
        (pow_nonneg qB_pos.le m)
    _ = ((50 : ℚ) ^ 7 * qB) ^ m := by rw [mul_pow, ← pow_mul]

theorem e_row_weighted (m : ℕ) (hm : 149 ≤ m) (row : Bool) :
    lowerG m * |(rowError m row : ℚ)| ≤ (50 : ℚ) ^ (4 * m - 1) * eB ^ m := by
  have hm1 : 1 ≤ m := by omega
  cases row with
  | true =>
    have h := Math.B699.I11ScaledBounds.normalized_abs_bound
      (content m true) (lowerG m) ((50 : ℚ) ^ (4 * m - 1))
      (rowError m true) (eEval m true) (eB ^ m)
      (lowerG_pos m).le (content_zero_lower m hm1) (by positivity)
      (by simpa [rowDelta] using e_content_identity m hm1 true)
      (actual_growth m hm true).2
    exact h
  | false =>
    have h := Math.B699.I11ScaledBounds.normalized_abs_bound
      (content m false) (50 * lowerG m) ((50 : ℚ) ^ (4 * m))
      (rowError m false) (eEval m false) (eB ^ m)
      (by have hg := lowerG_pos m; positivity)
      (content_one_scaled_lower m (by omega)) (by positivity)
      (by simpa [rowDelta] using e_content_identity m hm1 false)
      (actual_growth m hm false).2
    have hi : 4 * m - 1 + 1 = 4 * m := by omega
    have hp : (50 : ℚ) ^ (4 * m) = (50 : ℚ) ^ (4 * m - 1) * 50 := by
      simpa only [hi] using pow_succ (50 : ℚ) (4 * m - 1)
    rw [hp] at h
    nlinarith only [h]
end Math.B699.I13FiveSevenEdge
