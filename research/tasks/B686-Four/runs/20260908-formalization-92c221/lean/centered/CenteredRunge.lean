import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import research.tasks.«B686-Four».lean.Round3TwoScaleGap

/-!
The original-product bridge and the final two-scale argument for the all-even
centered Runge bound.  The auxiliary construction is supplied in the companion
modules.  Conditional interfaces here are explicitly named as such.
-/

namespace B686CenteredRunge

open Finset

/-- The product appearing in the original problem, with its original indexing. -/
def product (k n : ℕ) : ℕ := ∏ i ∈ Icc 1 k, (n + i)

/-- The product after pairing about the midpoint of an even block. -/
def centeredProduct (r : ℕ) (x : ℤ) : ℤ :=
  ∏ i ∈ range r, (x ^ 2 - (2 * (i : ℤ) + 1) ^ 2)

theorem product_eq_ascFactorial (k n : ℕ) :
    product k n = (n + 1).ascFactorial k := by
  induction k with
  | zero => simp [product]
  | succ k ih =>
    rw [product, prod_Icc_succ_top (by omega)]
    change product k n * (n + (k + 1)) = _
    rw [ih, Nat.ascFactorial_succ]
    ring

theorem product_two_ends (k n : ℕ) :
    product (k + 2) n = (n + 1) * product k (n + 1) * (n + k + 2) := by
  simp only [product_eq_ascFactorial]
  rw [show k + 2 = (k + 1) + 1 by omega, Nat.ascFactorial_succ]
  have h := Nat.ascFactorial_mul_ascFactorial (n + 1) 1 k
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero, mul_one] at h
  rw [show k + 1 = 1 + k by omega, ← h]
  ring

theorem centeredProduct_at_center (r n : ℕ) :
    centeredProduct r (2 * (n : ℤ) + 2 * r + 1) =
      2 ^ (2 * r) * (product (2 * r) n : ℤ) := by
  induction r generalizing n with
  | zero => simp [centeredProduct, product]
  | succ r ih =>
    rw [centeredProduct, prod_range_succ]
    change centeredProduct r (2 * (n : ℤ) + 2 * (r + 1) + 1) *
      ((2 * (n : ℤ) + 2 * (r + 1) + 1) ^ 2 - (2 * r + 1) ^ 2) = _
    have hc : 2 * (n : ℤ) + 2 * (r + 1) + 1 =
        2 * ((n + 1 : ℕ) : ℤ) + 2 * r + 1 := by push_cast; ring
    rw [hc, ih]
    have hk : 2 * (r + 1) = 2 * r + 2 := by omega
    rw [hk, product_two_ends, pow_add]
    push_cast
    ring

theorem centered_equation_of_original (r n m : ℕ)
    (heq : product (2 * r) m = 4 * product (2 * r) n) :
    centeredProduct r (2 * (m : ℤ) + 2 * r + 1) =
      4 * centeredProduct r (2 * (n : ℤ) + 2 * r + 1) := by
  rw [centeredProduct_at_center, centeredProduct_at_center, heq]
  push_cast
  ring

/-- Precisely the three numerical estimates used by the integer gap argument. -/
structure ValueControl (r ell : ℕ) (L e x a E : ℤ) : Prop where
  positive : 1 ≤ a
  small : 3 * |E| < a
  main_lower : 7 * (L * x ^ r) ≤ 8 * a
  main_upper : 8 * a ≤ 9 * (L * x ^ r)
  error_lower : 7 * (|e| * x ^ ell) ≤ 8 * |E|
  error_upper : 8 * |E| ≤ 9 * (|e| * x ^ ell)

theorem incompatible_centered_values (r ell : ℕ) (L e x y ax ay ex ey : ℤ)
    (hL : 0 < L) (he : e ≠ 0) (hx : 0 < x) (hxy : x ≤ y)
    (hell : ell ≤ r)
    (hcx : ValueControl r ell L e x ax ex)
    (hcy : ValueControl r ell L e y ay ey)
    (hidx : ax ^ 2 = L ^ 2 * centeredProduct r x + ex)
    (hidy : ay ^ 2 = L ^ 2 * centeredProduct r y + ey) :
    centeredProduct r y ≠ 4 * centeredProduct r x := by
  intro heq
  have hdeg : (|e| * y ^ ell) * (L * x ^ r) ≤
      (L * y ^ r) * (|e| * x ^ ell) := by
    have hp := B686Round3TwoScaleGap.power_growth x y ell r hx.le hxy hell
    have hmul := mul_le_mul_of_nonneg_left hp (mul_nonneg (abs_nonneg e) hL.le)
    nlinarith only [hmul]
  have hxL : 0 < L * x ^ r := mul_pos hL (pow_pos hx r)
  have hxe : 0 < |e| * x ^ ell := mul_pos (abs_pos.mpr he) (pow_pos hx ell)
  have hnxlo : -ax < 3 * ex := by
    have := neg_abs_le ex
    linarith [hcx.small]
  have hnxhi : 3 * ex < ax := by
    have := le_abs_self ex
    linarith [hcx.small]
  have hnylo : -ay < 3 * ey := by
    have := neg_abs_le ey
    linarith [hcy.small]
  have hnyhi : 3 * ey < ay := by
    have := le_abs_self ey
    linarith [hcy.small]
  have hh := B686Round3TwoScaleGap.not_four_of_two_scales
    ax ay (L ^ 2 * centeredProduct r x) (L ^ 2 * centeredProduct r y)
    ex ey (L * x ^ r) (L * y ^ r) (|e| * x ^ ell) (|e| * y ^ ell)
    hcx.positive hcy.positive hidx hidy hnxlo hnxhi hnylo hnyhi hxL hxe
    hcx.main_upper hcy.main_lower hcx.error_lower hcy.error_upper hdeg
  apply hh
  rw [heq]
  ring

end B686CenteredRunge
