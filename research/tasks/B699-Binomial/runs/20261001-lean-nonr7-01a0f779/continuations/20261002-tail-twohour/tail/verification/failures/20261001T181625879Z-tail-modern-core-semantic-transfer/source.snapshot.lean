import all research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernPrunedCount
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Semantic binding of the modern public producer and the actual numeric
Core producer. Structural induction avoids relying on compiler definal equality. -/
namespace B699ModernPrunedSieve
theorem count_eq_core (ps : List Nat) (b : Nat) :
    count ps b = B699CorePrunedSieve.count ps b := by
  induction ps generalizing b with
  | nil => rfl
  | cons p ps ih =>
    by_cases hb : b = 0
    · subst b
      rw [count_zero, B699CorePrunedSieve.count_zero]
    · rw [count_step p ps b hb, B699CorePrunedSieve.count_step p ps b hb]
      rw [ih b, ih (b / p)]
theorem primes_eq_core : primes = B699CorePrunedSieve.primes := by rfl
end B699ModernPrunedSieve
#print axioms B699ModernPrunedSieve.count_eq_core
#print axioms B699ModernPrunedSieve.primes_eq_core
