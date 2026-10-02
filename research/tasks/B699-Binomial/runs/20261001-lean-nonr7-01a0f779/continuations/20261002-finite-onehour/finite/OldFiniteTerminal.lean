import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.Complete
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ActualUniformConsumers
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.GapAdapter

/-! Candidate terminal using the historical finite-n source closure directly.
It becomes accepted only after the supplied source/import closure is materialized
and this changed consumer is compiled and audited in the current run. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699Finite20261002Old

theorem finite_common {n i j : Nat}
    (hi : 4883 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hn : n ≤ 20000000) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  obtain ⟨p, hp, hip, hdiv⟩ :=
    B699MiddleExtension.common_le_twenty_million (by omega) hij hjn hn
  exact ⟨p, hp, hip, Nat.dvd_trans hdiv (Nat.gcd_dvd_left _ _),
    Nat.dvd_trans hdiv (Nat.gcd_dvd_right _ _)⟩

theorem original_tail_of_gap (hgap : B699TailGap.Gap 4095 10000000) :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  apply B699TailGap.original_tail_of_inputs ?_ hgap
  · intro n i j hi hij hjn hno
    exact B699ActualUniform.counterexample_height_4883 hi hij hjn hno
  · intro n i j hi hij hjn hn
    exact finite_common hi hij hjn hn

end B699Finite20261002Old

#check (B699Finite20261002Old.original_tail_of_gap :
  B699TailGap.Gap 4095 10000000 →
  ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j)
#print axioms B699Finite20261002Old.finite_common
#print axioms B699Finite20261002Old.original_tail_of_gap
