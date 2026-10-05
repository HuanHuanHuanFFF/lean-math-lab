module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.GapAdapter

/-! Existing chain / height / top-prime route, with the endpoint itself retained.
No unrestricted Gap supplier is assumed or proved. The chain and height inputs
remain explicit until a separately checked complete supplier instantiates them. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699FiniteFullSemantic

theorem chain_endpoint_prime {gap lo upper : Nat}
    (chain : B699Finite20261002.PrimeChain gap lo upper) : upper.Prime := by
  induction chain with
  | singleton hp => exact hp
  | step _ _ _ _ ih => exact ih

theorem endpoint_index_limit {i : Nat} (upper : i ≤ 4884) :
    4095 * i ≤ 20000093 := by omega

theorem complete_4883_4884_of_inputs
    (chain : B699Finite20261002.PrimeChain 4883 2 20000093)
    (height : ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ¬ (∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j) →
      n < 4096 * i) :
    ∀ n i j : Nat, 4883 ≤ i → i ≤ 4884 → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  intro n i j hi hiUpper hij hjn
  apply Classical.byContradiction
  intro hno
  have hnHeight := height n i j hi hij hjn hno
  by_cases hn : n < 20000093
  · obtain ⟨p, hp, hpn, hnear⟩ := chain.near_top (by omega) hn
    exact hno (B699TailGap.common_of_top_prime hij hjn hp (by omega) hpn)
  · have hin : i ≤ n := by omega
    have hsub := B699TailGapNat.sub_height hin hnHeight
    have htop : n - i < 20000093 := hsub.trans_le (endpoint_index_limit hiUpper)
    exact hno (B699TailGap.common_of_top_prime hij hjn
      (chain_endpoint_prime chain) htop (by omega))

end B699FiniteFullSemantic
#print B699FiniteFullSemantic.complete_4883_4884_of_inputs
#print axioms B699FiniteFullSemantic.chain_endpoint_prime
#print axioms B699FiniteFullSemantic.endpoint_index_limit
#print axioms B699FiniteFullSemantic.complete_4883_4884_of_inputs
