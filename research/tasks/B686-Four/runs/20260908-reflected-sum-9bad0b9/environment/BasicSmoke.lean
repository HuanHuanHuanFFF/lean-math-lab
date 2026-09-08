import Mathlib.Algebra.BigOperators.Associated
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

example : (2 : ℤ) + 3 = 5 := by
  norm_num

example : Nat.Prime 7 := by
  decide

example : (Finset.Icc (1 : ℕ) 3).card = 3 := by
  decide

example : (Finset.Icc (1 : ℕ) 3).sum id = 6 := by
  decide

example (n : ℕ) : n % 3 < 3 := by
  omega

example (x y : ℤ) :
    (x + y) ^ 2 = x ^ 2 + 2 * x * y + y ^ 2 := by
  ring
