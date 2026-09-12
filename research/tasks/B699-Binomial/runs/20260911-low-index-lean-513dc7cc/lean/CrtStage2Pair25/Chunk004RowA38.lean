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

theorem cellA38B1_check :
    cellCheck (2 ^ 38) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA38B1 = true := by
  decide +kernel

theorem cellA38B2_check :
    cellCheck (2 ^ 38) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA38B2 = true := by
  decide +kernel

theorem cellA38B3_check :
    cellCheck (2 ^ 38) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA38B3 = true := by
  decide +kernel

theorem cellA38B4_check :
    cellCheck (2 ^ 38) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA38B4 = true := by
  decide +kernel

theorem cellA38B5_check :
    cellCheck (2 ^ 38) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA38B5 = true := by
  decide +kernel

theorem cellA38B6_check :
    cellCheck (2 ^ 38) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA38B6 = true := by
  decide +kernel

theorem cellA38B7_check :
    cellCheck (2 ^ 38) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA38B7 = true := by
  decide +kernel

theorem cellA38B8_check :
    cellCheck (2 ^ 38) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA38B8 = true := by
  decide +kernel

theorem cellA38B9_check :
    cellCheck (2 ^ 38) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA38B9 = true := by
  decide +kernel

theorem cellA38B10_check :
    cellCheck (2 ^ 38) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA38B10 = true := by
  decide +kernel

theorem cellA38B11_check :
    cellCheck (2 ^ 38) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA38B11 = true := by
  decide +kernel

theorem cellA38B12_check :
    cellCheck (2 ^ 38) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA38B12 = true := by
  decide +kernel

theorem cellA38B13_check :
    cellCheck (2 ^ 38) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA38B13 = true := by
  decide +kernel

theorem cellA38B14_check :
    cellCheck (2 ^ 38) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA38B14 = true := by
  decide +kernel

theorem cellA38B15_check :
    cellCheck (2 ^ 38) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA38B15 = true := by
  decide +kernel

theorem cellA38B16_check :
    cellCheck (2 ^ 38) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA38B16 = true := by
  decide +kernel

theorem rowA38_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 38) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA38 b) = true := by
  interval_cases b
  · simpa only [show rowA38 1 = cellA38B1 from rfl] using cellA38B1_check
  · simpa only [show rowA38 2 = cellA38B2 from rfl] using cellA38B2_check
  · simpa only [show rowA38 3 = cellA38B3 from rfl] using cellA38B3_check
  · simpa only [show rowA38 4 = cellA38B4 from rfl] using cellA38B4_check
  · simpa only [show rowA38 5 = cellA38B5 from rfl] using cellA38B5_check
  · simpa only [show rowA38 6 = cellA38B6 from rfl] using cellA38B6_check
  · simpa only [show rowA38 7 = cellA38B7 from rfl] using cellA38B7_check
  · simpa only [show rowA38 8 = cellA38B8 from rfl] using cellA38B8_check
  · simpa only [show rowA38 9 = cellA38B9 from rfl] using cellA38B9_check
  · simpa only [show rowA38 10 = cellA38B10 from rfl] using cellA38B10_check
  · simpa only [show rowA38 11 = cellA38B11 from rfl] using cellA38B11_check
  · simpa only [show rowA38 12 = cellA38B12 from rfl] using cellA38B12_check
  · simpa only [show rowA38 13 = cellA38B13 from rfl] using cellA38B13_check
  · simpa only [show rowA38 14 = cellA38B14 from rfl] using cellA38B14_check
  · simpa only [show rowA38 15 = cellA38B15 from rfl] using cellA38B15_check
  · simpa only [show rowA38 16 = cellA38B16 from rfl] using cellA38B16_check

theorem rowA38_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 38 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 38 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA38_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 38 b = rowA38 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk004

#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.rowA38_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.rowA38_block_check
