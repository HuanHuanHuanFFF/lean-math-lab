import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair27.Chunk003Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair27.Chunk003
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA29B1_check :
    cellCheck (2 ^ 29) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA29B1 = true := by
  decide +kernel

theorem cellA29B2_check :
    cellCheck (2 ^ 29) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA29B2 = true := by
  decide +kernel

theorem cellA29B3_check :
    cellCheck (2 ^ 29) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA29B3 = true := by
  decide +kernel

theorem cellA29B4_check :
    cellCheck (2 ^ 29) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA29B4 = true := by
  decide +kernel

theorem cellA29B5_check :
    cellCheck (2 ^ 29) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA29B5 = true := by
  decide +kernel

theorem cellA29B6_check :
    cellCheck (2 ^ 29) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA29B6 = true := by
  decide +kernel

theorem cellA29B7_check :
    cellCheck (2 ^ 29) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA29B7 = true := by
  decide +kernel

theorem cellA29B8_check :
    cellCheck (2 ^ 29) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA29B8 = true := by
  decide +kernel

theorem cellA29B9_check :
    cellCheck (2 ^ 29) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA29B9 = true := by
  decide +kernel

theorem cellA29B10_check :
    cellCheck (2 ^ 29) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA29B10 = true := by
  decide +kernel

theorem cellA29B11_check :
    cellCheck (2 ^ 29) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA29B11 = true := by
  decide +kernel

theorem cellA29B12_check :
    cellCheck (2 ^ 29) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA29B12 = true := by
  decide +kernel

theorem cellA29B13_check :
    cellCheck (2 ^ 29) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA29B13 = true := by
  decide +kernel

theorem rowA29_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (2 ^ 29) (7 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA29 b) = true := by
  interval_cases b
  · simpa only [show rowA29 1 = cellA29B1 from rfl] using cellA29B1_check
  · simpa only [show rowA29 2 = cellA29B2 from rfl] using cellA29B2_check
  · simpa only [show rowA29 3 = cellA29B3 from rfl] using cellA29B3_check
  · simpa only [show rowA29 4 = cellA29B4 from rfl] using cellA29B4_check
  · simpa only [show rowA29 5 = cellA29B5 from rfl] using cellA29B5_check
  · simpa only [show rowA29 6 = cellA29B6 from rfl] using cellA29B6_check
  · simpa only [show rowA29 7 = cellA29B7 from rfl] using cellA29B7_check
  · simpa only [show rowA29 8 = cellA29B8 from rfl] using cellA29B8_check
  · simpa only [show rowA29 9 = cellA29B9 from rfl] using cellA29B9_check
  · simpa only [show rowA29 10 = cellA29B10 from rfl] using cellA29B10_check
  · simpa only [show rowA29 11 = cellA29B11 from rfl] using cellA29B11_check
  · simpa only [show rowA29 12 = cellA29B12 from rfl] using cellA29B12_check
  · simpa only [show rowA29 13 = cellA29B13 from rfl] using cellA29B13_check

theorem rowA29_block_check :
    blockCheck 2 7 Stage02.H Stage02.M Stage02.upper 29 1 1 13 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 29 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA29_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 29 b = rowA29 b from rfl] using h

end Math.B699.CRTStage2Pair27.Chunk003

#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA29B1_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA29B2_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA29B3_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA29B4_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA29B5_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA29B6_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA29B7_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA29B8_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA29B9_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA29B10_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA29B11_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA29B12_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA29B13_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.rowA29_cell_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.rowA29_block_check
