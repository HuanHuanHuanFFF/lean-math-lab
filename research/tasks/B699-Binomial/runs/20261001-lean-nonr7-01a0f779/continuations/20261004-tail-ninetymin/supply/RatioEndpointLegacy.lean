import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.EndpointLegacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.RatioCore
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699TailNinety20261004

theorem common_of_ratio_tail_endpoint {U K : Nat}
    (htail : RatioPrimeChain 20482069 U) (hU : 4095 * K ≤ U) {n i j : Nat}
    (hi : 4883 ≤ i) (hiK : i ≤ K) (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  by_cases hlarge : 4096 * i ≤ n
  · exact B699ActualUniform.common_of_ratio_4096 (by omega) hij hjn hlarge
  · by_cases hleft : n < 20000093
    · obtain ⟨p, hp, hpn, hnear⟩ :=
        B699FiniteFull20261002.complete_chain.near_top (n := n) (by omega) hleft
      exact B699TailGap.common_of_top_prime hij hjn hp (by omega) hpn
    · by_cases hseed : n < 20482069
      · obtain ⟨p, hp, hpn, hnear⟩ :=
          B699TailExtension20261004.tail_chain_5000.near_top (n := n) (by omega) hseed
        exact B699TailGap.common_of_top_prime hij hjn hp (by omega) hpn
      · by_cases hnU : n < U
        · obtain ⟨p, hp, hpn, hnear⟩ := htail.near_top (n := n) (by omega) hnU
          exact B699TailGap.common_of_top_prime hij hjn hp
            (top_of_ratio hpn hnear (by omega)) hpn
        · exact B699TailGap.common_of_top_prime hij hjn htail.last_prime
            (by omega) (by omega)

end B699TailNinety20261004
#print axioms B699TailNinety20261004.common_of_ratio_tail_endpoint
