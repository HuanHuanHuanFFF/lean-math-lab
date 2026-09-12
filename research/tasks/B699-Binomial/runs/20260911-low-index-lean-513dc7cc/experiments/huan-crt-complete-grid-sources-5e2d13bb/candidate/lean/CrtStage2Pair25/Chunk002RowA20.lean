import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair25.Chunk002Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA20B1_check :
    cellCheck (2 ^ 20) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA20B1 = true := by
  decide +kernel

theorem cellA20B2_check :
    cellCheck (2 ^ 20) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA20B2 = true := by
  decide +kernel

theorem cellA20B3_check :
    cellCheck (2 ^ 20) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA20B3 = true := by
  decide +kernel

theorem cellA20B4_check :
    cellCheck (2 ^ 20) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA20B4 = true := by
  decide +kernel

theorem cellA20B5_check :
    cellCheck (2 ^ 20) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA20B5 = true := by
  decide +kernel

theorem cellA20B6_check :
    cellCheck (2 ^ 20) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA20B6 = true := by
  decide +kernel

theorem cellA20B7_check :
    cellCheck (2 ^ 20) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA20B7 = true := by
  decide +kernel

theorem cellA20B8_check :
    cellCheck (2 ^ 20) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA20B8 = true := by
  decide +kernel

theorem cellA20B9_check :
    cellCheck (2 ^ 20) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA20B9 = true := by
  decide +kernel

theorem cellA20B10_check :
    cellCheck (2 ^ 20) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA20B10 = true := by
  decide +kernel

theorem cellA20B11_check :
    cellCheck (2 ^ 20) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA20B11 = true := by
  decide +kernel

theorem cellA20B12_check :
    cellCheck (2 ^ 20) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA20B12 = true := by
  decide +kernel

theorem cellA20B13_check :
    cellCheck (2 ^ 20) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA20B13 = true := by
  decide +kernel

theorem cellA20B14_check :
    cellCheck (2 ^ 20) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA20B14 = true := by
  decide +kernel

theorem cellA20B15_check :
    cellCheck (2 ^ 20) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA20B15 = true := by
  decide +kernel

theorem cellA20B16_check :
    cellCheck (2 ^ 20) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA20B16 = true := by
  decide +kernel

theorem rowA20_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 20) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 20))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA20 b) = true := by
  interval_cases b
  · simpa only [show rowA20 1 = cellA20B1 from rfl] using cellA20B1_check
  · simpa only [show rowA20 2 = cellA20B2 from rfl] using cellA20B2_check
  · simpa only [show rowA20 3 = cellA20B3 from rfl] using cellA20B3_check
  · simpa only [show rowA20 4 = cellA20B4 from rfl] using cellA20B4_check
  · simpa only [show rowA20 5 = cellA20B5 from rfl] using cellA20B5_check
  · simpa only [show rowA20 6 = cellA20B6 from rfl] using cellA20B6_check
  · simpa only [show rowA20 7 = cellA20B7 from rfl] using cellA20B7_check
  · simpa only [show rowA20 8 = cellA20B8 from rfl] using cellA20B8_check
  · simpa only [show rowA20 9 = cellA20B9 from rfl] using cellA20B9_check
  · simpa only [show rowA20 10 = cellA20B10 from rfl] using cellA20B10_check
  · simpa only [show rowA20 11 = cellA20B11 from rfl] using cellA20B11_check
  · simpa only [show rowA20 12 = cellA20B12 from rfl] using cellA20B12_check
  · simpa only [show rowA20 13 = cellA20B13 from rfl] using cellA20B13_check
  · simpa only [show rowA20 14 = cellA20B14 from rfl] using cellA20B14_check
  · simpa only [show rowA20 15 = cellA20B15 from rfl] using cellA20B15_check
  · simpa only [show rowA20 16 = cellA20B16 from rfl] using cellA20B16_check

theorem rowA20_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 20 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 20 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA20_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 20 b = rowA20 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk002

#print axioms Math.B699.CRTStage2Pair25.Chunk002.cellA20B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.cellA20B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.cellA20B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.cellA20B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.cellA20B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.cellA20B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.cellA20B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.cellA20B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.cellA20B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.cellA20B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.cellA20B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.cellA20B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.cellA20B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.cellA20B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.cellA20B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.cellA20B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.rowA20_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk002.rowA20_block_check
