import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply.Tail5000ConsumerLegacy

/-! Candidate endpoint improvement.  For n < U use the accepted prime chain;
for U <= n < 4096*i use its accepted final prime U.  The latter only needs
4095*K <= U, since i <= K gives n < U+i.  This supplies no infinite Gap.
All conclusions retain one actual prime, p >= i, and both complete chooses. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699TailNinety20261004

theorem common_of_tail_chain_endpoint {U K : Nat}
    (htail : B699Finite20261002.PrimeChain 4883 20000093 U)
    (hU : 4095 * K ≤ U) {n i j : Nat}
    (hi : 4883 ≤ i) (hiK : i ≤ K) (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  by_cases hlarge : 4096 * i ≤ n
  · exact B699ActualUniform.common_of_ratio_4096 (by omega) hij hjn hlarge
  · by_cases hleft : n < 20000093
    · obtain ⟨p, hp, hpn, hnear⟩ :=
        B699FiniteFull20261002.complete_chain.near_top (n := n) (by omega) hleft
      exact B699TailGap.common_of_top_prime hij hjn hp (by omega) hpn
    · by_cases hnU : n < U
      · obtain ⟨p, hp, hpn, hnear⟩ := htail.near_top (n := n) (by omega) hnU
        exact B699TailGap.common_of_top_prime hij hjn hp (by omega) hpn
      · have hpU : Nat.Prime U := B699FiniteFull20261002.chain_last_prime htail
        exact B699TailGap.common_of_top_prime hij hjn hpU (by omega) (by omega)

theorem common_upto_5001 {n i j : Nat} (hi : 4883 ≤ i) (hiK : i ≤ 5001)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  common_of_tail_chain_endpoint B699TailExtension20261004.tail_chain_5000
    (by decide) hi hiK hij hjn

theorem complete_5001 {n j : Nat} (hij : 5001 < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ 5001 ≤ p ∧ p ∣ n.choose 5001 ∧ p ∣ n.choose j :=
  common_upto_5001 (by decide) (by decide) hij hjn

end B699TailNinety20261004

#print axioms B699TailNinety20261004.common_of_tail_chain_endpoint
#print axioms B699TailNinety20261004.common_upto_5001
#print axioms B699TailNinety20261004.complete_5001
