/- leanprover/lean4:v4.29.1  mathlib v4.29.1 -/
import ErdosProblems.Erdos686QuotientConfinement

/-!
# P-adic lift consequences for Erdős 686

This module records unconditional congruence consequences of an exact shifted
block identity.  The first layer is valid for every block length and every
multiplier.  The second layer localizes an odd prime power at its unique factor
in a block shorter than the prime.
-/

namespace Erdos686
namespace Erdos686Variant

/-- Translating every factor by `d` leaves the block product unchanged modulo
`d`. -/
lemma blockProduct_shift_modEq (k n d : ℕ) :
    blockProduct k (n + d) ≡ blockProduct k n [MOD d] := by
  unfold blockProduct
  apply Nat.ModEq.prod
  intro i hi
  simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
    (Nat.ModEq.modulus_mul_add (m := d) (a := 1) (b := n + i))

/-- General gap congruence: an exact multiplier-`N` block identity forces the
gap to divide `(N-1)` times the lower block product. -/
theorem gap_dvd_multiplier_sub_one_blockProduct
    {N k n d : ℕ} (hN : 1 ≤ N)
    (heq : blockProduct k (n + d) = N * blockProduct k n) :
    d ∣ (N - 1) * blockProduct k n := by
  have hmod := blockProduct_shift_modEq k n d
  rw [heq] at hmod
  have hle : blockProduct k n ≤ N * blockProduct k n := by
    exact Nat.le_mul_of_pos_left (blockProduct k n) (by omega)
  have hdvd : d ∣ N * blockProduct k n - blockProduct k n :=
    (Nat.modEq_iff_dvd' hle).mp hmod.symm
  simpa [Nat.sub_mul] using hdvd

/-- At multiplier four, the gap divides three times the lower block product. -/
theorem gap_dvd_three_blockProduct
    {k n d : ℕ}
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    d ∣ 3 * blockProduct k n := by
  simpa using gap_dvd_multiplier_sub_one_blockProduct (N := 4) (by norm_num) heq

/-- The block polynomial with the factor indexed by `i` removed. -/
def localBlockCofactor (k i : ℕ) (x : ℤ) : ℤ :=
  ∏ j ∈ (Finset.Icc 1 k).erase i, (x + (j : ℤ))

/-- The signed derivative coefficient at the root `x = -i`. -/
def localBlockCoefficient (k i : ℕ) : ℤ :=
  localBlockCofactor k i (-(i : ℤ))

/-- Absolute value of the local derivative coefficient. -/
def localBlockCoefficientNat (k i : ℕ) : ℕ :=
  (i - 1).factorial * (k - i).factorial

private lemma prod_Icc_one_cast_eq_factorial (t : ℕ) :
    (∏ a ∈ Finset.Icc 1 t, (a : ℤ)) = ((t.factorial : ℕ) : ℤ) := by
  induction t with
  | zero => norm_num
  | succ t ih =>
      rw [Finset.prod_Icc_succ_top (by omega), ih, Nat.factorial_succ]
      push_cast
      ring

private lemma localBlockCoefficient_left_product (i : ℕ) :
    (∏ j ∈ Finset.Icc 1 (i - 1), ((j : ℤ) - (i : ℤ))) =
      (-1 : ℤ) ^ (i - 1) * ((i - 1).factorial : ℕ) := by
  by_cases hi0 : i = 0
  · subst i
    norm_num
  have hi1 : 1 ≤ i := by omega
  have hreflect :
      (∏ j ∈ Finset.Icc 1 (i - 1), ((j : ℤ) - (i : ℤ))) =
        ∏ a ∈ Finset.Icc 1 (i - 1), -(a : ℤ) := by
    refine Finset.prod_bij'
      (fun j _hj => i - j) (fun a _ha => i - a) ?_ ?_ ?_ ?_ ?_
    · intro j hj
      simp only [Finset.mem_Icc] at hj ⊢
      constructor <;> omega
    · intro a ha
      simp only [Finset.mem_Icc] at ha ⊢
      constructor <;> omega
    · intro j hj
      change i - (i - j) = j
      apply tsub_tsub_cancel_of_le
      have := (Finset.mem_Icc.mp hj).2
      omega
    · intro a ha
      change i - (i - a) = a
      apply tsub_tsub_cancel_of_le
      have := (Finset.mem_Icc.mp ha).2
      omega
    · intro j hj
      have hji : j ≤ i := by
        have := (Finset.mem_Icc.mp hj).2
        omega
      rw [Nat.cast_sub hji]
      ring
  rw [hreflect, Finset.prod_neg, Nat.card_Icc,
    prod_Icc_one_cast_eq_factorial]
  simp [hi1]

private lemma localBlockCoefficient_right_product {k i : ℕ} (hik : i ≤ k) :
    (∏ j ∈ Finset.Icc (i + 1) k, ((j : ℤ) - (i : ℤ))) =
      (((k - i).factorial : ℕ) : ℤ) := by
  have hreindex :
      (∏ j ∈ Finset.Icc (i + 1) k, ((j : ℤ) - (i : ℤ))) =
        ∏ a ∈ Finset.Icc 1 (k - i), (a : ℤ) := by
    refine Finset.prod_bij'
      (fun j _hj => j - i) (fun a _ha => i + a) ?_ ?_ ?_ ?_ ?_
    · intro j hj
      simp only [Finset.mem_Icc] at hj ⊢
      constructor <;> omega
    · intro a ha
      simp only [Finset.mem_Icc] at ha ⊢
      constructor <;> omega
    · intro j hj
      change i + (j - i) = j
      rw [Nat.add_comm]
      exact Nat.sub_add_cancel (by
        have := (Finset.mem_Icc.mp hj).1
        omega)
    · intro a ha
      change i + a - i = a
      omega
    · intro j hj
      have hij : i ≤ j := by
        have := (Finset.mem_Icc.mp hj).1
        omega
      rw [Nat.cast_sub hij]
  rw [hreindex, prod_Icc_one_cast_eq_factorial]

/-- Closed form for the signed local derivative coefficient. -/
lemma localBlockCoefficient_eq_sign_mul_nat
    {k i : ℕ} (hi : i ∈ Finset.Icc 1 k) :
    localBlockCoefficient k i =
      (-1 : ℤ) ^ (i - 1) * (localBlockCoefficientNat k i : ℤ) := by
  have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
  have hik : i ≤ k := (Finset.mem_Icc.mp hi).2
  have herase :
      (Finset.Icc 1 k).erase i =
        Finset.Icc 1 (i - 1) ∪ Finset.Icc (i + 1) k := by
    ext j
    simp only [Finset.mem_erase, Finset.mem_Icc, Finset.mem_union]
    omega
  have hdisjoint :
      Disjoint (Finset.Icc 1 (i - 1)) (Finset.Icc (i + 1) k) := by
    refine Finset.disjoint_left.mpr ?_
    intro j hjleft hjright
    simp only [Finset.mem_Icc] at hjleft hjright
    omega
  unfold localBlockCoefficient localBlockCofactor localBlockCoefficientNat
  rw [herase, Finset.prod_union hdisjoint]
  have hleft := localBlockCoefficient_left_product i
  have hright := localBlockCoefficient_right_product hik
  rw [show (∏ x ∈ Finset.Icc 1 (i - 1), (-(i : ℤ) + (x : ℤ))) =
      (-1 : ℤ) ^ (i - 1) * ((i - 1).factorial : ℕ) by
        simpa [sub_eq_add_neg, add_comm] using hleft,
    show (∏ x ∈ Finset.Icc (i + 1) k, (-(i : ℤ) + (x : ℤ))) =
      (((k - i).factorial : ℕ) : ℤ) by
        simpa [sub_eq_add_neg, add_comm] using hright]
  push_cast
  ring

lemma localBlockCoefficientNat_dvd_factorial_pred
    {k i : ℕ} (hi : i ∈ Finset.Icc 1 k) :
    localBlockCoefficientNat k i ∣ (k - 1).factorial := by
  have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
  have hik : i ≤ k := (Finset.mem_Icc.mp hi).2
  have hle : i - 1 ≤ k - 1 := by omega
  have hsub : (k - 1) - (i - 1) = k - i := by omega
  unfold localBlockCoefficientNat
  simpa [hsub] using
    (Nat.factorial_mul_factorial_dvd_factorial (n := k - 1) hle)

private lemma localBlockCoefficient_left_dist_product (i : ℕ) :
    (∏ j ∈ Finset.Icc 1 (i - 1), Nat.dist i j) = (i - 1).factorial := by
  have hreflect :
      (∏ j ∈ Finset.Icc 1 (i - 1), Nat.dist i j) =
        ∏ a ∈ Finset.Icc 1 (i - 1), a := by
    refine Finset.prod_bij'
      (fun j _hj => i - j) (fun a _ha => i - a) ?_ ?_ ?_ ?_ ?_
    · intro j hj
      simp only [Finset.mem_Icc] at hj ⊢
      constructor <;> omega
    · intro a ha
      simp only [Finset.mem_Icc] at ha ⊢
      constructor <;> omega
    · intro j hj
      change i - (i - j) = j
      apply tsub_tsub_cancel_of_le
      have := (Finset.mem_Icc.mp hj).2
      omega
    · intro a ha
      change i - (i - a) = a
      apply tsub_tsub_cancel_of_le
      have := (Finset.mem_Icc.mp ha).2
      omega
    · intro j hj
      rw [Nat.dist_eq_sub_of_le_right]
      have := (Finset.mem_Icc.mp hj).2
      omega
  rw [hreflect]
  simpa [← Finset.Ico_add_one_right_eq_Icc] using
    (Finset.prod_Ico_id_eq_factorial (i - 1))

private lemma localBlockCoefficient_right_dist_product
    {k i : ℕ} (hik : i ≤ k) :
    (∏ j ∈ Finset.Icc (i + 1) k, Nat.dist i j) = (k - i).factorial := by
  have hreindex :
      (∏ j ∈ Finset.Icc (i + 1) k, Nat.dist i j) =
        ∏ a ∈ Finset.Icc 1 (k - i), a := by
    refine Finset.prod_bij'
      (fun j _hj => j - i) (fun a _ha => i + a) ?_ ?_ ?_ ?_ ?_
    · intro j hj
      simp only [Finset.mem_Icc] at hj ⊢
      constructor <;> omega
    · intro a ha
      simp only [Finset.mem_Icc] at ha ⊢
      constructor <;> omega
    · intro j hj
      change i + (j - i) = j
      rw [Nat.add_comm]
      exact Nat.sub_add_cancel (by
        have := (Finset.mem_Icc.mp hj).1
        omega)
    · intro a ha
      change i + a - i = a
      omega
    · intro j hj
      rw [Nat.dist_eq_sub_of_le]
      have := (Finset.mem_Icc.mp hj).1
      omega
  rw [hreindex]
  simpa [← Finset.Ico_add_one_right_eq_Icc] using
    (Finset.prod_Ico_id_eq_factorial (k - i))

lemma prod_dist_erase_eq_localBlockCoefficientNat
    {k i : ℕ} (hi : i ∈ Finset.Icc 1 k) :
    (∏ j ∈ (Finset.Icc 1 k).erase i, Nat.dist i j) =
      localBlockCoefficientNat k i := by
  have hik : i ≤ k := (Finset.mem_Icc.mp hi).2
  have herase :
      (Finset.Icc 1 k).erase i =
        Finset.Icc 1 (i - 1) ∪ Finset.Icc (i + 1) k := by
    ext j
    simp only [Finset.mem_erase, Finset.mem_Icc, Finset.mem_union]
    omega
  have hdisjoint :
      Disjoint (Finset.Icc 1 (i - 1)) (Finset.Icc (i + 1) k) := by
    refine Finset.disjoint_left.mpr ?_
    intro j hjleft hjright
    simp only [Finset.mem_Icc] at hjleft hjright
    omega
  unfold localBlockCoefficientNat
  rw [herase, Finset.prod_union hdisjoint,
    localBlockCoefficient_left_dist_product,
    localBlockCoefficient_right_dist_product hik]

/-- Valuation concentration in a consecutive block.  All `p`-adic valuation
outside a maximum-valuation factor fits inside `(k-1)!`. -/
theorem exists_blockProduct_factorization_concentration
    {p k n : ℕ} (hp : p.Prime) (hk : 1 ≤ k) :
    ∃ i, i ∈ Finset.Icc 1 k ∧
      (blockProduct k n).factorization p ≤
        (n + i).factorization p + (k - 1).factorial.factorization p := by
  let s : Finset ℕ := Finset.Icc 1 k
  have hs : s.Nonempty := by
    refine ⟨1, ?_⟩
    exact Finset.mem_Icc.mpr ⟨le_rfl, hk⟩
  obtain ⟨i, hi, hmax⟩ :=
    Finset.exists_max_image s (fun j => (n + j).factorization p) hs
  have hiIcc : i ∈ Finset.Icc 1 k := by simpa [s] using hi
  have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hiIcc).1
  have hpowDist : ∀ j ∈ s.erase i,
      p ^ (n + j).factorization p ∣ Nat.dist i j := by
    intro j hjErase
    have hj : j ∈ s := (Finset.mem_erase.mp hjErase).2
    have hjIcc : j ∈ Finset.Icc 1 k := by simpa [s] using hj
    have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hjIcc).1
    have hji : j ≠ i := (Finset.mem_erase.mp hjErase).1
    have hpowj : p ^ (n + j).factorization p ∣ n + j :=
      (hp.pow_dvd_iff_le_factorization (by omega : n + j ≠ 0)).mpr le_rfl
    have hpowi : p ^ (n + j).factorization p ∣ n + i :=
      (hp.pow_dvd_iff_le_factorization (by omega : n + i ≠ 0)).mpr
        (hmax j hj)
    rcases le_total i j with hij | hji'
    · rw [Nat.dist_eq_sub_of_le hij]
      have hdiff := Nat.dvd_sub hpowj hpowi
      have heqDiff : (n + j) - (n + i) = j - i := by omega
      rwa [heqDiff] at hdiff
    · rw [Nat.dist_eq_sub_of_le_right hji']
      have hdiff := Nat.dvd_sub hpowi hpowj
      have heqDiff : (n + i) - (n + j) = i - j := by omega
      rwa [heqDiff] at hdiff
  have hprodDvd :
      (∏ j ∈ s.erase i, p ^ (n + j).factorization p) ∣
        ∏ j ∈ s.erase i, Nat.dist i j := by
    exact Finset.prod_dvd_prod_of_dvd _ _ hpowDist
  have hpowCoeff :
      p ^ (∑ j ∈ s.erase i, (n + j).factorization p) ∣
        localBlockCoefficientNat k i := by
    calc
      p ^ (∑ j ∈ s.erase i, (n + j).factorization p) =
          ∏ j ∈ s.erase i, p ^ (n + j).factorization p := by
            rw [Finset.prod_pow_eq_pow_sum]
      _ ∣ ∏ j ∈ s.erase i, Nat.dist i j := hprodDvd
      _ = localBlockCoefficientNat k i :=
        prod_dist_erase_eq_localBlockCoefficientNat hi
  have hcoeff0 : localBlockCoefficientNat k i ≠ 0 := by
    unfold localBlockCoefficientNat
    exact mul_ne_zero (Nat.factorial_ne_zero _) (Nat.factorial_ne_zero _)
  have hsumCoeff :
      (∑ j ∈ s.erase i, (n + j).factorization p) ≤
        (localBlockCoefficientNat k i).factorization p :=
    (hp.pow_dvd_iff_le_factorization hcoeff0).mp hpowCoeff
  have hcoeffDvd : localBlockCoefficientNat k i ∣ (k - 1).factorial :=
    localBlockCoefficientNat_dvd_factorial_pred hi
  have hcoeffVal :
      (localBlockCoefficientNat k i).factorization p ≤
        (k - 1).factorial.factorization p :=
    ((Nat.factorization_le_iff_dvd hcoeff0 (Nat.factorial_ne_zero _)).mpr
      hcoeffDvd) p
  have hterms0 : ∀ j ∈ s, n + j ≠ 0 := by
    intro j hj
    have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
    omega
  have hprodVal :
      (blockProduct k n).factorization p =
        ∑ j ∈ s, (n + j).factorization p := by
    unfold blockProduct
    exact Nat.factorization_prod_apply (p := p) hterms0
  have hsumSplit :
      (∑ j ∈ s, (n + j).factorization p) =
        (n + i).factorization p +
          ∑ j ∈ s.erase i, (n + j).factorization p :=
    (Finset.add_sum_erase s (fun j => (n + j).factorization p) hi).symm
  refine ⟨i, hi, ?_⟩
  rw [hprodVal, hsumSplit]
  omega

/-- If the gap itself is a prime power, one lower factor carries all but the
valuation of `3` and the universal consecutive-block loss `(k-1)!`.  This is
the small-prime replacement for uniqueness of the prime-supported factor. -/
theorem gap_eq_primePower_exists_concentrated_factor
    {p e k n d : ℕ}
    (hp : p.Prime)
    (hk : 1 ≤ k)
    (hgap : d = p ^ e)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    ∃ i, i ∈ Finset.Icc 1 k ∧
      p ^ (e - 1 - (k - 1).factorial.factorization p) ∣ n + i := by
  have hblock0 : blockProduct k n ≠ 0 := by
    unfold blockProduct
    apply Finset.prod_ne_zero_iff.mpr
    intro i hi
    have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
    omega
  have hthreeBlock0 : 3 * blockProduct k n ≠ 0 :=
    mul_ne_zero (by norm_num) hblock0
  have hpow : p ^ e ∣ 3 * blockProduct k n := by
    rw [← hgap]
    exact gap_dvd_three_blockProduct heq
  have heVal : e ≤ (3 * blockProduct k n).factorization p :=
    (hp.pow_dvd_iff_le_factorization hthreeBlock0).mp hpow
  have hthreeVal : (3 : ℕ).factorization p ≤ 1 := by
    by_cases hp3 : p = 3
    · subst p
      norm_num
    · have hpNotDvdThree : ¬ p ∣ 3 := by
        intro hdiv
        rcases (Nat.dvd_prime (by norm_num : Nat.Prime 3)).mp hdiv with hp1 | hp3'
        · exact hp.ne_one hp1
        · exact hp3 hp3'
      rw [Nat.factorization_eq_zero_of_not_dvd hpNotDvdThree]
      omega
  obtain ⟨i, hi, hconcentrated⟩ :=
    exists_blockProduct_factorization_concentration hp hk (n := n)
  have hfactorVal :
      e - 1 - (k - 1).factorial.factorization p ≤
        (n + i).factorization p := by
    rw [Nat.factorization_mul (by norm_num : 3 ≠ 0) hblock0,
      Finsupp.add_apply] at heVal
    omega
  have hfactor0 : n + i ≠ 0 := by
    have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
    omega
  refine ⟨i, hi, ?_⟩
  exact (hp.pow_dvd_iff_le_factorization hfactor0).mpr hfactorVal

lemma intBlockProduct_eq_factor_mul_localBlockCofactor
    {k i : ℕ} (x : ℤ) (hi : i ∈ Finset.Icc 1 k) :
    intBlockProduct k x =
      (x + (i : ℤ)) * localBlockCofactor k i x := by
  unfold intBlockProduct localBlockCofactor
  exact (Finset.mul_prod_erase (Finset.Icc 1 k) (fun j => x + (j : ℤ)) hi).symm

lemma localBlockCofactor_modEq
    {k i : ℕ} {x y M : ℤ} (hxy : x ≡ y [ZMOD M]) :
    localBlockCofactor k i x ≡ localBlockCofactor k i y [ZMOD M] := by
  unfold localBlockCofactor
  apply Int.ModEq.prod
  intro j hj
  exact hxy.add (Int.ModEq.refl (j : ℤ))

private lemma int_modEq_neg_index_of_dvd_add
    {h n i : ℕ} (hdiv : h ∣ n + i) :
    (n : ℤ) ≡ -(i : ℤ) [ZMOD (h : ℤ)] := by
  rw [Int.modEq_iff_dvd]
  have hcast : (h : ℤ) ∣ ((n + i : ℕ) : ℤ) := by
    exact_mod_cast hdiv
  have hneg := dvd_neg.mpr hcast
  convert hneg using 1
  push_cast
  ring

/-- Raw local quadratic lift.  If `h` divides both the gap and one lower
factor, then modulo `h²` the exact block equation retains only its linear
term at that factor.  No primality or uniqueness hypothesis is needed at this
stage. -/
theorem localBlockCoefficient_mul_three_factor_sub_gap_dvd_sq
    {k n d i h : ℕ}
    (hi : i ∈ Finset.Icc 1 k)
    (hd : h ∣ d)
    (hfactor : h ∣ n + i)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    (h : ℤ) ^ 2 ∣
      localBlockCoefficient k i * (3 * ((n + i : ℕ) : ℤ) - (d : ℤ)) := by
  let C : ℤ := localBlockCoefficient k i
  let L : ℤ := ((n + i : ℕ) : ℤ)
  let U : ℤ := ((n + d + i : ℕ) : ℤ)
  let QL : ℤ := localBlockCofactor k i (n : ℤ)
  let QU : ℤ := localBlockCofactor k i ((n + d : ℕ) : ℤ)
  have hnmod : (n : ℤ) ≡ -(i : ℤ) [ZMOD (h : ℤ)] :=
    int_modEq_neg_index_of_dvd_add hfactor
  have hndfactor : h ∣ n + d + i := by
    have : h ∣ (n + i) + d := dvd_add hfactor hd
    simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using this
  have hnumod : ((n + d : ℕ) : ℤ) ≡ -(i : ℤ) [ZMOD (h : ℤ)] := by
    have := int_modEq_neg_index_of_dvd_add (n := n + d) (i := i) hndfactor
    simpa [Nat.add_assoc] using this
  have hQLmod : QL ≡ C [ZMOD (h : ℤ)] := by
    exact localBlockCofactor_modEq hnmod
  have hQUmod : QU ≡ C [ZMOD (h : ℤ)] := by
    exact localBlockCofactor_modEq hnumod
  have hL : (h : ℤ) ∣ L := by
    dsimp [L]
    exact_mod_cast hfactor
  have hU : (h : ℤ) ∣ U := by
    dsimp [U]
    exact_mod_cast hndfactor
  have hQLerr : (h : ℤ) ∣ QL - C := by
    have := hQLmod.dvd
    simpa [sub_eq_add_neg, add_comm] using (dvd_neg.mpr this)
  have hQUerr : (h : ℤ) ∣ QU - C := by
    have := hQUmod.dvd
    simpa [sub_eq_add_neg, add_comm] using (dvd_neg.mpr this)
  have hLowerSq : (h : ℤ) ^ 2 ∣ L * (QL - C) := by
    simpa [pow_two] using mul_dvd_mul hL hQLerr
  have hUpperSq : (h : ℤ) ^ 2 ∣ U * (QU - C) := by
    simpa [pow_two] using mul_dvd_mul hU hQUerr
  have heqInt :
      intBlockProduct k ((n + d : ℕ) : ℤ) =
        4 * intBlockProduct k (n : ℤ) := by
    rw [intBlockProduct_natCast, intBlockProduct_natCast]
    exact_mod_cast heq
  have heqLocal : U * QU = 4 * L * QL := by
    rw [intBlockProduct_eq_factor_mul_localBlockCofactor
        ((n + d : ℕ) : ℤ) hi,
      intBlockProduct_eq_factor_mul_localBlockCofactor (n : ℤ) hi] at heqInt
    simpa [U, L, QU, QL, Nat.cast_add, mul_assoc] using heqInt
  have hidentity :
      C * (3 * L - (d : ℤ)) = U * (QU - C) - 4 * (L * (QL - C)) := by
    have hUL : U = L + (d : ℤ) := by
      simp [U, L, Nat.cast_add]
      ring
    rw [hUL] at heqLocal ⊢
    calc
      C * (3 * L - (d : ℤ)) =
          -(L + (d : ℤ)) * C + 4 * L * C := by ring
      _ = ((L + (d : ℤ)) * QU - 4 * L * QL) -
            (L + (d : ℤ)) * C + 4 * L * C := by rw [heqLocal]; ring
      _ = (L + (d : ℤ)) * (QU - C) - 4 * (L * (QL - C)) := by ring
  rw [show localBlockCoefficient k i = C by rfl]
  change (h : ℤ) ^ 2 ∣ C * (3 * L - (d : ℤ))
  rw [hidentity]
  exact dvd_sub hUpperSq (dvd_mul_of_dvd_right hLowerSq 4)

/-- Positive-coefficient form of the raw local quadratic lift. -/
theorem localBlockCoefficientNat_mul_three_factor_sub_gap_dvd_sq
    {k n d i h : ℕ}
    (hi : i ∈ Finset.Icc 1 k)
    (hd : h ∣ d)
    (hfactor : h ∣ n + i)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    (h : ℤ) ^ 2 ∣
      (localBlockCoefficientNat k i : ℤ) *
        (3 * ((n + i : ℕ) : ℤ) - (d : ℤ)) := by
  have hsigned :=
    localBlockCoefficient_mul_three_factor_sub_gap_dvd_sq hi hd hfactor heq
  rw [localBlockCoefficient_eq_sign_mul_nat hi] at hsigned
  rcases neg_one_pow_eq_or ℤ (i - 1) with hsign | hsign
  · simpa [hsign, mul_assoc, mul_comm, mul_left_comm] using hsigned
  · have hneg := dvd_neg.mpr hsigned
    simpa [hsign, mul_assoc, mul_comm, mul_left_comm] using hneg

lemma prime_not_dvd_localBlockCoefficientNat
    {p k i : ℕ} (hp : p.Prime) (hkp : k ≤ p)
    (hi : i ∈ Finset.Icc 1 k) :
    ¬ p ∣ localBlockCoefficientNat k i := by
  have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
  have hik : i ≤ k := (Finset.mem_Icc.mp hi).2
  intro hdiv
  rcases hp.dvd_mul.mp hdiv with hleft | hright
  · have hple : p ≤ i - 1 := hp.dvd_factorial.mp hleft
    omega
  · have hple : p ≤ k - i := hp.dvd_factorial.mp hright
    omega

/-- Prime-power cancellation of the local derivative.  The boundary `p = k`
is allowed: every nonzero root difference has absolute value at most `k-1`. -/
theorem primePower_sq_dvd_three_factor_sub_gap
    {p e k n d i : ℕ}
    (hp : p.Prime)
    (hkp : k ≤ p)
    (hi : i ∈ Finset.Icc 1 k)
    (hd : p ^ e ∣ d)
    (hfactor : p ^ e ∣ n + i)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    (((p ^ e : ℕ) : ℤ) ^ 2) ∣
      3 * ((n + i : ℕ) : ℤ) - (d : ℤ) := by
  have hraw :=
    localBlockCoefficientNat_mul_three_factor_sub_gap_dvd_sq hi hd hfactor heq
  have hpInt : Prime (p : ℤ) := Nat.prime_iff_prime_int.mp hp
  have hpCoeff : ¬ (p : ℤ) ∣ (localBlockCoefficientNat k i : ℤ) := by
    intro hdiv
    apply prime_not_dvd_localBlockCoefficientNat hp hkp hi
    exact Int.natCast_dvd_natCast.mp hdiv
  have hraw' :
      (p : ℤ) ^ (e * 2) ∣
        (localBlockCoefficientNat k i : ℤ) *
          (3 * ((n + i : ℕ) : ℤ) - (d : ℤ)) := by
    simpa [Nat.cast_pow, ← pow_mul] using hraw
  have hcancel := hpInt.pow_dvd_of_dvd_mul_left (e * 2) hpCoeff hraw'
  simpa [Nat.cast_pow, ← pow_mul] using hcancel

/-- Uniqueness of a prime-supported factor remains valid at the boundary
`p = k`; the interval indices start at one, so two distinct indices differ by
strictly less than `k`. -/
lemma unique_dvd_add_of_mem_Icc_of_le
    {p k a r s : ℕ}
    (hkp : k ≤ p)
    (hr : r ∈ Finset.Icc 1 k)
    (hs : s ∈ Finset.Icc 1 k)
    (hpr : p ∣ a + r)
    (hps : p ∣ a + s) :
    r = s := by
  by_contra hne
  rcases lt_or_gt_of_ne hne with hrs | hsr
  · have hpDiff : p ∣ (a + s) - (a + r) := Nat.dvd_sub hps hpr
    have hdiff : (a + s) - (a + r) = s - r := by omega
    rw [hdiff] at hpDiff
    have hpos : 0 < s - r := Nat.sub_pos_of_lt hrs
    have hple : p ≤ s - r := Nat.le_of_dvd hpos hpDiff
    have hr1 : 1 ≤ r := (Finset.mem_Icc.mp hr).1
    have hsk : s ≤ k := (Finset.mem_Icc.mp hs).2
    omega
  · have hpDiff : p ∣ (a + r) - (a + s) := Nat.dvd_sub hpr hps
    have hdiff : (a + r) - (a + s) = r - s := by omega
    rw [hdiff] at hpDiff
    have hpos : 0 < r - s := Nat.sub_pos_of_lt hsr
    have hple : p ≤ r - s := Nat.le_of_dvd hpos hpDiff
    have hs1 : 1 ≤ s := (Finset.mem_Icc.mp hs).1
    have hrk : r ≤ k := (Finset.mem_Icc.mp hr).2
    omega

def localBlockCofactorNat (k i n : ℕ) : ℕ :=
  ∏ j ∈ (Finset.Icc 1 k).erase i, (n + j)

lemma blockProduct_eq_factor_mul_localBlockCofactorNat
    {k i n : ℕ} (hi : i ∈ Finset.Icc 1 k) :
    blockProduct k n = (n + i) * localBlockCofactorNat k i n := by
  unfold blockProduct localBlockCofactorNat
  exact (Finset.mul_prod_erase (Finset.Icc 1 k) (fun j => n + j) hi).symm

/-- A prime power dividing a block shorter than (or equal in length to) its
prime base lies wholly in one unique factor. -/
theorem primePower_dvd_blockProduct_existsUnique
    {p e k n : ℕ}
    (hp : p.Prime)
    (he : 0 < e)
    (hkp : k ≤ p)
    (hpow : p ^ e ∣ blockProduct k n) :
    ∃! i, i ∈ Finset.Icc 1 k ∧ p ^ e ∣ n + i := by
  have hp_dvd_pow : p ∣ p ^ e := by
    simpa using (pow_dvd_pow p (by omega : 1 ≤ e))
  have hpProd : p ∣ blockProduct k n := dvd_trans hp_dvd_pow hpow
  obtain ⟨i, hi, hpi⟩ := (prime_dvd_blockProduct_iff hp).mp hpProd
  have hpCofactor : ¬ p ∣ localBlockCofactorNat k i n := by
    intro hdiv
    obtain ⟨j, hjErase, hpj⟩ :=
      (hp.prime.dvd_finset_prod_iff
        (S := (Finset.Icc 1 k).erase i) (g := fun j => n + j)).mp hdiv
    have hjne : j ≠ i := (Finset.mem_erase.mp hjErase).1
    have hj : j ∈ Finset.Icc 1 k := (Finset.mem_erase.mp hjErase).2
    exact hjne (unique_dvd_add_of_mem_Icc_of_le hkp hj hi hpj hpi)
  have hpowMul : p ^ e ∣ (n + i) * localBlockCofactorNat k i n := by
    rw [← blockProduct_eq_factor_mul_localBlockCofactorNat hi]
    exact hpow
  have hpowFactor : p ^ e ∣ n + i :=
    hp.prime.pow_dvd_of_dvd_mul_right e hpCofactor hpowMul
  refine ⟨i, ⟨hi, hpowFactor⟩, ?_⟩
  intro j hj
  have hpj : p ∣ n + j := dvd_trans hp_dvd_pow hj.2
  exact unique_dvd_add_of_mem_Icc_of_le hkp hj.1 hi hpj hpi

/-- Every prime power of the gap with prime base different from three also
divides the lower block product. -/
theorem primePower_dvd_lower_block_of_dvd_gap
    {p e k n d : ℕ}
    (hp : p.Prime)
    (hp3 : p ≠ 3)
    (hd : p ^ e ∣ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    p ^ e ∣ blockProduct k n := by
  have hpowProd : p ^ e ∣ 3 * blockProduct k n :=
    dvd_trans hd (gap_dvd_three_blockProduct heq)
  have hpNotThree : ¬ p ∣ 3 := by
    intro hdiv
    rcases (Nat.dvd_prime (by norm_num : Nat.Prime 3)).mp hdiv with hp1 | hp3'
    · exact hp.ne_one hp1
    · exact hp3 hp3'
  exact hp.prime.pow_dvd_of_dvd_mul_left e hpNotThree hpowProd

/-- Global-to-local prime-power lift.  A positive prime power of the gap, with
`p ≥ k ≥ 4`, selects one unique lower factor and forces the clean square
congruence there. -/
theorem gap_primePower_existsUnique_local_sq_lift
    {p e k n d : ℕ}
    (hp : p.Prime)
    (he : 0 < e)
    (hk4 : 4 ≤ k)
    (hkp : k ≤ p)
    (hd : p ^ e ∣ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    ∃! i, i ∈ Finset.Icc 1 k ∧ p ^ e ∣ n + i ∧
      (((p ^ e : ℕ) : ℤ) ^ 2) ∣
        3 * ((n + i : ℕ) : ℤ) - (d : ℤ) := by
  have hp3 : p ≠ 3 := by omega
  have hblock := primePower_dvd_lower_block_of_dvd_gap hp hp3 hd heq
  obtain ⟨i, hi, huniq⟩ :=
    primePower_dvd_blockProduct_existsUnique hp he hkp hblock
  refine ⟨i, ⟨hi.1, hi.2,
    primePower_sq_dvd_three_factor_sub_gap hp hkp hi.1 hd hi.2 heq⟩, ?_⟩
  intro j hj
  exact huniq j ⟨hj.1, hj.2.1⟩

/-- Remove the two endpoints of a block and shift the remaining block by one. -/
lemma blockProduct_add_two (k n : ℕ) :
    blockProduct (k + 2) n =
      (n + 1) * blockProduct k (n + 1) * (n + k + 2) := by
  rw [show k + 2 = (k + 1) + 1 by omega, blockProduct_succ,
    blockProduct_succ]
  have hpred := blockProduct_pred_mul k (n + 1) (by omega)
  have hshift : n + 1 - 1 = n := by omega
  rw [hshift] at hpred
  have hpred' :
      blockProduct k n * (n + k + 1) =
        (n + 1) * blockProduct k (n + 1) := by
    calc
      blockProduct k n * (n + k + 1) =
          blockProduct k n * (n + 1 + k) := by
            rw [show n + k + 1 = n + 1 + k by omega]
      _ = blockProduct k (n + 1) * (n + 1) := hpred
      _ = (n + 1) * blockProduct k (n + 1) := by ring
  calc
    blockProduct k n * (n + k + 1) * (n + (k + 1) + 1) =
        (n + 1) * blockProduct k (n + 1) * (n + k + 2) := by
          rw [hpred', show n + (k + 1) + 1 = n + k + 2 by omega]

/-- Paired cofactor of an odd block about its middle factor. -/
def centerBlockCofactor (r : ℕ) (z : ℤ) : ℤ :=
  ∏ a ∈ Finset.Icc 1 r, (z ^ 2 - (a : ℤ) ^ 2)

lemma centerBlockCofactor_succ (r : ℕ) (z : ℤ) :
    centerBlockCofactor (r + 1) z =
      centerBlockCofactor r z * (z ^ 2 - ((r + 1 : ℕ) : ℤ) ^ 2) := by
  unfold centerBlockCofactor
  rw [Finset.prod_Icc_succ_top]
  omega

/-- Exact centered factorization of an odd block. -/
lemma odd_blockProduct_center_factorization (r n : ℕ) :
    ((blockProduct (2 * r + 1) n : ℕ) : ℤ) =
      ((n + r + 1 : ℕ) : ℤ) *
        centerBlockCofactor r ((n + r + 1 : ℕ) : ℤ) := by
  induction r generalizing n with
  | zero =>
      simp [blockProduct, centerBlockCofactor, Finset.Icc_self, Finset.prod_singleton]
  | succ r ih =>
      rw [show 2 * (r + 1) + 1 = (2 * r + 1) + 2 by omega,
        blockProduct_add_two]
      rw [Nat.cast_mul, Nat.cast_mul, ih (n + 1), centerBlockCofactor_succ]
      push_cast
      ring

lemma centerBlockCofactor_modEq_of_sq
    {r : ℕ} {x y M : ℤ} (hxy : x ^ 2 ≡ y ^ 2 [ZMOD M]) :
    centerBlockCofactor r x ≡ centerBlockCofactor r y [ZMOD M] := by
  unfold centerBlockCofactor
  apply Int.ModEq.prod
  intro a ha
  exact hxy.sub (Int.ModEq.refl ((a : ℤ) ^ 2))

lemma centerBlockCofactor_zero (r : ℕ) :
    centerBlockCofactor r 0 =
      (-1 : ℤ) ^ r * ((r.factorial : ℕ) : ℤ) ^ 2 := by
  unfold centerBlockCofactor
  simp only [zero_pow (by norm_num : 2 ≠ 0), zero_sub]
  rw [show (∏ a ∈ Finset.Icc 1 r, -((a : ℤ) ^ 2)) =
      (∏ _a ∈ Finset.Icc 1 r, (-1 : ℤ)) *
        ∏ a ∈ Finset.Icc 1 r, ((a : ℤ) ^ 2) by
        rw [← Finset.prod_mul_distrib]
        apply Finset.prod_congr rfl
        intro a ha
        ring]
  rw [Finset.prod_const, Nat.card_Icc]
  simp only [Nat.add_one_sub_one]
  rw [Finset.prod_pow]
  have hprod := prod_Icc_one_cast_eq_factorial r
  rw [hprod]

/-- Middle-factor cubic lift for an odd block.  Pairing the factors around the
middle eliminates every quadratic Taylor term, so the same exact equation
that gives an `h²` lift at a general factor gives an `h³` lift here. -/
theorem center_factorial_sq_mul_three_factor_sub_gap_dvd_cube
    {r n d h : ℕ}
    (hd : h ∣ d)
    (hcenter : h ∣ n + r + 1)
    (heq : blockProduct (2 * r + 1) (n + d) =
      4 * blockProduct (2 * r + 1) n) :
    (h : ℤ) ^ 3 ∣
      ((r.factorial : ℕ) : ℤ) ^ 2 *
        (3 * ((n + r + 1 : ℕ) : ℤ) - (d : ℤ)) := by
  let C : ℤ := centerBlockCofactor r 0
  let L : ℤ := ((n + r + 1 : ℕ) : ℤ)
  let U : ℤ := ((n + d + r + 1 : ℕ) : ℤ)
  let QL : ℤ := centerBlockCofactor r L
  let QU : ℤ := centerBlockCofactor r U
  have hUpperCenter : h ∣ n + d + r + 1 := by
    have : h ∣ (n + r + 1) + d := dvd_add hcenter hd
    simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using this
  have hL : (h : ℤ) ∣ L := by
    dsimp [L]
    exact_mod_cast hcenter
  have hU : (h : ℤ) ∣ U := by
    dsimp [U]
    exact_mod_cast hUpperCenter
  have hLsq : (h : ℤ) ^ 2 ∣ L ^ 2 :=
    pow_dvd_pow_of_dvd hL 2
  have hUsq : (h : ℤ) ^ 2 ∣ U ^ 2 :=
    pow_dvd_pow_of_dvd hU 2
  have hQLmod : QL ≡ C [ZMOD (h : ℤ) ^ 2] := by
    exact centerBlockCofactor_modEq_of_sq hLsq.modEq_zero_int
  have hQUmod : QU ≡ C [ZMOD (h : ℤ) ^ 2] := by
    exact centerBlockCofactor_modEq_of_sq hUsq.modEq_zero_int
  have hQLerr : (h : ℤ) ^ 2 ∣ QL - C := by
    have := hQLmod.dvd
    simpa [sub_eq_add_neg, add_comm] using (dvd_neg.mpr this)
  have hQUerr : (h : ℤ) ^ 2 ∣ QU - C := by
    have := hQUmod.dvd
    simpa [sub_eq_add_neg, add_comm] using (dvd_neg.mpr this)
  have hLowerCube : (h : ℤ) ^ 3 ∣ L * (QL - C) := by
    simpa [pow_succ, pow_two, mul_assoc, mul_comm, mul_left_comm] using
      mul_dvd_mul hL hQLerr
  have hUpperCube : (h : ℤ) ^ 3 ∣ U * (QU - C) := by
    simpa [pow_succ, pow_two, mul_assoc, mul_comm, mul_left_comm] using
      mul_dvd_mul hU hQUerr
  have heqInt :
      ((blockProduct (2 * r + 1) (n + d) : ℕ) : ℤ) =
        4 * ((blockProduct (2 * r + 1) n : ℕ) : ℤ) := by
    exact_mod_cast heq
  rw [odd_blockProduct_center_factorization,
    odd_blockProduct_center_factorization] at heqInt
  have heqLocal : U * QU = 4 * L * QL := by
    simpa [U, L, QU, QL, Nat.cast_add, mul_assoc] using heqInt
  have hUL : U = L + (d : ℤ) := by
    simp [U, L, Nat.cast_add]
    ring
  have hidentity :
      C * (3 * L - (d : ℤ)) = U * (QU - C) - 4 * (L * (QL - C)) := by
    rw [hUL] at heqLocal ⊢
    calc
      C * (3 * L - (d : ℤ)) =
          -(L + (d : ℤ)) * C + 4 * L * C := by ring
      _ = ((L + (d : ℤ)) * QU - 4 * L * QL) -
            (L + (d : ℤ)) * C + 4 * L * C := by rw [heqLocal]; ring
      _ = (L + (d : ℤ)) * (QU - C) - 4 * (L * (QL - C)) := by ring
  have hSigned : (h : ℤ) ^ 3 ∣ C * (3 * L - (d : ℤ)) := by
    rw [hidentity]
    exact dvd_sub hUpperCube (dvd_mul_of_dvd_right hLowerCube 4)
  rw [show C = (-1 : ℤ) ^ r * ((r.factorial : ℕ) : ℤ) ^ 2 by
    exact centerBlockCofactor_zero r] at hSigned
  change (h : ℤ) ^ 3 ∣
    ((r.factorial : ℕ) : ℤ) ^ 2 * (3 * L - (d : ℤ))
  rcases neg_one_pow_eq_or ℤ r with hsign | hsign
  · simpa [hsign, mul_assoc, mul_comm, mul_left_comm] using hSigned
  · have hneg := dvd_neg.mpr hSigned
    simpa [hsign, mul_assoc, mul_comm, mul_left_comm] using hneg

/-- Prime-power cancellation of the middle-factor coefficient. -/
theorem primePower_cube_dvd_three_center_sub_gap
    {p e r n d : ℕ}
    (hp : p.Prime)
    (hkp : 2 * r + 1 ≤ p)
    (hd : p ^ e ∣ d)
    (hcenter : p ^ e ∣ n + r + 1)
    (heq : blockProduct (2 * r + 1) (n + d) =
      4 * blockProduct (2 * r + 1) n) :
    (((p ^ e : ℕ) : ℤ) ^ 3) ∣
      3 * ((n + r + 1 : ℕ) : ℤ) - (d : ℤ) := by
  have hraw :=
    center_factorial_sq_mul_three_factor_sub_gap_dvd_cube hd hcenter heq
  have hpInt : Prime (p : ℤ) := Nat.prime_iff_prime_int.mp hp
  have hpFact : ¬ p ∣ r.factorial := by
    rw [hp.dvd_factorial]
    omega
  have hpCoeffNat : ¬ p ∣ r.factorial ^ 2 := by
    intro hdiv
    exact hpFact (hp.dvd_of_dvd_pow hdiv)
  have hpCoeff : ¬ (p : ℤ) ∣ (((r.factorial : ℕ) : ℤ) ^ 2) := by
    intro hdiv
    apply hpCoeffNat
    exact Int.natCast_dvd_natCast.mp (by simpa using hdiv)
  have hraw' :
      (p : ℤ) ^ (e * 3) ∣
        (((r.factorial : ℕ) : ℤ) ^ 2) *
          (3 * ((n + r + 1 : ℕ) : ℤ) - (d : ℤ)) := by
    simpa [Nat.cast_pow, ← pow_mul] using hraw
  have hcancel := hpInt.pow_dvd_of_dvd_mul_left (e * 3) hpCoeff hraw'
  simpa [Nat.cast_pow, ← pow_mul] using hcancel

private lemma local_lift_pow_lt_of_base_bound
    {q t C A k n d i : ℕ}
    (hk5 : 5 ≤ k)
    (hkd : k ≤ d)
    (hi : i ∈ Finset.Icc 1 k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n)
    (hbase : n + 1 < C * d)
    (hA : A = 3 * C + 2)
    (hlift : (q : ℤ) ^ t ∣
      3 * ((n + i : ℕ) : ℤ) - (d : ℤ)) :
    q ^ t < A * d := by
  have hgap := twice_gap_lt_n_of_four_solution hk5 hkd heq
  have hdlt : d < 3 * (n + i) := by omega
  let X : ℕ := 3 * (n + i) - d
  have hXpos : 0 < X := by
    dsimp [X]
    omega
  have hcast : (X : ℤ) =
      3 * ((n + i : ℕ) : ℤ) - (d : ℤ) := by
    dsimp [X]
    rw [Int.ofNat_sub (by omega : d ≤ 3 * (n + i))]
    push_cast
    ring
  have hdivCast : (((q ^ t : ℕ) : ℤ)) ∣ (X : ℤ) := by
    rw [hcast]
    simpa [Nat.cast_pow] using hlift
  have hdivNat : q ^ t ∣ X := Int.natCast_dvd_natCast.mp hdivCast
  have hqleX : q ^ t ≤ X := Nat.le_of_dvd hXpos hdivNat
  have hi_d : i ≤ d := le_trans (Finset.mem_Icc.mp hi).2 hkd
  have hnCd : n < C * d := by omega
  have h3n : 3 * n < 3 * (C * d) :=
    (Nat.mul_lt_mul_left (by norm_num : 0 < 3)).mpr hnCd
  have h3i : 3 * i ≤ 3 * d := Nat.mul_le_mul_left 3 hi_d
  have hsum : 3 * (n + i) < (3 * C + 3) * d := by
    calc
      3 * (n + i) = 3 * n + 3 * i := by ring
      _ ≤ 3 * n + 3 * d := Nat.add_le_add_left h3i (3 * n)
      _ < 3 * (C * d) + 3 * d := Nat.add_lt_add_right h3n (3 * d)
      _ = (3 * C + 3) * d := by ring
  have hsumA : 3 * (n + i) < (A + 1) * d := by
    simpa [hA] using hsum
  have hXd : X + d = 3 * (n + i) := by
    dsimp [X]
    omega
  have hAd : A * d + d = (A + 1) * d := by ring
  have hXupper : X < A * d := by omega
  exact lt_of_le_of_lt hqleX hXupper

/-- The same archimedean bound before cancelling the local derivative
coefficient.  This version is what makes the small-prime concentration
argument effective. -/
private lemma local_raw_lift_sq_lt_factorial_mul_of_base_bound
    {q C A k n d i : ℕ}
    (hk5 : 5 ≤ k)
    (hkd : k ≤ d)
    (hi : i ∈ Finset.Icc 1 k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n)
    (hbase : n + 1 < C * d)
    (hA : A = 3 * C + 2)
    (hd : q ∣ d)
    (hfactor : q ∣ n + i) :
    q ^ 2 < (k - 1).factorial * A * d := by
  have hgap := twice_gap_lt_n_of_four_solution hk5 hkd heq
  have hdlt : d < 3 * (n + i) := by omega
  let X : ℕ := 3 * (n + i) - d
  have hXpos : 0 < X := by
    dsimp [X]
    omega
  have hcast : (X : ℤ) =
      3 * ((n + i : ℕ) : ℤ) - (d : ℤ) := by
    dsimp [X]
    rw [Int.ofNat_sub (by omega : d ≤ 3 * (n + i))]
    push_cast
    ring
  have hraw := localBlockCoefficientNat_mul_three_factor_sub_gap_dvd_sq
    hi hd hfactor heq
  rw [← hcast] at hraw
  have hrawNat : q ^ 2 ∣ localBlockCoefficientNat k i * X := by
    exact Int.natCast_dvd_natCast.mp (by
      simpa [Nat.cast_pow, Nat.cast_mul] using hraw)
  have hcoeffPos : 0 < localBlockCoefficientNat k i := by
    unfold localBlockCoefficientNat
    exact Nat.mul_pos (Nat.factorial_pos _) (Nat.factorial_pos _)
  have hcoeffDvd : localBlockCoefficientNat k i ∣ (k - 1).factorial :=
    localBlockCoefficientNat_dvd_factorial_pred hi
  have hcoeffLe : localBlockCoefficientNat k i ≤ (k - 1).factorial :=
    Nat.le_of_dvd (Nat.factorial_pos _) hcoeffDvd
  have hqSqLe : q ^ 2 ≤ localBlockCoefficientNat k i * X :=
    Nat.le_of_dvd (Nat.mul_pos hcoeffPos hXpos) hrawNat
  have hi_d : i ≤ d := le_trans (Finset.mem_Icc.mp hi).2 hkd
  have hnCd : n < C * d := by omega
  have h3n : 3 * n < 3 * (C * d) :=
    (Nat.mul_lt_mul_left (by norm_num : 0 < 3)).mpr hnCd
  have h3i : 3 * i ≤ 3 * d := Nat.mul_le_mul_left 3 hi_d
  have hsum : 3 * (n + i) < (3 * C + 3) * d := by
    calc
      3 * (n + i) = 3 * n + 3 * i := by ring
      _ ≤ 3 * n + 3 * d := Nat.add_le_add_left h3i (3 * n)
      _ < 3 * (C * d) + 3 * d := Nat.add_lt_add_right h3n (3 * d)
      _ = (3 * C + 3) * d := by ring
  have hsumA : 3 * (n + i) < (A + 1) * d := by
    simpa [hA] using hsum
  have hXd : X + d = 3 * (n + i) := by
    dsimp [X]
    omega
  have hAd : A * d + d = (A + 1) * d := by ring
  have hXupper : X < A * d := by omega
  calc
    q ^ 2 ≤ localBlockCoefficientNat k i * X := hqSqLe
    _ ≤ (k - 1).factorial * X := Nat.mul_le_mul_right X hcoeffLe
    _ < (k - 1).factorial * (A * d) :=
      (Nat.mul_lt_mul_left (Nat.factorial_pos _)).mpr hXupper
    _ = (k - 1).factorial * A * d := by ring

/-- A prime power of size at least `10^120` with base at most thirteen has
exponent at least one hundred. -/
lemma primePower_exponent_ge_hundred_of_le_thirteen
    {p e : ℕ} (hp13 : p ≤ 13) (hlarge : 10 ^ 120 ≤ p ^ e) :
    100 ≤ e := by
  by_contra hnot
  have he99 : e ≤ 99 := by omega
  have hpPow : p ^ e ≤ 13 ^ e := Nat.pow_le_pow_left hp13 e
  have hePow : 13 ^ e ≤ 13 ^ 99 :=
    Nat.pow_le_pow_right (by norm_num : 0 < 13) he99
  have hnumeric : 13 ^ 99 < 10 ^ 120 := by norm_num
  omega

/-- Quantified odd-block package: each large prime power of the gap lands at
one factor, gives a square-size bound there, and gains a cubic-size bound if
that factor is the center. -/
theorem gap_primePower_existsUnique_odd_local_bounds
    {p e r n d C A : ℕ}
    (hp : p.Prime)
    (he : 0 < e)
    (hr2 : 2 ≤ r)
    (hkp : 2 * r + 1 ≤ p)
    (hkd : 2 * r + 1 ≤ d)
    (hd : p ^ e ∣ d)
    (heq : blockProduct (2 * r + 1) (n + d) =
      4 * blockProduct (2 * r + 1) n)
    (hbase : n + 1 < C * d)
    (hA : A = 3 * C + 2) :
    ∃! i, i ∈ Finset.Icc 1 (2 * r + 1) ∧ p ^ e ∣ n + i ∧
      (p ^ e) ^ 2 < A * d ∧
      (i = r + 1 → (p ^ e) ^ 3 < A * d) := by
  obtain ⟨i, hi, huniq⟩ := gap_primePower_existsUnique_local_sq_lift
    hp he (by omega : 4 ≤ 2 * r + 1) hkp hd heq
  have hsquare : (p ^ e) ^ 2 < A * d :=
    local_lift_pow_lt_of_base_bound (by omega : 5 ≤ 2 * r + 1)
      hkd hi.1 heq hbase hA hi.2.2
  have hcenterBound : i = r + 1 → (p ^ e) ^ 3 < A * d := by
    intro hicenter
    subst i
    have hcubic := primePower_cube_dvd_three_center_sub_gap
      hp hkp hd hi.2.1 heq
    exact local_lift_pow_lt_of_base_bound (by omega : 5 ≤ 2 * r + 1)
      hkd hi.1 heq hbase hA hcubic
  refine ⟨i, ⟨hi.1, hi.2.1, hsquare, hcenterBound⟩, ?_⟩
  intro j hj
  apply huniq j
  exact ⟨hj.1, hj.2.1,
    primePower_sq_dvd_three_factor_sub_gap hp hkp hj.1 hd hj.2.1 heq⟩

theorem gap_primePower_k5_local_bounds
    {p e n d : ℕ} (hp : p.Prime) (he : 0 < e)
    (hkp : 5 ≤ p) (hkd : 5 ≤ d) (hd : p ^ e ∣ d)
    (heq : blockProduct 5 (n + d) = 4 * blockProduct 5 n) :
    ∃! i, i ∈ Finset.Icc 1 5 ∧ p ^ e ∣ n + i ∧
      (p ^ e) ^ 2 < 14 * d ∧ (i = 3 → (p ^ e) ^ 3 < 14 * d) := by
  have hbase := row_base_upper_k5 (ratio_window_four_nat heq).2
  exact gap_primePower_existsUnique_odd_local_bounds
    (r := 2) (C := 4) (A := 14)
    hp he (by norm_num) hkp hkd hd heq hbase (by norm_num)

theorem gap_primePower_k7_local_bounds
    {p e n d : ℕ} (hp : p.Prime) (he : 0 < e)
    (hkp : 7 ≤ p) (hkd : 7 ≤ d) (hd : p ^ e ∣ d)
    (heq : blockProduct 7 (n + d) = 4 * blockProduct 7 n) :
    ∃! i, i ∈ Finset.Icc 1 7 ∧ p ^ e ∣ n + i ∧
      (p ^ e) ^ 2 < 17 * d ∧ (i = 4 → (p ^ e) ^ 3 < 17 * d) := by
  have hbase := row_base_upper_k7 (ratio_window_four_nat heq).2
  exact gap_primePower_existsUnique_odd_local_bounds
    (r := 3) (C := 5) (A := 17)
    hp he (by norm_num) hkp hkd hd heq hbase (by norm_num)

theorem gap_primePower_k9_local_bounds
    {p e n d : ℕ} (hp : p.Prime) (he : 0 < e)
    (hkp : 9 ≤ p) (hkd : 9 ≤ d) (hd : p ^ e ∣ d)
    (heq : blockProduct 9 (n + d) = 4 * blockProduct 9 n) :
    ∃! i, i ∈ Finset.Icc 1 9 ∧ p ^ e ∣ n + i ∧
      (p ^ e) ^ 2 < 23 * d ∧ (i = 5 → (p ^ e) ^ 3 < 23 * d) := by
  have hbase := row_base_upper_k9 (ratio_window_four_nat heq).2
  exact gap_primePower_existsUnique_odd_local_bounds
    (r := 4) (C := 7) (A := 23)
    hp he (by norm_num) hkp hkd hd heq hbase (by norm_num)

theorem gap_primePower_k11_local_bounds
    {p e n d : ℕ} (hp : p.Prime) (he : 0 < e)
    (hkp : 11 ≤ p) (hkd : 11 ≤ d) (hd : p ^ e ∣ d)
    (heq : blockProduct 11 (n + d) = 4 * blockProduct 11 n) :
    ∃! i, i ∈ Finset.Icc 1 11 ∧ p ^ e ∣ n + i ∧
      (p ^ e) ^ 2 < 26 * d ∧ (i = 6 → (p ^ e) ^ 3 < 26 * d) := by
  have hbase := row_base_upper_k11 (ratio_window_four_nat heq).2
  exact gap_primePower_existsUnique_odd_local_bounds
    (r := 5) (C := 8) (A := 26)
    hp he (by norm_num) hkp hkd hd heq hbase (by norm_num)

theorem gap_primePower_k13_local_bounds
    {p e n d : ℕ} (hp : p.Prime) (he : 0 < e)
    (hkp : 13 ≤ p) (hkd : 13 ≤ d) (hd : p ^ e ∣ d)
    (heq : blockProduct 13 (n + d) = 4 * blockProduct 13 n) :
    ∃! i, i ∈ Finset.Icc 1 13 ∧ p ^ e ∣ n + i ∧
      (p ^ e) ^ 2 < 29 * d ∧ (i = 7 → (p ^ e) ^ 3 < 29 * d) := by
  have hbase := row_base_upper_k13 (ratio_window_four_nat heq).2
  exact gap_primePower_existsUnique_odd_local_bounds
    (r := 6) (C := 9) (A := 29)
    hp he (by norm_num) hkp hkd hd heq hbase (by norm_num)

theorem gap_primePower_k15_local_bounds
    {p e n d : ℕ} (hp : p.Prime) (he : 0 < e)
    (hkp : 15 ≤ p) (hkd : 15 ≤ d) (hd : p ^ e ∣ d)
    (heq : blockProduct 15 (n + d) = 4 * blockProduct 15 n) :
    ∃! i, i ∈ Finset.Icc 1 15 ∧ p ^ e ∣ n + i ∧
      (p ^ e) ^ 2 < 35 * d ∧ (i = 8 → (p ^ e) ^ 3 < 35 * d) := by
  have hbase := row_base_upper_k15 (ratio_window_four_nat heq).2
  exact gap_primePower_existsUnique_odd_local_bounds
    (r := 7) (C := 11) (A := 35)
    hp he (by norm_num) hkp hkd hd heq hbase (by norm_num)

/-! ## Restricted tail closures from a dominant gap prime power -/

/-- Small-prime prime-power tail closure for every odd block through length
fifteen.  The concentration loss is at most `v_p(14!)`; retaining the local
derivative coefficient gives the explicit universal obstruction
`14! * 35 * 13^30 < 10^120`. -/
theorem no_odd_gap_solution_of_small_primePower_gap_large
    {p e r n d C A : ℕ}
    (hp : p.Prime)
    (hr2 : 2 ≤ r)
    (hk15 : 2 * r + 1 ≤ 15)
    (hpk : p < 2 * r + 1)
    (hgap : d = p ^ e)
    (hlarge : 10 ^ 120 ≤ d)
    (hbase :
      blockProduct (2 * r + 1) (n + d) =
          4 * blockProduct (2 * r + 1) n →
        n + 1 < C * d)
    (hA : A = 3 * C + 2)
    (hA35 : A ≤ 35) :
    blockProduct (2 * r + 1) (n + d) ≠
      4 * blockProduct (2 * r + 1) n := by
  intro heq
  let V : ℕ :=
    ((2 * r + 1) - 1).factorial.factorization p
  let q : ℕ := p ^ (e - 1 - V)
  let P : ℕ := p ^ (1 + V)
  have hp13 : p ≤ 13 := by
    have hp14 : p ≤ 14 := by omega
    by_contra hnot
    have hpEq : p = 14 := by omega
    subst p
    norm_num at hp
  have hlargePow : 10 ^ 120 ≤ p ^ e := by simpa [← hgap] using hlarge
  have he100 : 100 ≤ e :=
    primePower_exponent_ge_hundred_of_le_thirteen hp13 hlargePow
  have hkPred14 : (2 * r + 1) - 1 ≤ 14 := by omega
  have hV14 : V ≤ 14 := by
    dsimp [V]
    exact le_trans
      (Nat.factorization_factorial_le_div_pred hp ((2 * r + 1) - 1))
      (le_trans (Nat.div_le_self _ _) hkPred14)
  have hVe : 1 + V ≤ e := by omega
  have hkd : 2 * r + 1 ≤ d := by
    have hnumeric : 15 < 10 ^ 120 := by norm_num
    omega
  obtain ⟨i, hi, hfactor⟩ :=
    gap_eq_primePower_exists_concentrated_factor
      hp (by omega : 1 ≤ 2 * r + 1) hgap heq
  have hfactorQ : q ∣ n + i := by
    simpa [q, V] using hfactor
  have hqDvdD : q ∣ d := by
    rw [hgap]
    dsimp [q]
    exact pow_dvd_pow p (by omega)
  have hrawBound :
      q ^ 2 < ((2 * r + 1) - 1).factorial * A * d :=
    local_raw_lift_sq_lt_factorial_mul_of_base_bound
      (q := q) (C := C) (A := A) (k := 2 * r + 1)
      (by omega) hkd hi heq (hbase heq) hA hqDvdD hfactorQ
  have hdecomp : q * P = d := by
    calc
      q * P = p ^ ((e - 1 - V) + (1 + V)) := by
        simp [q, P, ← pow_add]
      _ = p ^ e := by
        congr 1
        omega
      _ = d := hgap.symm
  have hqPos : 0 < q := pow_pos hp.pos _
  have hPPos : 0 < P := pow_pos hp.pos _
  have hcancel : q < ((2 * r + 1) - 1).factorial * A * P := by
    apply (Nat.mul_lt_mul_left hqPos).mp
    calc
      q * q = q ^ 2 := by ring
      _ < ((2 * r + 1) - 1).factorial * A * d := hrawBound
      _ = q * (((2 * r + 1) - 1).factorial * A * P) := by
        rw [← hdecomp]
        ring
  have hdSmall :
      d < ((2 * r + 1) - 1).factorial * A * P ^ 2 := by
    calc
      d = q * P := hdecomp.symm
      _ < (((2 * r + 1) - 1).factorial * A * P) * P :=
        (Nat.mul_lt_mul_right hPPos).mpr hcancel
      _ = ((2 * r + 1) - 1).factorial * A * P ^ 2 := by ring
  have hFact14 :
      ((2 * r + 1) - 1).factorial ≤ (14 : ℕ).factorial :=
    Nat.factorial_le hkPred14
  have hP13 : P ≤ 13 ^ 15 := by
    dsimp [P]
    calc
      p ^ (1 + V) ≤ 13 ^ (1 + V) := Nat.pow_le_pow_left hp13 _
      _ ≤ 13 ^ 15 :=
        Nat.pow_le_pow_right (by norm_num : 0 < 13) (by omega)
  have hPsq : P ^ 2 ≤ (13 ^ 15) ^ 2 := Nat.pow_le_pow_left hP13 2
  have hconstant :
      ((2 * r + 1) - 1).factorial * A * P ^ 2 ≤
        (14 : ℕ).factorial * 35 * (13 ^ 15) ^ 2 :=
    Nat.mul_le_mul (Nat.mul_le_mul hFact14 hA35) hPsq
  have hnumeric :
      (14 : ℕ).factorial * 35 * (13 ^ 15) ^ 2 < 10 ^ 120 := by
    norm_num
  omega

/-- A prime-power component of the gap cannot reach the square-size threshold
forced by the local lift.  The `hbase` argument is precisely the elementary
ratio-window consequence used by the fixed-`k` wrappers below. -/
theorem no_odd_gap_solution_of_primePower_sq_ge
    {p e r n d C A : ℕ}
    (hp : p.Prime)
    (he : 0 < e)
    (hr2 : 2 ≤ r)
    (hkp : 2 * r + 1 ≤ p)
    (hkd : 2 * r + 1 ≤ d)
    (hd : p ^ e ∣ d)
    (hbase :
      blockProduct (2 * r + 1) (n + d) =
          4 * blockProduct (2 * r + 1) n →
        n + 1 < C * d)
    (hA : A = 3 * C + 2)
    (hdominant : A * d ≤ (p ^ e) ^ 2) :
    blockProduct (2 * r + 1) (n + d) ≠
      4 * blockProduct (2 * r + 1) n := by
  intro heq
  obtain ⟨i, hi, _huniq⟩ :=
    gap_primePower_existsUnique_odd_local_bounds
      hp he hr2 hkp hkd hd heq (hbase heq) hA
  exact (not_lt_of_ge hdominant) hi.2.2.1

/-- If the whole gap is `p^e`, then the lifted inequality is `d² < A*d`,
so every positive solution would have `d < A`. -/
theorem no_odd_gap_solution_of_gap_eq_primePower_of_A_le
    {p e r n d C A : ℕ}
    (hp : p.Prime)
    (he : 0 < e)
    (hr2 : 2 ≤ r)
    (hkp : 2 * r + 1 ≤ p)
    (hkd : 2 * r + 1 ≤ d)
    (hgap : d = p ^ e)
    (hbase :
      blockProduct (2 * r + 1) (n + d) =
          4 * blockProduct (2 * r + 1) n →
        n + 1 < C * d)
    (hA : A = 3 * C + 2)
    (hAd : A ≤ d) :
    blockProduct (2 * r + 1) (n + d) ≠
      4 * blockProduct (2 * r + 1) n := by
  have hd : p ^ e ∣ d := by
    rw [hgap]
  have hdominant : A * d ≤ (p ^ e) ^ 2 := by
    calc
      A * d ≤ d * d := Nat.mul_le_mul_right d hAd
      _ = (p ^ e) ^ 2 := by rw [hgap]; ring
  exact no_odd_gap_solution_of_primePower_sq_ge
    hp he hr2 hkp hkd hd hbase hA hdominant

/-- Uniform pure-prime-power closure for the six verified odd rows.  Large
prime bases use coefficient cancellation; small bases use valuation
concentration with its explicit `14! * 35 * 13^30` loss. -/
theorem no_odd_gap_solution_of_primePower_gap_large
    {p e r n d C A : ℕ}
    (hp : p.Prime)
    (hr2 : 2 ≤ r)
    (hk15 : 2 * r + 1 ≤ 15)
    (hgap : d = p ^ e)
    (hlarge : 10 ^ 120 ≤ d)
    (hbase :
      blockProduct (2 * r + 1) (n + d) =
          4 * blockProduct (2 * r + 1) n →
        n + 1 < C * d)
    (hA : A = 3 * C + 2)
    (hA35 : A ≤ 35) :
    blockProduct (2 * r + 1) (n + d) ≠
      4 * blockProduct (2 * r + 1) n := by
  have he : 0 < e := by
    by_contra hnot
    have he0 : e = 0 := Nat.eq_zero_of_not_pos hnot
    have hd1 : d = 1 := by simpa [he0] using hgap
    rw [hd1] at hlarge
    norm_num at hlarge
  rcases lt_or_ge p (2 * r + 1) with hpk | hkp
  · exact no_odd_gap_solution_of_small_primePower_gap_large
      hp hr2 hk15 hpk hgap hlarge hbase hA hA35
  · have hkd : 2 * r + 1 ≤ d := by
      have hnumeric : 15 < 10 ^ 120 := by norm_num
      omega
    have hAd : A ≤ d := by
      have hnumeric : 35 < 10 ^ 120 := by norm_num
      omega
    exact no_odd_gap_solution_of_gap_eq_primePower_of_A_le
      hp he hr2 hkp hkd hgap hbase hA hAd

/-- Every prime-power gap `d ≥ 10^120` is excluded for `k=5`. -/
theorem no_gap_solution_four_k5_of_gap_eq_primePower_of_ten_pow_120_le
    {p e n d : ℕ}
    (hp : p.Prime) (hgap : d = p ^ e) (hlarge : 10 ^ 120 ≤ d) :
    blockProduct 5 (n + d) ≠ 4 * blockProduct 5 n := by
  apply no_odd_gap_solution_of_primePower_gap_large
    (r := 2) (C := 4) (A := 14) hp (by norm_num) (by norm_num)
    hgap hlarge
  · intro heq
    exact row_base_upper_k5 (ratio_window_four_nat heq).2
  · norm_num
  · norm_num

/-- Every prime-power gap `d ≥ 10^120` is excluded for `k=7`. -/
theorem no_gap_solution_four_k7_of_gap_eq_primePower_of_ten_pow_120_le
    {p e n d : ℕ}
    (hp : p.Prime) (hgap : d = p ^ e) (hlarge : 10 ^ 120 ≤ d) :
    blockProduct 7 (n + d) ≠ 4 * blockProduct 7 n := by
  apply no_odd_gap_solution_of_primePower_gap_large
    (r := 3) (C := 5) (A := 17) hp (by norm_num) (by norm_num)
    hgap hlarge
  · intro heq
    exact row_base_upper_k7 (ratio_window_four_nat heq).2
  · norm_num
  · norm_num

/-- Every prime-power gap `d ≥ 10^120` is excluded for `k=9`. -/
theorem no_gap_solution_four_k9_of_gap_eq_primePower_of_ten_pow_120_le
    {p e n d : ℕ}
    (hp : p.Prime) (hgap : d = p ^ e) (hlarge : 10 ^ 120 ≤ d) :
    blockProduct 9 (n + d) ≠ 4 * blockProduct 9 n := by
  apply no_odd_gap_solution_of_primePower_gap_large
    (r := 4) (C := 7) (A := 23) hp (by norm_num) (by norm_num)
    hgap hlarge
  · intro heq
    exact row_base_upper_k9 (ratio_window_four_nat heq).2
  · norm_num
  · norm_num

/-- Every prime-power gap `d ≥ 10^120` is excluded for `k=11`. -/
theorem no_gap_solution_four_k11_of_gap_eq_primePower_of_ten_pow_120_le
    {p e n d : ℕ}
    (hp : p.Prime) (hgap : d = p ^ e) (hlarge : 10 ^ 120 ≤ d) :
    blockProduct 11 (n + d) ≠ 4 * blockProduct 11 n := by
  apply no_odd_gap_solution_of_primePower_gap_large
    (r := 5) (C := 8) (A := 26) hp (by norm_num) (by norm_num)
    hgap hlarge
  · intro heq
    exact row_base_upper_k11 (ratio_window_four_nat heq).2
  · norm_num
  · norm_num

/-- Every prime-power gap `d ≥ 10^120` is excluded for `k=13`. -/
theorem no_gap_solution_four_k13_of_gap_eq_primePower_of_ten_pow_120_le
    {p e n d : ℕ}
    (hp : p.Prime) (hgap : d = p ^ e) (hlarge : 10 ^ 120 ≤ d) :
    blockProduct 13 (n + d) ≠ 4 * blockProduct 13 n := by
  apply no_odd_gap_solution_of_primePower_gap_large
    (r := 6) (C := 9) (A := 29) hp (by norm_num) (by norm_num)
    hgap hlarge
  · intro heq
    exact row_base_upper_k13 (ratio_window_four_nat heq).2
  · norm_num
  · norm_num

/-- Every prime-power gap `d ≥ 10^120` is excluded for `k=15`. -/
theorem no_gap_solution_four_k15_of_gap_eq_primePower_of_ten_pow_120_le
    {p e n d : ℕ}
    (hp : p.Prime) (hgap : d = p ^ e) (hlarge : 10 ^ 120 ≤ d) :
    blockProduct 15 (n + d) ≠ 4 * blockProduct 15 n := by
  apply no_odd_gap_solution_of_primePower_gap_large
    (r := 7) (C := 11) (A := 35) hp (by norm_num) (by norm_num)
    hgap hlarge
  · intro heq
    exact row_base_upper_k15 (ratio_window_four_nat heq).2
  · norm_num
  · norm_num

/-- Restricted `k=5` tail closure for prime-power gaps: `d < 14`. -/
theorem no_gap_solution_four_k5_of_gap_eq_primePower_of_fourteen_le
    {p e n d : ℕ}
    (hp : p.Prime) (he : 0 < e) (hkp : 5 ≤ p)
    (hgap : d = p ^ e) (hd14 : 14 ≤ d) :
    blockProduct 5 (n + d) ≠ 4 * blockProduct 5 n := by
  apply no_odd_gap_solution_of_gap_eq_primePower_of_A_le
    (r := 2) (C := 4) (A := 14) hp he (by norm_num) hkp (by omega) hgap
  · intro heq
    exact row_base_upper_k5 (ratio_window_four_nat heq).2
  · norm_num
  · exact hd14

/-- Restricted `k=7` tail closure for prime-power gaps: `d < 17`. -/
theorem no_gap_solution_four_k7_of_gap_eq_primePower_of_seventeen_le
    {p e n d : ℕ}
    (hp : p.Prime) (he : 0 < e) (hkp : 7 ≤ p)
    (hgap : d = p ^ e) (hd17 : 17 ≤ d) :
    blockProduct 7 (n + d) ≠ 4 * blockProduct 7 n := by
  apply no_odd_gap_solution_of_gap_eq_primePower_of_A_le
    (r := 3) (C := 5) (A := 17) hp he (by norm_num) hkp (by omega) hgap
  · intro heq
    exact row_base_upper_k7 (ratio_window_four_nat heq).2
  · norm_num
  · exact hd17

/-- Restricted `k=9` tail closure for prime-power gaps: `d < 23`. -/
theorem no_gap_solution_four_k9_of_gap_eq_primePower_of_twentythree_le
    {p e n d : ℕ}
    (hp : p.Prime) (he : 0 < e) (hkp : 9 ≤ p)
    (hgap : d = p ^ e) (hd23 : 23 ≤ d) :
    blockProduct 9 (n + d) ≠ 4 * blockProduct 9 n := by
  apply no_odd_gap_solution_of_gap_eq_primePower_of_A_le
    (r := 4) (C := 7) (A := 23) hp he (by norm_num) hkp (by omega) hgap
  · intro heq
    exact row_base_upper_k9 (ratio_window_four_nat heq).2
  · norm_num
  · exact hd23

/-- Restricted `k=11` tail closure for prime-power gaps: `d < 26`. -/
theorem no_gap_solution_four_k11_of_gap_eq_primePower_of_twentysix_le
    {p e n d : ℕ}
    (hp : p.Prime) (he : 0 < e) (hkp : 11 ≤ p)
    (hgap : d = p ^ e) (hd26 : 26 ≤ d) :
    blockProduct 11 (n + d) ≠ 4 * blockProduct 11 n := by
  apply no_odd_gap_solution_of_gap_eq_primePower_of_A_le
    (r := 5) (C := 8) (A := 26) hp he (by norm_num) hkp (by omega) hgap
  · intro heq
    exact row_base_upper_k11 (ratio_window_four_nat heq).2
  · norm_num
  · exact hd26

/-- Restricted `k=13` tail closure for prime-power gaps: `d < 29`. -/
theorem no_gap_solution_four_k13_of_gap_eq_primePower_of_twentynine_le
    {p e n d : ℕ}
    (hp : p.Prime) (he : 0 < e) (hkp : 13 ≤ p)
    (hgap : d = p ^ e) (hd29 : 29 ≤ d) :
    blockProduct 13 (n + d) ≠ 4 * blockProduct 13 n := by
  apply no_odd_gap_solution_of_gap_eq_primePower_of_A_le
    (r := 6) (C := 9) (A := 29) hp he (by norm_num) hkp (by omega) hgap
  · intro heq
    exact row_base_upper_k13 (ratio_window_four_nat heq).2
  · norm_num
  · exact hd29

/-- Restricted `k=15` tail closure for prime-power gaps: `d < 35`. -/
theorem no_gap_solution_four_k15_of_gap_eq_primePower_of_thirtyfive_le
    {p e n d : ℕ}
    (hp : p.Prime) (he : 0 < e) (hkp : 15 ≤ p)
    (hgap : d = p ^ e) (hd35 : 35 ≤ d) :
    blockProduct 15 (n + d) ≠ 4 * blockProduct 15 n := by
  apply no_odd_gap_solution_of_gap_eq_primePower_of_A_le
    (r := 7) (C := 11) (A := 35) hp he (by norm_num) hkp (by omega) hgap
  · intro heq
    exact row_base_upper_k15 (ratio_window_four_nat heq).2
  · norm_num
  · exact hd35

end Erdos686Variant
end Erdos686
