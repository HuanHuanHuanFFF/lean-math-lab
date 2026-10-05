import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-formal-seventyfive».supply.UniformThetaGapLegacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».terminal.FiniteConsumerLegacy

/-! A high-cutoff Gap supplies a conditional original-problem tail at i >= Y.
No finite interval below Y or uniform analytical bound is proved here. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699GapCutoff20261005

theorem original_tail_of_gap_at_cutoff {Y : Nat}
    (hgap : B699TailGap.Gap 4095 Y) :
    ∀ n i j : Nat, 4883 ≤ i → Y ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  intro n i j hi hYi hij hjn
  by_cases hlarge : 4096 * i ≤ n
  · exact B699ActualUniform.common_of_ratio_4096 (by omega) hij hjn hlarge
  · obtain ⟨p, hp, hyp, hshort⟩ := hgap (n - i) (by omega)
    exact B699TailGap.common_of_top_prime hij hjn hp hyp (by omega)

theorem original_tail_of_uniform_relative_theta_at_cutoff {D Y : Nat} {u l : ℝ}
    (hD : 4095 ≤ D) (hY : 0 < Y)
    (hcoeff : (D : ℝ) * u + ((D : ℝ) + 1) * l < 1)
    (hupper : ∀ x : ℝ, (Y : ℝ) ≤ x → Chebyshev.theta x ≤ (1 + u) * x)
    (hlower : ∀ x : ℝ, (Y : ℝ) ≤ x → (1 - l) * x ≤ Chebyshev.theta x) :
    ∀ n i j : Nat, 4883 ≤ i → Y ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  have hgapD : B699TailGap.Gap D Y :=
    B699UniformTheta20261005.gap_of_uniform_relative_theta
      (by omega) hY hcoeff hupper hlower
  apply original_tail_of_gap_at_cutoff
  intro y hy
  obtain ⟨p, hp, hyp, hshort⟩ := hgapD y hy
  exact ⟨p, hp, hyp, (Nat.mul_le_mul_right (p - y) hD).trans hshort⟩

end B699GapCutoff20261005
#print axioms B699GapCutoff20261005.original_tail_of_gap_at_cutoff
#print axioms B699GapCutoff20261005.original_tail_of_uniform_relative_theta_at_cutoff
