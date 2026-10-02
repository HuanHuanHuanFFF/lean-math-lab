module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.GapAdapter

/-! A finite prime-supply interface independent of the original binomial target.
Concrete chain witnesses are supplied separately, never as an axiom. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

@[expose] public section

namespace B699TailGap

def FiniteTopSupply (gap upper : ℕ) : Prop :=
  ∀ n : ℕ, 2 ≤ n → n ≤ upper →
    ∃ p : ℕ, p.Prime ∧ p ≤ n ∧ n < p + gap

theorem common_of_finite_top_supply {n i j : ℕ}
    (hi : 4883 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hn : n ≤ 20000000) (hfinite : FiniteTopSupply 4883 20000000) :
    Common n i j := by
  obtain ⟨p, hp, hpn, hnear⟩ := hfinite n (by omega) hn
  have hin : i ≤ n := by omega
  have htop := B699TailGapArithmetic.finite_near_top_strict hin hi hnear
  exact common_of_top_prime hij hjn hp htop hpn

theorem original_tail_of_prime_supplies
    (hheight : CounterexampleHeight 4883 4096)
    (hgap : Gap 4095 10000000)
    (hfinite : FiniteTopSupply 4883 20000000) :
    ∀ n i j : ℕ, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  apply original_tail_of_inputs hheight hgap
  intro n i j hi hij hjn hn
  exact common_of_finite_top_supply hi hij hjn hn hfinite

end B699TailGap

#print B699TailGap.FiniteTopSupply
#check (B699TailGap.original_tail_of_prime_supplies :
  B699TailGap.CounterexampleHeight 4883 4096 →
  B699TailGap.Gap 4095 10000000 → B699TailGap.FiniteTopSupply 4883 20000000 →
  ∀ n i j : ℕ, 4883 ≤ i → i < j → j ≤ n / 2 →
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j)
#print axioms B699TailGap.common_of_finite_top_supply
#print axioms B699TailGap.original_tail_of_prime_supplies
