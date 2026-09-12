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

theorem cellA28B1_check :
    cellCheck (2 ^ 28) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA28B1 = true := by
  decide +kernel

theorem cellA28B2_check :
    cellCheck (2 ^ 28) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA28B2 = true := by
  decide +kernel

theorem cellA28B3_check :
    cellCheck (2 ^ 28) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA28B3 = true := by
  decide +kernel

theorem cellA28B4_check :
    cellCheck (2 ^ 28) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA28B4 = true := by
  decide +kernel

theorem cellA28B5_check :
    cellCheck (2 ^ 28) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA28B5 = true := by
  decide +kernel

theorem cellA28B6_check :
    cellCheck (2 ^ 28) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA28B6 = true := by
  decide +kernel

theorem cellA28B7_check :
    cellCheck (2 ^ 28) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA28B7 = true := by
  decide +kernel

theorem cellA28B8_check :
    cellCheck (2 ^ 28) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA28B8 = true := by
  decide +kernel

theorem cellA28B9_check :
    cellCheck (2 ^ 28) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA28B9 = true := by
  decide +kernel

theorem cellA28B10_check :
    cellCheck (2 ^ 28) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA28B10 = true := by
  decide +kernel

theorem cellA28B11_check :
    cellCheck (2 ^ 28) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA28B11 = true := by
  decide +kernel

theorem cellA28B12_check :
    cellCheck (2 ^ 28) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA28B12 = true := by
  decide +kernel

theorem cellA28B13_check :
    cellCheck (2 ^ 28) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA28B13 = true := by
  decide +kernel

theorem cellA28B14_check :
    cellCheck (2 ^ 28) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA28B14 = true := by
  decide +kernel

theorem cellA28B15_check :
    cellCheck (2 ^ 28) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA28B15 = true := by
  decide +kernel

theorem cellA28B16_check :
    cellCheck (2 ^ 28) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA28B16 = true := by
  decide +kernel

theorem rowA28_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 28) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA28 b) = true := by
  interval_cases b
  · simpa only [show rowA28 1 = cellA28B1 from rfl] using cellA28B1_check
  · simpa only [show rowA28 2 = cellA28B2 from rfl] using cellA28B2_check
  · simpa only [show rowA28 3 = cellA28B3 from rfl] using cellA28B3_check
  · simpa only [show rowA28 4 = cellA28B4 from rfl] using cellA28B4_check
  · simpa only [show rowA28 5 = cellA28B5 from rfl] using cellA28B5_check
  · simpa only [show rowA28 6 = cellA28B6 from rfl] using cellA28B6_check
  · simpa only [show rowA28 7 = cellA28B7 from rfl] using cellA28B7_check
  · simpa only [show rowA28 8 = cellA28B8 from rfl] using cellA28B8_check
  · simpa only [show rowA28 9 = cellA28B9 from rfl] using cellA28B9_check
  · simpa only [show rowA28 10 = cellA28B10 from rfl] using cellA28B10_check
  · simpa only [show rowA28 11 = cellA28B11 from rfl] using cellA28B11_check
  · simpa only [show rowA28 12 = cellA28B12 from rfl] using cellA28B12_check
  · simpa only [show rowA28 13 = cellA28B13 from rfl] using cellA28B13_check
  · simpa only [show rowA28 14 = cellA28B14 from rfl] using cellA28B14_check
  · simpa only [show rowA28 15 = cellA28B15 from rfl] using cellA28B15_check
  · simpa only [show rowA28 16 = cellA28B16 from rfl] using cellA28B16_check

theorem rowA28_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 28 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 28 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA28_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 28 b = rowA28 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk003

#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA28B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA28B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA28B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA28B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA28B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA28B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA28B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA28B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA28B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA28B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA28B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA28B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA28B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA28B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA28B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA28B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.rowA28_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.rowA28_block_check
