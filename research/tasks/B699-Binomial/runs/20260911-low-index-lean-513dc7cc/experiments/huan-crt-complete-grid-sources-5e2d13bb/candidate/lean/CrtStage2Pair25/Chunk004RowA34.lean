import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair25.Chunk004Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk004
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA34B1_check :
    cellCheck (2 ^ 34) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA34B1 = true := by
  decide +kernel

theorem cellA34B2_check :
    cellCheck (2 ^ 34) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA34B2 = true := by
  decide +kernel

theorem cellA34B3_check :
    cellCheck (2 ^ 34) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA34B3 = true := by
  decide +kernel

theorem cellA34B4_check :
    cellCheck (2 ^ 34) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA34B4 = true := by
  decide +kernel

theorem cellA34B5_check :
    cellCheck (2 ^ 34) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA34B5 = true := by
  decide +kernel

theorem cellA34B6_check :
    cellCheck (2 ^ 34) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA34B6 = true := by
  decide +kernel

theorem cellA34B7_check :
    cellCheck (2 ^ 34) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA34B7 = true := by
  decide +kernel

theorem cellA34B8_check :
    cellCheck (2 ^ 34) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA34B8 = true := by
  decide +kernel

theorem cellA34B9_check :
    cellCheck (2 ^ 34) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA34B9 = true := by
  decide +kernel

theorem cellA34B10_check :
    cellCheck (2 ^ 34) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA34B10 = true := by
  decide +kernel

theorem cellA34B11_check :
    cellCheck (2 ^ 34) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA34B11 = true := by
  decide +kernel

theorem cellA34B12_check :
    cellCheck (2 ^ 34) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA34B12 = true := by
  decide +kernel

theorem cellA34B13_check :
    cellCheck (2 ^ 34) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA34B13 = true := by
  decide +kernel

theorem cellA34B14_check :
    cellCheck (2 ^ 34) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA34B14 = true := by
  decide +kernel

theorem cellA34B15_check :
    cellCheck (2 ^ 34) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA34B15 = true := by
  decide +kernel

theorem cellA34B16_check :
    cellCheck (2 ^ 34) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA34B16 = true := by
  decide +kernel

theorem rowA34_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 34) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA34 b) = true := by
  interval_cases b
  · simpa only [show rowA34 1 = cellA34B1 from rfl] using cellA34B1_check
  · simpa only [show rowA34 2 = cellA34B2 from rfl] using cellA34B2_check
  · simpa only [show rowA34 3 = cellA34B3 from rfl] using cellA34B3_check
  · simpa only [show rowA34 4 = cellA34B4 from rfl] using cellA34B4_check
  · simpa only [show rowA34 5 = cellA34B5 from rfl] using cellA34B5_check
  · simpa only [show rowA34 6 = cellA34B6 from rfl] using cellA34B6_check
  · simpa only [show rowA34 7 = cellA34B7 from rfl] using cellA34B7_check
  · simpa only [show rowA34 8 = cellA34B8 from rfl] using cellA34B8_check
  · simpa only [show rowA34 9 = cellA34B9 from rfl] using cellA34B9_check
  · simpa only [show rowA34 10 = cellA34B10 from rfl] using cellA34B10_check
  · simpa only [show rowA34 11 = cellA34B11 from rfl] using cellA34B11_check
  · simpa only [show rowA34 12 = cellA34B12 from rfl] using cellA34B12_check
  · simpa only [show rowA34 13 = cellA34B13 from rfl] using cellA34B13_check
  · simpa only [show rowA34 14 = cellA34B14 from rfl] using cellA34B14_check
  · simpa only [show rowA34 15 = cellA34B15 from rfl] using cellA34B15_check
  · simpa only [show rowA34 16 = cellA34B16 from rfl] using cellA34B16_check

theorem rowA34_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 34 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 34 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA34_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 34 b = rowA34 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk004

#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.rowA34_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.rowA34_block_check
