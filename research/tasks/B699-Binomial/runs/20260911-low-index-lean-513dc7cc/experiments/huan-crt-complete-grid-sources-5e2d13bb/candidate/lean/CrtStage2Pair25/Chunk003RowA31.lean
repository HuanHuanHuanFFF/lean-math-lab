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

theorem cellA31B1_check :
    cellCheck (2 ^ 31) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA31B1 = true := by
  decide +kernel

theorem cellA31B2_check :
    cellCheck (2 ^ 31) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA31B2 = true := by
  decide +kernel

theorem cellA31B3_check :
    cellCheck (2 ^ 31) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA31B3 = true := by
  decide +kernel

theorem cellA31B4_check :
    cellCheck (2 ^ 31) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA31B4 = true := by
  decide +kernel

theorem cellA31B5_check :
    cellCheck (2 ^ 31) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA31B5 = true := by
  decide +kernel

theorem cellA31B6_check :
    cellCheck (2 ^ 31) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA31B6 = true := by
  decide +kernel

theorem cellA31B7_check :
    cellCheck (2 ^ 31) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA31B7 = true := by
  decide +kernel

theorem cellA31B8_check :
    cellCheck (2 ^ 31) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA31B8 = true := by
  decide +kernel

theorem cellA31B9_check :
    cellCheck (2 ^ 31) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA31B9 = true := by
  decide +kernel

theorem cellA31B10_check :
    cellCheck (2 ^ 31) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA31B10 = true := by
  decide +kernel

theorem cellA31B11_check :
    cellCheck (2 ^ 31) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA31B11 = true := by
  decide +kernel

theorem cellA31B12_check :
    cellCheck (2 ^ 31) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA31B12 = true := by
  decide +kernel

theorem cellA31B13_check :
    cellCheck (2 ^ 31) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA31B13 = true := by
  decide +kernel

theorem cellA31B14_check :
    cellCheck (2 ^ 31) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA31B14 = true := by
  decide +kernel

theorem cellA31B15_check :
    cellCheck (2 ^ 31) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA31B15 = true := by
  decide +kernel

theorem cellA31B16_check :
    cellCheck (2 ^ 31) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA31B16 = true := by
  decide +kernel

theorem rowA31_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 31) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA31 b) = true := by
  interval_cases b
  · simpa only [show rowA31 1 = cellA31B1 from rfl] using cellA31B1_check
  · simpa only [show rowA31 2 = cellA31B2 from rfl] using cellA31B2_check
  · simpa only [show rowA31 3 = cellA31B3 from rfl] using cellA31B3_check
  · simpa only [show rowA31 4 = cellA31B4 from rfl] using cellA31B4_check
  · simpa only [show rowA31 5 = cellA31B5 from rfl] using cellA31B5_check
  · simpa only [show rowA31 6 = cellA31B6 from rfl] using cellA31B6_check
  · simpa only [show rowA31 7 = cellA31B7 from rfl] using cellA31B7_check
  · simpa only [show rowA31 8 = cellA31B8 from rfl] using cellA31B8_check
  · simpa only [show rowA31 9 = cellA31B9 from rfl] using cellA31B9_check
  · simpa only [show rowA31 10 = cellA31B10 from rfl] using cellA31B10_check
  · simpa only [show rowA31 11 = cellA31B11 from rfl] using cellA31B11_check
  · simpa only [show rowA31 12 = cellA31B12 from rfl] using cellA31B12_check
  · simpa only [show rowA31 13 = cellA31B13 from rfl] using cellA31B13_check
  · simpa only [show rowA31 14 = cellA31B14 from rfl] using cellA31B14_check
  · simpa only [show rowA31 15 = cellA31B15 from rfl] using cellA31B15_check
  · simpa only [show rowA31 16 = cellA31B16 from rfl] using cellA31B16_check

theorem rowA31_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 31 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 31 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA31_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 31 b = rowA31 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk003

#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA31B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA31B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA31B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA31B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA31B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA31B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA31B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA31B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA31B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA31B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA31B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA31B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA31B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA31B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA31B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA31B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.rowA31_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.rowA31_block_check
