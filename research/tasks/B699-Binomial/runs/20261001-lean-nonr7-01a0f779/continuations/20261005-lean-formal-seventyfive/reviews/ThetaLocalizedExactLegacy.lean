import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-formal-seventyfive».supply.ThetaLocalizedLegacy

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699ThetaVerify20261005

theorem gap_above_theta_threshold_exact
    (hupper : ∀ x : Real, 122568683 < x → Chebyshev.theta x - x ≤ x / 36260)
    (hlower : ∀ x : Real, 122568683 < x →
      x - Chebyshev.theta x ≤ x / (20 * (Real.log x)^2)) :
    ∀ y : Nat, 122568684 ≤ y →
      ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y :=
  B699ThetaLocalized20261005.gap_above_theta_threshold hupper hlower

theorem gap_from_two_local_uniform_theta_exact
    (hupper : ∀ x : Real, 122568683 < x → Chebyshev.theta x - x ≤ x / 36260)
    (hlower : ∀ x : Real, 122568683 < x →
      x - Chebyshev.theta x ≤ x / (20 * (Real.log x)^2)) :
    ∀ y : Nat, 10000000 ≤ y →
      ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y :=
  B699ThetaLocalized20261005.gap_from_two_local_uniform_theta hupper hlower

theorem original_tail_from_two_local_uniform_theta_exact
    (hupper : ∀ x : Real, 122568683 < x → Chebyshev.theta x - x ≤ x / 36260)
    (hlower : ∀ x : Real, 122568683 < x →
      x - Chebyshev.theta x ≤ x / (20 * (Real.log x)^2)) :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699ThetaLocalized20261005.original_tail_from_two_local_uniform_theta hupper hlower

end B699ThetaVerify20261005
#print B699ThetaVerify20261005.gap_above_theta_threshold_exact
#print axioms B699ThetaVerify20261005.gap_above_theta_threshold_exact
#print B699ThetaVerify20261005.gap_from_two_local_uniform_theta_exact
#print axioms B699ThetaVerify20261005.gap_from_two_local_uniform_theta_exact
#print B699ThetaVerify20261005.original_tail_from_two_local_uniform_theta_exact
#print axioms B699ThetaVerify20261005.original_tail_from_two_local_uniform_theta_exact
