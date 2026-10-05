import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».gap.ThetaInterval
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.GapDefinitions
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.FullInitialGapLegacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».terminal.FiniteConsumerLegacy
import Lean.Elab.Tactic.NormCast

/-! Optional separate verification unit.  Supplied uniform relative theta
bounds imply Gap; neither analytical bound is established by this module. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699UniformTheta20261005

theorem gap_of_uniform_relative_theta {D Y : Nat} {u l : ℝ}
    (hD : 0 < D) (hY : 0 < Y)
    (hcoeff : (D : ℝ) * u + ((D : ℝ) + 1) * l < 1)
    (hupper : ∀ x : ℝ, (Y : ℝ) ≤ x → Chebyshev.theta x ≤ (1 + u) * x)
    (hlower : ∀ x : ℝ, (Y : ℝ) ≤ x → (1 - l) * x ≤ Chebyshev.theta x) :
    B699TailGap.Gap D Y := by
  intro y hy
  have hDR : (0 : ℝ) < (D : ℝ) := by exact_mod_cast hD
  have hyR : (Y : ℝ) ≤ (y : ℝ) := by exact_mod_cast hy
  have hy0 : (0 : ℝ) < (y : ℝ) := by exact_mod_cast (lt_of_lt_of_le hY hy)
  have hz : (Y : ℝ) ≤ (y : ℝ) + (y : ℝ) / (D : ℝ) := by
    have hdiv : (0 : ℝ) ≤ (y : ℝ) / (D : ℝ) := div_nonneg hy0.le hDR.le
    linarith
  obtain ⟨p, hp, hyp, hshort⟩ := B699ThetaSupply.prime_of_theta_relative_bounds
    hDR hy0 (hupper y hyR) (hlower _ hz) hcoeff
  have hypN : y < p := by exact_mod_cast hyp
  refine ⟨p, hp, hypN, ?_⟩
  have hcast : ((D * (p - y) : ℕ) : ℝ) ≤ (y : ℝ) := by
    simpa only [Nat.cast_mul, Nat.cast_sub hypN.le] using hshort
  exact_mod_cast hcast

theorem gap_4095_of_uniform_relative_theta {D Y : Nat} {u l : ℝ}
    (hD : 4095 ≤ D) (hY : 0 < Y) (hYmax : Y ≤ 122568684)
    (hcoeff : (D : ℝ) * u + ((D : ℝ) + 1) * l < 1)
    (hupper : ∀ x : ℝ, (Y : ℝ) ≤ x → Chebyshev.theta x ≤ (1 + u) * x)
    (hlower : ∀ x : ℝ, (Y : ℝ) ≤ x → (1 - l) * x ≤ Chebyshev.theta x) :
    B699TailGap.Gap 4095 10000000 := by
  have hgap : B699TailGap.Gap D Y :=
    gap_of_uniform_relative_theta (by omega) hY hcoeff hupper hlower
  intro y hy
  by_cases htail : Y ≤ y
  · obtain ⟨p, hp, hyp, hshort⟩ := hgap y htail
    exact ⟨p, hp, hyp, (Nat.mul_le_mul_right (p - y) hD).trans hshort⟩
  · exact B699TailFinish20261004.FullInitial.theta_initial hy
      (lt_of_lt_of_le (lt_of_not_ge htail) hYmax)

theorem original_tail_of_uniform_relative_theta {D Y : Nat} {u l : ℝ}
    (hD : 4095 ≤ D) (hY : 0 < Y) (hYmax : Y ≤ 122568684)
    (hcoeff : (D : ℝ) * u + ((D : ℝ) + 1) * l < 1)
    (hupper : ∀ x : ℝ, (Y : ℝ) ≤ x → Chebyshev.theta x ≤ (1 + u) * x)
    (hlower : ∀ x : ℝ, (Y : ℝ) ≤ x → (1 - l) * x ≤ Chebyshev.theta x) :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699FiniteFull20261002.original_tail_of_gap
    (gap_4095_of_uniform_relative_theta hD hY hYmax hcoeff hupper hlower)

end B699UniformTheta20261005
#print axioms B699UniformTheta20261005.gap_of_uniform_relative_theta
#print axioms B699UniformTheta20261005.gap_4095_of_uniform_relative_theta
#print axioms B699UniformTheta20261005.original_tail_of_uniform_relative_theta
