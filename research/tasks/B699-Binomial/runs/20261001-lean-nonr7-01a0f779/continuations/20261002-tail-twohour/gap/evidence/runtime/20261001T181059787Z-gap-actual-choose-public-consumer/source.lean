module
public import Mathlib.Data.Nat.Choose.Dvd
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.modern.CoreSplice
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.GapDefinitions

/-!
Exact integer splice from Section 6 of the frozen prime-optimization report.
This file proves a conditional route, not an unconditional B699 tail.
`gap` and `height` remain explicit mathematical obligations.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false

@[expose] public section

namespace B699TailGap

/-- Same-prime original conclusion, inclusive at `p=i`. -/
def Common (n i j : ℕ) : Prop :=
  ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j

/-- Height only in the counterexample branch. It is not silently assumed globally. -/
def CounterexampleHeight (I K : ℕ) : Prop :=
  ∀ n i j : ℕ, I ≤ i → i < j → j ≤ n / 2 → ¬ Common n i j → n < K * i

/-- Copied, source-aligned top-numerator witness, retaining the original conclusion. -/
theorem common_of_top_prime {n i j p : ℕ}
    (hij : i < j) (hjn : j ≤ n / 2)
    (hp : p.Prime) (hlo : n - i < p) (hpn : p ≤ n) : Common n i j := by
  have hin : i ≤ n := by omega
  have hjn' : j ≤ n := by omega
  have hip : i < p := by omega
  have hjp : j < p := by omega
  refine ⟨p, hp, hip.le, ?_, ?_⟩
  · exact hp.dvd_choose hip hlo hpn
  · exact hp.dvd_choose hjp (by omega) hpn

/-- Gap plus the strict height bound gives an actual same-prime witness.
No assumption on `j` stronger than the original half-range is introduced. -/
theorem common_of_gap_height {n i j : ℕ}
    (hij : i < j) (hjn : j ≤ n / 2) (hn : 20000000 < n)
    (hheight : n < 4096 * i) (hgap : Gap 4095 10000000) : Common n i j := by
  have hin : i ≤ n := by omega
  have hy := B699TailGapArithmetic.counterexample_gap_threshold hij hjn hn
  obtain ⟨p, hp, hyp, hshort⟩ := hgap (n - i) hy
  have htop := B699TailGapNat.top_from_gap_and_height hin hheight hyp hshort
  exact common_of_top_prime hij hjn hp hyp htop.le

/-- Conditional all-index tail; the three outstanding inputs are fully visible. -/
theorem original_tail_of_inputs
    (hheight : CounterexampleHeight 4883 4096)
    (hgap : Gap 4095 10000000)
    (hfinite : ∀ n i j : ℕ, 4883 ≤ i → i < j → j ≤ n / 2 →
      n ≤ 20000000 → Common n i j) :
    ∀ n i j : ℕ, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  exact B699TailGapArithmetic.original_of_inputs
    (fun n i j p hij hjn hp hlo hpn => common_of_top_prime hij hjn hp hlo hpn)
    hheight hgap hfinite

end B699TailGap

#check @B699TailGap.original_tail_of_inputs
#print axioms B699TailGap.common_of_top_prime
#print axioms B699TailGap.common_of_gap_height
#print axioms B699TailGap.original_tail_of_inputs
