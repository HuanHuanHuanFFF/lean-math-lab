import research.tasks.«B686-Four».formalization.UniformDistance.GcdBound
import research.tasks.«B686-Four».round8.continuation.SizeBounds

namespace B686UniformRound9

open Finset

theorem products_agree (k t : ℕ) :
    B686Round8.product k t = B686Target.product k t := rfl

theorem product_le_factorial_pow_choose (k n m : ℕ) (hk : 2 ≤ k)
    (hsep : n + k ≤ m)
    (heq : B686Target.product k m = 4 * B686Target.product k n) :
    B686Target.product k n ≤
      (k - 1).factorial * (n + k) ^ (2 * k - 1).primeCounting *
        Nat.choose (m - n + k - 1) (2 * k - 1) := by
  have h := B686UniformDistance.gcd_le_factorial_pow_choose k n m (by omega) hsep
  simpa only [products_agree, heq, Nat.gcd_mul_left_left] using h

theorem pow_lt_product (k m : ℕ) (hk : 1 ≤ k) (hm : 0 < m) :
    m ^ k < B686Target.product k m := by
  calc
    m ^ k = ∏ i ∈ Icc 1 k, m := by simp [Nat.card_Icc]
    _ < B686Target.product k m := by
      apply Finset.prod_lt_prod
      · intro i hi
        exact hm
      · intro i hi
        omega
      · refine ⟨1, by simp; omega, ?_⟩
        omega

theorem factorial_pred_le_pow (k : ℕ) : (k - 1).factorial ≤ k ^ k := by
  exact (Nat.factorial_le (Nat.sub_le k 1)).trans (Nat.factorial_le_pow k)

theorem uniform_distance_bound_large_m (k n m : ℕ) (hk : 2 ≤ k)
    (hsep : n + k ≤ m) (heq : B686Target.product k m = 4 * B686Target.product k n)
    (hm : k ^ 3 ≤ m) :
    k ^ 2 < 250000 * (m - n) := by
  have hs := (B686Size.size_bounds_nat k n m hk hsep heq).2
  have hmul : k * (3 * k ^ 2) < k * (4 * (m - n)) := by nlinarith
  have hcancel : 3 * k ^ 2 < 4 * (m - n) :=
    (Nat.mul_lt_mul_left (by omega : 0 < k)).mp hmul
  nlinarith

/-- info: 'B686UniformRound9.products_agree' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms products_agree
/-- info: 'B686UniformRound9.product_le_factorial_pow_choose' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms product_le_factorial_pow_choose
/-- info: 'B686UniformRound9.pow_lt_product' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms pow_lt_product
/-- info: 'B686UniformRound9.uniform_distance_bound_large_m' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms uniform_distance_bound_large_m

end B686UniformRound9

