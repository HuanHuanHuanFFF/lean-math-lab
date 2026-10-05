import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-formal-seventyfive».supply.GapCutoffConsumerLegacy

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699ThetaVerify20261005

theorem original_tail_of_gap_at_cutoff_exact {Y : Nat}
    (hgap : ∀ y : Nat, Y ≤ y → ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y) :
    ∀ n i j : Nat, 4883 ≤ i → Y ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699GapCutoff20261005.original_tail_of_gap_at_cutoff hgap

theorem original_tail_of_uniform_relative_theta_at_cutoff_exact {D Y : Nat} {u l : ℝ}
    (hD : 4095 ≤ D) (hY : 0 < Y)
    (hcoeff : (D : ℝ) * u + ((D : ℝ) + 1) * l < 1)
    (hupper : ∀ x : ℝ, (Y : ℝ) ≤ x → Chebyshev.theta x ≤ (1 + u) * x)
    (hlower : ∀ x : ℝ, (Y : ℝ) ≤ x → (1 - l) * x ≤ Chebyshev.theta x) :
    ∀ n i j : Nat, 4883 ≤ i → Y ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699GapCutoff20261005.original_tail_of_uniform_relative_theta_at_cutoff
    hD hY hcoeff hupper hlower

end B699ThetaVerify20261005
#print B699ThetaVerify20261005.original_tail_of_gap_at_cutoff_exact
#print B699ThetaVerify20261005.original_tail_of_uniform_relative_theta_at_cutoff_exact
#print axioms B699ThetaVerify20261005.original_tail_of_gap_at_cutoff_exact
#print axioms B699ThetaVerify20261005.original_tail_of_uniform_relative_theta_at_cutoff_exact
