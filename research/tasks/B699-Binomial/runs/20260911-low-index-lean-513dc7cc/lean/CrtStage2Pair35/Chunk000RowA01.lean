import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair35.Chunk000Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair35.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA1B1_check :
    cellCheck (3 ^ 1) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA1B1 = true := by
  decide +kernel

theorem cellA1B2_check :
    cellCheck (3 ^ 1) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA1B2 = true := by
  decide +kernel

theorem cellA1B3_check :
    cellCheck (3 ^ 1) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA1B3 = true := by
  decide +kernel

theorem cellA1B4_check :
    cellCheck (3 ^ 1) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA1B4 = true := by
  decide +kernel

theorem cellA1B5_check :
    cellCheck (3 ^ 1) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA1B5 = true := by
  decide +kernel

theorem cellA1B6_check :
    cellCheck (3 ^ 1) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA1B6 = true := by
  decide +kernel

theorem cellA1B7_check :
    cellCheck (3 ^ 1) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA1B7 = true := by
  decide +kernel

theorem cellA1B8_check :
    cellCheck (3 ^ 1) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA1B8 = true := by
  decide +kernel

theorem cellA1B9_check :
    cellCheck (3 ^ 1) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA1B9 = true := by
  decide +kernel

theorem cellA1B10_check :
    cellCheck (3 ^ 1) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA1B10 = true := by
  decide +kernel

theorem cellA1B11_check :
    cellCheck (3 ^ 1) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA1B11 = true := by
  decide +kernel

theorem cellA1B12_check :
    cellCheck (3 ^ 1) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA1B12 = true := by
  decide +kernel

theorem cellA1B13_check :
    cellCheck (3 ^ 1) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA1B13 = true := by
  decide +kernel

theorem cellA1B14_check :
    cellCheck (3 ^ 1) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA1B14 = true := by
  decide +kernel

theorem cellA1B15_check :
    cellCheck (3 ^ 1) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA1B15 = true := by
  decide +kernel

theorem cellA1B16_check :
    cellCheck (3 ^ 1) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA1B16 = true := by
  decide +kernel

theorem rowA1_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (3 ^ 1) (5 ^ b)
      (heightCap Stage02.H Stage02.M (3 ^ 1))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA1 b) = true := by
  interval_cases b
  · simpa only [show rowA1 1 = cellA1B1 from rfl] using cellA1B1_check
  · simpa only [show rowA1 2 = cellA1B2 from rfl] using cellA1B2_check
  · simpa only [show rowA1 3 = cellA1B3 from rfl] using cellA1B3_check
  · simpa only [show rowA1 4 = cellA1B4 from rfl] using cellA1B4_check
  · simpa only [show rowA1 5 = cellA1B5 from rfl] using cellA1B5_check
  · simpa only [show rowA1 6 = cellA1B6 from rfl] using cellA1B6_check
  · simpa only [show rowA1 7 = cellA1B7 from rfl] using cellA1B7_check
  · simpa only [show rowA1 8 = cellA1B8 from rfl] using cellA1B8_check
  · simpa only [show rowA1 9 = cellA1B9 from rfl] using cellA1B9_check
  · simpa only [show rowA1 10 = cellA1B10 from rfl] using cellA1B10_check
  · simpa only [show rowA1 11 = cellA1B11 from rfl] using cellA1B11_check
  · simpa only [show rowA1 12 = cellA1B12 from rfl] using cellA1B12_check
  · simpa only [show rowA1 13 = cellA1B13 from rfl] using cellA1B13_check
  · simpa only [show rowA1 14 = cellA1B14 from rfl] using cellA1B14_check
  · simpa only [show rowA1 15 = cellA1B15 from rfl] using cellA1B15_check
  · simpa only [show rowA1 16 = cellA1B16 from rfl] using cellA1B16_check

theorem rowA1_block_check :
    blockCheck 3 5 Stage02.H Stage02.M Stage02.upper 1 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 1 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA1_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 1 b = rowA1 b from rfl] using h

end Math.B699.CRTStage2Pair35.Chunk000

#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA1B1_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA1B2_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA1B3_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA1B4_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA1B5_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA1B6_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA1B7_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA1B8_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA1B9_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA1B10_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA1B11_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA1B12_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA1B13_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA1B14_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA1B15_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA1B16_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.rowA1_cell_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.rowA1_block_check
