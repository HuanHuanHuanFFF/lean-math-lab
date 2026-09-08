/-
The maximum-valuation matching argument is adapted from Will Blair's
Erdos686MatchingCompression.lean, commit aff1d30b3b1c6bd705810fa4d588b03940fb31df.
Copyright (c) 2026 Will Blair. MIT license: ../reuse/LICENSE-Will-Blair.txt.
Here the argument is generalized to the gcd of arbitrary separated blocks,
using this repository's previously verified concentration lemma.
-/
import research.tasks.«B686-Four».formalization.UniformDistance.SmallPrime
import research.tasks.«B686-Four».round8.continuation.SizeBounds
import Mathlib.Algebra.GCDMonoid.Finset

namespace B686LcmScale

abbrev blockProduct (k n : ℕ) : ℕ := B686Target.product k n

def centeredDiffLcm (k d : ℕ) : ℕ :=
  (Finset.Icc 0 (2 * k - 2)).lcm (fun h => d + h - (k - 1))

def centeredDiffProduct (k d : ℕ) : ℕ :=
  ∏ h ∈ Finset.Icc 0 (2 * k - 2), (d + h - (k - 1))

lemma blockProduct_pos (k n : ℕ) : 0 < blockProduct k n := by
  apply Finset.prod_pos
  intro i hi
  have := (Finset.mem_Icc.mp hi).1
  omega

lemma centeredDiffLcm_ne_zero {k d : ℕ} (hk : 1 ≤ k) (hd : k ≤ d) :
    centeredDiffLcm k d ≠ 0 := by
  intro hzero
  unfold centeredDiffLcm at hzero
  rw [Finset.lcm_eq_zero_iff] at hzero
  obtain ⟨h, _, heq⟩ := hzero
  omega

lemma centeredDiffProduct_pos {k d : ℕ} (hk : 1 ≤ k) (hd : k ≤ d) :
    0 < centeredDiffProduct k d := by
  apply Finset.prod_pos
  intro h _
  omega

lemma shiftedDiffTerm_dvd_centeredDiffLcm {k d i j : ℕ} (hd : k ≤ d)
    (hi : i ∈ Finset.Icc 1 k) (hj : j ∈ Finset.Icc 1 k) :
    d + j - i ∣ centeredDiffLcm k d := by
  have hi' := Finset.mem_Icc.mp hi
  have hj' := Finset.mem_Icc.mp hj
  let h := k + j - i - 1
  have hh : h ∈ Finset.Icc 0 (2 * k - 2) := by
    simp only [Finset.mem_Icc]
    dsimp [h]
    omega
  have ht : d + h - (k - 1) ∣ centeredDiffLcm k d := Finset.dvd_lcm hh
  convert ht using 1
  dsimp [h]
  omega

/-- A single factorial pays for the full gcd, including all small primes. -/
theorem gcd_product_dvd_factorial_mul_centeredDiffLcm {k n d : ℕ}
    (hk : 1 ≤ k) (hd : k ≤ d) :
    Nat.gcd (blockProduct k (n + d)) (blockProduct k n) ∣
      (k - 1).factorial * centeredDiffLcm k d := by
  let g := Nat.gcd (blockProduct k (n + d)) (blockProduct k n)
  have hn0 : blockProduct k n ≠ 0 := ne_of_gt (blockProduct_pos k n)
  have hm0 : blockProduct k (n + d) ≠ 0 := ne_of_gt (blockProduct_pos k (n + d))
  have hg0 : g ≠ 0 := by
    intro hg
    obtain ⟨z, hz⟩ := Nat.gcd_dvd_right (blockProduct k (n + d)) (blockProduct k n)
    change g = 0 at hg
    change blockProduct k n = g * z at hz
    exact hn0 (by simpa [hg] using hz)
  have hL0 := centeredDiffLcm_ne_zero hk hd
  have hrhs0 := mul_ne_zero (Nat.factorial_ne_zero (k - 1)) hL0
  apply (Nat.factorization_le_iff_dvd hg0 hrhs0).mp
  intro p
  by_cases hp : p.Prime
  · obtain ⟨i, hi, hlow⟩ :=
      B686UniformDistance.small_prime_factorization_bound k n p hk hp
    obtain ⟨j, hj, hupp⟩ :=
      B686UniformDistance.small_prime_factorization_bound k (n + d) p hk hp
    change (blockProduct k n).factorization p ≤
      (k - 1).factorial.factorization p + (n + i).factorization p at hlow
    change (blockProduct k (n + d)).factorization p ≤
      (k - 1).factorial.factorization p + (n + d + j).factorization p at hupp
    have hgn := ((Nat.factorization_le_iff_dvd hg0 hn0).mpr
      (Nat.gcd_dvd_right (blockProduct k (n + d)) (blockProduct k n))) p
    have hgm := ((Nat.factorization_le_iff_dvd hg0 hm0).mpr
      (Nat.gcd_dvd_left (blockProduct k (n + d)) (blockProduct k n))) p
    let e := g.factorization p - (k - 1).factorial.factorization p
    have heni : e ≤ (n + i).factorization p := by dsimp [e]; omega
    have hemj : e ≤ (n + d + j).factorization p := by dsimp [e]; omega
    have hi' := Finset.mem_Icc.mp hi
    have hj' := Finset.mem_Icc.mp hj
    have hpi : p ^ e ∣ n + i :=
      (hp.pow_dvd_iff_le_factorization (by omega)).mpr heni
    have hpj : p ^ e ∣ n + d + j :=
      (hp.pow_dvd_iff_le_factorization (by omega)).mpr hemj
    have hpd : p ^ e ∣ d + j - i := by
      have h := Nat.dvd_sub hpj hpi
      convert h using 1 <;> omega
    have hpe := hpd.trans (shiftedDiffTerm_dvd_centeredDiffLcm hd hi hj)
    have heL := (hp.pow_dvd_iff_le_factorization hL0).mp hpe
    have hval : g.factorization p ≤
        (k - 1).factorial.factorization p + (centeredDiffLcm k d).factorization p := by
      dsimp [e] at heL
      omega
    simpa only [Nat.factorization_mul (Nat.factorial_ne_zero _) hL0,
      Finsupp.add_apply] using hval
  · simp [Nat.factorization_eq_zero_of_not_prime _ hp]

theorem product_dvd_factorial_mul_centeredDiffLcm_four {k n d : ℕ}
    (hk : 1 ≤ k) (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    blockProduct k n ∣ (k - 1).factorial * centeredDiffLcm k d := by
  simpa only [heq, Nat.gcd_mul_left_left] using
    (gcd_product_dvd_factorial_mul_centeredDiffLcm (n := n) hk hd)

theorem k_mul_gap_lt_three_mul_n_of_four_solution {k n d : ℕ}
    (hk : 6 ≤ k) (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    k * d < 3 * n := by
  have hs := (B686Size.size_bounds_nat k n (n + d) (by omega) (by omega) heq).1
  have hs' : k * d < 2 * (n + d) := by simpa using hs
  have h6 : 6 * d ≤ k * d := Nat.mul_le_mul_right d hk
  nlinarith

/-- info: 'B686LcmScale.gcd_product_dvd_factorial_mul_centeredDiffLcm' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms gcd_product_dvd_factorial_mul_centeredDiffLcm
/-- info: 'B686LcmScale.product_dvd_factorial_mul_centeredDiffLcm_four' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms product_dvd_factorial_mul_centeredDiffLcm_four
/-- info: 'B686LcmScale.k_mul_gap_lt_three_mul_n_of_four_solution' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms k_mul_gap_lt_three_mul_n_of_four_solution

end B686LcmScale
