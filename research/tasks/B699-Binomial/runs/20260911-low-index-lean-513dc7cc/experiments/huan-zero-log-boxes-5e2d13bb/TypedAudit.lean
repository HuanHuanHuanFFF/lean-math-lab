import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-zero-log-boxes-5e2d13bb».Pilots

set_option autoImplicit false
set_option relaxedAutoImplicit false

open Math.B699.ZeroBoundaryLogBoxes
open scoped BigOperators

example : ℕ → ℚ → ℚ := @partialSum
example : ℚ → ℚ := @smallLower
example : ℚ → ℚ := @smallUpper
example : ℕ → ℚ → ℚ := @coarseUpper
example : ℕ → ℕ := @scaleExponent
example : ℕ → ℕ := @scalePower
example : ℕ → ℚ := @normalizedArgument
example : ℕ → ℚ := @logLower
example : ℕ → ℚ := @logUpper
example : ℚ → ℝ := @realRatio

example : coarseUpper 102 0 ≤ smallUpper 0 := @comparison_zero
example : coarseUpper 102 (1 / 3) ≤ smallUpper (1 / 3) := @comparison_one_third
example : coarseUpper 102 (1 / 5) ≤ smallUpper (1 / 5) := @comparison_one_fifth
example : coarseUpper 102 (1 / 9) ≤ smallUpper (1 / 9) := @comparison_one_ninth
example : scaleExponent 2 = 1 ∧ scalePower 2 = 2 ∧ normalizedArgument 2 = 0 :=
  @normalization_two
example : scaleExponent 3 = 1 ∧ scalePower 3 = 2 ∧ normalizedArgument 3 = 1 / 5 :=
  @normalization_three
example : scaleExponent 5 = 2 ∧ scalePower 5 = 4 ∧ normalizedArgument 5 = 1 / 9 :=
  @normalization_five

example : ∀ (m : ℕ) (z : ℚ),
    (partialSum m z : ℝ) =
      ∑ k ∈ Finset.range m, (z : ℝ) ^ (2 * k + 1) / ((2 * k + 1 : ℕ) : ℝ) :=
  @partialSum_cast
example : ∀ {z : ℚ}, 0 ≤ z → z < 1 → 0 < realRatio z := @realRatio_pos
example : ∀ (m : ℕ) {z : ℚ}, 0 ≤ z → z < 1 →
    ((2 * partialSum m z : ℚ) : ℝ) ≤ Real.log (realRatio z) ∧
      Real.log (realRatio z) ≤ (coarseUpper m z : ℝ) :=
  @finite_series_bounds
example : ∀ {z : ℚ}, 0 ≤ z → z < 1 →
    coarseUpper 102 z ≤ smallUpper z →
    (smallLower z : ℝ) ≤ Real.log (realRatio z) ∧
      Real.log (realRatio z) ≤ (smallUpper z : ℝ) :=
  @old_box_of_finite_comparison
example : ∀ (a k : ℕ) {z : ℚ}, 0 ≤ z → z < 1 →
    coarseUpper 102 (1 / 3) ≤ smallUpper (1 / 3) →
    coarseUpper 102 z ≤ smallUpper z →
    (a : ℝ) = (2 : ℝ) ^ k * realRatio z →
    (((k : ℚ) * smallLower (1 / 3) + smallLower z : ℚ) : ℝ) ≤ Real.log a ∧
      Real.log a ≤ (((k : ℚ) * smallUpper (1 / 3) + smallUpper z : ℚ) : ℝ) :=
  @scaled_log_box
example : ∀ (a : ℕ), 0 ≤ normalizedArgument a → normalizedArgument a < 1 →
    coarseUpper 102 (1 / 3) ≤ smallUpper (1 / 3) →
    coarseUpper 102 (normalizedArgument a) ≤ smallUpper (normalizedArgument a) →
    (a : ℝ) = (2 : ℝ) ^ scaleExponent a * realRatio (normalizedArgument a) →
    (logLower a : ℝ) ≤ Real.log a ∧ Real.log a ≤ (logUpper a : ℝ) :=
  @log_bounds_of_normalization

example : (2 : ℝ) = (2 : ℝ) ^ scaleExponent 2 * realRatio (normalizedArgument 2) :=
  @normalization_two_real
example : (3 : ℝ) = (2 : ℝ) ^ scaleExponent 3 * realRatio (normalizedArgument 3) :=
  @normalization_three_real
example : (5 : ℝ) = (2 : ℝ) ^ scaleExponent 5 * realRatio (normalizedArgument 5) :=
  @normalization_five_real

example : (logLower 2 : ℝ) ≤ Real.log 2 ∧ Real.log 2 ≤ (logUpper 2 : ℝ) := @log_two_bounds
example : (logLower 3 : ℝ) ≤ Real.log 3 ∧ Real.log 3 ≤ (logUpper 3 : ℝ) := @log_three_bounds
example : (logLower 5 : ℝ) ≤ Real.log 5 ∧ Real.log 5 ≤ (logUpper 5 : ℝ) := @log_five_bounds
