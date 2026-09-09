import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.canonical.Provider
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.canonical.density.SystemBounds
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.canonical.density.Growth
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.centered.Consumer

/-! The original equation supplies an actual canonical system and the all-even
eventual density bound. The threshold is uniform in both interval endpoints. -/

namespace B686CanonicalDensity

open Finset
open B686CanonicalVendor.CanonicalOwnerDensity

noncomputable section

/-- The canonical provider is invoked on the original equation and separation. -/
def canonicalSystem (k n m : ℕ) (hk4 : 4 ≤ k) (hsep : n + k ≤ m)
    (heq : (∏ i ∈ Icc 1 k, (m + i)) = 4 * ∏ i ∈ Icc 1 k, (n + i)) :
    SystemInput (∏ i ∈ Icc 1 k, (n + i)) k n (m - n) := by
  have hnm : n ≤ m := by omega
  have hrestore : n + (m - n) = m := Nat.add_sub_of_le hnm
  apply Classical.choice
  apply systemInput_of_sliced_external hk4 (by omega)
  simpa only [Erdos686.Erdos686Variant.blockProduct, hrestore] using heq

/-- The all-even centered height applies to every valid canonical owner system. -/
theorem all_even_support_density (ε : ℝ) (hε : 0 < ε) :
    ∃ K : ℕ, 4 ≤ K ∧ ∀ k n m : ℕ, K ≤ k → Even k → n + k ≤ m →
      (∏ i ∈ Icc 1 k, (m + i)) = 4 * ∏ i ∈ Icc 1 k, (n + i) →
      ∀ S : SystemInput (∏ i ∈ Icc 1 k, (n + i)) k n (m - n),
        ((support S).card : ℝ) / (k : ℝ) ^ 2 ≤ 1 / 4 + ε := by
  obtain ⟨K, hK⟩ := eventual_density_of_power_growth (1 / 2) 20 16
    (by norm_num) (by norm_num) ε hε
  refine ⟨max K 4, le_max_right K 4, ?_⟩
  intro k n m hk heven hsep heq S
  have hk2 : 2 ≤ k := by omega
  obtain ⟨hfac, hprod⟩ := support_product_bounds S
  have hheight := B686CenteredRunge.n_add_k_lt_explicit_bound k n m hk2 heven hsep heq
  have hpow : (2 : ℕ) ^ (4 * k) = 16 ^ k := by rw [pow_mul]; norm_num
  rw [hpow] at hheight
  have he : ((k / 2 : ℕ) : ℝ) ≤ (1 / 2 : ℝ) * k := by
    have hh : k / 2 * 2 ≤ k := Nat.div_mul_le_self k 2
    have hh' : ((k / 2 : ℕ) : ℝ) * 2 ≤ k := by exact_mod_cast hh
    linarith
  have hd := hK k (support S).card (∏ i ∈ Icc 1 k, (n + i)) (n + k) (k / 2)
    ((le_max_left K 4).trans hk) hfac hprod hheight.le he
  norm_num at hd ⊢
  exact hd

/-- Final original-hypothesis consumer: the required system is constructed. -/
theorem all_even_canonical_support_density (ε : ℝ) (hε : 0 < ε) :
    ∃ K : ℕ, ∀ k n m : ℕ, K ≤ k → Even k → n + k ≤ m →
      (∏ i ∈ Icc 1 k, (m + i)) = 4 * ∏ i ∈ Icc 1 k, (n + i) →
      ∃ S : SystemInput (∏ i ∈ Icc 1 k, (n + i)) k n (m - n),
        ((support S).card : ℝ) / (k : ℝ) ^ 2 ≤ 1 / 4 + ε := by
  obtain ⟨K, hK4, hK⟩ := all_even_support_density ε hε
  refine ⟨K, ?_⟩
  intro k n m hk heven hsep heq
  exact ⟨canonicalSystem k n m (hK4.trans hk) hsep heq,
    hK k n m hk heven hsep heq _⟩

end

end B686CanonicalDensity

/-- info: 'B686CanonicalDensity.support_product_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B686CanonicalDensity.support_product_bounds

/-- info: 'B686CanonicalDensity.eventual_density_of_power_growth' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B686CanonicalDensity.eventual_density_of_power_growth

/-- info: 'B686CanonicalDensity.canonicalSystem' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B686CanonicalDensity.canonicalSystem

/-- info: 'B686CanonicalDensity.all_even_support_density' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B686CanonicalDensity.all_even_support_density

/-- info: 'B686CanonicalDensity.all_even_canonical_support_density' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B686CanonicalDensity.all_even_canonical_support_density
