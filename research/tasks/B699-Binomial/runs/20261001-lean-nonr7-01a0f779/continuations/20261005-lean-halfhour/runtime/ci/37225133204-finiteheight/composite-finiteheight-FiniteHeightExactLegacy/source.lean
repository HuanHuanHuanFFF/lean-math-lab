import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-formal-seventyfive».supply.FiniteHeightConsumerLegacy

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699ThetaVerify20261005

theorem original_of_finite_gap_difference_exact :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 → n - i < 122568684 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  intro n i j hi hij hjn hdiff
  exact B699FiniteHeight20261005.original_of_finite_gap_difference hi hij hjn hdiff

theorem original_upto_theta_threshold_exact :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 → n ≤ 122568684 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  intro n i j hi hij hjn hn
  exact B699FiniteHeight20261005.original_upto_theta_threshold hi hij hjn hn

end B699ThetaVerify20261005
#print B699ThetaVerify20261005.original_of_finite_gap_difference_exact
#print B699ThetaVerify20261005.original_upto_theta_threshold_exact
#print axioms B699ThetaVerify20261005.original_of_finite_gap_difference_exact
#print axioms B699ThetaVerify20261005.original_upto_theta_threshold_exact
