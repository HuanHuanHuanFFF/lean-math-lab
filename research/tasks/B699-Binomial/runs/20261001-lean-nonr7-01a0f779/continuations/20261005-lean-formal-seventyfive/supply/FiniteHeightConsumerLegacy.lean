import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.FullInitialGapLegacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».terminal.FiniteConsumerLegacy

/-! The accepted finite Gap now supplies an unconditional original-problem
region.  No uniform theta input or additional primality certificate is used. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699FiniteHeight20261005

theorem original_of_finite_gap_difference {n i j : Nat} (hi : 4883 ≤ i)
    (hij : i < j) (hjn : j ≤ n / 2) (hdiff : n - i < 122568684) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  by_cases hfinite : n ≤ 20000000
  · exact B699FiniteFull20261002.finite_common hi hij hjn hfinite
  · by_cases hlarge : 4096 * i ≤ n
    · exact B699ActualUniform.common_of_ratio_4096 (by omega) hij hjn hlarge
    · obtain ⟨p, hp, hyp, hshort⟩ :=
        B699TailFinish20261004.FullInitial.theta_initial (y := n - i) (by omega) hdiff
      exact B699TailGap.common_of_top_prime hij hjn hp hyp (by omega)

theorem original_upto_theta_threshold {n i j : Nat} (hi : 4883 ≤ i)
    (hij : i < j) (hjn : j ≤ n / 2) (hn : n ≤ 122568684) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  original_of_finite_gap_difference hi hij hjn (by omega)

end B699FiniteHeight20261005
#print axioms B699FiniteHeight20261005.original_of_finite_gap_difference
#print axioms B699FiniteHeight20261005.original_upto_theta_threshold
