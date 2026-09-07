import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Algebra.Order.Ring.Pow
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FieldSimp

/-!
An elementary upper bound on the start of any solution, uniform in k.
This does not invoke the literature on products with omitted factors and
does not settle the original problem.
-/

namespace B686GapBounds

def product (k t : ℕ) : ℕ := ∏ i ∈ Finset.Icc 1 k, (t + i)

theorem start_bound (k n d : ℕ)
    (h : product k (n + d) = 4 * product k n) :
    3 * (n + d + 1) ≤ 4 * k * d := by
  let a : ℚ := (n : ℚ) + 1
  let b : ℚ := (n : ℚ) + d + 1
  have ha : 0 < a := by dsimp [a]; positivity
  have hb : 0 < b := by dsimp [b]; positivity
  have hd : (0 : ℚ) ≤ d := Nat.cast_nonneg d
  have hdiff : b - a = d := by dsimp [a, b]; ring
  have hab : a ≤ b := by linarith
  have hbase : -2 ≤ -(d : ℚ) / b := by
    apply (le_div_iff₀ hb).2
    dsimp [b]
    nlinarith [show (0 : ℚ) ≤ n from Nat.cast_nonneg n]
  have hbern := one_add_mul_le_pow hbase k
  have hid : (1 : ℚ) + -(d : ℚ) / b = a / b := by
    field_simp [ne_of_gt hb]
    linarith
  rw [hid] at hbern
  have hprod : (a / b) ^ k ≤
      ∏ i ∈ Finset.Icc 1 k, ((n : ℚ) + i) / ((n : ℚ) + d + i) := by
    have hc : (a / b) ^ k = ∏ _i ∈ Finset.Icc 1 k, (a / b) := by
      simp [Nat.card_Icc, div_pow]
    rw [hc]
    apply Finset.prod_le_prod
    · intro i hi
      exact div_nonneg ha.le hb.le
    · intro i hi
      have hi1 : (1 : ℚ) ≤ i := by exact_mod_cast (Finset.mem_Icc.mp hi).1
      have hden : (0 : ℚ) < (n : ℚ) + d + i := by positivity
      apply (div_le_div_iff₀ hb hden).2
      dsimp [a, b]
      nlinarith
  have hp : (0 : ℚ) < (product k n : ℚ) := by
    exact_mod_cast (show 0 < product k n from Finset.prod_pos fun i hi => by
      have hi1 := (Finset.mem_Icc.mp hi).1
      omega)
  have hratio : (∏ i ∈ Finset.Icc 1 k,
      ((n : ℚ) + i) / ((n : ℚ) + d + i)) = 1 / 4 := by
    rw [Finset.prod_div_distrib]
    have hn : (∏ i ∈ Finset.Icc 1 k, ((n : ℚ) + i)) = product k n := by
      simp [product]
    have hm : (∏ i ∈ Finset.Icc 1 k, ((n : ℚ) + d + i)) = product k (n + d) := by
      simp [product]
    rw [hn, hm, h]
    push_cast
    field_simp [ne_of_gt hp]
  rw [hratio] at hprod
  have hlast : (3 : ℚ) * b ≤ 4 * k * d := by
    have hineq := le_trans hbern hprod
    have heq : (1 + (k : ℚ) * (-(d : ℚ) / b)) * b = b - k * d := by
      field_simp
      ring
    have hm := mul_le_mul_of_nonneg_right hineq hb.le
    rw [heq] at hm
    linarith
  dsimp [b] at hlast
  exact_mod_cast hlast

theorem start_below_span_square (k n d : ℕ) (hd : 0 < d)
    (h : product k (n + d) = 4 * product k n) :
    n + 1 < (k + d) ^ 2 := by
  have hbound := start_bound k n d h
  have hmiddle : 4 * k * d ≤ (k + d) ^ 2 := by
    have hc : (4 : ℤ) * k * d ≤ ((k : ℤ) + d) ^ 2 := by
      nlinarith [sq_nonneg ((k : ℤ) - d)]
    exact_mod_cast hc
  omega

/-- info: 'B686GapBounds.start_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms start_bound
/-- info: 'B686GapBounds.start_below_span_square' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms start_below_span_square

end B686GapBounds
