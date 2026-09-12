import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair57.Chunk001Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair57.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA10B1_check :
    cellCheck (5 ^ 10) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (5 ^ 10))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA10B1 = true := by
  decide +kernel

theorem cellA10B2_check :
    cellCheck (5 ^ 10) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (5 ^ 10))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA10B2 = true := by
  decide +kernel

theorem cellA10B3_check :
    cellCheck (5 ^ 10) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (5 ^ 10))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA10B3 = true := by
  decide +kernel

theorem cellA10B4_check :
    cellCheck (5 ^ 10) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (5 ^ 10))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA10B4 = true := by
  decide +kernel

theorem cellA10B5_check :
    cellCheck (5 ^ 10) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (5 ^ 10))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA10B5 = true := by
  decide +kernel

theorem cellA10B6_check :
    cellCheck (5 ^ 10) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (5 ^ 10))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA10B6 = true := by
  decide +kernel

theorem cellA10B7_check :
    cellCheck (5 ^ 10) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (5 ^ 10))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA10B7 = true := by
  decide +kernel

theorem cellA10B8_check :
    cellCheck (5 ^ 10) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (5 ^ 10))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA10B8 = true := by
  decide +kernel

theorem cellA10B9_check :
    cellCheck (5 ^ 10) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (5 ^ 10))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA10B9 = true := by
  decide +kernel

theorem cellA10B10_check :
    cellCheck (5 ^ 10) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (5 ^ 10))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA10B10 = true := by
  decide +kernel

theorem cellA10B11_check :
    cellCheck (5 ^ 10) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (5 ^ 10))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA10B11 = true := by
  decide +kernel

theorem cellA10B12_check :
    cellCheck (5 ^ 10) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (5 ^ 10))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA10B12 = true := by
  decide +kernel

theorem cellA10B13_check :
    cellCheck (5 ^ 10) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (5 ^ 10))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA10B13 = true := by
  decide +kernel

theorem rowA10_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (5 ^ 10) (7 ^ b)
      (heightCap Stage02.H Stage02.M (5 ^ 10))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA10 b) = true := by
  interval_cases b
  · simpa only [show rowA10 1 = cellA10B1 from rfl] using cellA10B1_check
  · simpa only [show rowA10 2 = cellA10B2 from rfl] using cellA10B2_check
  · simpa only [show rowA10 3 = cellA10B3 from rfl] using cellA10B3_check
  · simpa only [show rowA10 4 = cellA10B4 from rfl] using cellA10B4_check
  · simpa only [show rowA10 5 = cellA10B5 from rfl] using cellA10B5_check
  · simpa only [show rowA10 6 = cellA10B6 from rfl] using cellA10B6_check
  · simpa only [show rowA10 7 = cellA10B7 from rfl] using cellA10B7_check
  · simpa only [show rowA10 8 = cellA10B8 from rfl] using cellA10B8_check
  · simpa only [show rowA10 9 = cellA10B9 from rfl] using cellA10B9_check
  · simpa only [show rowA10 10 = cellA10B10 from rfl] using cellA10B10_check
  · simpa only [show rowA10 11 = cellA10B11 from rfl] using cellA10B11_check
  · simpa only [show rowA10 12 = cellA10B12 from rfl] using cellA10B12_check
  · simpa only [show rowA10 13 = cellA10B13 from rfl] using cellA10B13_check

theorem rowA10_block_check :
    blockCheck 5 7 Stage02.H Stage02.M Stage02.upper 10 1 1 13 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 10 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA10_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 10 b = rowA10 b from rfl] using h

end Math.B699.CRTStage2Pair57.Chunk001

#print axioms Math.B699.CRTStage2Pair57.Chunk001.cellA10B1_check
#print axioms Math.B699.CRTStage2Pair57.Chunk001.cellA10B2_check
#print axioms Math.B699.CRTStage2Pair57.Chunk001.cellA10B3_check
#print axioms Math.B699.CRTStage2Pair57.Chunk001.cellA10B4_check
#print axioms Math.B699.CRTStage2Pair57.Chunk001.cellA10B5_check
#print axioms Math.B699.CRTStage2Pair57.Chunk001.cellA10B6_check
#print axioms Math.B699.CRTStage2Pair57.Chunk001.cellA10B7_check
#print axioms Math.B699.CRTStage2Pair57.Chunk001.cellA10B8_check
#print axioms Math.B699.CRTStage2Pair57.Chunk001.cellA10B9_check
#print axioms Math.B699.CRTStage2Pair57.Chunk001.cellA10B10_check
#print axioms Math.B699.CRTStage2Pair57.Chunk001.cellA10B11_check
#print axioms Math.B699.CRTStage2Pair57.Chunk001.cellA10B12_check
#print axioms Math.B699.CRTStage2Pair57.Chunk001.cellA10B13_check
#print axioms Math.B699.CRTStage2Pair57.Chunk001.rowA10_cell_check
#print axioms Math.B699.CRTStage2Pair57.Chunk001.rowA10_block_check
