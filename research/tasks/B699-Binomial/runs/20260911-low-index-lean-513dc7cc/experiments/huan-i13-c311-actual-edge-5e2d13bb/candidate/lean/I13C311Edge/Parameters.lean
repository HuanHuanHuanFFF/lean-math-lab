import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Edge.Capacity

/-! UNCOMPILED actual fixed(3,11)c7d5 edge candidate. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Math.B699.I13C311Edge

open Math.B699.DiscretePadeSelector

def selectorZ : ℕ := 71 * 2 ^ 76
def selectorM : ℕ := 187
def heightY0 : ℕ := 2 ^ 15359

theorem selectorZ_gt_one : 1 < selectorZ := by decide

def edgeIndex (Y : ℕ) : ℕ := leastExponent selectorZ Y selectorZ_gt_one

end Math.B699.I13C311Edge
#print axioms Math.B699.I13C311Edge.selectorZ_gt_one
