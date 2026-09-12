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

theorem cellA5B1_check :
    cellCheck (5 ^ 5) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (5 ^ 5))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA5B1 = true := by
  decide +kernel

theorem cellA5B2_check :
    cellCheck (5 ^ 5) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (5 ^ 5))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA5B2 = true := by
  decide +kernel

theorem cellA5B3_check :
    cellCheck (5 ^ 5) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (5 ^ 5))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA5B3 = true := by
  decide +kernel

theorem cellA5B4_check :
    cellCheck (5 ^ 5) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (5 ^ 5))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA5B4 = true := by
  decide +kernel

theorem cellA5B5_check :
    cellCheck (5 ^ 5) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (5 ^ 5))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA5B5 = true := by
  decide +kernel

theorem cellA5B6_check :
    cellCheck (5 ^ 5) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (5 ^ 5))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA5B6 = true := by
  decide +kernel

theorem cellA5B7_check :
    cellCheck (5 ^ 5) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (5 ^ 5))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA5B7 = true := by
  decide +kernel

theorem cellA5B8_check :
    cellCheck (5 ^ 5) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (5 ^ 5))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA5B8 = true := by
  decide +kernel

theorem cellA5B9_check :
    cellCheck (5 ^ 5) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (5 ^ 5))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA5B9 = true := by
  decide +kernel

theorem cellA5B10_check :
    cellCheck (5 ^ 5) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (5 ^ 5))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA5B10 = true := by
  decide +kernel

theorem cellA5B11_check :
    cellCheck (5 ^ 5) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (5 ^ 5))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA5B11 = true := by
  decide +kernel

theorem cellA5B12_check :
    cellCheck (5 ^ 5) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (5 ^ 5))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA5B12 = true := by
  decide +kernel

theorem cellA5B13_check :
    cellCheck (5 ^ 5) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (5 ^ 5))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA5B13 = true := by
  decide +kernel

theorem rowA5_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (5 ^ 5) (7 ^ b)
      (heightCap Stage02.H Stage02.M (5 ^ 5))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA5 b) = true := by
  interval_cases b
  · simpa only [show rowA5 1 = cellA5B1 from rfl] using cellA5B1_check
  · simpa only [show rowA5 2 = cellA5B2 from rfl] using cellA5B2_check
  · simpa only [show rowA5 3 = cellA5B3 from rfl] using cellA5B3_check
  · simpa only [show rowA5 4 = cellA5B4 from rfl] using cellA5B4_check
  · simpa only [show rowA5 5 = cellA5B5 from rfl] using cellA5B5_check
  · simpa only [show rowA5 6 = cellA5B6 from rfl] using cellA5B6_check
  · simpa only [show rowA5 7 = cellA5B7 from rfl] using cellA5B7_check
  · simpa only [show rowA5 8 = cellA5B8 from rfl] using cellA5B8_check
  · simpa only [show rowA5 9 = cellA5B9 from rfl] using cellA5B9_check
  · simpa only [show rowA5 10 = cellA5B10 from rfl] using cellA5B10_check
  · simpa only [show rowA5 11 = cellA5B11 from rfl] using cellA5B11_check
  · simpa only [show rowA5 12 = cellA5B12 from rfl] using cellA5B12_check
  · simpa only [show rowA5 13 = cellA5B13 from rfl] using cellA5B13_check

theorem rowA5_block_check :
    blockCheck 5 7 Stage02.H Stage02.M Stage02.upper 5 1 1 13 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 5 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA5_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 5 b = rowA5 b from rfl] using h

end Math.B699.CRTStage2Pair57.Chunk000

#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA5B1_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA5B2_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA5B3_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA5B4_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA5B5_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA5B6_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA5B7_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA5B8_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA5B9_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA5B10_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA5B11_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA5B12_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA5B13_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.rowA5_cell_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.rowA5_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair57.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA6B1_check :
    cellCheck (5 ^ 6) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (5 ^ 6))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA6B1 = true := by
  decide +kernel

theorem cellA6B2_check :
    cellCheck (5 ^ 6) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (5 ^ 6))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA6B2 = true := by
  decide +kernel

theorem cellA6B3_check :
    cellCheck (5 ^ 6) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (5 ^ 6))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA6B3 = true := by
  decide +kernel

theorem cellA6B4_check :
    cellCheck (5 ^ 6) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (5 ^ 6))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA6B4 = true := by
  decide +kernel

theorem cellA6B5_check :
    cellCheck (5 ^ 6) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (5 ^ 6))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA6B5 = true := by
  decide +kernel

theorem cellA6B6_check :
    cellCheck (5 ^ 6) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (5 ^ 6))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA6B6 = true := by
  decide +kernel

theorem cellA6B7_check :
    cellCheck (5 ^ 6) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (5 ^ 6))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA6B7 = true := by
  decide +kernel

theorem cellA6B8_check :
    cellCheck (5 ^ 6) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (5 ^ 6))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA6B8 = true := by
  decide +kernel

theorem cellA6B9_check :
    cellCheck (5 ^ 6) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (5 ^ 6))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA6B9 = true := by
  decide +kernel

theorem cellA6B10_check :
    cellCheck (5 ^ 6) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (5 ^ 6))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA6B10 = true := by
  decide +kernel

theorem cellA6B11_check :
    cellCheck (5 ^ 6) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (5 ^ 6))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA6B11 = true := by
  decide +kernel

theorem cellA6B12_check :
    cellCheck (5 ^ 6) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (5 ^ 6))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA6B12 = true := by
  decide +kernel

theorem cellA6B13_check :
    cellCheck (5 ^ 6) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (5 ^ 6))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA6B13 = true := by
  decide +kernel

theorem rowA6_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (5 ^ 6) (7 ^ b)
      (heightCap Stage02.H Stage02.M (5 ^ 6))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA6 b) = true := by
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

theorem rowA6_block_check :
    blockCheck 5 7 Stage02.H Stage02.M Stage02.upper 6 1 1 13 chunkData = true := by
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

end Math.B699.CRTStage2Pair57.Chunk000

#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA6B1_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA6B2_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA6B3_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA6B4_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA6B5_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA6B6_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA6B7_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA6B8_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA6B9_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA6B10_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA6B11_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA6B12_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.cellA6B13_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.rowA6_cell_check
#print axioms Math.B699.CRTStage2Pair57.Chunk000.rowA6_block_check
