import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13FiveSevenEdge.Basis

/-! UNCOMPILED. Both capacity bounds use literally the same least exponent. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13FiveSevenEdge

open Math.B699.DiscretePadeSelector

theorem selected_ge_min (Y : ℕ) (hY : heightY0 ≤ Y) :
    minIndex ≤ selectedIndex Y :=
  leastExponent_lower_bound indexBase heightY0 Y minIndex
    indexBase_gt_one hY minIndex_pos previous_at_min

theorem selected_threshold (Y : ℕ) :
    4 * Y < indexBase ^ selectedIndex Y :=
  leastExponent_threshold indexBase Y indexBase_gt_one

theorem selected_previous (Y : ℕ) (hY : heightY0 ≤ Y) :
    indexBase ^ (selectedIndex Y - 1) ≤ 4 * Y :=
  leastExponent_previous indexBase Y indexBase_gt_one (heightY0_pos.trans_le hY)

theorem selected_capacities (Y : ℕ) (hY : heightY0 ≤ Y) :
    (5 ^ 22000) ^ selectedIndex Y ≤ Y ^ 645 ∧
      (7 ^ 22000) ^ selectedIndex Y ≤ Y ^ 779 := by
  obtain ⟨hpR, hpB, hpL⟩ := p_capacity_certificates
  obtain ⟨hqR, hqB, hqL⟩ := q_capacity_certificates
  exact leastExponent_two_capacities indexBase (5 ^ 22000) 645 (7 ^ 22000) 779
    minIndex heightY0 Y indexBase_gt_one heightY0_pos hY minIndex_pos
    previous_at_min hpR hpB hpL hqR hqB hqL

theorem selected_extractions (Y e f A B : ℕ) (hY : heightY0 ≤ Y)
    (hP : Y ≤ 5 ^ e * A) (hQ : Y ≤ 7 ^ f * B)
    (hsP : A ^ 1000 < Y ^ 355) (hsQ : B ^ 1000 < Y ^ 221) :
    22 * selectedIndex Y < e ∧ 22 * selectedIndex Y < f := by
  obtain ⟨hp, hq⟩ := selected_capacities Y hY
  have hpow (p : ℕ) : (p ^ (22 * selectedIndex Y)) ^ 1000 =
      (p ^ 22000) ^ selectedIndex Y := by
    simp only [← Nat.pow_mul]
    congr 1
    ring
  constructor
  · apply Math.B699.I11ActualPadeEdge.small_cofactor_forces_exponent
      5 e A Y (22 * selectedIndex Y) 1000 355 (by decide) (by decide) hP hsP
    simpa only [hpow, show (1000 : ℕ) - 355 = 645 by decide] using hp
  · apply Math.B699.I11ActualPadeEdge.small_cofactor_forces_exponent
      7 f B Y (22 * selectedIndex Y) 1000 221 (by decide) (by decide) hQ hsQ
    simpa only [hpow, show (1000 : ℕ) - 221 = 779 by decide] using hq
end Math.B699.I13FiveSevenEdge
