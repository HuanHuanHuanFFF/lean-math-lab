import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».terminal.FiniteConsumerLegacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply.TailPrimes

/-! Candidate only. Extend the already accepted finite top-prime supply at its
right endpoint; no Gap(4095,10^7) hypothesis is introduced. The original route
keeps every legal natural n and j and the inclusive conclusion p >= i. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699TailExtension20261004

theorem common_of_tail_chain {U K : Nat}
    (htail : B699Finite20261002.PrimeChain 4883 20000093 U)
    (hU : 4096 * K ≤ U) {n i j : Nat}
    (hi : 4883 ≤ i) (hiK : i ≤ K) (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  by_cases hlarge : 4096 * i ≤ n
  · exact B699ActualUniform.common_of_ratio_4096 (by omega) hij hjn hlarge
  · by_cases hleft : n < 20000093
    · obtain ⟨p, hp, hpn, hnear⟩ :=
        B699FiniteFull20261002.complete_chain.near_top (n := n) (by omega) hleft
      exact B699TailGap.common_of_top_prime hij hjn hp (by omega) hpn
    · have hnU : n < U := by omega
      obtain ⟨p, hp, hpn, hnear⟩ := htail.near_top (n := n) (by omega) hnU
      exact B699TailGap.common_of_top_prime hij hjn hp (by omega) hpn

theorem tail_chain : B699Finite20261002.PrimeChain 4883 20000093 20029199 := by
  have hp0 : Nat.Prime 20000093 :=
    B699FiniteFull20261002.chain_last_prime B699FiniteFull20261002.complete_chain
  refine .step (q := 20004973) hp0 (by decide) (by decide) ?_
  refine .step (q := 20009819) prime1 (by decide) (by decide) ?_
  refine .step (q := 20014693) prime2 (by decide) (by decide) ?_
  refine .step (q := 20019547) prime3 (by decide) (by decide) ?_
  refine .step (q := 20024339) prime4 (by decide) (by decide) ?_
  refine .step (q := 20029199) prime5 (by decide) (by decide) ?_
  exact .singleton prime6

theorem common_upto_4889 {n i j : Nat} (hi : 4883 ≤ i) (hiK : i ≤ 4889)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  common_of_tail_chain tail_chain (by decide) hi hiK hij hjn

theorem complete_4889 {n j : Nat} (hij : 4889 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 4889 ≤ p ∧ p ∣ n.choose 4889 ∧ p ∣ n.choose j :=
  common_upto_4889 (by decide) (by decide) hij hjn

end B699TailExtension20261004

#print axioms B699TailExtension20261004.common_of_tail_chain
#print axioms B699TailExtension20261004.tail_chain
#print axioms B699TailExtension20261004.common_upto_4889
#print axioms B699TailExtension20261004.complete_4889
