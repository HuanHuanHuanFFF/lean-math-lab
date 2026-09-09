import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Nat.Choose.Vandermonde
import Mathlib.Data.Nat.Choose.Factorization
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.Nat.Prime.Factorial
import Mathlib.NumberTheory.PrimeCounting
import Mathlib.Data.Nat.PrimeFin
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.RingTheory.Polynomial.Resultant.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

#check Nat.choose
#check Nat.factorial
#check Nat.primesBelow
#check Polynomial.resultant
#check Polynomial.discr
example : (Nat.choose 5 2 : ℕ) = 10 := by norm_num
example : (3 : ℤ) ^ 2 = 9 := by ring
