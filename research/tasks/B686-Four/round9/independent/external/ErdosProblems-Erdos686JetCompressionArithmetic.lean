/- leanprover/lean4:v4.29.1  mathlib v4.29.1 -/
import ErdosProblems.Erdos686ExactRatioThirdSign
import ErdosProblems.Erdos686CanonicalOwnerMatrix

/-!
# Erdős 686: arithmetic endpoint of punctured-grid jet compression

This module contains no algebraic-geometry oracle.  It records the exact
arithmetic implication needed after a puncture certificate supplies one
nonzero integral section value `W`:

* the complete owner product `A` satisfies `B(k,n)=G*A`;
* `A^mu` divides `W`;
* `W` is bounded by the coefficient norm times `((k+1)d)^r`;
* `r+s=k*mu`.

At the odd-tail scale `3d<n+1`, these facts yield the corrected jet
inequality.  An exact coefficient-budget certificate then contradicts
`d≥10^1000`.
-/

namespace Erdos686
namespace Erdos686Variant

open scoped BigOperators

private theorem jet_finset_prod_dvd_of_pairwise_coprime_nat
    {ι : Type*}
    (s : Finset ι) (f : ι → ℕ) (z : ℕ)
    (hpair : (s : Set ι).Pairwise (Function.onFun Nat.Coprime f))
    (hdvd : ∀ x ∈ s, f x ∣ z) :
    (∏ x ∈ s, f x) ∣ z := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
      rw [Finset.prod_insert ha]
      apply Nat.Coprime.mul_dvd_of_dvd_of_dvd
      · apply Nat.Coprime.prod_right
        intro b hb
        exact hpair (by simp) (by simp [hb])
          (Ne.symm (ne_of_mem_of_not_mem hb ha))
      · exact hdvd a (by simp)
      · apply ih
        · intro x hx y hy hxy
          exact hpair (by simp [hx]) (by simp [hy]) hxy
        · intro x hx
          exact hdvd x (by simp [hx])

/-- If every factor of the lower block is strictly above `a`, then the
constant `k`-fold product is strictly below the block product. -/
lemma constant_pow_lt_blockProduct
    {k n a : ℕ}
    (hk : 1 ≤ k)
    (ha : 0 < a)
    (hall : ∀ j, j ∈ Finset.Icc 1 k → a < n + j) :
    a ^ k < blockProduct k n := by
  have hcard : (Finset.Icc 1 k).card = k := by
    rw [Nat.card_Icc]
    omega
  unfold blockProduct
  have hprod :
      (Finset.Icc 1 k).prod (fun _j => a) <
        (Finset.Icc 1 k).prod (fun j => n + j) := by
    apply Finset.prod_lt_prod
    · intro j hj
      exact ha
    · intro j hj
      exact le_of_lt (hall j hj)
    · exact ⟨1, Finset.mem_Icc.mpr ⟨le_rfl, hk⟩,
        hall 1 (Finset.mem_Icc.mpr ⟨le_rfl, hk⟩)⟩
  simpa [Finset.prod_const, hcard] using hprod

/-- Cross-multiplied corrected jet-compression inequality. -/
theorem jetCompression_cross_bound
    {k n d G A W mu r s K : ℕ}
    (hk : 1 ≤ k)
    (hmu : 1 ≤ mu)
    (hd : 0 < d)
    (hr : r + s = k * mu)
    (hscale : 3 * d < n + 1)
    (hdecomp : blockProduct k n = G * A)
    (hWpos : 0 < W)
    (hAdvd : A ^ mu ∣ W)
    (hWbound : W ≤ K * (((k + 1) * d) ^ r)) :
    3 ^ (k * mu) * d ^ s <
      G ^ mu * K * (k + 1) ^ r := by
  have hall : ∀ j, j ∈ Finset.Icc 1 k → 3 * d < n + j := by
    intro j hj
    have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
    omega
  have hblock : (3 * d) ^ k < blockProduct k n :=
    constant_pow_lt_blockProduct hk (mul_pos (by norm_num) hd) hall
  have hblockPow :
      ((3 * d) ^ k) ^ mu < (blockProduct k n) ^ mu :=
    Nat.pow_lt_pow_left hblock (by omega)
  have hApowLeW : A ^ mu ≤ W :=
    Nat.le_of_dvd hWpos hAdvd
  have hraw :
      ((3 * d) ^ k) ^ mu <
        G ^ mu * (K * (((k + 1) * d) ^ r)) := by
    calc
      ((3 * d) ^ k) ^ mu <
          (blockProduct k n) ^ mu := hblockPow
      _ = G ^ mu * A ^ mu := by rw [hdecomp, mul_pow]
      _ ≤ G ^ mu * W := Nat.mul_le_mul_left _ hApowLeW
      _ ≤ G ^ mu * (K * (((k + 1) * d) ^ r)) :=
        Nat.mul_le_mul_left _ hWbound
  have hnormalized :
      (3 ^ (k * mu) * d ^ s) * d ^ r <
        (G ^ mu * K * (k + 1) ^ r) * d ^ r := by
    calc
      (3 ^ (k * mu) * d ^ s) * d ^ r =
          ((3 * d) ^ k) ^ mu := by
            calc
              (3 ^ (k * mu) * d ^ s) * d ^ r =
                  3 ^ (k * mu) * (d ^ s * d ^ r) := by ring
              _ = 3 ^ (k * mu) * d ^ (s + r) := by rw [← pow_add]
              _ = 3 ^ (k * mu) * d ^ (k * mu) := by
                    rw [show s + r = k * mu by omega]
              _ = (3 * d) ^ (k * mu) := by rw [mul_pow]
              _ = ((3 * d) ^ k) ^ mu := by rw [pow_mul]
      _ < G ^ mu * (K * (((k + 1) * d) ^ r)) := hraw
      _ = (G ^ mu * K * (k + 1) ^ r) * d ^ r := by
            rw [mul_pow]
            ring
  exact Nat.lt_of_mul_lt_mul_right hnormalized

/-- Exact endpoint used by every odd-tail puncture certificate.  A section
whose corrected integral coefficient norm fits the stored budget rules out
the corresponding proper-support solution at `d≥10^1000`. -/
theorem no_solution_of_jet_value_certificate
    {k n d G A W mu r s K : ℕ}
    (hk : 1 ≤ k)
    (hmu : 1 ≤ mu)
    (hr : r + s = k * mu)
    (htail : 10 ^ 1000 ≤ d)
    (hscale : 3 * d < n + 1)
    (hdecomp : blockProduct k n = G * A)
    (hWpos : 0 < W)
    (hAdvd : A ^ mu ∣ W)
    (hWbound : W ≤ K * (((k + 1) * d) ^ r))
    (hbudget :
      G ^ mu * K * (k + 1) ^ r <
        3 ^ (k * mu) * (10 ^ 1000) ^ s) :
    False := by
  have hd : 0 < d := lt_of_lt_of_le (by norm_num : 0 < 10 ^ 1000) htail
  have hcross := jetCompression_cross_bound hk hmu hd hr hscale hdecomp
    hWpos hAdvd hWbound
  have htailPow : (10 ^ 1000) ^ s ≤ d ^ s :=
    Nat.pow_le_pow_left htail s
  have hlower :
      3 ^ (k * mu) * (10 ^ 1000) ^ s ≤
        3 ^ (k * mu) * d ^ s :=
    Nat.mul_le_mul_left _ htailPow
  omega

/-- Pairwise coprimality of the canonical cells lets their local jet
divisibilities multiply without any extra loss. -/
theorem canonicalOwner_allCells_pow_dvd_of_local
    {k n d t mu W : ℕ}
    (data : CanonicalOwnerData k n d t)
    (hlocal :
      ∀ j ∈ Finset.Icc 1 k, ∀ i ∈ Finset.Icc 1 k,
        canonicalOwnerCell data j i ^ mu ∣ W) :
    (∏ j ∈ Finset.Icc 1 k,
      ∏ i ∈ Finset.Icc 1 k, canonicalOwnerCell data j i) ^ mu ∣ W := by
  classical
  let grid := (Finset.Icc 1 k).product (Finset.Icc 1 k)
  have hflat :
      (∏ cell ∈ grid,
        canonicalOwnerCell data cell.1 cell.2 ^ mu) ∣ W := by
    apply jet_finset_prod_dvd_of_pairwise_coprime_nat
    · intro x hx y hy hxy
      exact (canonicalOwnerCells_pairwise_coprime data hxy).pow mu mu
    · intro cell hcell
      have hmem := Finset.mem_product.mp hcell
      exact hlocal cell.1 hmem.1 cell.2 hmem.2
  have hproduct :
      (∏ cell ∈ grid,
          canonicalOwnerCell data cell.1 cell.2 ^ mu) =
        (∏ j ∈ Finset.Icc 1 k,
          ∏ i ∈ Finset.Icc 1 k,
            canonicalOwnerCell data j i) ^ mu := by
    dsimp [grid]
    calc
      (∏ cell ∈ (Finset.Icc 1 k).product (Finset.Icc 1 k),
          canonicalOwnerCell data cell.1 cell.2 ^ mu) =
          ∏ j ∈ Finset.Icc 1 k,
            ∏ i ∈ Finset.Icc 1 k,
              canonicalOwnerCell data j i ^ mu :=
        Finset.prod_product' _ _
          (fun j i => canonicalOwnerCell data j i ^ mu)
      _ = ∏ j ∈ Finset.Icc 1 k,
          (∏ i ∈ Finset.Icc 1 k,
            canonicalOwnerCell data j i) ^ mu := by
              apply Finset.prod_congr rfl
              intro j hj
              rw [Finset.prod_pow]
      _ = (∏ j ∈ Finset.Icc 1 k,
          ∏ i ∈ Finset.Icc 1 k,
            canonicalOwnerCell data j i) ^ mu := by
              rw [Finset.prod_pow]
  rwa [hproduct] at hflat

/-- Puncture form of the previous theorem.  If the omitted cell is a unit,
only the other grid points need local jet certificates. -/
theorem canonicalOwner_allCells_pow_dvd_of_puncture
    {k n d t mu W j₀ i₀ : ℕ}
    (data : CanonicalOwnerData k n d t)
    (hmissing : canonicalOwnerCell data j₀ i₀ = 1)
    (hlocal :
      ∀ j ∈ Finset.Icc 1 k, ∀ i ∈ Finset.Icc 1 k,
        (j, i) ≠ (j₀, i₀) →
          canonicalOwnerCell data j i ^ mu ∣ W) :
    (∏ j ∈ Finset.Icc 1 k,
      ∏ i ∈ Finset.Icc 1 k, canonicalOwnerCell data j i) ^ mu ∣ W := by
  apply canonicalOwner_allCells_pow_dvd_of_local data
  intro j hj i hi
  by_cases hcell : (j, i) = (j₀, i₀)
  · have hjEq : j = j₀ := congrArg Prod.fst hcell
    have hiEq : i = i₀ := congrArg Prod.snd hcell
    simp [hjEq, hiEq, hmissing]
  · exact hlocal j hj i hi hcell

/-- Verified worst corrected integral coefficient norm across all 25
`k=5` punctures. -/
def k5PunctureCoefficientNorm : ℕ :=
  2187146176510896858470196489183774166178369234472818213720098661184236

set_option maxRecDepth 10000 in
/-- Exact corrected coefficient budget for the complete `k=5` puncture
census: `mu=17`, `r=84`, `s=1`, and `G|4!=24`. -/
theorem k5PunctureCoefficientBudget :
    24 ^ 17 * k5PunctureCoefficientNorm * 6 ^ 84 <
      3 ^ 85 * 10 ^ 1000 := by
  calc
    24 ^ 17 * k5PunctureCoefficientNorm * 6 ^ 84 < 10 ^ 200 := by
      norm_num [k5PunctureCoefficientNorm]
    _ ≤ 10 ^ 1000 :=
      Nat.pow_le_pow_right (by norm_num) (by norm_num)
    _ ≤ 3 ^ 85 * 10 ^ 1000 :=
      Nat.le_mul_of_pos_left _ (pow_pos (by norm_num) 85)

/-- The exact ratio bracket supplies the `3d<n+1` scale used by the
`k=5` puncture argument throughout the live tail. -/
theorem k5_three_mul_gap_lt_n_add_one_of_tail1000
    {n d : ℕ}
    (htail : 10 ^ 1000 ≤ d)
    (heq : blockProduct 5 (n + d) = 4 * blockProduct 5 n) :
    3 * d < n + 1 := by
  have hlin := target_exactRatio_lower_linear
    (k := 5) (n := n) (d := d)
    (by omega)
    (ratio_window_four_nat heq).1
  norm_num [exactRatioBracketDenominator, exactRatioBracketNumerator,
    exactRatioResidualDenominator] at hlin
  omega

/-- Arithmetic endpoint for any one of the 25 `k=5` proper-support
puncture certificates.  The remaining certificate layer only has to supply
the nonzero integral value `W`, its `A^17` divisibility, and its standard
coefficient-height evaluation bound. -/
theorem no_k5_tail_solution_of_puncture_jet_value
    {n d G A W : ℕ}
    (htail : 10 ^ 1000 ≤ d)
    (heq : blockProduct 5 (n + d) = 4 * blockProduct 5 n)
    (hdecomp : blockProduct 5 n = G * A)
    (hGdvd : G ∣ 24)
    (hWpos : 0 < W)
    (hAdvd : A ^ 17 ∣ W)
    (hWbound :
      W ≤ k5PunctureCoefficientNorm * ((6 * d) ^ 84)) :
    False := by
  have hGle : G ≤ 24 := Nat.le_of_dvd (by norm_num) hGdvd
  have hGpow : G ^ 17 ≤ 24 ^ 17 :=
    Nat.pow_le_pow_left hGle 17
  have hbudget :
      G ^ 17 * k5PunctureCoefficientNorm * 6 ^ 84 <
        3 ^ (5 * 17) * (10 ^ 1000) ^ 1 := by
    calc
      G ^ 17 * k5PunctureCoefficientNorm * 6 ^ 84 ≤
          24 ^ 17 * k5PunctureCoefficientNorm * 6 ^ 84 := by
            exact Nat.mul_le_mul_right _
              (Nat.mul_le_mul_right _ hGpow)
      _ < 3 ^ 85 * 10 ^ 1000 := k5PunctureCoefficientBudget
      _ = 3 ^ (5 * 17) * (10 ^ 1000) ^ 1 := by norm_num
  exact no_solution_of_jet_value_certificate
    (k := 5) (n := n) (d := d) (G := G) (A := A) (W := W)
    (mu := 17) (r := 84) (s := 1) (K := k5PunctureCoefficientNorm)
    (by norm_num) (by norm_num) (by norm_num) htail
    (k5_three_mul_gap_lt_n_add_one_of_tail1000 htail heq)
    hdecomp hWpos hAdvd hWbound hbudget

/-- Exact finite payload required from one `k=5` puncture certificate. -/
structure K5PunctureJetWitness
    {n d t : ℕ} (data : CanonicalOwnerData 5 n d t)
    (j₀ i₀ : ℕ) where
  value : ℕ
  value_pos : 0 < value
  local_dvd :
    ∀ j ∈ Finset.Icc 1 5, ∀ i ∈ Finset.Icc 1 5,
      (j, i) ≠ (j₀, i₀) →
        canonicalOwnerCell data j i ^ 17 ∣ value
  value_bound :
    value ≤ k5PunctureCoefficientNorm * ((6 * d) ^ 84)

/-- Once the finite puncture witnesses are kernel-checked, every `k=5`
tail solution with a missing canonical cell is impossible. -/
theorem no_k5_tail_solution_of_proper_canonical_support
    {n d t : ℕ}
    (data : CanonicalOwnerData 5 n d t)
    (htail : 10 ^ 1000 ≤ d)
    (heq : blockProduct 5 (n + d) = 4 * blockProduct 5 n)
    (hproper :
      ∃ j₀, j₀ ∈ Finset.Icc 1 5 ∧
        ∃ i₀, i₀ ∈ Finset.Icc 1 5 ∧
          canonicalOwnerCell data j₀ i₀ = 1)
    (hcert :
      ∀ j₀, j₀ ∈ Finset.Icc 1 5 →
        ∀ i₀, i₀ ∈ Finset.Icc 1 5 →
          canonicalOwnerCell data j₀ i₀ = 1 →
            Nonempty (K5PunctureJetWitness data j₀ i₀)) :
    False := by
  obtain ⟨j₀, hj₀, i₀, hi₀, hmissing⟩ := hproper
  let witness := Classical.choice (hcert j₀ hj₀ i₀ hi₀ hmissing)
  let A :=
    ∏ j ∈ Finset.Icc 1 5,
      ∏ i ∈ Finset.Icc 1 5, canonicalOwnerCell data j i
  have hAdvd : A ^ 17 ∣ witness.value := by
    dsimp [A]
    exact canonicalOwner_allCells_pow_dvd_of_puncture data hmissing
      witness.local_dvd
  have hGdvd : canonicalOwnerResidual data ∣ 24 := by
    simpa using canonicalOwnerResidual_dvd_factorial data
  have hdecomp :
      blockProduct 5 n = canonicalOwnerResidual data * A := by
    dsimp [A]
    exact (canonicalOwnerResidual_mul_allCells data).symm
  exact no_k5_tail_solution_of_puncture_jet_value
    htail heq hdecomp hGdvd witness.value_pos hAdvd witness.value_bound

#print axioms constant_pow_lt_blockProduct
#print axioms jetCompression_cross_bound
#print axioms no_solution_of_jet_value_certificate
#print axioms canonicalOwner_allCells_pow_dvd_of_local
#print axioms canonicalOwner_allCells_pow_dvd_of_puncture
#print axioms k5PunctureCoefficientBudget
#print axioms k5_three_mul_gap_lt_n_add_one_of_tail1000
#print axioms no_k5_tail_solution_of_puncture_jet_value
#print axioms no_k5_tail_solution_of_proper_canonical_support

end Erdos686Variant
end Erdos686
