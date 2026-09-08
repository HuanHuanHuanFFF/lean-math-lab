import LinearPrimeCounting
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset

namespace B686RankProduct

open Finset

theorem prime_counting_nth (j : ℕ) :
    (Nat.nth Nat.Prime j).primeCounting = j + 1 := by
  change Nat.count Nat.Prime (Nat.nth Nat.Prime j + 1) = j + 1
  rw [Nat.count_succ]
  have h := Nat.primeCounting'_nth_eq j
  change Nat.count Nat.Prime (Nat.nth Nat.Prime j) = j at h
  simp [Nat.prime_nth_prime, h]

theorem nth_prime_le_of_lt_count {j k : ℕ} (hj : j < k.primeCounting) :
    Nat.nth Nat.Prime j ≤ k := by
  by_contra h
  have hle : k + 1 ≤ Nat.nth Nat.Prime j := by omega
  have hc := Nat.monotone_primeCounting' hle
  rw [Nat.primeCounting'_nth_eq] at hc
  change k.primeCounting ≤ j at hc
  omega

theorem rank_factor_bound (j : ℕ) :
    77 * (j + 1) ≤ 16 * Nat.nth Nat.Prime (j + 8) := by
  have h := B686PrimeCounting.prime_counting_linear (Nat.nth Nat.Prime (j + 8))
  rw [prime_counting_nth] at h
  omega

/-- A finite-product replacement for the weighted prime-counting integral. -/
theorem factorial_le_scaled_prime_product (k : ℕ) :
    77 ^ (k.primeCounting - 8) * (k.primeCounting - 8).factorial ≤
      16 ^ (k.primeCounting - 8) * ∏ p ∈ Nat.primesLE k, p := by
  let s := k.primeCounting - 8
  let f : ℕ → ℕ := fun j => Nat.nth Nat.Prime (j + 8)
  have hinj : Function.Injective f := by
    intro a b h
    have he := (Nat.nth_strictMono Nat.infinite_setOfPred_prime).injective h
    omega
  have hsub : (range s).image f ⊆ Nat.primesLE k := by
    intro p hp
    obtain ⟨j, hj, rfl⟩ := mem_image.mp hp
    refine Nat.mem_primesLE.mpr ⟨?_, Nat.prime_nth_prime _⟩
    apply nth_prime_le_of_lt_count
    have hj' := mem_range.mp hj
    dsimp [s] at hj'
    omega
  have hprod : (∏ j ∈ range s, f j) ≤ ∏ p ∈ Nat.primesLE k, p := by
    calc
      (∏ j ∈ range s, f j) = ∏ p ∈ (range s).image f, p := by
        rw [prod_image]
        exact fun a _ b _ h => hinj h
      _ ≤ ∏ p ∈ Nat.primesLE k, p :=
        prod_le_prod_of_subset_of_one_le hsub (fun _ _ => Nat.zero_le _)
          (fun p hp _ => (Nat.prime_of_mem_primesLE hp).one_le)
  calc
    77 ^ s * s.factorial = ∏ j ∈ range s, 77 * (j + 1) := by
      simp [prod_mul_distrib]
    _ ≤ ∏ j ∈ range s, 16 * f j := by
      exact Finset.prod_le_prod (fun _ _ => Nat.zero_le _) (fun j _ => rank_factor_bound j)
    _ = 16 ^ s * ∏ j ∈ range s, f j := by simp [prod_mul_distrib]
    _ ≤ 16 ^ s * ∏ p ∈ Nat.primesLE k, p := Nat.mul_le_mul_left _ hprod

/-- info: 'B686RankProduct.factorial_le_scaled_prime_product' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms factorial_le_scaled_prime_product

end B686RankProduct
