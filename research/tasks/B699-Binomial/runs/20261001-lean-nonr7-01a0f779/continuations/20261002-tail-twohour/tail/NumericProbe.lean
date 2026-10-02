import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.PrunedCount

/-! Only the shortest existing row, to measure actual kernel proof cost.
No native evaluation, external result, or new search is used. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000

namespace B699PrunedSieve
theorem first_row : count primes 1023 ≤ (172 : Int) - 15 := by decide
end B699PrunedSieve
#check B699PrunedSieve.first_row
#print axioms B699PrunedSieve.first_row
