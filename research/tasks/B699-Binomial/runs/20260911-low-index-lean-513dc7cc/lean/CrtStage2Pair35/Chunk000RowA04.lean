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

theorem cellA4B1_check :
    cellCheck (3 ^ 4) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA4B1 = true := by
  decide +kernel

theorem cellA4B2_check :
    cellCheck (3 ^ 4) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA4B2 = true := by
  decide +kernel

theorem cellA4B3_check :
    cellCheck (3 ^ 4) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA4B3 = true := by
  decide +kernel

theorem cellA4B4_check :
    cellCheck (3 ^ 4) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA4B4 = true := by
  decide +kernel

theorem cellA4B5_check :
    cellCheck (3 ^ 4) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA4B5 = true := by
  decide +kernel

theorem cellA4B6_check :
    cellCheck (3 ^ 4) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA4B6 = true := by
  decide +kernel

theorem cellA4B7_check :
    cellCheck (3 ^ 4) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA4B7 = true := by
  decide +kernel

theorem cellA4B8_check :
    cellCheck (3 ^ 4) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA4B8 = true := by
  decide +kernel

theorem cellA4B9_check :
    cellCheck (3 ^ 4) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA4B9 = true := by
  decide +kernel

theorem cellA4B10_check :
    cellCheck (3 ^ 4) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA4B10 = true := by
  decide +kernel

theorem cellA4B11_check :
    cellCheck (3 ^ 4) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA4B11 = true := by
  decide +kernel

theorem cellA4B12_check :
    cellCheck (3 ^ 4) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA4B12 = true := by
  decide +kernel

theorem cellA4B13_check :
    cellCheck (3 ^ 4) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA4B13 = true := by
  decide +kernel

theorem cellA4B14_check :
    cellCheck (3 ^ 4) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA4B14 = true := by
  decide +kernel

theorem cellA4B15_check :
    cellCheck (3 ^ 4) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA4B15 = true := by
  decide +kernel

theorem cellA4B16_check :
    cellCheck (3 ^ 4) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA4B16 = true := by
  decide +kernel

theorem rowA4_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (3 ^ 4) (5 ^ b)
      (heightCap Stage02.H Stage02.M (3 ^ 4))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA4 b) = true := by
  interval_cases b
  · simpa only [show rowA4 1 = cellA4B1 from rfl] using cellA4B1_check
  · simpa only [show rowA4 2 = cellA4B2 from rfl] using cellA4B2_check
  · simpa only [show rowA4 3 = cellA4B3 from rfl] using cellA4B3_check
  · simpa only [show rowA4 4 = cellA4B4 from rfl] using cellA4B4_check
  · simpa only [show rowA4 5 = cellA4B5 from rfl] using cellA4B5_check
  · simpa only [show rowA4 6 = cellA4B6 from rfl] using cellA4B6_check
  · simpa only [show rowA4 7 = cellA4B7 from rfl] using cellA4B7_check
  · simpa only [show rowA4 8 = cellA4B8 from rfl] using cellA4B8_check
  · simpa only [show rowA4 9 = cellA4B9 from rfl] using cellA4B9_check
  · simpa only [show rowA4 10 = cellA4B10 from rfl] using cellA4B10_check
  · simpa only [show rowA4 11 = cellA4B11 from rfl] using cellA4B11_check
  · simpa only [show rowA4 12 = cellA4B12 from rfl] using cellA4B12_check
  · simpa only [show rowA4 13 = cellA4B13 from rfl] using cellA4B13_check
  · simpa only [show rowA4 14 = cellA4B14 from rfl] using cellA4B14_check
  · simpa only [show rowA4 15 = cellA4B15 from rfl] using cellA4B15_check
  · simpa only [show rowA4 16 = cellA4B16 from rfl] using cellA4B16_check

theorem rowA4_block_check :
    blockCheck 3 5 Stage02.H Stage02.M Stage02.upper 4 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 4 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA4_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 4 b = rowA4 b from rfl] using h

end Math.B699.CRTStage2Pair35.Chunk000

#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA4B1_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA4B2_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA4B3_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA4B4_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA4B5_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA4B6_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA4B7_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA4B8_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA4B9_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA4B10_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA4B11_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA4B12_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA4B13_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA4B14_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA4B15_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.cellA4B16_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.rowA4_cell_check
#print axioms Math.B699.CRTStage2Pair35.Chunk000.rowA4_block_check
