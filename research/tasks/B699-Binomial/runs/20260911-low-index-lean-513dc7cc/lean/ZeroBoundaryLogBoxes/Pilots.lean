import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.ZeroBoundaryLogBoxes.Bridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.ZeroBoundaryLogBoxes.Finite

/-!
Three unconditional original-parameter logarithm boxes. All rational comparisons,
normalizations, positivity and division side conditions are supplied here.
These boxes do not assert any B699 original index or any 55-pair certificate.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.ZeroBoundaryLogBoxes

theorem normalization_two_real :
    (2 : ℝ) = (2 : ℝ) ^ scaleExponent 2 * realRatio (normalizedArgument 2) := by
  rw [normalization_two.1, normalization_two.2.2]
  norm_num [realRatio]

theorem normalization_three_real :
    (3 : ℝ) = (2 : ℝ) ^ scaleExponent 3 * realRatio (normalizedArgument 3) := by
  rw [normalization_three.1, normalization_three.2.2]
  norm_num [realRatio]

theorem normalization_five_real :
    (5 : ℝ) = (2 : ℝ) ^ scaleExponent 5 * realRatio (normalizedArgument 5) := by
  rw [normalization_five.1, normalization_five.2.2]
  norm_num [realRatio]

theorem log_two_bounds :
    (logLower 2 : ℝ) ≤ Real.log 2 ∧ Real.log 2 ≤ (logUpper 2 : ℝ) := by
  apply log_bounds_of_normalization 2
  · rw [normalization_two.2.2]
    norm_num
  · rw [normalization_two.2.2]
    norm_num
  · exact comparison_one_third
  · simpa only [normalization_two.2.2] using comparison_zero
  · exact normalization_two_real

theorem log_three_bounds :
    (logLower 3 : ℝ) ≤ Real.log 3 ∧ Real.log 3 ≤ (logUpper 3 : ℝ) := by
  apply log_bounds_of_normalization 3
  · rw [normalization_three.2.2]
    norm_num
  · rw [normalization_three.2.2]
    norm_num
  · exact comparison_one_third
  · simpa only [normalization_three.2.2] using comparison_one_fifth
  · exact normalization_three_real

theorem log_five_bounds :
    (logLower 5 : ℝ) ≤ Real.log 5 ∧ Real.log 5 ≤ (logUpper 5 : ℝ) := by
  apply log_bounds_of_normalization 5
  · rw [normalization_five.2.2]
    norm_num
  · rw [normalization_five.2.2]
    norm_num
  · exact comparison_one_third
  · simpa only [normalization_five.2.2] using comparison_one_ninth
  · exact normalization_five_real

end Math.B699.ZeroBoundaryLogBoxes
