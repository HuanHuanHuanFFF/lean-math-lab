import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.PrunedCount

/-! The largest bound in the adopted 115-row table: a representative kernel
cost probe before selecting batch size. It is not a new scan. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699PrunedSieve
theorem last_row : count primes 131071 ≤ (17889 : Int) - 15 := by decide
end B699PrunedSieve
#check B699PrunedSieve.last_row
#print axioms B699PrunedSieve.last_row
