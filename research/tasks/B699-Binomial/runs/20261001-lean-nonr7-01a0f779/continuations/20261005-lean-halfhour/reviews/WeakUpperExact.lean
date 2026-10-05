import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-halfhour».supply.WeakUpperLegacy
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699HalfhourVerify20261005

theorem coefficient_weak_upper_exact :
    (4095 : ℝ) * (1 / 12000) + (4095 + 1) * (1 / 6480) < 1 :=
  B699WeakUpper20261005.coefficient_weak_upper

theorem theta_lower_6480_exact {x : ℝ} (hx : 122568683 < x)
    (herr : x - Chebyshev.theta x ≤ x / (20 * Real.log x ^ 2)) :
    (1 - 1 / 6480 : ℝ) * x ≤ Chebyshev.theta x :=
  B699WeakUpper20261005.theta_lower_6480 hx herr

theorem gap_from_weak_upper_and_log_lower_exact
    (hupper : ∀ x : ℝ, 100000000 ≤ x → Chebyshev.theta x - x ≤ x / 12000)
    (hlower : ∀ x : ℝ, 122568683 < x →
      x - Chebyshev.theta x ≤ x / (20 * Real.log x ^ 2)) :
    ∀ y : Nat, 10000000 ≤ y →
      ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y :=
  B699WeakUpper20261005.gap_from_weak_upper_and_log_lower hupper hlower

theorem original_tail_from_weak_upper_and_log_lower_exact
    (hupper : ∀ x : ℝ, 100000000 ≤ x → Chebyshev.theta x - x ≤ x / 12000)
    (hlower : ∀ x : ℝ, 122568683 < x →
      x - Chebyshev.theta x ≤ x / (20 * Real.log x ^ 2)) :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699WeakUpper20261005.original_tail_from_weak_upper_and_log_lower hupper hlower

end B699HalfhourVerify20261005
#print B699HalfhourVerify20261005.coefficient_weak_upper_exact
#print B699HalfhourVerify20261005.theta_lower_6480_exact
#print B699HalfhourVerify20261005.gap_from_weak_upper_and_log_lower_exact
#print B699HalfhourVerify20261005.original_tail_from_weak_upper_and_log_lower_exact
#print axioms B699HalfhourVerify20261005.coefficient_weak_upper_exact
#print axioms B699HalfhourVerify20261005.theta_lower_6480_exact
#print axioms B699HalfhourVerify20261005.gap_from_weak_upper_and_log_lower_exact
#print axioms B699HalfhourVerify20261005.original_tail_from_weak_upper_and_log_lower_exact
