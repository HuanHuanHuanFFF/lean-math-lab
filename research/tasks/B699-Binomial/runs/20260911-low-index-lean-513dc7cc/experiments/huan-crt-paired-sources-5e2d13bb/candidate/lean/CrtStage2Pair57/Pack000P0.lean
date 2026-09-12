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

theorem cellA1B1_check :
    cellCheck (5 ^ 1) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (5 ^ 1))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA1B1 = true := by
  decide +kernel

theorem cellA1B2_check :
    cellCheck (5 ^ 1) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (5 ^ 1))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA1B2 = true := by
  decide +kernel

theorem cellA1B3_check :
    cellCheck (5 ^ 1) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (5 ^ 1))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA1B3 = true := by
  decide +kernel

theorem cellA1B4_check :
    cellCheck (5 ^ 1) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (5 ^ 1))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA1B4 = true := by
  decide +kernel

theorem cellA1B5_check :
    cellCheck (5 ^ 1) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (5 ^ 1))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA1B5 = true := by
  decide +kernel

theorem cellA1B6_check :
    cellCheck (5 ^ 1) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (5 ^ 1))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA1B6 = true := by
  decide +kernel

theorem cellA1B7_check :
    cellCheck (5 ^ 1) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (5 ^ 1))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA1B7 = true := by
  decide +kernel

theorem cellA1B8_check :
    cellCheck (5 ^ 1) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (5 ^ 1))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA1B8 = true := by
  decide +kernel

theorem cellA1B9_check :
    cellCheck (5 ^ 1) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (5 ^ 1))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA1B9 = true := by
  decide +kernel

theorem cellA1B10_check :
    cellCheck (5 ^ 1) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (5 ^ 1))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA1B10 = true := by
  decide +kernel

theorem cellA1B11_check :
    cellCheck (5 ^ 1) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (5 ^ 1))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA1B11 = true := by
  decide +kernel

theorem cellA1B12_check :
    cellCheck (5 ^ 1) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (5 ^ 1))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA1B12 = true := by
  decide +kernel

theorem cellA1B13_check :
    cellCheck (5 ^ 1) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (5 ^ 1))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA1B13 = true := by
  decide +kernel

theorem rowA1_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (5 ^ 1) (7 ^ b)
      (heightCap Stage02.H Stage02.M (5 ^ 1))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA1 b) = true := by
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

theorem rowA1_block_check :
    blockCheck 5 7 Stage02.H Stage02.M Stage02.upper 1 1 1 13 chunkData = true := by
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

end Math.B699.CRTStage2Pair57.Chunk000

#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA1B1_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA1B2_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA1B3_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA1B4_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA1B5_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA1B6_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA1B7_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA1B8_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA1B9_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA1B10_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA1B11_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA1B12_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA1B13_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.rowA1_cell_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.rowA1_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair57.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA2B1_check :
    cellCheck (5 ^ 2) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (5 ^ 2))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA2B1 = true := by
  decide +kernel

theorem cellA2B2_check :
    cellCheck (5 ^ 2) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (5 ^ 2))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA2B2 = true := by
  decide +kernel

theorem cellA2B3_check :
    cellCheck (5 ^ 2) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (5 ^ 2))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA2B3 = true := by
  decide +kernel

theorem cellA2B4_check :
    cellCheck (5 ^ 2) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (5 ^ 2))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA2B4 = true := by
  decide +kernel

theorem cellA2B5_check :
    cellCheck (5 ^ 2) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (5 ^ 2))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA2B5 = true := by
  decide +kernel

theorem cellA2B6_check :
    cellCheck (5 ^ 2) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (5 ^ 2))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA2B6 = true := by
  decide +kernel

theorem cellA2B7_check :
    cellCheck (5 ^ 2) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (5 ^ 2))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA2B7 = true := by
  decide +kernel

theorem cellA2B8_check :
    cellCheck (5 ^ 2) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (5 ^ 2))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA2B8 = true := by
  decide +kernel

theorem cellA2B9_check :
    cellCheck (5 ^ 2) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (5 ^ 2))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA2B9 = true := by
  decide +kernel

theorem cellA2B10_check :
    cellCheck (5 ^ 2) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (5 ^ 2))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA2B10 = true := by
  decide +kernel

theorem cellA2B11_check :
    cellCheck (5 ^ 2) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (5 ^ 2))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA2B11 = true := by
  decide +kernel

theorem cellA2B12_check :
    cellCheck (5 ^ 2) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (5 ^ 2))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA2B12 = true := by
  decide +kernel

theorem cellA2B13_check :
    cellCheck (5 ^ 2) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (5 ^ 2))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA2B13 = true := by
  decide +kernel

theorem rowA2_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (5 ^ 2) (7 ^ b)
      (heightCap Stage02.H Stage02.M (5 ^ 2))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA2 b) = true := by
  interval_cases b
  · simpa only [show rowA2 1 = cellA2B1 from rfl] using cellA2B1_check
  · simpa only [show rowA2 2 = cellA2B2 from rfl] using cellA2B2_check
  · simpa only [show rowA2 3 = cellA2B3 from rfl] using cellA2B3_check
  · simpa only [show rowA2 4 = cellA2B4 from rfl] using cellA2B4_check
  · simpa only [show rowA2 5 = cellA2B5 from rfl] using cellA2B5_check
  · simpa only [show rowA2 6 = cellA2B6 from rfl] using cellA2B6_check
  · simpa only [show rowA2 7 = cellA2B7 from rfl] using cellA2B7_check
  · simpa only [show rowA2 8 = cellA2B8 from rfl] using cellA2B8_check
  · simpa only [show rowA2 9 = cellA2B9 from rfl] using cellA2B9_check
  · simpa only [show rowA2 10 = cellA2B10 from rfl] using cellA2B10_check
  · simpa only [show rowA2 11 = cellA2B11 from rfl] using cellA2B11_check
  · simpa only [show rowA2 12 = cellA2B12 from rfl] using cellA2B12_check
  · simpa only [show rowA2 13 = cellA2B13 from rfl] using cellA2B13_check

theorem rowA2_block_check :
    blockCheck 5 7 Stage02.H Stage02.M Stage02.upper 2 1 1 13 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 2 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA2_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 2 b = rowA2 b from rfl] using h

end Math.B699.CRTStage2Pair57.Chunk000

#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA2B1_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA2B2_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA2B3_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA2B4_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA2B5_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA2B6_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA2B7_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA2B8_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA2B9_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA2B10_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA2B11_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA2B12_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA2B13_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.rowA2_cell_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.rowA2_block_check
