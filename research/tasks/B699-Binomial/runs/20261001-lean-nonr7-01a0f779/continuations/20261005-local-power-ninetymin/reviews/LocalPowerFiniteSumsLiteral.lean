import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-local-power-ninetymin».supply.LocalPowerFiniteSums

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699LocalPowerVerify20261005

-- All exponent intervals start at 2 and include the final exponent K.
theorem reciprocal_square_sum_le_sub_literal (K : Nat) (hK : 1 ≤ K) :
    (∑ k ∈ Finset.Icc 2 K, 1 / (k : ℝ) ^ 2) ≤ 1 - 1 / (K : ℝ) :=
  B699LocalPowerSums20261005.reciprocal_square_sum_le_sub K hK

theorem reciprocal_square_sum_le_one_literal (K : Nat) :
    (∑ k ∈ Finset.Icc 2 K, 1 / (k : ℝ) ^ 2) ≤ 1 :=
  B699LocalPowerSums20261005.reciprocal_square_sum_le_one K

theorem reciprocal_sum_le_half_literal (K : Nat) :
    (∑ k ∈ Finset.Icc 2 K, 1 / (k : ℝ)) ≤ (K : ℝ) / 2 :=
  B699LocalPowerSums20261005.reciprocal_sum_le_half K

theorem root_le_sqrt_literal {x : ℝ} {k : Nat} (hx : 1 ≤ x) (hk : 2 ≤ k) :
    x ^ ((1 : ℝ) / k) ≤ Real.sqrt x :=
  B699LocalPowerSums20261005.root_le_sqrt hx hk

end B699LocalPowerVerify20261005

#print axioms B699LocalPowerVerify20261005.reciprocal_square_sum_le_sub_literal
#print axioms B699LocalPowerVerify20261005.reciprocal_square_sum_le_one_literal
#print axioms B699LocalPowerVerify20261005.reciprocal_sum_le_half_literal
#print axioms B699LocalPowerVerify20261005.root_le_sqrt_literal
