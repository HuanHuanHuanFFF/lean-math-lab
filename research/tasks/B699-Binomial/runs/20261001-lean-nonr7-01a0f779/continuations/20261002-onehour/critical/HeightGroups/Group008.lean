import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.HeightGroups.Group007
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Choose.Factorization
import Mathlib.Tactic.NormNum
set_option Elab.async false
/- Frozen member 32 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Growth\Normalization.lean 83c909757f3c03f48163de8b1733ce6dd9e817cd417f775f1df254ed7a266a4d -/
section HeightMember032



/-!
Exact source normalization. The constants K_delta*M(weight)/lambda can be
checked by the low-degree actual Padé polynomial at m=1. This is an identity,
not an assumption of positivity, a numerical bound, or a full seed result.
-/

namespace Math.B699.PadeGrowthNormalization

open Polynomial Math.B699.PadeMoment Math.B699.PadeMomentIdentity
open Math.B699.PadeConstruction Math.B699.PadeActualGrowth Math.B699.GrowthLeaf
open Math.B699.ElementaryFactorialBound

noncomputable def actualQ (c d delta m : ℕ) (z : ℚ) : ℚ :=
  (qPolynomial (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
    (Int.castRingHom ℚ) z

noncomputable def actualE (c d delta m : ℕ) (z : ℚ) : ℚ :=
  (ePolynomial (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
    (Int.castRingHom ℚ) z

theorem prefactor_eq_factorialTerm (c d delta m : ℕ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) :
    prefactor (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) =
      factorialTerm c d delta m := by
  have hm' : m = (m - 1) + 1 := by omega
  have hd : d * m = d * (m - 1) + d := by
    conv_lhs => rw [hm']
    ring
  have he : (c - d) * m = (c - d) * (m - 1) + (c - d) := by
    conv_lhs => rw [hm']
    ring
  have hc : c = d + (c - d) := by omega
  have htotal : (c + d) * m = d * m + (c - d) * m + d * m := by
    conv_lhs => rw [hc]
    ring
  have hsum : d * m - delta + ((c - d) * m + delta - 1) +
      (d * m - delta) + 1 = (c + d) * m - delta := by omega
  unfold prefactor factorialTerm
  rw [hsum]
  congr 1
  ring

theorem actualQ_one_abs (c d delta : ℕ) (z : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hz : 0 ≤ z) :
    |actualQ c d delta 1 z| = factorialTerm c d delta 1 * moment (qWeight c d delta z) := by
  unfold actualQ
  rw [← qSource_eq_actual_eval, qSource_eq_moment]
  simp only [qMoment, abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul]
  rw [abs_of_pos (prefactor_pos _ _ _)]
  rw [qKernel_eq_weight_core c d delta 1 z hcd hdelta (by omega)]
  simp only [Nat.sub_self, pow_zero, mul_one]
  rw [abs_of_nonneg (bernsteinCone_moment_nonneg (cone_qWeight c d delta z hz))]
  have hp : prefactor (d - delta) (c - d + delta - 1) (d - delta) =
      factorialTerm c d delta 1 := by
    simpa only [Nat.mul_one] using prefactor_eq_factorialTerm c d delta 1 hcd hdelta (by omega)
  rw [hp]

theorem actualE_one_abs (c d delta : ℕ) (z : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hz : z ≤ 1) :
    |actualE c d delta 1 z| = factorialTerm c d delta 1 * moment (eWeight c d delta z) := by
  unfold actualE
  rw [← eSource_eq_actual_eval, eSource_eq_moment]
  simp only [eMoment, abs_mul]
  rw [abs_of_pos (prefactor_pos _ _ _)]
  rw [eKernel_eq_weight_core c d delta 1 z hcd hdelta (by omega)]
  simp only [Nat.sub_self, pow_zero, mul_one]
  rw [abs_of_nonneg (bernsteinCone_moment_nonneg (cone_eWeight c d delta z hz))]
  have hp : prefactor (d - delta) (c - d + delta - 1) (d - delta) =
      factorialTerm c d delta 1 := by
    simpa only [Nat.mul_one] using prefactor_eq_factorialTerm c d delta 1 hcd hdelta (by omega)
  rw [hp]

theorem q_normalized_constant (c d delta : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hz : 0 ≤ z) :
    (2 * factorialTerm c d delta 1 / beta c d) * moment (qWeight c d delta z) / lam =
      2 * |actualQ c d delta 1 z| / (beta c d * lam) := by
  rw [actualQ_one_abs c d delta z hcd hdelta hz]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

theorem e_normalized_constant (c d delta : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hz : z ≤ 1) :
    (2 * factorialTerm c d delta 1 / beta c d) * moment (eWeight c d delta z) / lam =
      2 * |actualE c d delta 1 z| / (beta c d * lam) := by
  rw [actualE_one_abs c d delta z hcd hdelta hz]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

#print axioms Math.B699.PadeGrowthNormalization.prefactor_eq_factorialTerm
#print axioms Math.B699.PadeGrowthNormalization.actualQ_one_abs
#print axioms Math.B699.PadeGrowthNormalization.actualE_one_abs
#print axioms Math.B699.PadeGrowthNormalization.q_normalized_constant
#print axioms Math.B699.PadeGrowthNormalization.e_normalized_constant

end Math.B699.PadeGrowthNormalization

end HeightMember032
/- Frozen member 33 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFive\Prefix.lean 737f2a226a7b1c21ca34ec8cbe738bcd2abfcdb7de7adffdce3d0eb7efe89c20 -/
section HeightMember033






/-!
UNCOMPILED minimal prefix for the fixed i11 (2,5) seed.
The numerator is 3, so the actual remainder keeps 3^(2*u+1).
No G lower bound, growth bound, identity or determinant is an external premise.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.I11TwoFivePrefix

open Math.B699.PadeActualRows Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.PadeRationalHomogeneous Math.B699.PadeGrowthNormalization

def rowDelta (row : Bool) : ℕ := if row then 0 else 1

theorem rowDelta_cases (row : Bool) : rowDelta row = 0 ∨ rowDelta row = 1 := by
  cases row <;> simp [rowDelta]

theorem row_degrees (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (4 * m - rowDelta row) + (m + rowDelta row - 1) + 1 = 5 * m := by
  rcases rowDelta_cases row with h | h <;> rw [h] <;> omega

theorem actual_rows (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    actualPRow (4 * m) (m - 1) 3 128 row =
      pNormalizedValue (4 * m - rowDelta row) (m + rowDelta row - 1) 3 128 ∧
    actualQRow (4 * m) (m - 1) 3 128 row =
      qNormalizedValue (4 * m - rowDelta row) (m + rowDelta row - 1)
        (4 * m - rowDelta row) 3 128 := by
  have hv : m - 1 + 1 = m := by omega
  cases row <;> simp [rowDelta, actualPRow, actualQRow, hv]

/-- The Q row is cleared by its own actual coefficient gcd. -/
theorem actual_q_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (qContent (4 * m - rowDelta row) (m + rowDelta row - 1)
        (4 * m - rowDelta row) : ℚ) *
      (actualQRow (4 * m) (m - 1) 3 128 row : ℚ) =
    (128 : ℚ) ^ (4 * m - rowDelta row) *
      actualQ 5 4 (rowDelta row) m (3 / 128) := by
  have hq := (actual_rows m hm row).2
  rw [hq, qContent_mul_qNormalizedValue_cast_q]
  have h := q_homogeneousValue_cast_q (4 * m - rowDelta row)
    (m + rowDelta row - 1) (4 * m - rowDelta row) 3 128 (by decide)
  simpa only [actualQ, show (5 : ℕ) - 4 = 1 by decide, one_mul,
    Int.cast_ofNat] using h

/-- The exact D=3 remainder; no 3-power is suppressed in this equality. -/
theorem actual_remainder (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (qContent (4 * m - rowDelta row) (m + rowDelta row - 1)
        (4 * m - rowDelta row) : ℚ) *
      (((128 : ℤ) ^ (5 * m) * actualPRow (4 * m) (m - 1) 3 128 row -
        (125 : ℤ) ^ (5 * m) * actualQRow (4 * m) (m - 1) 3 128 row : ℤ) : ℚ) =
    (128 : ℚ) ^ (m + rowDelta row - 1) *
      (3 : ℚ) ^ (2 * (4 * m - rowDelta row) + 1) *
      actualE 5 4 (rowDelta row) m (3 / 128) := by
  obtain ⟨hp, hq⟩ := actual_rows m hm row
  rw [hp, hq]
  have h := normalized_integer_error_cast_q (4 * m - rowDelta row)
    (m + rowDelta row - 1) 3 128 (by decide)
  simpa only [row_degrees m hm row, show (128 : ℤ) - 3 = 125 by decide,
    Int.cast_ofNat, actualE, show (5 : ℕ) - 4 = 1 by decide, one_mul] using h

/-- Both rows fit the *correct* uniform scale (128*3^8)^m.
For delta=0 the leftover factor is 3/128; for delta=1 it is 1/3. -/
theorem error_scale_le (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (128 : ℚ) ^ (m + rowDelta row - 1) *
      (3 : ℚ) ^ (2 * (4 * m - rowDelta row) + 1) ≤
    ((128 : ℚ) * 3 ^ 8) ^ m := by
  have hbase : ((128 : ℚ) * 3 ^ 8) ^ m = (128 : ℚ) ^ m * 3 ^ (8 * m) := by
    rw [mul_pow, ← pow_mul]
  rw [hbase]
  rcases rowDelta_cases row with h | h
  · rw [h]
    simp only [Nat.add_zero, Nat.sub_zero]
    have he : 2 * (4 * m) + 1 = 8 * m + 1 := by omega
    rw [he, pow_succ]
    calc
      (128 : ℚ) ^ (m - 1) * (3 ^ (8 * m) * 3) =
          ((128 : ℚ) ^ (m - 1) * 3) * 3 ^ (8 * m) := by ring
      _ ≤ ((128 : ℚ) ^ (m - 1) * 128) * 3 ^ (8 * m) :=
        mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_left (by norm_num : (3 : ℚ) ≤ 128)
            (pow_nonneg (by norm_num : (0 : ℚ) ≤ 128) (m - 1)))
          (pow_nonneg (by norm_num : (0 : ℚ) ≤ 3) (8 * m))
      _ = (128 : ℚ) ^ m * 3 ^ (8 * m) := by
        rw [← pow_succ, Nat.sub_add_cancel hm]
  · rw [h]
    have hv : m + 1 - 1 = m := by omega
    rw [hv]
    exact mul_le_mul_of_nonneg_left
      (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 3)
        (by omega : 2 * (4 * m - 1) + 1 ≤ 8 * m))
      (pow_nonneg (by norm_num : (0 : ℚ) ≤ 128) m)

end Math.B699.I11TwoFivePrefix

end HeightMember033
/- Frozen member 34 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\RationalDivisor\FloorLayers.lean a20112ab71a801e0b13f3f823bff116bd5c30a9665e37a2e289b22adf5d76e24 -/
section HeightMember034


/-!
UNCOMPILED CANDIDATE. Exact natural division identities and the concrete
factorial-valuation layer. No divisibility or analytic estimate is assumed.
-/

namespace Math.B699.RationalFactorialDivisor

theorem twice_add_div_decomposition (a b n : ℕ) (hn : 0 < n) :
    (2 * a + b) / n =
      2 * (a / n) + b / n + (2 * (a % n) + b % n) / n := by
  have heq : 2 * a + b =
      n * (2 * (a / n) + b / n) + (2 * (a % n) + b % n) := by
    calc
      2 * a + b =
          2 * (n * (a / n) + a % n) + (n * (b / n) + b % n) := by
        simp only [Nat.div_add_mod]
      _ = _ := by
        simp only [Nat.mul_add, Nat.add_mul]
        ac_rfl
  rw [heq, Nat.mul_add_div hn]

theorem triple_add_div_decomposition (a b f n : ℕ) (hn : 0 < n) :
    (a + b + f) / n =
      a / n + b / n + f / n + (a % n + b % n + f % n) / n := by
  have heq : a + b + f =
      n * (a / n + b / n + f / n) + (a % n + b % n + f % n) := by
    calc
      a + b + f = (n * (a / n) + a % n) +
          (n * (b / n) + b % n) + (n * (f / n) + f % n) := by
        simp only [Nat.div_add_mod]
      _ = _ := by
        simp only [Nat.mul_add, Nat.add_mul]
        ac_rfl
  rw [heq, Nat.mul_add_div hn]

/-- The middle numerator is at most one of the two outer numerators. -/
theorem middle_div_le_outer_div_sum (A B F n : ℕ) :
    (A + B + F) / n ≤ (2 * A + B) / n + (2 * F + B) / n := by
  by_cases h : A ≤ F
  · have hnum : A + B + F ≤ 2 * F + B := by omega
    have hdiv : (A + B + F) / n ≤ (2 * F + B) / n := Nat.div_le_div_right hnum
    exact Nat.le_trans hdiv (Nat.le_add_left _ _)
  · have hnum : A + B + F ≤ 2 * A + B := by omega
    have hdiv : (A + B + F) / n ≤ (2 * A + B) / n := Nat.div_le_div_right hnum
    exact Nat.le_trans hdiv (Nat.le_add_right _ _)

/-- Every prime-power layer of the concrete factorial ratio is nonnegative. -/
theorem factorial_floor_layer (a b f n : ℕ) (hn : 0 < n) :
    a / n + b / n + (a + b + f) / n + f / n ≤
      (2 * a + b) / n + (2 * f + b) / n := by
  rw [twice_add_div_decomposition a b n hn,
    twice_add_div_decomposition f b n hn,
    triple_add_div_decomposition a b f n hn]
  have hres := middle_div_le_outer_div_sum (a % n) (b % n) (f % n) n
  omega

end Math.B699.RationalFactorialDivisor

#print axioms Math.B699.RationalFactorialDivisor.twice_add_div_decomposition
#print axioms Math.B699.RationalFactorialDivisor.triple_add_div_decomposition
#print axioms Math.B699.RationalFactorialDivisor.middle_div_le_outer_div_sum
#print axioms Math.B699.RationalFactorialDivisor.factorial_floor_layer

end HeightMember034
/- Frozen member 35 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\RationalDivisor\FactorialDivisibility.lean 782d08f0f647898240b0593a5718dd6915db0e50c7f5f7581433f6df8451a489 -/
section HeightMember035



/-!
UNCOMPILED CANDIDATE. A common finite Legendre sum proves the actual
four-factorial denominator divides the actual two-factorial numerator.
-/

open scoped BigOperators

open scoped Nat

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
  · rw [Nat.factorization_mul
        (mul_ne_zero (mul_ne_zero (Nat.factorial_ne_zero a) (Nat.factorial_ne_zero b))
          (Nat.factorial_ne_zero (a + b + f))) (Nat.factorial_ne_zero f),
      Nat.factorization_mul (mul_ne_zero (Nat.factorial_ne_zero a) (Nat.factorial_ne_zero b))
        (Nat.factorial_ne_zero (a + b + f)),
      Nat.factorization_mul (Nat.factorial_ne_zero a) (Nat.factorial_ne_zero b),
      Nat.factorization_mul (Nat.factorial_ne_zero (2 * a + b))
        (Nat.factorial_ne_zero (2 * f + b))]
    simpa only [Finsupp.add_apply] using factorial_factorization_le a b f p hp
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

end HeightMember035
