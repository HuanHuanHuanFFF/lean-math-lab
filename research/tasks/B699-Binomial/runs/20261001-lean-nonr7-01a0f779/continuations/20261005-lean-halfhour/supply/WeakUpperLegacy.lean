import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-formal-seventyfive».supply.UniformThetaGapLegacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».gap.ThetaTail
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699WeakUpper20261005

theorem coefficient_weak_upper :
    (4095 : ℝ) * (1 / 12000) + (4095 + 1) * (1 / 6480) < 1 := by
  norm_num

theorem theta_lower_6480 {x : ℝ} (hx : 122568683 < x)
    (herr : x - Chebyshev.theta x ≤ x / (20 * (Real.log x) ^ 2)) :
    (1 - 1 / 6480 : ℝ) * x ≤ Chebyshev.theta x := by
  have hx0 : 0 ≤ x := by linarith
  have hlog := B699ThetaSupply.log_gt_eighteen hx
  have hden : (6480 : ℝ) < 20 * (Real.log x) ^ 2 := by
    nlinarith [sq_nonneg (Real.log x - 18)]
  have hquot : x / (20 * (Real.log x) ^ 2) ≤ x / 6480 :=
    div_le_div_of_nonneg_left hx0 (by norm_num) hden.le
  linarith [le_trans herr hquot]

theorem gap_from_weak_upper_and_log_lower
    (hupper : ∀ x : ℝ, 100000000 ≤ x → Chebyshev.theta x - x ≤ x / 12000)
    (hlower : ∀ x : ℝ, 122568683 < x →
      x - Chebyshev.theta x ≤ x / (20 * (Real.log x) ^ 2)) :
    B699TailGap.Gap 4095 10000000 := by
  apply B699UniformTheta20261005.gap_4095_of_uniform_relative_theta
    (D := 4095) (Y := 122568684) (u := (1 / 12000 : ℝ)) (l := (1 / 6480 : ℝ))
    (by decide) (by decide) (by decide) coefficient_weak_upper
  · intro x hx
    have h := hupper x (by linarith)
    linarith
  · intro x hx
    exact theta_lower_6480 (by linarith) (hlower x (by linarith))

theorem original_tail_from_weak_upper_and_log_lower
    (hupper : ∀ x : ℝ, 100000000 ≤ x → Chebyshev.theta x - x ≤ x / 12000)
    (hlower : ∀ x : ℝ, 122568683 < x →
      x - Chebyshev.theta x ≤ x / (20 * (Real.log x) ^ 2)) :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699FiniteFull20261002.original_tail_of_gap
    (gap_from_weak_upper_and_log_lower hupper hlower)

end B699WeakUpper20261005
#print axioms B699WeakUpper20261005.coefficient_weak_upper
#print axioms B699WeakUpper20261005.theta_lower_6480
#print axioms B699WeakUpper20261005.gap_from_weak_upper_and_log_lower
#print axioms B699WeakUpper20261005.original_tail_from_weak_upper_and_log_lower
