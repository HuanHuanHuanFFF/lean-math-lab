import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair25.Chunk003Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk003
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA32B1_check :
    cellCheck (2 ^ 32) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA32B1 = true := by
  decide +kernel

theorem cellA32B2_check :
    cellCheck (2 ^ 32) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA32B2 = true := by
  decide +kernel

theorem cellA32B3_check :
    cellCheck (2 ^ 32) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA32B3 = true := by
  decide +kernel

theorem cellA32B4_check :
    cellCheck (2 ^ 32) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA32B4 = true := by
  decide +kernel

theorem cellA32B5_check :
    cellCheck (2 ^ 32) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA32B5 = true := by
  decide +kernel

theorem cellA32B6_check :
    cellCheck (2 ^ 32) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA32B6 = true := by
  decide +kernel

theorem cellA32B7_check :
    cellCheck (2 ^ 32) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA32B7 = true := by
  decide +kernel

theorem cellA32B8_check :
    cellCheck (2 ^ 32) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA32B8 = true := by
  decide +kernel

theorem cellA32B9_check :
    cellCheck (2 ^ 32) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA32B9 = true := by
  decide +kernel

theorem cellA32B10_check :
    cellCheck (2 ^ 32) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA32B10 = true := by
  decide +kernel

theorem cellA32B11_check :
    cellCheck (2 ^ 32) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA32B11 = true := by
  decide +kernel

theorem cellA32B12_check :
    cellCheck (2 ^ 32) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA32B12 = true := by
  decide +kernel

theorem cellA32B13_check :
    cellCheck (2 ^ 32) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA32B13 = true := by
  decide +kernel

theorem cellA32B14_check :
    cellCheck (2 ^ 32) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA32B14 = true := by
  decide +kernel

theorem cellA32B15_check :
    cellCheck (2 ^ 32) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA32B15 = true := by
  decide +kernel

theorem cellA32B16_check :
    cellCheck (2 ^ 32) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA32B16 = true := by
  decide +kernel

theorem rowA32_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 32) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA32 b) = true := by
  interval_cases b
  · simpa only [show rowA32 1 = cellA32B1 from rfl] using cellA32B1_check
  · simpa only [show rowA32 2 = cellA32B2 from rfl] using cellA32B2_check
  · simpa only [show rowA32 3 = cellA32B3 from rfl] using cellA32B3_check
  · simpa only [show rowA32 4 = cellA32B4 from rfl] using cellA32B4_check
  · simpa only [show rowA32 5 = cellA32B5 from rfl] using cellA32B5_check
  · simpa only [show rowA32 6 = cellA32B6 from rfl] using cellA32B6_check
  · simpa only [show rowA32 7 = cellA32B7 from rfl] using cellA32B7_check
  · simpa only [show rowA32 8 = cellA32B8 from rfl] using cellA32B8_check
  · simpa only [show rowA32 9 = cellA32B9 from rfl] using cellA32B9_check
  · simpa only [show rowA32 10 = cellA32B10 from rfl] using cellA32B10_check
  · simpa only [show rowA32 11 = cellA32B11 from rfl] using cellA32B11_check
  · simpa only [show rowA32 12 = cellA32B12 from rfl] using cellA32B12_check
  · simpa only [show rowA32 13 = cellA32B13 from rfl] using cellA32B13_check
  · simpa only [show rowA32 14 = cellA32B14 from rfl] using cellA32B14_check
  · simpa only [show rowA32 15 = cellA32B15 from rfl] using cellA32B15_check
  · simpa only [show rowA32 16 = cellA32B16 from rfl] using cellA32B16_check

theorem rowA32_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 32 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 32 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA32_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 32 b = rowA32 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk003

#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA32B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA32B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA32B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA32B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA32B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA32B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA32B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA32B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA32B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA32B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA32B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA32B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA32B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA32B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA32B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA32B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.rowA32_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.rowA32_block_check
