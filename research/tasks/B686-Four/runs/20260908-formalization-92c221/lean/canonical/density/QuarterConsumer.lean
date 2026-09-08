import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.canonical.density.Consumer
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.Consumer

/-! The quarter Runge height sharpens the support density for every sufficiently
large length divisible by four. The canonical system is actually constructed. -/

namespace B686CanonicalDensity

open Finset
open B686CanonicalVendor.CanonicalOwnerDensity

noncomputable section

theorem four_dvd_support_density (ε : ℝ) (hε : 0 < ε) :
    ∃ K : ℕ, 4 ≤ K ∧ ∀ k n m : ℕ, K ≤ k → 4 ∣ k → n + k ≤ m →
      (∏ i ∈ Icc 1 k, (m + i)) = 4 * ∏ i ∈ Icc 1 k, (n + i) →
      ∀ S : SystemInput (∏ i ∈ Icc 1 k, (n + i)) k n (m - n),
        ((support S).card : ℝ) / (k : ℝ) ^ 2 ≤ 1 / 8 + ε := by
  obtain ⟨K, hK⟩ := eventual_density_of_power_growth (1 / 4) 2 2
    (by norm_num) (by norm_num) ε hε
  refine ⟨max K 4, le_max_right K 4, ?_⟩
  intro k n m hk hfour hsep heq S
  have hk4 : 4 ≤ k := (le_max_right K 4).trans hk
  obtain ⟨hfac, hprod⟩ := support_product_bounds S
  have hheight := (B686QuarterRunge.four_dvd_product_consumers k n m hk4 hfour
    (by omega) heq).2
  have hpow : (2 : ℕ) ^ (k / 4 + 1) ≤ 2 * 2 ^ k := by
    rw [pow_succ]
    have hh := pow_le_pow_right₀ (by omega : 1 ≤ (2 : ℕ)) (Nat.div_le_self k 4)
    nlinarith
  have hheight' : n + k ≤ 2 * 2 ^ k * k ^ (k / 4 + 1) :=
    hheight.le.trans (Nat.mul_le_mul_right _ hpow)
  have he : ((k / 4 : ℕ) : ℝ) ≤ (1 / 4 : ℝ) * k := by
    have hh : k / 4 * 4 ≤ k := Nat.div_mul_le_self k 4
    have hh' : ((k / 4 : ℕ) : ℝ) * 4 ≤ k := by exact_mod_cast hh
    linarith
  have hd := hK k (support S).card (∏ i ∈ Icc 1 k, (n + i)) (n + k) (k / 4)
    ((le_max_left K 4).trans hk) hfac hprod hheight' he
  norm_num at hd ⊢
  exact hd

/-- Final original-hypothesis consumer, with the actual canonical provider. -/
theorem four_dvd_canonical_support_density (ε : ℝ) (hε : 0 < ε) :
    ∃ K : ℕ, ∀ k n m : ℕ, K ≤ k → 4 ∣ k → n + k ≤ m →
      (∏ i ∈ Icc 1 k, (m + i)) = 4 * ∏ i ∈ Icc 1 k, (n + i) →
      ∃ S : SystemInput (∏ i ∈ Icc 1 k, (n + i)) k n (m - n),
        ((support S).card : ℝ) / (k : ℝ) ^ 2 ≤ 1 / 8 + ε := by
  obtain ⟨K, hK4, hK⟩ := four_dvd_support_density ε hε
  refine ⟨K, ?_⟩
  intro k n m hk hfour hsep heq
  exact ⟨canonicalSystem k n m (hK4.trans hk) hsep heq,
    hK k n m hk hfour hsep heq _⟩

end

end B686CanonicalDensity

/-- info: 'B686CanonicalDensity.four_dvd_support_density' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B686CanonicalDensity.four_dvd_support_density

/-- info: 'B686CanonicalDensity.four_dvd_canonical_support_density' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B686CanonicalDensity.four_dvd_canonical_support_density
