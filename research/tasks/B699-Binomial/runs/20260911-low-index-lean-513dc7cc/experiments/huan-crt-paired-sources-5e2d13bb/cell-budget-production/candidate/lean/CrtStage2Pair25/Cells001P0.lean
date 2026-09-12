import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair25.Chunk001Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA9B1_check :
    cellCheck (2 ^ 9) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA9B1 = true := by
  decide +kernel

theorem cellA9B2_check :
    cellCheck (2 ^ 9) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA9B2 = true := by
  decide +kernel

theorem cellA9B3_check :
    cellCheck (2 ^ 9) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA9B3 = true := by
  decide +kernel

theorem cellA9B4_check :
    cellCheck (2 ^ 9) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA9B4 = true := by
  decide +kernel

theorem cellA9B5_check :
    cellCheck (2 ^ 9) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA9B5 = true := by
  decide +kernel

theorem cellA9B6_check :
    cellCheck (2 ^ 9) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA9B6 = true := by
  decide +kernel

theorem cellA9B7_check :
    cellCheck (2 ^ 9) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA9B7 = true := by
  decide +kernel

theorem cellA9B8_check :
    cellCheck (2 ^ 9) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA9B8 = true := by
  decide +kernel

theorem cellA9B9_check :
    cellCheck (2 ^ 9) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA9B9 = true := by
  decide +kernel

theorem cellA9B10_check :
    cellCheck (2 ^ 9) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA9B10 = true := by
  decide +kernel

theorem cellA9B11_check :
    cellCheck (2 ^ 9) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA9B11 = true := by
  decide +kernel

theorem cellA9B12_check :
    cellCheck (2 ^ 9) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA9B12 = true := by
  decide +kernel

theorem cellA9B13_check :
    cellCheck (2 ^ 9) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA9B13 = true := by
  decide +kernel

theorem cellA9B14_check :
    cellCheck (2 ^ 9) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA9B14 = true := by
  decide +kernel

theorem cellA9B15_check :
    cellCheck (2 ^ 9) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA9B15 = true := by
  decide +kernel

theorem cellA9B16_check :
    cellCheck (2 ^ 9) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA9B16 = true := by
  decide +kernel

theorem rowA9_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 9) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA9 b) = true := by
  interval_cases b
  · simpa only [show rowA9 1 = cellA9B1 from rfl] using cellA9B1_check
  · simpa only [show rowA9 2 = cellA9B2 from rfl] using cellA9B2_check
  · simpa only [show rowA9 3 = cellA9B3 from rfl] using cellA9B3_check
  · simpa only [show rowA9 4 = cellA9B4 from rfl] using cellA9B4_check
  · simpa only [show rowA9 5 = cellA9B5 from rfl] using cellA9B5_check
  · simpa only [show rowA9 6 = cellA9B6 from rfl] using cellA9B6_check
  · simpa only [show rowA9 7 = cellA9B7 from rfl] using cellA9B7_check
  · simpa only [show rowA9 8 = cellA9B8 from rfl] using cellA9B8_check
  · simpa only [show rowA9 9 = cellA9B9 from rfl] using cellA9B9_check
  · simpa only [show rowA9 10 = cellA9B10 from rfl] using cellA9B10_check
  · simpa only [show rowA9 11 = cellA9B11 from rfl] using cellA9B11_check
  · simpa only [show rowA9 12 = cellA9B12 from rfl] using cellA9B12_check
  · simpa only [show rowA9 13 = cellA9B13 from rfl] using cellA9B13_check
  · simpa only [show rowA9 14 = cellA9B14 from rfl] using cellA9B14_check
  · simpa only [show rowA9 15 = cellA9B15 from rfl] using cellA9B15_check
  · simpa only [show rowA9 16 = cellA9B16 from rfl] using cellA9B16_check

theorem rowA9_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 9 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 9 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA9_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 9 b = rowA9 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk001

#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA9B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA9B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA9B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA9B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA9B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA9B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA9B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA9B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA9B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA9B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA9B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA9B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA9B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA9B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA9B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA9B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.rowA9_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.rowA9_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA10B1_check :
    cellCheck (2 ^ 10) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA10B1 = true := by
  decide +kernel

theorem cellA10B2_check :
    cellCheck (2 ^ 10) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA10B2 = true := by
  decide +kernel

theorem cellA10B3_check :
    cellCheck (2 ^ 10) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA10B3 = true := by
  decide +kernel

theorem cellA10B4_check :
    cellCheck (2 ^ 10) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA10B4 = true := by
  decide +kernel

theorem cellA10B5_check :
    cellCheck (2 ^ 10) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA10B5 = true := by
  decide +kernel

theorem cellA10B6_check :
    cellCheck (2 ^ 10) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA10B6 = true := by
  decide +kernel

theorem cellA10B7_check :
    cellCheck (2 ^ 10) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA10B7 = true := by
  decide +kernel

theorem cellA10B8_check :
    cellCheck (2 ^ 10) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA10B8 = true := by
  decide +kernel

theorem cellA10B9_check :
    cellCheck (2 ^ 10) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA10B9 = true := by
  decide +kernel

theorem cellA10B10_check :
    cellCheck (2 ^ 10) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA10B10 = true := by
  decide +kernel

theorem cellA10B11_check :
    cellCheck (2 ^ 10) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA10B11 = true := by
  decide +kernel

theorem cellA10B12_check :
    cellCheck (2 ^ 10) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA10B12 = true := by
  decide +kernel

theorem cellA10B13_check :
    cellCheck (2 ^ 10) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA10B13 = true := by
  decide +kernel

theorem cellA10B14_check :
    cellCheck (2 ^ 10) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA10B14 = true := by
  decide +kernel

theorem cellA10B15_check :
    cellCheck (2 ^ 10) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA10B15 = true := by
  decide +kernel

theorem cellA10B16_check :
    cellCheck (2 ^ 10) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA10B16 = true := by
  decide +kernel

theorem rowA10_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 10) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 10))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA10 b) = true := by
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
  · simpa only [show rowA10 14 = cellA10B14 from rfl] using cellA10B14_check
  · simpa only [show rowA10 15 = cellA10B15 from rfl] using cellA10B15_check
  · simpa only [show rowA10 16 = cellA10B16 from rfl] using cellA10B16_check

theorem rowA10_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 10 1 1 16 chunkData = true := by
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

end Math.B699.CRTStage2Pair25.Chunk001

#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA10B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA10B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA10B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA10B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA10B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA10B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA10B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA10B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA10B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA10B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA10B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA10B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA10B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA10B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA10B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA10B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.rowA10_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.rowA10_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA11B1_check :
    cellCheck (2 ^ 11) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA11B1 = true := by
  decide +kernel

theorem cellA11B2_check :
    cellCheck (2 ^ 11) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA11B2 = true := by
  decide +kernel

theorem cellA11B3_check :
    cellCheck (2 ^ 11) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA11B3 = true := by
  decide +kernel

theorem cellA11B4_check :
    cellCheck (2 ^ 11) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA11B4 = true := by
  decide +kernel

theorem cellA11B5_check :
    cellCheck (2 ^ 11) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA11B5 = true := by
  decide +kernel

theorem cellA11B6_check :
    cellCheck (2 ^ 11) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA11B6 = true := by
  decide +kernel

theorem cellA11B7_check :
    cellCheck (2 ^ 11) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA11B7 = true := by
  decide +kernel

theorem cellA11B8_check :
    cellCheck (2 ^ 11) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA11B8 = true := by
  decide +kernel

theorem cellA11B9_check :
    cellCheck (2 ^ 11) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA11B9 = true := by
  decide +kernel

theorem cellA11B10_check :
    cellCheck (2 ^ 11) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA11B10 = true := by
  decide +kernel

theorem cellA11B11_check :
    cellCheck (2 ^ 11) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA11B11 = true := by
  decide +kernel

theorem cellA11B12_check :
    cellCheck (2 ^ 11) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA11B12 = true := by
  decide +kernel

theorem cellA11B13_check :
    cellCheck (2 ^ 11) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA11B13 = true := by
  decide +kernel

theorem cellA11B14_check :
    cellCheck (2 ^ 11) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA11B14 = true := by
  decide +kernel

theorem cellA11B15_check :
    cellCheck (2 ^ 11) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA11B15 = true := by
  decide +kernel

theorem cellA11B16_check :
    cellCheck (2 ^ 11) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA11B16 = true := by
  decide +kernel

theorem rowA11_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 11) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 11))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA11 b) = true := by
  interval_cases b
  · simpa only [show rowA11 1 = cellA11B1 from rfl] using cellA11B1_check
  · simpa only [show rowA11 2 = cellA11B2 from rfl] using cellA11B2_check
  · simpa only [show rowA11 3 = cellA11B3 from rfl] using cellA11B3_check
  · simpa only [show rowA11 4 = cellA11B4 from rfl] using cellA11B4_check
  · simpa only [show rowA11 5 = cellA11B5 from rfl] using cellA11B5_check
  · simpa only [show rowA11 6 = cellA11B6 from rfl] using cellA11B6_check
  · simpa only [show rowA11 7 = cellA11B7 from rfl] using cellA11B7_check
  · simpa only [show rowA11 8 = cellA11B8 from rfl] using cellA11B8_check
  · simpa only [show rowA11 9 = cellA11B9 from rfl] using cellA11B9_check
  · simpa only [show rowA11 10 = cellA11B10 from rfl] using cellA11B10_check
  · simpa only [show rowA11 11 = cellA11B11 from rfl] using cellA11B11_check
  · simpa only [show rowA11 12 = cellA11B12 from rfl] using cellA11B12_check
  · simpa only [show rowA11 13 = cellA11B13 from rfl] using cellA11B13_check
  · simpa only [show rowA11 14 = cellA11B14 from rfl] using cellA11B14_check
  · simpa only [show rowA11 15 = cellA11B15 from rfl] using cellA11B15_check
  · simpa only [show rowA11 16 = cellA11B16 from rfl] using cellA11B16_check

theorem rowA11_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 11 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 11 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA11_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 11 b = rowA11 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk001

#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA11B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA11B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA11B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA11B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA11B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA11B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA11B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA11B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA11B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA11B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA11B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA11B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA11B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA11B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA11B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA11B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.rowA11_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.rowA11_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA12B1_check :
    cellCheck (2 ^ 12) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA12B1 = true := by
  decide +kernel

theorem cellA12B2_check :
    cellCheck (2 ^ 12) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA12B2 = true := by
  decide +kernel

theorem cellA12B3_check :
    cellCheck (2 ^ 12) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA12B3 = true := by
  decide +kernel

theorem cellA12B4_check :
    cellCheck (2 ^ 12) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA12B4 = true := by
  decide +kernel

theorem cellA12B5_check :
    cellCheck (2 ^ 12) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA12B5 = true := by
  decide +kernel

theorem cellA12B6_check :
    cellCheck (2 ^ 12) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA12B6 = true := by
  decide +kernel

theorem cellA12B7_check :
    cellCheck (2 ^ 12) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA12B7 = true := by
  decide +kernel

theorem cellA12B8_check :
    cellCheck (2 ^ 12) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA12B8 = true := by
  decide +kernel

theorem cellA12B9_check :
    cellCheck (2 ^ 12) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA12B9 = true := by
  decide +kernel

theorem cellA12B10_check :
    cellCheck (2 ^ 12) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA12B10 = true := by
  decide +kernel

theorem cellA12B11_check :
    cellCheck (2 ^ 12) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA12B11 = true := by
  decide +kernel

theorem cellA12B12_check :
    cellCheck (2 ^ 12) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA12B12 = true := by
  decide +kernel

theorem cellA12B13_check :
    cellCheck (2 ^ 12) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA12B13 = true := by
  decide +kernel

theorem cellA12B14_check :
    cellCheck (2 ^ 12) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA12B14 = true := by
  decide +kernel

theorem cellA12B15_check :
    cellCheck (2 ^ 12) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA12B15 = true := by
  decide +kernel

theorem cellA12B16_check :
    cellCheck (2 ^ 12) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA12B16 = true := by
  decide +kernel

theorem rowA12_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 12) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 12))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA12 b) = true := by
  interval_cases b
  · simpa only [show rowA12 1 = cellA12B1 from rfl] using cellA12B1_check
  · simpa only [show rowA12 2 = cellA12B2 from rfl] using cellA12B2_check
  · simpa only [show rowA12 3 = cellA12B3 from rfl] using cellA12B3_check
  · simpa only [show rowA12 4 = cellA12B4 from rfl] using cellA12B4_check
  · simpa only [show rowA12 5 = cellA12B5 from rfl] using cellA12B5_check
  · simpa only [show rowA12 6 = cellA12B6 from rfl] using cellA12B6_check
  · simpa only [show rowA12 7 = cellA12B7 from rfl] using cellA12B7_check
  · simpa only [show rowA12 8 = cellA12B8 from rfl] using cellA12B8_check
  · simpa only [show rowA12 9 = cellA12B9 from rfl] using cellA12B9_check
  · simpa only [show rowA12 10 = cellA12B10 from rfl] using cellA12B10_check
  · simpa only [show rowA12 11 = cellA12B11 from rfl] using cellA12B11_check
  · simpa only [show rowA12 12 = cellA12B12 from rfl] using cellA12B12_check
  · simpa only [show rowA12 13 = cellA12B13 from rfl] using cellA12B13_check
  · simpa only [show rowA12 14 = cellA12B14 from rfl] using cellA12B14_check
  · simpa only [show rowA12 15 = cellA12B15 from rfl] using cellA12B15_check
  · simpa only [show rowA12 16 = cellA12B16 from rfl] using cellA12B16_check

theorem rowA12_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 12 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 12 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA12_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 12 b = rowA12 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk001

#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA12B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA12B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA12B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA12B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA12B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA12B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA12B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA12B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA12B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA12B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA12B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA12B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA12B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA12B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA12B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA12B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.rowA12_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.rowA12_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA13B1_check :
    cellCheck (2 ^ 13) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA13B1 = true := by
  decide +kernel

theorem cellA13B2_check :
    cellCheck (2 ^ 13) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA13B2 = true := by
  decide +kernel

theorem cellA13B3_check :
    cellCheck (2 ^ 13) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA13B3 = true := by
  decide +kernel

theorem cellA13B4_check :
    cellCheck (2 ^ 13) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA13B4 = true := by
  decide +kernel

theorem cellA13B5_check :
    cellCheck (2 ^ 13) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA13B5 = true := by
  decide +kernel

theorem cellA13B6_check :
    cellCheck (2 ^ 13) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA13B6 = true := by
  decide +kernel

theorem cellA13B7_check :
    cellCheck (2 ^ 13) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA13B7 = true := by
  decide +kernel

theorem cellA13B8_check :
    cellCheck (2 ^ 13) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA13B8 = true := by
  decide +kernel

theorem cellA13B9_check :
    cellCheck (2 ^ 13) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA13B9 = true := by
  decide +kernel

theorem cellA13B10_check :
    cellCheck (2 ^ 13) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA13B10 = true := by
  decide +kernel

theorem cellA13B11_check :
    cellCheck (2 ^ 13) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA13B11 = true := by
  decide +kernel

theorem cellA13B12_check :
    cellCheck (2 ^ 13) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA13B12 = true := by
  decide +kernel

theorem cellA13B13_check :
    cellCheck (2 ^ 13) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA13B13 = true := by
  decide +kernel

theorem cellA13B14_check :
    cellCheck (2 ^ 13) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA13B14 = true := by
  decide +kernel

theorem cellA13B15_check :
    cellCheck (2 ^ 13) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA13B15 = true := by
  decide +kernel

theorem cellA13B16_check :
    cellCheck (2 ^ 13) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA13B16 = true := by
  decide +kernel

theorem rowA13_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 13) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 13))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA13 b) = true := by
  interval_cases b
  · simpa only [show rowA13 1 = cellA13B1 from rfl] using cellA13B1_check
  · simpa only [show rowA13 2 = cellA13B2 from rfl] using cellA13B2_check
  · simpa only [show rowA13 3 = cellA13B3 from rfl] using cellA13B3_check
  · simpa only [show rowA13 4 = cellA13B4 from rfl] using cellA13B4_check
  · simpa only [show rowA13 5 = cellA13B5 from rfl] using cellA13B5_check
  · simpa only [show rowA13 6 = cellA13B6 from rfl] using cellA13B6_check
  · simpa only [show rowA13 7 = cellA13B7 from rfl] using cellA13B7_check
  · simpa only [show rowA13 8 = cellA13B8 from rfl] using cellA13B8_check
  · simpa only [show rowA13 9 = cellA13B9 from rfl] using cellA13B9_check
  · simpa only [show rowA13 10 = cellA13B10 from rfl] using cellA13B10_check
  · simpa only [show rowA13 11 = cellA13B11 from rfl] using cellA13B11_check
  · simpa only [show rowA13 12 = cellA13B12 from rfl] using cellA13B12_check
  · simpa only [show rowA13 13 = cellA13B13 from rfl] using cellA13B13_check
  · simpa only [show rowA13 14 = cellA13B14 from rfl] using cellA13B14_check
  · simpa only [show rowA13 15 = cellA13B15 from rfl] using cellA13B15_check
  · simpa only [show rowA13 16 = cellA13B16 from rfl] using cellA13B16_check

theorem rowA13_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 13 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 13 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA13_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 13 b = rowA13 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk001

#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA13B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA13B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA13B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA13B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA13B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA13B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA13B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA13B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA13B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA13B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA13B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA13B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA13B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA13B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA13B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA13B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.rowA13_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.rowA13_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA14B1_check :
    cellCheck (2 ^ 14) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA14B1 = true := by
  decide +kernel

theorem cellA14B2_check :
    cellCheck (2 ^ 14) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA14B2 = true := by
  decide +kernel

theorem cellA14B3_check :
    cellCheck (2 ^ 14) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA14B3 = true := by
  decide +kernel

theorem cellA14B4_check :
    cellCheck (2 ^ 14) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA14B4 = true := by
  decide +kernel

theorem cellA14B5_check :
    cellCheck (2 ^ 14) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA14B5 = true := by
  decide +kernel

theorem cellA14B6_check :
    cellCheck (2 ^ 14) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA14B6 = true := by
  decide +kernel

theorem cellA14B7_check :
    cellCheck (2 ^ 14) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA14B7 = true := by
  decide +kernel

theorem cellA14B8_check :
    cellCheck (2 ^ 14) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA14B8 = true := by
  decide +kernel

theorem cellA14B9_check :
    cellCheck (2 ^ 14) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA14B9 = true := by
  decide +kernel

theorem cellA14B10_check :
    cellCheck (2 ^ 14) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA14B10 = true := by
  decide +kernel

theorem cellA14B11_check :
    cellCheck (2 ^ 14) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA14B11 = true := by
  decide +kernel

theorem cellA14B12_check :
    cellCheck (2 ^ 14) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA14B12 = true := by
  decide +kernel

theorem cellA14B13_check :
    cellCheck (2 ^ 14) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA14B13 = true := by
  decide +kernel

theorem cellA14B14_check :
    cellCheck (2 ^ 14) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA14B14 = true := by
  decide +kernel

theorem cellA14B15_check :
    cellCheck (2 ^ 14) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA14B15 = true := by
  decide +kernel

theorem cellA14B16_check :
    cellCheck (2 ^ 14) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA14B16 = true := by
  decide +kernel

theorem rowA14_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 14) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 14))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA14 b) = true := by
  interval_cases b
  · simpa only [show rowA14 1 = cellA14B1 from rfl] using cellA14B1_check
  · simpa only [show rowA14 2 = cellA14B2 from rfl] using cellA14B2_check
  · simpa only [show rowA14 3 = cellA14B3 from rfl] using cellA14B3_check
  · simpa only [show rowA14 4 = cellA14B4 from rfl] using cellA14B4_check
  · simpa only [show rowA14 5 = cellA14B5 from rfl] using cellA14B5_check
  · simpa only [show rowA14 6 = cellA14B6 from rfl] using cellA14B6_check
  · simpa only [show rowA14 7 = cellA14B7 from rfl] using cellA14B7_check
  · simpa only [show rowA14 8 = cellA14B8 from rfl] using cellA14B8_check
  · simpa only [show rowA14 9 = cellA14B9 from rfl] using cellA14B9_check
  · simpa only [show rowA14 10 = cellA14B10 from rfl] using cellA14B10_check
  · simpa only [show rowA14 11 = cellA14B11 from rfl] using cellA14B11_check
  · simpa only [show rowA14 12 = cellA14B12 from rfl] using cellA14B12_check
  · simpa only [show rowA14 13 = cellA14B13 from rfl] using cellA14B13_check
  · simpa only [show rowA14 14 = cellA14B14 from rfl] using cellA14B14_check
  · simpa only [show rowA14 15 = cellA14B15 from rfl] using cellA14B15_check
  · simpa only [show rowA14 16 = cellA14B16 from rfl] using cellA14B16_check

theorem rowA14_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 14 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 14 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA14_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 14 b = rowA14 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk001

#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA14B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA14B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA14B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA14B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA14B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA14B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA14B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA14B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA14B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA14B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA14B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA14B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA14B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA14B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA14B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA14B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.rowA14_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.rowA14_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA15B1_check :
    cellCheck (2 ^ 15) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA15B1 = true := by
  decide +kernel

theorem cellA15B2_check :
    cellCheck (2 ^ 15) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA15B2 = true := by
  decide +kernel

theorem cellA15B3_check :
    cellCheck (2 ^ 15) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA15B3 = true := by
  decide +kernel

theorem cellA15B4_check :
    cellCheck (2 ^ 15) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA15B4 = true := by
  decide +kernel

theorem cellA15B5_check :
    cellCheck (2 ^ 15) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA15B5 = true := by
  decide +kernel

theorem cellA15B6_check :
    cellCheck (2 ^ 15) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA15B6 = true := by
  decide +kernel

theorem cellA15B7_check :
    cellCheck (2 ^ 15) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA15B7 = true := by
  decide +kernel

theorem cellA15B8_check :
    cellCheck (2 ^ 15) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA15B8 = true := by
  decide +kernel

theorem cellA15B9_check :
    cellCheck (2 ^ 15) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA15B9 = true := by
  decide +kernel

theorem cellA15B10_check :
    cellCheck (2 ^ 15) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA15B10 = true := by
  decide +kernel

theorem cellA15B11_check :
    cellCheck (2 ^ 15) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA15B11 = true := by
  decide +kernel

theorem cellA15B12_check :
    cellCheck (2 ^ 15) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA15B12 = true := by
  decide +kernel

theorem cellA15B13_check :
    cellCheck (2 ^ 15) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA15B13 = true := by
  decide +kernel

theorem cellA15B14_check :
    cellCheck (2 ^ 15) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA15B14 = true := by
  decide +kernel

theorem cellA15B15_check :
    cellCheck (2 ^ 15) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA15B15 = true := by
  decide +kernel

theorem cellA15B16_check :
    cellCheck (2 ^ 15) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA15B16 = true := by
  decide +kernel

theorem rowA15_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 15) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA15 b) = true := by
  interval_cases b
  · simpa only [show rowA15 1 = cellA15B1 from rfl] using cellA15B1_check
  · simpa only [show rowA15 2 = cellA15B2 from rfl] using cellA15B2_check
  · simpa only [show rowA15 3 = cellA15B3 from rfl] using cellA15B3_check
  · simpa only [show rowA15 4 = cellA15B4 from rfl] using cellA15B4_check
  · simpa only [show rowA15 5 = cellA15B5 from rfl] using cellA15B5_check
  · simpa only [show rowA15 6 = cellA15B6 from rfl] using cellA15B6_check
  · simpa only [show rowA15 7 = cellA15B7 from rfl] using cellA15B7_check
  · simpa only [show rowA15 8 = cellA15B8 from rfl] using cellA15B8_check
  · simpa only [show rowA15 9 = cellA15B9 from rfl] using cellA15B9_check
  · simpa only [show rowA15 10 = cellA15B10 from rfl] using cellA15B10_check
  · simpa only [show rowA15 11 = cellA15B11 from rfl] using cellA15B11_check
  · simpa only [show rowA15 12 = cellA15B12 from rfl] using cellA15B12_check
  · simpa only [show rowA15 13 = cellA15B13 from rfl] using cellA15B13_check
  · simpa only [show rowA15 14 = cellA15B14 from rfl] using cellA15B14_check
  · simpa only [show rowA15 15 = cellA15B15 from rfl] using cellA15B15_check
  · simpa only [show rowA15 16 = cellA15B16 from rfl] using cellA15B16_check

theorem rowA15_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 15 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 15 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA15_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 15 b = rowA15 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk001

#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA15B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA15B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA15B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA15B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA15B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA15B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA15B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA15B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA15B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA15B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA15B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA15B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA15B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA15B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA15B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA15B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.rowA15_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.rowA15_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA16B1_check :
    cellCheck (2 ^ 16) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA16B1 = true := by
  decide +kernel

theorem cellA16B2_check :
    cellCheck (2 ^ 16) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA16B2 = true := by
  decide +kernel

theorem cellA16B3_check :
    cellCheck (2 ^ 16) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA16B3 = true := by
  decide +kernel

theorem cellA16B4_check :
    cellCheck (2 ^ 16) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA16B4 = true := by
  decide +kernel

theorem cellA16B5_check :
    cellCheck (2 ^ 16) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA16B5 = true := by
  decide +kernel

theorem cellA16B6_check :
    cellCheck (2 ^ 16) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA16B6 = true := by
  decide +kernel

theorem cellA16B7_check :
    cellCheck (2 ^ 16) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA16B7 = true := by
  decide +kernel

theorem cellA16B8_check :
    cellCheck (2 ^ 16) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA16B8 = true := by
  decide +kernel

theorem cellA16B9_check :
    cellCheck (2 ^ 16) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA16B9 = true := by
  decide +kernel

theorem cellA16B10_check :
    cellCheck (2 ^ 16) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA16B10 = true := by
  decide +kernel

theorem cellA16B11_check :
    cellCheck (2 ^ 16) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA16B11 = true := by
  decide +kernel

theorem cellA16B12_check :
    cellCheck (2 ^ 16) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA16B12 = true := by
  decide +kernel

theorem cellA16B13_check :
    cellCheck (2 ^ 16) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA16B13 = true := by
  decide +kernel

theorem cellA16B14_check :
    cellCheck (2 ^ 16) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA16B14 = true := by
  decide +kernel

theorem cellA16B15_check :
    cellCheck (2 ^ 16) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA16B15 = true := by
  decide +kernel

theorem cellA16B16_check :
    cellCheck (2 ^ 16) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA16B16 = true := by
  decide +kernel

theorem rowA16_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 16) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA16 b) = true := by
  interval_cases b
  · simpa only [show rowA16 1 = cellA16B1 from rfl] using cellA16B1_check
  · simpa only [show rowA16 2 = cellA16B2 from rfl] using cellA16B2_check
  · simpa only [show rowA16 3 = cellA16B3 from rfl] using cellA16B3_check
  · simpa only [show rowA16 4 = cellA16B4 from rfl] using cellA16B4_check
  · simpa only [show rowA16 5 = cellA16B5 from rfl] using cellA16B5_check
  · simpa only [show rowA16 6 = cellA16B6 from rfl] using cellA16B6_check
  · simpa only [show rowA16 7 = cellA16B7 from rfl] using cellA16B7_check
  · simpa only [show rowA16 8 = cellA16B8 from rfl] using cellA16B8_check
  · simpa only [show rowA16 9 = cellA16B9 from rfl] using cellA16B9_check
  · simpa only [show rowA16 10 = cellA16B10 from rfl] using cellA16B10_check
  · simpa only [show rowA16 11 = cellA16B11 from rfl] using cellA16B11_check
  · simpa only [show rowA16 12 = cellA16B12 from rfl] using cellA16B12_check
  · simpa only [show rowA16 13 = cellA16B13 from rfl] using cellA16B13_check
  · simpa only [show rowA16 14 = cellA16B14 from rfl] using cellA16B14_check
  · simpa only [show rowA16 15 = cellA16B15 from rfl] using cellA16B15_check
  · simpa only [show rowA16 16 = cellA16B16 from rfl] using cellA16B16_check

theorem rowA16_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 16 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 16 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA16_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 16 b = rowA16 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk001

#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA16B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA16B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA16B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA16B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA16B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA16B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA16B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA16B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA16B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA16B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA16B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA16B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA16B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA16B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA16B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.cellA16B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.rowA16_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk001.rowA16_block_check
