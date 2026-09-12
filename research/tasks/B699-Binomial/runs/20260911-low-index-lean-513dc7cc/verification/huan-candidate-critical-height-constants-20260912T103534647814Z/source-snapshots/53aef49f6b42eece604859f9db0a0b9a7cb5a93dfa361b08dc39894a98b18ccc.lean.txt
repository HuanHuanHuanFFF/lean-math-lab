import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Algebra.Order.GroupWithZero.Basic
import Mathlib.Tactic.NormNum

/-! Complete uncompiled candidate: the only factorial decision has 130 bits. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CriticalPadeHeight

theorem factorial_34_bound : 2 * (34 : ℕ).factorial ≤ (2 : ℕ) ^ 129 := by decide

theorem factorial_bound {i : ℕ} (hi : i ≤ 34) :
    2 * i.factorial ≤ (2 : ℕ) ^ 129 :=
  (Nat.mul_le_mul_left 2 (Nat.factorial_le hi)).trans factorial_34_bound

theorem height_budget_contradiction {Y i : ℕ} (hi : i ≤ 34)
    (hY : (2 : ℕ) ^ 15359 ≤ Y) (hbound : Y ^ 10 ≤ (2 * i.factorial) ^ 1000) : False := by
  have hconstant : (2 * i.factorial) ^ 1000 ≤ (2 : ℕ) ^ 129000 := by
    simpa only [← pow_mul] using Nat.pow_le_pow_left (factorial_bound hi) 1000
  have hupper : Y ^ 10 ≤ (2 : ℕ) ^ 129000 := hbound.trans hconstant
  have hlower : (2 : ℕ) ^ 153590 ≤ Y ^ 10 := by
    simpa only [← pow_mul] using Nat.pow_le_pow_left hY 10
  have hstrict : (2 : ℕ) ^ 129000 < 2 ^ 153590 :=
    pow_lt_pow_right₀ (by decide : 1 < (2 : ℕ)) (by decide : 129000 < 153590)
  exact (not_lt_of_ge (hlower.trans hupper)) hstrict

end Math.B699.CriticalPadeHeight
