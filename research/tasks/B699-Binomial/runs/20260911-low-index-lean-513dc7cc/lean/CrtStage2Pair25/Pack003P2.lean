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

theorem cellA29B1_check :
    cellCheck (2 ^ 29) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA29B1 = true := by
  decide +kernel

theorem cellA29B2_check :
    cellCheck (2 ^ 29) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA29B2 = true := by
  decide +kernel

theorem cellA29B3_check :
    cellCheck (2 ^ 29) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA29B3 = true := by
  decide +kernel

theorem cellA29B4_check :
    cellCheck (2 ^ 29) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA29B4 = true := by
  decide +kernel

theorem cellA29B5_check :
    cellCheck (2 ^ 29) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA29B5 = true := by
  decide +kernel

theorem cellA29B6_check :
    cellCheck (2 ^ 29) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA29B6 = true := by
  decide +kernel

theorem cellA29B7_check :
    cellCheck (2 ^ 29) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA29B7 = true := by
  decide +kernel

theorem cellA29B8_check :
    cellCheck (2 ^ 29) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA29B8 = true := by
  decide +kernel

theorem cellA29B9_check :
    cellCheck (2 ^ 29) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA29B9 = true := by
  decide +kernel

theorem cellA29B10_check :
    cellCheck (2 ^ 29) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA29B10 = true := by
  decide +kernel

theorem cellA29B11_check :
    cellCheck (2 ^ 29) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA29B11 = true := by
  decide +kernel

theorem cellA29B12_check :
    cellCheck (2 ^ 29) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA29B12 = true := by
  decide +kernel

theorem cellA29B13_check :
    cellCheck (2 ^ 29) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA29B13 = true := by
  decide +kernel

theorem cellA29B14_check :
    cellCheck (2 ^ 29) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA29B14 = true := by
  decide +kernel

theorem cellA29B15_check :
    cellCheck (2 ^ 29) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA29B15 = true := by
  decide +kernel

theorem cellA29B16_check :
    cellCheck (2 ^ 29) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA29B16 = true := by
  decide +kernel

theorem rowA29_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 29) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 29))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA29 b) = true := by
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
  · simpa only [show rowA29 14 = cellA29B14 from rfl] using cellA29B14_check
  · simpa only [show rowA29 15 = cellA29B15 from rfl] using cellA29B15_check
  · simpa only [show rowA29 16 = cellA29B16 from rfl] using cellA29B16_check

theorem rowA29_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 29 1 1 16 chunkData = true := by
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

end Math.B699.CRTStage2Pair25.Chunk003

#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA29B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA29B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA29B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA29B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA29B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA29B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA29B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA29B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA29B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA29B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA29B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA29B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA29B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA29B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA29B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA29B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.rowA29_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.rowA29_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk003
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA30B1_check :
    cellCheck (2 ^ 30) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA30B1 = true := by
  decide +kernel

theorem cellA30B2_check :
    cellCheck (2 ^ 30) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA30B2 = true := by
  decide +kernel

theorem cellA30B3_check :
    cellCheck (2 ^ 30) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA30B3 = true := by
  decide +kernel

theorem cellA30B4_check :
    cellCheck (2 ^ 30) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA30B4 = true := by
  decide +kernel

theorem cellA30B5_check :
    cellCheck (2 ^ 30) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA30B5 = true := by
  decide +kernel

theorem cellA30B6_check :
    cellCheck (2 ^ 30) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA30B6 = true := by
  decide +kernel

theorem cellA30B7_check :
    cellCheck (2 ^ 30) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA30B7 = true := by
  decide +kernel

theorem cellA30B8_check :
    cellCheck (2 ^ 30) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA30B8 = true := by
  decide +kernel

theorem cellA30B9_check :
    cellCheck (2 ^ 30) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA30B9 = true := by
  decide +kernel

theorem cellA30B10_check :
    cellCheck (2 ^ 30) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA30B10 = true := by
  decide +kernel

theorem cellA30B11_check :
    cellCheck (2 ^ 30) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA30B11 = true := by
  decide +kernel

theorem cellA30B12_check :
    cellCheck (2 ^ 30) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA30B12 = true := by
  decide +kernel

theorem cellA30B13_check :
    cellCheck (2 ^ 30) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA30B13 = true := by
  decide +kernel

theorem cellA30B14_check :
    cellCheck (2 ^ 30) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA30B14 = true := by
  decide +kernel

theorem cellA30B15_check :
    cellCheck (2 ^ 30) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA30B15 = true := by
  decide +kernel

theorem cellA30B16_check :
    cellCheck (2 ^ 30) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA30B16 = true := by
  decide +kernel

theorem rowA30_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 30) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA30 b) = true := by
  interval_cases b
  · simpa only [show rowA30 1 = cellA30B1 from rfl] using cellA30B1_check
  · simpa only [show rowA30 2 = cellA30B2 from rfl] using cellA30B2_check
  · simpa only [show rowA30 3 = cellA30B3 from rfl] using cellA30B3_check
  · simpa only [show rowA30 4 = cellA30B4 from rfl] using cellA30B4_check
  · simpa only [show rowA30 5 = cellA30B5 from rfl] using cellA30B5_check
  · simpa only [show rowA30 6 = cellA30B6 from rfl] using cellA30B6_check
  · simpa only [show rowA30 7 = cellA30B7 from rfl] using cellA30B7_check
  · simpa only [show rowA30 8 = cellA30B8 from rfl] using cellA30B8_check
  · simpa only [show rowA30 9 = cellA30B9 from rfl] using cellA30B9_check
  · simpa only [show rowA30 10 = cellA30B10 from rfl] using cellA30B10_check
  · simpa only [show rowA30 11 = cellA30B11 from rfl] using cellA30B11_check
  · simpa only [show rowA30 12 = cellA30B12 from rfl] using cellA30B12_check
  · simpa only [show rowA30 13 = cellA30B13 from rfl] using cellA30B13_check
  · simpa only [show rowA30 14 = cellA30B14 from rfl] using cellA30B14_check
  · simpa only [show rowA30 15 = cellA30B15 from rfl] using cellA30B15_check
  · simpa only [show rowA30 16 = cellA30B16 from rfl] using cellA30B16_check

theorem rowA30_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 30 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 30 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA30_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 30 b = rowA30 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk003

#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA30B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA30B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA30B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA30B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA30B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA30B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA30B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA30B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA30B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA30B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA30B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA30B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA30B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA30B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA30B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.cellA30B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.rowA30_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk003.rowA30_block_check
