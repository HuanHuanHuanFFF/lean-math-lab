import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair25.Chunk000Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA6B1_check :
    cellCheck (2 ^ 6) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA6B1 = true := by
  decide +kernel

theorem cellA6B2_check :
    cellCheck (2 ^ 6) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA6B2 = true := by
  decide +kernel

theorem cellA6B3_check :
    cellCheck (2 ^ 6) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA6B3 = true := by
  decide +kernel

theorem cellA6B4_check :
    cellCheck (2 ^ 6) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA6B4 = true := by
  decide +kernel

theorem cellA6B5_check :
    cellCheck (2 ^ 6) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA6B5 = true := by
  decide +kernel

theorem cellA6B6_check :
    cellCheck (2 ^ 6) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA6B6 = true := by
  decide +kernel

theorem cellA6B7_check :
    cellCheck (2 ^ 6) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA6B7 = true := by
  decide +kernel

theorem cellA6B8_check :
    cellCheck (2 ^ 6) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA6B8 = true := by
  decide +kernel

theorem cellA6B9_check :
    cellCheck (2 ^ 6) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA6B9 = true := by
  decide +kernel

theorem cellA6B10_check :
    cellCheck (2 ^ 6) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA6B10 = true := by
  decide +kernel

theorem cellA6B11_check :
    cellCheck (2 ^ 6) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA6B11 = true := by
  decide +kernel

theorem cellA6B12_check :
    cellCheck (2 ^ 6) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA6B12 = true := by
  decide +kernel

theorem cellA6B13_check :
    cellCheck (2 ^ 6) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA6B13 = true := by
  decide +kernel

theorem cellA6B14_check :
    cellCheck (2 ^ 6) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA6B14 = true := by
  decide +kernel

theorem cellA6B15_check :
    cellCheck (2 ^ 6) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA6B15 = true := by
  decide +kernel

theorem cellA6B16_check :
    cellCheck (2 ^ 6) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA6B16 = true := by
  decide +kernel

theorem rowA6_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 6) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 6))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA6 b) = true := by
  interval_cases b
  · simpa only [show rowA6 1 = cellA6B1 from rfl] using cellA6B1_check
  · simpa only [show rowA6 2 = cellA6B2 from rfl] using cellA6B2_check
  · simpa only [show rowA6 3 = cellA6B3 from rfl] using cellA6B3_check
  · simpa only [show rowA6 4 = cellA6B4 from rfl] using cellA6B4_check
  · simpa only [show rowA6 5 = cellA6B5 from rfl] using cellA6B5_check
  · simpa only [show rowA6 6 = cellA6B6 from rfl] using cellA6B6_check
  · simpa only [show rowA6 7 = cellA6B7 from rfl] using cellA6B7_check
  · simpa only [show rowA6 8 = cellA6B8 from rfl] using cellA6B8_check
  · simpa only [show rowA6 9 = cellA6B9 from rfl] using cellA6B9_check
  · simpa only [show rowA6 10 = cellA6B10 from rfl] using cellA6B10_check
  · simpa only [show rowA6 11 = cellA6B11 from rfl] using cellA6B11_check
  · simpa only [show rowA6 12 = cellA6B12 from rfl] using cellA6B12_check
  · simpa only [show rowA6 13 = cellA6B13 from rfl] using cellA6B13_check
  · simpa only [show rowA6 14 = cellA6B14 from rfl] using cellA6B14_check
  · simpa only [show rowA6 15 = cellA6B15 from rfl] using cellA6B15_check
  · simpa only [show rowA6 16 = cellA6B16 from rfl] using cellA6B16_check

theorem rowA6_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 6 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 6 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA6_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 6 b = rowA6 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk000

#print axioms Math.B699.CRTStage2Pair25.Chunk000.cellA6B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.cellA6B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.cellA6B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.cellA6B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.cellA6B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.cellA6B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.cellA6B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.cellA6B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.cellA6B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.cellA6B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.cellA6B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.cellA6B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.cellA6B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.cellA6B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.cellA6B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.cellA6B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.rowA6_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk000.rowA6_block_check
