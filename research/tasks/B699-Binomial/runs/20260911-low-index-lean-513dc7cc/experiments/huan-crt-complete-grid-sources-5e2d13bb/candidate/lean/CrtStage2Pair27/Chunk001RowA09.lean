import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair27.Chunk001Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair27.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA9B1_check :
    cellCheck (2 ^ 9) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA9B1 = true := by
  decide +kernel

theorem cellA9B2_check :
    cellCheck (2 ^ 9) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA9B2 = true := by
  decide +kernel

theorem cellA9B3_check :
    cellCheck (2 ^ 9) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA9B3 = true := by
  decide +kernel

theorem cellA9B4_check :
    cellCheck (2 ^ 9) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA9B4 = true := by
  decide +kernel

theorem cellA9B5_check :
    cellCheck (2 ^ 9) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA9B5 = true := by
  decide +kernel

theorem cellA9B6_check :
    cellCheck (2 ^ 9) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA9B6 = true := by
  decide +kernel

theorem cellA9B7_check :
    cellCheck (2 ^ 9) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA9B7 = true := by
  decide +kernel

theorem cellA9B8_check :
    cellCheck (2 ^ 9) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA9B8 = true := by
  decide +kernel

theorem cellA9B9_check :
    cellCheck (2 ^ 9) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA9B9 = true := by
  decide +kernel

theorem cellA9B10_check :
    cellCheck (2 ^ 9) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA9B10 = true := by
  decide +kernel

theorem cellA9B11_check :
    cellCheck (2 ^ 9) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA9B11 = true := by
  decide +kernel

theorem cellA9B12_check :
    cellCheck (2 ^ 9) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA9B12 = true := by
  decide +kernel

theorem cellA9B13_check :
    cellCheck (2 ^ 9) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA9B13 = true := by
  decide +kernel

theorem rowA9_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (2 ^ 9) (7 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 9))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA9 b) = true := by
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

theorem rowA9_block_check :
    blockCheck 2 7 Stage02.H Stage02.M Stage02.upper 9 1 1 13 chunkData = true := by
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

end Math.B699.CRTStage2Pair27.Chunk001

#print axioms Math.B699.CRTStage2Pair27.Chunk001.cellA9B1_check
#print axioms Math.B699.CRTStage2Pair27.Chunk001.cellA9B2_check
#print axioms Math.B699.CRTStage2Pair27.Chunk001.cellA9B3_check
#print axioms Math.B699.CRTStage2Pair27.Chunk001.cellA9B4_check
#print axioms Math.B699.CRTStage2Pair27.Chunk001.cellA9B5_check
#print axioms Math.B699.CRTStage2Pair27.Chunk001.cellA9B6_check
#print axioms Math.B699.CRTStage2Pair27.Chunk001.cellA9B7_check
#print axioms Math.B699.CRTStage2Pair27.Chunk001.cellA9B8_check
#print axioms Math.B699.CRTStage2Pair27.Chunk001.cellA9B9_check
#print axioms Math.B699.CRTStage2Pair27.Chunk001.cellA9B10_check
#print axioms Math.B699.CRTStage2Pair27.Chunk001.cellA9B11_check
#print axioms Math.B699.CRTStage2Pair27.Chunk001.cellA9B12_check
#print axioms Math.B699.CRTStage2Pair27.Chunk001.cellA9B13_check
#print axioms Math.B699.CRTStage2Pair27.Chunk001.rowA9_cell_check
#print axioms Math.B699.CRTStage2Pair27.Chunk001.rowA9_block_check
