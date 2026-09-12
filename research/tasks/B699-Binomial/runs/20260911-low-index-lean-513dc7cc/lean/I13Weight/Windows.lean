import Mathlib.Algebra.Divisibility.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Nat.Choose.Basic
import Lean.Elab.Tactic.Omega

/-! UNCOMPILED. Elementary weighted-window divisibility and size lemmas.
No binomial localization or noCommon premise is built into these helpers. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13WeightedTransfer
open scoped BigOperators

def weightedWindow (N s : ℕ) : ℕ := ∏ r ∈ Finset.range s, (N - r) ^ (s - r)
def doubleWindow (n j : ℕ) : ℕ := weightedWindow j 8 * weightedWindow (n - j) 8

theorem power_dvd_weighted_window (N s b X : ℕ) (hdiv : X ∣ N - b) :
    X ^ (s - b) ∣ weightedWindow N s := by
  by_cases hb : b < s
  · have hpow : X ^ (s - b) ∣ (N - b) ^ (s - b) := pow_dvd_pow_of_dvd hdiv _
    exact hpow.trans (Finset.dvd_prod_of_mem
      (fun r : ℕ => (N - r) ^ (s - r)) (Finset.mem_range.mpr hb))
  · have hs : s - b = 0 := Nat.sub_eq_zero_of_le (by omega)
    simp only [hs, Nat.pow_zero]
    exact one_dvd _

theorem weighted_window_pos (N s : ℕ) (hs : s ≤ N) : 0 < weightedWindow N s := by
  unfold weightedWindow
  apply Finset.prod_pos
  intro r hr
  have hrN : r < N := lt_of_lt_of_le (Finset.mem_range.mp hr) hs
  exact Nat.pow_pos (Nat.sub_pos_of_lt hrN)

theorem weighted_window_upper (N n s : ℕ) (hN : N ≤ n) :
    weightedWindow N s ≤ n ^ (∑ r ∈ Finset.range s, s - r) := by
  calc
    _ ≤ ∏ r ∈ Finset.range s, n ^ (s - r) := by
      apply Finset.prod_le_prod'
      intro r _
      exact Nat.pow_le_pow_left ((Nat.sub_le N r).trans hN) (s - r)
    _ = n ^ (∑ r ∈ Finset.range s, s - r) :=
      Finset.prod_pow_eq_pow_sum (Finset.range s) (fun r => s - r) n

theorem eight_weight_sum : (∑ r ∈ Finset.range 8, (8 - r)) = (36 : ℕ) := by decide

theorem double_window_pos (n j : ℕ) (hj : 8 ≤ j) (hk : 8 ≤ n - j) :
    0 < doubleWindow n j :=
  Nat.mul_pos (weighted_window_pos j 8 hj) (weighted_window_pos (n - j) 8 hk)

theorem double_window_upper (n j : ℕ) (hjn : j ≤ n) : doubleWindow n j ≤ n ^ 72 := by
  have hl : weightedWindow j 8 ≤ n ^ 36 := by
    simpa only [eight_weight_sum] using weighted_window_upper j n 8 hjn
  have hr : weightedWindow (n - j) 8 ≤ n ^ 36 := by
    simpa only [eight_weight_sum] using weighted_window_upper (n - j) n 8 (Nat.sub_le n j)
  calc
    _ ≤ n ^ 36 * n ^ 36 := Nat.mul_le_mul hl hr
    _ = n ^ 72 := by rw [← Nat.pow_add]

theorem two_window_weight (a b c : ℕ) (habc : b + c = a) :
    16 - a ≤ (8 - b) + (8 - c) := by omega

theorem component_power_dvd_double_window (n j a b c X : ℕ)
    (habc : b + c = a) (hj : X ∣ j - b) (hk : X ∣ (n - j) - c) :
    X ^ (16 - a) ∣ doubleWindow n j := by
  have hmul : X ^ ((8 - b) + (8 - c)) ∣ doubleWindow n j := by
    simpa only [Nat.pow_add, doubleWindow] using
      Nat.mul_dvd_mul (power_dvd_weighted_window j 8 b X hj)
        (power_dvd_weighted_window (n - j) 8 c X hk)
  exact (Nat.pow_dvd_pow X (two_window_weight a b c habc)).trans hmul

end Math.B699.I13WeightedTransfer
