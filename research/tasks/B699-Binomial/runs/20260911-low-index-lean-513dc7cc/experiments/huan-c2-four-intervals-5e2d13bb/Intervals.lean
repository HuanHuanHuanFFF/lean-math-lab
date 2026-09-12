import Mathlib.Data.Nat.Basic
import Lean.Elab.Tactic.Omega

/-! UNCOMPILED. Uniform four-interval arithmetic, with natural subtraction explicit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.C2FourIntervals

theorem four_interval_bounds (m q j : ℕ)
    (hm : 3 ≤ m) (hj : 1 ≤ j ∧ j ≤ 4)
    (hlo : 4 * m < j * q) (hhi : 2 * j * q ≤ 9 * m - 2) :
    m < q ∧ (j - 1) * q ≤ 4 * m ∧ 4 * m < j * q := by
  have hc : j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 := by omega
  rcases hc with rfl | rfl | rfl | rfl <;> omega

theorem four_interval_div (m q j : ℕ)
    (hm : 3 ≤ m) (hj : 1 ≤ j ∧ j ≤ 4)
    (hlo : 4 * m < j * q) (hhi : 2 * j * q ≤ 9 * m - 2) :
    (4 * m) / q = j - 1 := by
  have hb := four_interval_bounds m q j hm hj hlo hhi
  apply Nat.div_eq_of_lt_le hb.2.1
  simpa only [Nat.sub_add_cancel hj.1] using hlo

theorem four_interval_contributes (m q j : ℕ)
    (hm : 3 ≤ m) (hj : 1 ≤ j ∧ j ≤ 4)
    (hlo : 4 * m < j * q) (hhi : 2 * j * q ≤ 9 * m - 2) :
    2 * q + 1 ≤ 2 * ((4 * m) % q) + m % q := by
  have hb := four_interval_bounds m q j hm hj hlo hhi
  have hd := four_interval_div m q j hm hj hlo hhi
  have hr : (4 * m) % q + q * (j - 1) = 4 * m := by
    simpa only [hd] using Nat.mod_add_div (4 * m) q
  rw [Nat.mod_eq_of_lt hb.1]
  have hc : j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 := by omega
  rcases hc with rfl | rfl | rfl | rfl <;> omega

theorem four_interval_index_unique (m q j k : ℕ)
    (hm : 3 ≤ m) (hj : 1 ≤ j ∧ j ≤ 4) (hk : 1 ≤ k ∧ k ≤ 4)
    (hjlo : 4 * m < j * q) (hjhi : 2 * j * q ≤ 9 * m - 2)
    (hklo : 4 * m < k * q) (hkhi : 2 * k * q ≤ 9 * m - 2) :
    j = k := by
  have h1 := four_interval_div m q j hm hj hjlo hjhi
  have h2 := four_interval_div m q k hm hk hklo hkhi
  omega

end Math.B699.C2FourIntervals
