import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.PrunedCount

/-! Definitional correspondence between the pure Init and first frozen
implementations. This new theorem is required before substituting numeric
certificates in any original-problem consumer. -/
namespace B699CorePrunedSieve
theorem count_eq_first_implementation (ps : List Nat) (b : Nat) :
    count ps b = B699PrunedSieve.count ps b := by
  induction ps generalizing b with
  | nil => rfl
  | cons p ps ih =>
    by_cases hb : b = 0
    · subst b
      rw [count_zero, B699PrunedSieve.count_zero]
    · rw [count_step p ps b hb, B699PrunedSieve.count, if_neg hb]
      rw [ih b, ih (b / p)]
theorem primes_eq_first_implementation : primes = B699PrunedSieve.primes := by rfl
end B699CorePrunedSieve
#print axioms B699CorePrunedSieve.count_eq_first_implementation
#print axioms B699CorePrunedSieve.primes_eq_first_implementation
