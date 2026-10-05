/-! The same pruned algorithm in a pure Init root, to avoid unused Omega
metadata in small numeric certificate jobs. Correspondence with the frozen
first implementation must be proved in the transfer module. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699CorePrunedSieve

def count : List Nat → Nat → Int
  | [], b => b
  | p :: ps, b => if b = 0 then 0 else count ps b - count ps (b / p)

def primes : List Nat := [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem primes_nodup : primes.Nodup := by decide

theorem count_zero (ps : List Nat) : count ps 0 = 0 := by
  cases ps <;> rfl

theorem count_step (p : Nat) (ps : List Nat) (b : Nat) (hb : b ≠ 0) :
    count (p :: ps) b = count ps b - count ps (b / p) := by
  change (if b = 0 then 0 else count ps b - count ps (b / p)) = _
  exact if_neg hb

end B699CorePrunedSieve
#check @B699CorePrunedSieve.count
#print axioms B699CorePrunedSieve.primes_nodup
#print axioms B699CorePrunedSieve.count_zero
#print axioms B699CorePrunedSieve.count_step
