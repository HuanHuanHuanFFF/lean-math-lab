import Mathlib.NumberTheory.PrimeCounting
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Lean.Elab.Tactic.Omega

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699Height

/-- Positive exactly on the index range for the discriminant height argument. -/
def heightSlack (i : ℕ) : ℕ := i - 4 * i.primesBelow.card

/-- A factorial-cancelled upper bound for the residual positive power of n. -/
def heightBase (i : ℕ) : ℕ := 2 ^ (4 * i) * i ^ (i + 3)

/-- An explicit computable bound. The division is natural-number division;
its height interpretation is used only when `4 * i.primesBelow.card < i`. -/
def effectiveHeight (i : ℕ) : ℕ :=
  2 ^ (4 * i / heightSlack i + 1) *
    i ^ ((i + 3) / heightSlack i + 1)

lemma le_div_add_one_mul {a b : ℕ} (hb : 0 < b) : a ≤ (a / b + 1) * b := by
  have hmod := Nat.mod_lt a hb
  have hsplit := Nat.div_add_mod a b
  nlinarith

/-- The advertised height is a conservative integer upper root of heightBase. -/
theorem heightBase_le_effectiveHeight_pow {i : ℕ}
    (hi : 1 ≤ i) (hcount : 4 * i.primesBelow.card < i) :
    heightBase i ≤ effectiveHeight i ^ heightSlack i := by
  have hs : 0 < heightSlack i := by unfold heightSlack; omega
  have htwo := Nat.pow_le_pow_right (by decide : 0 < 2)
    (le_div_add_one_mul (a := 4 * i) hs)
  have hii := Nat.pow_le_pow_right (by omega : 0 < i)
    (le_div_add_one_mul (a := i + 3) hs)
  simpa only [heightBase, effectiveHeight, mul_pow, ← pow_mul] using
    Nat.mul_le_mul htwo hii

/-- Pure arithmetic terminal consumer. Its input is explicitly the still
required residual-power inequality; it does not assert the polynomial bridge. -/
theorem le_effectiveHeight_of_pow_le {n i : ℕ}
    (hi : 1 ≤ i) (hcount : 4 * i.primesBelow.card < i)
    (hpower : n ^ heightSlack i ≤ heightBase i) : n ≤ effectiveHeight i := by
  have hs : heightSlack i ≠ 0 := by unfold heightSlack; omega
  have hle := hpower.trans (heightBase_le_effectiveHeight_pow hi hcount)
  by_contra h
  exact (Nat.pow_lt_pow_left (by omega : effectiveHeight i < n) hs).not_ge hle

/-- Exponent cancellation after the actual factorial-scaled discriminant bound.
No real powers or logarithms enter this arithmetic lemma. -/
theorem residual_power_le_of_discriminant_power {n i t : ℕ}
    (hn : 0 < n) (hi : 3 ≤ i) (ht : 4 * t < i)
    (hscaled : n ^ (4 * i * (i - 1)) ≤
      2 ^ (4 * i * (i - 1)) * i ^ (i * (i + 1)) *
        n ^ ((3 * i + 4 * t) * (i - 1))) :
    n ^ (i - 4 * t) ≤ heightBase i := by
  have hsub : i - 4 * t + 4 * t = i := Nat.sub_add_cancel (by omega)
  have hexp : (i - 4 * t) * (i - 1) +
      (3 * i + 4 * t) * (i - 1) = 4 * i * (i - 1) := by nlinarith
  have hcancel : n ^ ((i - 4 * t) * (i - 1)) ≤
      2 ^ (4 * i * (i - 1)) * i ^ (i * (i + 1)) := by
    apply Nat.le_of_mul_le_mul_right (c := n ^ ((3 * i + 4 * t) * (i - 1)))
    · simpa only [← pow_add, hexp] using hscaled
    · exact Nat.pow_pos hn
  have him : i - 1 + 1 = i := Nat.sub_add_cancel (by omega)
  have hie : i * (i + 1) ≤ (i + 3) * (i - 1) := by nlinarith
  have hbase : 2 ^ (4 * i * (i - 1)) * i ^ (i * (i + 1)) ≤
      heightBase i ^ (i - 1) := by
    simpa only [heightBase, mul_pow, ← pow_mul] using
      Nat.mul_le_mul_left (2 ^ (4 * i * (i - 1)))
        (Nat.pow_le_pow_right (by omega : 0 < i) hie)
  have hle : (n ^ (i - 4 * t)) ^ (i - 1) ≤ heightBase i ^ (i - 1) := by
    simpa only [← pow_mul] using hcancel.trans hbase
  by_contra h
  exact (Nat.pow_lt_pow_left (by omega : heightBase i < n ^ (i - 4 * t))
    (by omega : i - 1 ≠ 0)).not_ge hle

end B699Height
