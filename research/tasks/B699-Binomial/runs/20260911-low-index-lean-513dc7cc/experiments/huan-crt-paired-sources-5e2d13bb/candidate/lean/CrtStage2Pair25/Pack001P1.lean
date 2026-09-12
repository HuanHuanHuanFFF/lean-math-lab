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
