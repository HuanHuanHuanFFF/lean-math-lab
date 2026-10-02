import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».tail.SieveRowsConsumer
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernPrunedCorrectness
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernCoreTransfer
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreTransfer

/-! Final binding to the adopted paper sieveValue. The generic modern proof
and both algorithm correspondences are real proved inputs, not assumptions. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699ModernPrunedSieve

theorem primes_toFinset : primes.toFinset = B699ContinuationRows.sievePrimes := by decide

theorem count_eq_adopted_sieveValue (b : Nat) :
    count primes b = B699ContinuationRows.sieveValue b := by
  rw [count_eq_floorSum primes primes_nodup, primes_toFinset]
  rfl

end B699ModernPrunedSieve
namespace B699PrunedSieve

theorem count_eq_adopted_sieveValue (b : Nat) :
    count primes b = B699ContinuationRows.sieveValue b := by
  have h := B699ModernPrunedSieve.count_eq_adopted_sieveValue b
  rw [B699ModernPrunedSieve.count_eq_core,
    B699ModernPrunedSieve.primes_eq_core,
    B699CorePrunedSieve.count_eq_first_implementation,
    B699CorePrunedSieve.primes_eq_first_implementation] at h
  exact h

end B699PrunedSieve
#check @B699PrunedSieve.count_eq_adopted_sieveValue
#print axioms B699ModernPrunedSieve.count_eq_adopted_sieveValue
#print axioms B699PrunedSieve.count_eq_adopted_sieveValue
