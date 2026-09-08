/- Generated mechanically from the pinned upstream snapshot.
   source: Erdos686.lean + Erdos686PadicLift.lean; lines: 4716-4717, 5060-5065, 56-57, 168-177, 179-208, 210-239, 241-261, 263-343, 580-587
   Only imports/module paths are adapted; declaration/proof text below is copied. -/
import Mathlib.Algebra.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Data.Nat.Dist
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.Ring

namespace Erdos686
namespace Erdos686Variant

open scoped BigOperators

def blockProduct (k x : ℕ) : ℕ :=
  ∏ i ∈ Finset.Icc 1 k, (x + i)


lemma blockProduct_pos (k x : ℕ) : 0 < blockProduct k x := by
  unfold blockProduct
  exact Finset.prod_pos (by
    intro i hi
    have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
    omega)


def localBlockCoefficientNat (k i : ℕ) : ℕ :=
  (i - 1).factorial * (k - i).factorial


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


def localBlockCofactorNat (k i n : ℕ) : ℕ :=
  ∏ j ∈ (Finset.Icc 1 k).erase i, (n + j)

lemma blockProduct_eq_factor_mul_localBlockCofactorNat
    {k i n : ℕ} (hi : i ∈ Finset.Icc 1 k) :
    blockProduct k n = (n + i) * localBlockCofactorNat k i n := by
  unfold blockProduct localBlockCofactorNat
  exact (Finset.mul_prod_erase (Finset.Icc 1 k) (fun j => n + j) hi).symm

end Erdos686Variant
end Erdos686
