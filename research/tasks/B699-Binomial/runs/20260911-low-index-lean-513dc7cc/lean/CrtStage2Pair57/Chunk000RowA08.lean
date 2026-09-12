import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair57.Chunk000Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair57.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA8B1_check :
    cellCheck (5 ^ 8) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (5 ^ 8))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA8B1 = true := by
  decide +kernel

theorem cellA8B2_check :
    cellCheck (5 ^ 8) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (5 ^ 8))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA8B2 = true := by
  decide +kernel

theorem cellA8B3_check :
    cellCheck (5 ^ 8) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (5 ^ 8))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA8B3 = true := by
  decide +kernel

theorem cellA8B4_check :
    cellCheck (5 ^ 8) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (5 ^ 8))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA8B4 = true := by
  decide +kernel

theorem cellA8B5_check :
    cellCheck (5 ^ 8) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (5 ^ 8))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA8B5 = true := by
  decide +kernel

theorem cellA8B6_check :
    cellCheck (5 ^ 8) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (5 ^ 8))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA8B6 = true := by
  decide +kernel

theorem cellA8B7_check :
    cellCheck (5 ^ 8) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (5 ^ 8))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA8B7 = true := by
  decide +kernel

theorem cellA8B8_check :
    cellCheck (5 ^ 8) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (5 ^ 8))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA8B8 = true := by
  decide +kernel

theorem cellA8B9_check :
    cellCheck (5 ^ 8) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (5 ^ 8))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA8B9 = true := by
  decide +kernel

theorem cellA8B10_check :
    cellCheck (5 ^ 8) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (5 ^ 8))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA8B10 = true := by
  decide +kernel

theorem cellA8B11_check :
    cellCheck (5 ^ 8) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (5 ^ 8))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA8B11 = true := by
  decide +kernel

theorem cellA8B12_check :
    cellCheck (5 ^ 8) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (5 ^ 8))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA8B12 = true := by
  decide +kernel

theorem cellA8B13_check :
    cellCheck (5 ^ 8) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (5 ^ 8))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA8B13 = true := by
  decide +kernel

theorem rowA8_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (5 ^ 8) (7 ^ b)
      (heightCap Stage02.H Stage02.M (5 ^ 8))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA8 b) = true := by
  interval_cases b
  · simpa only [show rowA8 1 = cellA8B1 from rfl] using cellA8B1_check
  · simpa only [show rowA8 2 = cellA8B2 from rfl] using cellA8B2_check
  · simpa only [show rowA8 3 = cellA8B3 from rfl] using cellA8B3_check
  · simpa only [show rowA8 4 = cellA8B4 from rfl] using cellA8B4_check
  · simpa only [show rowA8 5 = cellA8B5 from rfl] using cellA8B5_check
  · simpa only [show rowA8 6 = cellA8B6 from rfl] using cellA8B6_check
  · simpa only [show rowA8 7 = cellA8B7 from rfl] using cellA8B7_check
  · simpa only [show rowA8 8 = cellA8B8 from rfl] using cellA8B8_check
  · simpa only [show rowA8 9 = cellA8B9 from rfl] using cellA8B9_check
  · simpa only [show rowA8 10 = cellA8B10 from rfl] using cellA8B10_check
  · simpa only [show rowA8 11 = cellA8B11 from rfl] using cellA8B11_check
  · simpa only [show rowA8 12 = cellA8B12 from rfl] using cellA8B12_check
  · simpa only [show rowA8 13 = cellA8B13 from rfl] using cellA8B13_check

theorem rowA8_block_check :
    blockCheck 5 7 Stage02.H Stage02.M Stage02.upper 8 1 1 13 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 8 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA8_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 8 b = rowA8 b from rfl] using h

end Math.B699.CRTStage2Pair57.Chunk000

#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA8B1_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA8B2_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA8B3_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA8B4_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA8B5_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA8B6_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA8B7_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA8B8_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA8B9_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA8B10_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA8B11_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA8B12_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA8B13_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.rowA8_cell_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.rowA8_block_check
