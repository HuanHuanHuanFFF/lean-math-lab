import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-local-power-ninetymin».supply.LocalPowerMonotonic

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699LocalPowerVerify20261005

theorem log_ratio_le_literal {A x : ℝ} (hA : 16 ≤ A) (hx : A ≤ x) :
    Real.log ((4096 : ℝ) / 4095 * x) / Real.sqrt x ≤
      Real.log ((4096 : ℝ) / 4095 * A) / Real.sqrt A := by
  rw [show (4096 : ℝ) / 4095 * x = x + x / 4095 by ring,
      show (4096 : ℝ) / 4095 * A = A + A / 4095 by ring]
  exact B699LocalPowerMonotonic20261005.log_ratio_le hA hx

theorem log_square_ratio_le_literal {A x : ℝ} (hA : 16 ≤ A) (hx : A ≤ x) :
    Real.log ((4096 : ℝ) / 4095 * x) ^ 2 / x ≤
      Real.log ((4096 : ℝ) / 4095 * A) ^ 2 / A := by
  rw [show (4096 : ℝ) / 4095 * x = x + x / 4095 by ring,
      show (4096 : ℝ) / 4095 * A = A + A / 4095 by ring]
  exact B699LocalPowerMonotonic20261005.log_square_ratio_le hA hx

end B699LocalPowerVerify20261005

#print axioms B699LocalPowerVerify20261005.log_ratio_le_literal
#print axioms B699LocalPowerVerify20261005.log_square_ratio_le_literal
