import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».terminal.FiniteConsumerLegacy

/-! Localizes the already accepted original-binomial route to a genuine finite
prime-gap supply. The uniform ratio and finite choose providers are actual
theorems imported above, not mathematical parameters of this theorem. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699GapFinite20261003

theorem complete_indices_of_bounded_gap {U : Nat}
    (hgap : ∀ y : Nat, 10000000 ≤ y → y < U →
      ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y)
    {n i j : Nat} (hi : 4883 ≤ i) (hiU : 4095 * i ≤ U)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  by_cases hlarge : 4096 * i ≤ n
  · exact B699ActualUniform.common_of_ratio_4096 (by omega) hij hjn hlarge
  · by_cases hfinite : n ≤ 20000000
    · exact B699FiniteFull20261002.finite_common hi hij hjn hfinite
    · have hheight : n < 4096 * i := by omega
      have hin : i ≤ n := by omega
      have hylo : 10000000 ≤ n - i :=
        B699TailGapArithmetic.counterexample_gap_threshold hij hjn (by omega)
      have hyhi : n - i < U := by omega
      obtain ⟨p, hp, hyp, hshort⟩ := hgap (n - i) hylo hyhi
      have htop := B699TailGapNat.top_from_gap_and_height hin hheight hyp hshort
      exact B699TailGap.common_of_top_prime hij hjn hp hyp htop.le

end B699GapFinite20261003

#print axioms B699GapFinite20261003.complete_indices_of_bounded_gap
