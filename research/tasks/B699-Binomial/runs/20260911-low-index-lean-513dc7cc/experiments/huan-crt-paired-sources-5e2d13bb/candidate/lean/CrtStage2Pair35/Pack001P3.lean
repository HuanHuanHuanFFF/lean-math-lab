import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair35.Chunk001Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair35.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA15B1_check :
    cellCheck (3 ^ 15) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA15B1 = true := by
  decide +kernel

theorem cellA15B2_check :
    cellCheck (3 ^ 15) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA15B2 = true := by
  decide +kernel

theorem cellA15B3_check :
    cellCheck (3 ^ 15) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA15B3 = true := by
  decide +kernel

theorem cellA15B4_check :
    cellCheck (3 ^ 15) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA15B4 = true := by
  decide +kernel

theorem cellA15B5_check :
    cellCheck (3 ^ 15) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA15B5 = true := by
  decide +kernel

theorem cellA15B6_check :
    cellCheck (3 ^ 15) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA15B6 = true := by
  decide +kernel

theorem cellA15B7_check :
    cellCheck (3 ^ 15) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA15B7 = true := by
  decide +kernel

theorem cellA15B8_check :
    cellCheck (3 ^ 15) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA15B8 = true := by
  decide +kernel

theorem cellA15B9_check :
    cellCheck (3 ^ 15) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA15B9 = true := by
  decide +kernel

theorem cellA15B10_check :
    cellCheck (3 ^ 15) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA15B10 = true := by
  decide +kernel

theorem cellA15B11_check :
    cellCheck (3 ^ 15) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA15B11 = true := by
  decide +kernel

theorem cellA15B12_check :
    cellCheck (3 ^ 15) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA15B12 = true := by
  decide +kernel

theorem cellA15B13_check :
    cellCheck (3 ^ 15) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA15B13 = true := by
  decide +kernel

theorem cellA15B14_check :
    cellCheck (3 ^ 15) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA15B14 = true := by
  decide +kernel

theorem cellA15B15_check :
    cellCheck (3 ^ 15) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA15B15 = true := by
  decide +kernel

theorem cellA15B16_check :
    cellCheck (3 ^ 15) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA15B16 = true := by
  decide +kernel

theorem rowA15_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (3 ^ 15) (5 ^ b)
      (heightCap Stage02.H Stage02.M (3 ^ 15))
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
    blockCheck 3 5 Stage02.H Stage02.M Stage02.upper 15 1 1 16 chunkData = true := by
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

end Math.B699.CRTStage2Pair35.Chunk001

#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA15B1_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA15B2_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA15B3_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA15B4_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA15B5_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA15B6_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA15B7_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA15B8_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA15B9_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA15B10_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA15B11_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA15B12_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA15B13_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA15B14_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA15B15_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA15B16_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.rowA15_cell_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.rowA15_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair35.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA16B1_check :
    cellCheck (3 ^ 16) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA16B1 = true := by
  decide +kernel

theorem cellA16B2_check :
    cellCheck (3 ^ 16) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA16B2 = true := by
  decide +kernel

theorem cellA16B3_check :
    cellCheck (3 ^ 16) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA16B3 = true := by
  decide +kernel

theorem cellA16B4_check :
    cellCheck (3 ^ 16) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA16B4 = true := by
  decide +kernel

theorem cellA16B5_check :
    cellCheck (3 ^ 16) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA16B5 = true := by
  decide +kernel

theorem cellA16B6_check :
    cellCheck (3 ^ 16) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA16B6 = true := by
  decide +kernel

theorem cellA16B7_check :
    cellCheck (3 ^ 16) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA16B7 = true := by
  decide +kernel

theorem cellA16B8_check :
    cellCheck (3 ^ 16) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA16B8 = true := by
  decide +kernel

theorem cellA16B9_check :
    cellCheck (3 ^ 16) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA16B9 = true := by
  decide +kernel

theorem cellA16B10_check :
    cellCheck (3 ^ 16) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA16B10 = true := by
  decide +kernel

theorem cellA16B11_check :
    cellCheck (3 ^ 16) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA16B11 = true := by
  decide +kernel

theorem cellA16B12_check :
    cellCheck (3 ^ 16) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA16B12 = true := by
  decide +kernel

theorem cellA16B13_check :
    cellCheck (3 ^ 16) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA16B13 = true := by
  decide +kernel

theorem cellA16B14_check :
    cellCheck (3 ^ 16) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA16B14 = true := by
  decide +kernel

theorem cellA16B15_check :
    cellCheck (3 ^ 16) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA16B15 = true := by
  decide +kernel

theorem cellA16B16_check :
    cellCheck (3 ^ 16) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA16B16 = true := by
  decide +kernel

theorem rowA16_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (3 ^ 16) (5 ^ b)
      (heightCap Stage02.H Stage02.M (3 ^ 16))
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
    blockCheck 3 5 Stage02.H Stage02.M Stage02.upper 16 1 1 16 chunkData = true := by
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

end Math.B699.CRTStage2Pair35.Chunk001

#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA16B1_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA16B2_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA16B3_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA16B4_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA16B5_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA16B6_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA16B7_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA16B8_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA16B9_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA16B10_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA16B11_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA16B12_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA16B13_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA16B14_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA16B15_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.cellA16B16_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.rowA16_cell_check
#print axioms Math.B699.CRTStage2Pair35.Chunk001.rowA16_block_check
