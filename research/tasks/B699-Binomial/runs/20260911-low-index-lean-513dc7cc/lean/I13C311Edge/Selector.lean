import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311Edge.SelectorNumeric

/-! UNCOMPILED actual fixed(3,11)c7d5 edge candidate. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Math.B699.I13C311Edge

open Math.B699.DiscretePadeSelector

theorem index_ge_187 (Y : ℕ) (hY : heightY0 ≤ Y) : 187 ≤ edgeIndex Y := by
  exact leastExponent_lower_bound selectorZ heightY0 Y selectorM
    selectorZ_gt_one hY (by decide) predecessor

theorem index_threshold (Y : ℕ) : 4 * Y < selectorZ ^ edgeIndex Y :=
  leastExponent_threshold selectorZ Y selectorZ_gt_one

theorem extract_same_index (Y a b A B : ℕ) (hY : heightY0 ≤ Y)
    (hP : Y ≤ 3 ^ a * A) (hQ : Y ≤ 11 ^ b * B)
    (hsmallP : A ^ 1000 < Y ^ 321) (hsmallQ : B ^ 1000 < Y ^ 407) :
    35 * edgeIndex Y < a ∧ 14 * edgeIndex Y < b := by
  have hY0 : 0 < heightY0 := Nat.pow_pos (by decide : 0 < (2 : ℕ))
  constructor
  · have h := Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
      3 35 1000 321 selectorZ selectorM heightY0 Y a A
      (by decide) (by decide) selectorZ_gt_one hY0 hY (by decide)
    simp only [show 35 * 1000 = 35000 by decide, show 1000 - 321 = 679 by decide] at h
    exact h predecessor p_conditions.1 p_conditions.2.1 p_conditions.2.2 hP hsmallP
  · have h := Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
      11 14 1000 407 selectorZ selectorM heightY0 Y b B
      (by decide) (by decide) selectorZ_gt_one hY0 hY (by decide)
    simp only [show 14 * 1000 = 14000 by decide, show 1000 - 407 = 593 by decide] at h
    exact h predecessor q_conditions.1 q_conditions.2.1 q_conditions.2.2 hQ hsmallQ

end Math.B699.I13C311Edge
#print axioms Math.B699.I13C311Edge.index_ge_187
#print axioms Math.B699.I13C311Edge.index_threshold
#print axioms Math.B699.I13C311Edge.extract_same_index
