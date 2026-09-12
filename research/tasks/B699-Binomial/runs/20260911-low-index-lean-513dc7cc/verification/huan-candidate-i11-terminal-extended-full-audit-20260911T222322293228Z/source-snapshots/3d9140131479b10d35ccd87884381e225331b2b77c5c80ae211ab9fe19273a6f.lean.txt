import research.tasks.«B686-Four».round8.lean.BigPrimeSupport
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.Finset.Max
import Mathlib.Data.Nat.Dist
import Mathlib.Algebra.BigOperators.Intervals

namespace B686UniformDistance
open B686Round8

/-- The distances from one position in an interval multiply to two factorials. -/
theorem distance_product_eq_factorials (k j : ℕ) (hj : j ∈ Finset.Icc 1 k) :
    (∏ i ∈ (Finset.Icc 1 k).erase j, Nat.dist i j) =
      (j - 1).factorial * (k - j).factorial := by
  have hj' := Finset.mem_Icc.mp hj
  have hsplit : (Finset.Icc 1 k).erase j =
      Finset.Icc 1 (j - 1) ∪ Finset.Icc (j + 1) k := by
    ext i
    simp only [Finset.mem_erase, Finset.mem_Icc, Finset.mem_union]
    omega
  have hdisj : Disjoint (Finset.Icc 1 (j - 1)) (Finset.Icc (j + 1) k) := by
    apply Finset.disjoint_left.mpr
    intro i hi hi'
    simp only [Finset.mem_Icc] at hi hi'
    omega
  rw [hsplit, Finset.prod_union hdisj]
  congr 1
  · rw [← Finset.prod_Ico_id_eq_factorial]
    refine Finset.prod_bij (fun i _ ↦ j - i) ?_ ?_ ?_ ?_
    · intro i hi
      simp only [Finset.mem_Icc] at hi
      simp only [Finset.mem_Ico]
      omega
    · intro i hi i' hi' heq
      simp only [Finset.mem_Icc] at hi hi'
      omega
    · intro b hb
      simp only [Finset.mem_Ico] at hb
      refine ⟨j - b, ?_, ?_⟩
      · simp only [Finset.mem_Icc]
        omega
      · omega
    · intro i hi
      apply Nat.dist_eq_sub_of_le
      have hi' := Finset.mem_Icc.mp hi
      omega
  · rw [← Finset.prod_Ico_id_eq_factorial]
    refine Finset.prod_bij (fun i _ ↦ i - j) ?_ ?_ ?_ ?_
    · intro i hi
      simp only [Finset.mem_Icc] at hi
      simp only [Finset.mem_Ico]
      omega
    · intro i hi i' hi' heq
      simp only [Finset.mem_Icc] at hi hi'
      omega
    · intro b hb
      simp only [Finset.mem_Ico] at hb
      refine ⟨b + j, ?_, ?_⟩
      · simp only [Finset.mem_Icc]
        omega
      · omega
    · intro i hi
      apply Nat.dist_eq_sub_of_le_right
      have hi' := Finset.mem_Icc.mp hi
      omega

/-- Deleting a maximum-valuation factor leaves at most the valuation of `(k-1)!`. -/
theorem small_prime_factorization_bound (k n p : ℕ) (hk : 1 ≤ k) (hp : p.Prime) :
    ∃ j ∈ Finset.Icc 1 k,
      (product k n).factorization p ≤
        (k - 1).factorial.factorization p + (n + j).factorization p := by
  have hnon : (Finset.Icc 1 k).Nonempty := ⟨1, Finset.mem_Icc.mpr ⟨le_rfl, hk⟩⟩
  obtain ⟨j, hj, hmax⟩ := (Finset.Icc 1 k).exists_max_image
    (fun i ↦ (n + i).factorization p) hnon
  have hterm : ∀ i ∈ (Finset.Icc 1 k).erase j,
      p ^ (n + i).factorization p ∣ Nat.dist i j := by
    intro i hi
    have hi' := (Finset.mem_erase.mp hi).2
    have hpi : p ^ (n + i).factorization p ∣ n + i := Nat.ordProj_dvd _ _
    have hpj : p ^ (n + i).factorization p ∣ n + j :=
      (pow_dvd_pow p (hmax i hi')).trans (Nat.ordProj_dvd _ _)
    have hsub1 : n + i - (n + j) = i - j := by omega
    have hsub2 : n + j - (n + i) = j - i := by omega
    have h1 := Nat.dvd_sub hpi hpj
    have h2 := Nat.dvd_sub hpj hpi
    rw [hsub1] at h1
    rw [hsub2] at h2
    exact dvd_add h1 h2
  have hprod := Finset.prod_dvd_prod_of_dvd (s := (Finset.Icc 1 k).erase j) (fun i ↦ p ^ (n + i).factorization p) (fun i ↦ Nat.dist i j) hterm
  rw [distance_product_eq_factorials k j hj] at hprod
  have hfact : (j - 1).factorial * (k - j).factorial ∣ (k - 1).factorial := by
    have hs : j - 1 + (k - j) = k - 1 := by
      have hj' := Finset.mem_Icc.mp hj
      omega
    rw [← hs]
    exact Nat.factorial_mul_factorial_dvd_factorial_add _ _
  have hpfull := hprod.trans hfact
  rw [Finset.prod_pow_eq_pow_sum] at hpfull
  have hsum := (hp.pow_dvd_iff_le_factorization (Nat.factorial_ne_zero (k - 1))).mp hpfull
  refine ⟨j, hj, ?_⟩
  have hne : ∀ i ∈ Finset.Icc 1 k, n + i ≠ 0 := by
    intro i hi
    have hi' := Finset.mem_Icc.mp hi
    omega
  rw [product, Nat.factorization_prod_apply hne]
  have hsplit := Finset.sum_erase_add (s := Finset.Icc 1 k)
    (f := fun i ↦ (n + i).factorization p) hj
  omega

/-- info: 'B686UniformDistance.distance_product_eq_factorials' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms distance_product_eq_factorials
/-- info: 'B686UniformDistance.small_prime_factorization_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms small_prime_factorization_bound
end B686UniformDistance