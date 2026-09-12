import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.ZeroBoundaryLogBoxes.Definitions

/-! Four exact rational checks. No real logarithm is decided computationally. -/

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace Math.B699.ZeroBoundaryLogBoxes

theorem comparison_zero : coarseUpper 102 0 ≤ smallUpper 0 := by
  decide +kernel

theorem comparison_one_third : coarseUpper 102 (1 / 3) ≤ smallUpper (1 / 3) := by
  decide +kernel

theorem comparison_one_fifth : coarseUpper 102 (1 / 5) ≤ smallUpper (1 / 5) := by
  decide +kernel

theorem comparison_one_ninth : coarseUpper 102 (1 / 9) ≤ smallUpper (1 / 9) := by
  decide +kernel

theorem normalization_two :
    scaleExponent 2 = 1 ∧ scalePower 2 = 2 ∧ normalizedArgument 2 = 0 := by
  decide +kernel

theorem normalization_three :
    scaleExponent 3 = 1 ∧ scalePower 3 = 2 ∧ normalizedArgument 3 = 1 / 5 := by
  decide +kernel

theorem normalization_five :
    scaleExponent 5 = 2 ∧ scalePower 5 = 4 ∧ normalizedArgument 5 = 1 / 9 := by
  decide +kernel

end Math.B699.ZeroBoundaryLogBoxes
