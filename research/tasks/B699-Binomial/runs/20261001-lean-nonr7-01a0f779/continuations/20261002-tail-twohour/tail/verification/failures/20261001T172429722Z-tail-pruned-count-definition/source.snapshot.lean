import Lean.Elab.Tactic.Omega

/-! A pure kernel-evaluable floor inclusion-exclusion recursion.
The zero branch will be related to the exact powerset formula in a separate
proof module. Numerical certificates can import this light definition alone. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699PrunedSieve

def count : List Nat → Nat → Int
  | [], b => b
  | p :: ps, b => if b = 0 then 0 else count ps b - count ps (b / p)

def primes : List Nat := [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem primes_nodup : primes.Nodup := by decide
theorem count_zero (ps : List Nat) : count ps 0 = 0 := by
  cases ps <;> simp [count]

end B699PrunedSieve
#check @B699PrunedSieve.count
#print axioms B699PrunedSieve.primes_nodup
#print axioms B699PrunedSieve.count_zero
