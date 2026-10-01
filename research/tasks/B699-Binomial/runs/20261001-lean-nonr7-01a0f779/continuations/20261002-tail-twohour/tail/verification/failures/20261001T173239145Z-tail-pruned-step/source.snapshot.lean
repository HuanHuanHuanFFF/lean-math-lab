import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.PrunedCount

set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699PrunedSieve
theorem count_step (p : Nat) (ps : List Nat) (b : Nat) (hb : b ≠ 0) :
    count (p :: ps) b = count ps b - count ps (b / p) := by
  simp only [count, if_neg hb]
end B699PrunedSieve
#print axioms B699PrunedSieve.count_step
