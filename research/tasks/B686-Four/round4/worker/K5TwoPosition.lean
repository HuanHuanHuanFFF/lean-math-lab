import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.Positivity.Basic
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Algebra.BigOperators.Intervals

/-!
Round 4, k=5. A necessary second-order congruence, proved in the main
worker's separate module, will imply the square-divisibility premise here.
The present file proves that this premise is incompatible with the original
five-consecutive-natural-factor equation. It does not settle unrestricted k.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

namespace B686Round4K5

def p5 (t : ℤ) : ℤ := (t + 1) * (t + 2) * (t + 3) * (t + 4) * (t + 5)

theorem p5_pos (t : ℤ) (ht : 0 ≤ t) : 0 < p5 t := by
  unfold p5
  positivity

theorem rational_strip (n d : ℤ) (hn : 0 ≤ n) (hd0 : 0 ≤ d)
    (heq : p5 (n + d) = 4 * p5 n) :
    31298 * d < 10000 * (n + 5) ∧ 10000 * (n + 1) < 31299 * d := by
  have hp := p5_pos n hn
  constructor
  · by_contra hnot
    have h : 10000 * (n + 5) ≤ 31298 * d := by omega
    have hs : 41298 ^ 5 * p5 n ≤ 31298 ^ 5 * p5 (n + d) := by
      calc
        41298 ^ 5 * p5 n =
            (41298 * (n + 1)) * (41298 * (n + 2)) * (41298 * (n + 3)) *
              (41298 * (n + 4)) * (41298 * (n + 5)) := by unfold p5; ring
        _ ≤ (31298 * (n + d + 1)) * (31298 * (n + d + 2)) *
              (31298 * (n + d + 3)) * (31298 * (n + d + 4)) *
              (31298 * (n + d + 5)) := by
          gcongr ?_ * ?_ * ?_ * ?_ * ?_ <;> omega
        _ = 31298 ^ 5 * p5 (n + d) := by unfold p5; ring
    rw [heq] at hs
    norm_num at hs
    omega
  · by_contra hnot
    have h : 31299 * d ≤ 10000 * (n + 1) := by omega
    have hs : 31299 ^ 5 * p5 (n + d) ≤ 41299 ^ 5 * p5 n := by
      calc
        31299 ^ 5 * p5 (n + d) =
            (31299 * (n + d + 1)) * (31299 * (n + d + 2)) *
              (31299 * (n + d + 3)) * (31299 * (n + d + 4)) *
              (31299 * (n + d + 5)) := by unfold p5; ring
        _ ≤ (41299 * (n + 1)) * (41299 * (n + 2)) * (41299 * (n + 3)) *
              (41299 * (n + 4)) * (41299 * (n + 5)) := by
          gcongr ?_ * ?_ * ?_ * ?_ * ?_ <;> omega
        _ = 41299 ^ 5 * p5 n := by unfold p5; ring
    rw [heq] at hs
    norm_num at hs
    omega

def error (n d i : ℤ) : ℤ := 3 * (n + i) - d

theorem error_bounds (n d i : ℤ) (hd : 600 ≤ d) (hi : 1 ≤ i) (hi' : i ≤ 5)
    (hs : 31298 * d < 10000 * (n + 5) ∧ 10000 * (n + 1) < 31299 * d) :
    41847 * d < 5000 * error n d i ∧
      10000 * error n d i < 84097 * d := by
  dsimp [error]
  omega

theorem error_product_bounds (n d i j : ℤ) (hd : 600 ≤ d)
    (hi : 1 ≤ i) (hi' : i ≤ 5) (hj : 1 ≤ j) (hj' : j ≤ 5)
    (hs : 31298 * d < 10000 * (n + 5) ∧ 10000 * (n + 1) < 31299 * d) :
    70 * d ^ 2 < error n d i * error n d j ∧
      error n d i * error n d j < 71 * d ^ 2 := by
  obtain ⟨hil, hiu⟩ := error_bounds n d i hd hi hi' hs
  obtain ⟨hjl, hju⟩ := error_bounds n d j hd hj hj' hs
  have hdi : 0 < d := by omega
  have hei : 0 < error n d i := by omega
  have hej : 0 < error n d j := by omega
  have hd2 : 0 < d ^ 2 := by positivity
  constructor
  · have hmul := mul_lt_mul hil hjl.le (by positivity : 0 < 41847 * d)
      (by positivity : 0 ≤ 5000 * error n d i)
    nlinarith
  · have hmul := mul_lt_mul hiu hju.le (by positivity : 0 < 10000 * error n d j)
      (by positivity : 0 ≤ 84097 * d)
    nlinarith

theorem not_four_tail (n d i j : ℤ) (hn : 0 ≤ n) (hd : 600 ≤ d)
    (hi : 1 ≤ i) (hi' : i ≤ 5) (hj : 1 ≤ j) (hj' : j ≤ 5)
    (hdiv : d ^ 2 ∣ error n d i * error n d j) :
    p5 (n + d) ≠ 4 * p5 n := by
  intro heq
  obtain ⟨hl, hu⟩ := error_product_bounds n d i j hd hi hi' hj hj'
    (rational_strip n d hn (by omega) heq)
  obtain ⟨z, hz⟩ := hdiv
  have hd2 : 0 < d ^ 2 := by positivity
  have hzl : 70 < z := (mul_lt_mul_iff_right₀ hd2).mp (by nlinarith [hz])
  have hzu : z < 71 := (mul_lt_mul_iff_right₀ hd2).mp (by nlinarith [hz])
  omega

theorem p5_nat_product (t : ℕ) :
    p5 t = ((∏ i ∈ Finset.Icc 1 (5 : ℕ), (t + i)) : ℕ) := by
  norm_num [p5, Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]

theorem not_four_tail_product (n d i j : ℕ) (hd : 600 ≤ d)
    (hi : 1 ≤ i) (hi' : i ≤ 5) (hj : 1 ≤ j) (hj' : j ≤ 5)
    (hdiv : (d : ℤ) ^ 2 ∣ error n d i * error n d j) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  intro heq
  apply not_four_tail n d i j (by omega) (by omega) (by omega) (by omega)
    (by omega) (by omega) hdiv
  have hm := p5_nat_product (n + d)
  have hn := p5_nat_product n
  push_cast at hm
  rw [hm, hn]
  exact_mod_cast heq

/-- info: 'B686Round4K5.not_four_tail_product' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_tail_product

end B686Round4K5
