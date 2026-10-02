import Math.B699.CofactorCriterion

/-!
Exact integer splice from Section 6 of the frozen prime-optimization report.
This file proves a conditional route, not an unconditional B699 tail.
`gap` and `height` remain explicit mathematical obligations.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699TailGap

/-- Same-prime original conclusion, inclusive at `p=i`. -/
def Common (n i j : ℕ) : Prop :=
  ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j

/-- Uniform short-interval prime supply, with no finite upper bound on `y`. -/
def Gap (D Y : ℕ) : Prop :=
  ∀ y : ℕ, Y ≤ y → ∃ p : ℕ, p.Prime ∧ y < p ∧ D * (p - y) ≤ y

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
  have hnmod : n % p = n - p := by
    rw [Nat.mod_eq_sub_mod hpn, Nat.mod_eq_of_lt (by omega)]
  refine ⟨p, hp, hip.le, ?_, ?_⟩
  · apply B699.prime_dvd_choose_of_mod_lt (e := 1) hp hin (by decide)
    simpa [hnmod, Nat.mod_eq_of_lt hip] using (show n - p < i by omega)
  · apply B699.prime_dvd_choose_of_mod_lt (e := 1) hp hjn' (by decide)
    simpa [hnmod, Nat.mod_eq_of_lt hjp] using (show n - p < j by omega)

/-- Gap plus the strict height bound gives an actual same-prime witness.
No assumption on `j` stronger than the original half-range is introduced. -/
theorem common_of_gap_height {n i j : ℕ}
    (hij : i < j) (hjn : j ≤ n / 2) (hn : 20000000 < n)
    (hheight : n < 4096 * i) (hgap : Gap 4095 10000000) : Common n i j := by
  have hin : i ≤ n := by omega
  have hy : 10000000 ≤ n - i := by omega
  obtain ⟨p, hp, hyp, hshort⟩ := hgap (n - i) hy
  have htop : p < n := by omega
  exact common_of_top_prime hij hjn hp hyp htop.le

/-- Conditional all-index tail; the three outstanding inputs are fully visible. -/
theorem original_tail_of_inputs
    (hheight : CounterexampleHeight 4883 4096)
    (hgap : Gap 4095 10000000)
    (hfinite : ∀ n i j : ℕ, 4883 ≤ i → i < j → j ≤ n / 2 →
      n ≤ 20000000 → Common n i j) :
    ∀ n i j : ℕ, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  intro n i j hi hij hjn
  by_cases hn : n ≤ 20000000
  · exact hfinite n i j hi hij hjn hn
  · by_contra hno
    have hbound := hheight n i j hi hij hjn hno
    exact hno (common_of_gap_height hij hjn (by omega) hbound hgap)

end B699TailGap

#check @B699TailGap.original_tail_of_inputs
#print axioms B699TailGap.common_of_top_prime
#print axioms B699TailGap.common_of_gap_height
#print axioms B699TailGap.original_tail_of_inputs
