import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.RationalDivisor.FloorLayers
import Mathlib.Data.Nat.Choose.Factorization

/-!
UNCOMPILED CANDIDATE. A common finite Legendre sum proves the actual
four-factorial denominator divides the actual two-factorial numerator.
-/

open scoped BigOperators

namespace Math.B699.RationalFactorialDivisor

theorem factorial_factorization_le (a b f p : ℕ) (hp : p.Prime) :
    (a !).factorization p + (b !).factorization p +
        ((a + b + f) !).factorization p + (f !).factorization p ≤
      ((2 * a + b) !).factorization p + ((2 * f + b) !).factorization p := by
  let bound := 2 * a + 2 * b + 2 * f
  let cutoff := Nat.log p bound + 1
  have hlog (k : ℕ) (hk : k ≤ bound) : Nat.log p k < cutoff := by
    exact (Nat.log_mono_right hk).trans_lt (Nat.lt_add_one _)
  have ha : a ≤ bound := by dsimp [bound]; omega
  have hb : b ≤ bound := by dsimp [bound]; omega
  have haf : a + b + f ≤ bound := by dsimp [bound]; omega
  have hf : f ≤ bound := by dsimp [bound]; omega
  have ha2 : 2 * a + b ≤ bound := by dsimp [bound]; omega
  have hf2 : 2 * f + b ≤ bound := by dsimp [bound]; omega
  rw [Nat.factorization_factorial hp (hlog a ha),
    Nat.factorization_factorial hp (hlog b hb),
    Nat.factorization_factorial hp (hlog (a + b + f) haf),
    Nat.factorization_factorial hp (hlog f hf),
    Nat.factorization_factorial hp (hlog (2 * a + b) ha2),
    Nat.factorization_factorial hp (hlog (2 * f + b) hf2)]
  have hsum :
      (∑ i ∈ Finset.Ico 1 cutoff,
        (a / p ^ i + b / p ^ i + (a + b + f) / p ^ i + f / p ^ i)) ≤
      ∑ i ∈ Finset.Ico 1 cutoff,
        ((2 * a + b) / p ^ i + (2 * f + b) / p ^ i) := by
    apply Finset.sum_le_sum
    intro i hi
    exact factorial_floor_layer a b f (p ^ i) (pow_pos hp.pos i)
  simpa only [Finset.sum_add_distrib] using hsum

/-- The concrete balanced factorial ratio is a positive integer. -/
theorem factorial_product_dvd (a b f : ℕ) :
    a ! * b ! * (a + b + f) ! * f ! ∣ (2 * a + b) ! * (2 * f + b) ! := by
  have hden : a ! * b ! * (a + b + f) ! * f ! ≠ 0 :=
    mul_ne_zero (mul_ne_zero
      (mul_ne_zero (Nat.factorial_ne_zero a) (Nat.factorial_ne_zero b))
      (Nat.factorial_ne_zero (a + b + f))) (Nat.factorial_ne_zero f)
  have hnum : (2 * a + b) ! * (2 * f + b) ! ≠ 0 :=
    mul_ne_zero (Nat.factorial_ne_zero (2 * a + b))
      (Nat.factorial_ne_zero (2 * f + b))
  apply (Nat.factorization_le_iff_dvd hden hnum).mp
  intro p
  by_cases hp : p.Prime
  · simpa only [Nat.factorization_mul, Nat.factorial_ne_zero,
      mul_ne_zero, Finsupp.add_apply] using factorial_factorization_le a b f p hp
  · simp only [Nat.factorization_eq_zero_of_not_prime _ hp, le_refl]

/-- Increasing the second numerator handles odd v and any larger v uniformly. -/
theorem factorial_product_dvd_of_two_mul_le (a b f v : ℕ) (hv : 2 * f ≤ v) :
    a ! * b ! * (a + b + f) ! * f ! ∣ (2 * a + b) ! * (v + b) ! := by
  apply (factorial_product_dvd a b f).trans
  exact Nat.mul_dvd_mul_left _
    (Nat.factorial_dvd_factorial (show 2 * f + b ≤ v + b by omega))

end Math.B699.RationalFactorialDivisor

#print axioms Math.B699.RationalFactorialDivisor.factorial_factorization_le
#print axioms Math.B699.RationalFactorialDivisor.factorial_product_dvd
#print axioms Math.B699.RationalFactorialDivisor.factorial_product_dvd_of_two_mul_le
