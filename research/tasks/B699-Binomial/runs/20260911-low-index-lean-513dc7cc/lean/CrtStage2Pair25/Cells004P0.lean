import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair25.Chunk004Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk004
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA33B1_check :
    cellCheck (2 ^ 33) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA33B1 = true := by
  decide +kernel

theorem cellA33B2_check :
    cellCheck (2 ^ 33) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA33B2 = true := by
  decide +kernel

theorem cellA33B3_check :
    cellCheck (2 ^ 33) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA33B3 = true := by
  decide +kernel

theorem cellA33B4_check :
    cellCheck (2 ^ 33) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA33B4 = true := by
  decide +kernel

theorem cellA33B5_check :
    cellCheck (2 ^ 33) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA33B5 = true := by
  decide +kernel

theorem cellA33B6_check :
    cellCheck (2 ^ 33) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA33B6 = true := by
  decide +kernel

theorem cellA33B7_check :
    cellCheck (2 ^ 33) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA33B7 = true := by
  decide +kernel

theorem cellA33B8_check :
    cellCheck (2 ^ 33) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA33B8 = true := by
  decide +kernel

theorem cellA33B9_check :
    cellCheck (2 ^ 33) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA33B9 = true := by
  decide +kernel

theorem cellA33B10_check :
    cellCheck (2 ^ 33) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA33B10 = true := by
  decide +kernel

theorem cellA33B11_check :
    cellCheck (2 ^ 33) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA33B11 = true := by
  decide +kernel

theorem cellA33B12_check :
    cellCheck (2 ^ 33) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA33B12 = true := by
  decide +kernel

theorem cellA33B13_check :
    cellCheck (2 ^ 33) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA33B13 = true := by
  decide +kernel

theorem cellA33B14_check :
    cellCheck (2 ^ 33) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA33B14 = true := by
  decide +kernel

theorem cellA33B15_check :
    cellCheck (2 ^ 33) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA33B15 = true := by
  decide +kernel

theorem cellA33B16_check :
    cellCheck (2 ^ 33) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA33B16 = true := by
  decide +kernel

theorem rowA33_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 33) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 33))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA33 b) = true := by
  interval_cases b
  · simpa only [show rowA33 1 = cellA33B1 from rfl] using cellA33B1_check
  · simpa only [show rowA33 2 = cellA33B2 from rfl] using cellA33B2_check
  · simpa only [show rowA33 3 = cellA33B3 from rfl] using cellA33B3_check
  · simpa only [show rowA33 4 = cellA33B4 from rfl] using cellA33B4_check
  · simpa only [show rowA33 5 = cellA33B5 from rfl] using cellA33B5_check
  · simpa only [show rowA33 6 = cellA33B6 from rfl] using cellA33B6_check
  · simpa only [show rowA33 7 = cellA33B7 from rfl] using cellA33B7_check
  · simpa only [show rowA33 8 = cellA33B8 from rfl] using cellA33B8_check
  · simpa only [show rowA33 9 = cellA33B9 from rfl] using cellA33B9_check
  · simpa only [show rowA33 10 = cellA33B10 from rfl] using cellA33B10_check
  · simpa only [show rowA33 11 = cellA33B11 from rfl] using cellA33B11_check
  · simpa only [show rowA33 12 = cellA33B12 from rfl] using cellA33B12_check
  · simpa only [show rowA33 13 = cellA33B13 from rfl] using cellA33B13_check
  · simpa only [show rowA33 14 = cellA33B14 from rfl] using cellA33B14_check
  · simpa only [show rowA33 15 = cellA33B15 from rfl] using cellA33B15_check
  · simpa only [show rowA33 16 = cellA33B16 from rfl] using cellA33B16_check

theorem rowA33_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 33 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 33 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA33_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 33 b = rowA33 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk004

#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA33B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA33B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA33B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA33B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA33B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA33B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA33B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA33B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA33B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA33B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA33B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA33B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA33B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA33B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA33B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA33B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.rowA33_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.rowA33_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk004
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA34B1_check :
    cellCheck (2 ^ 34) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA34B1 = true := by
  decide +kernel

theorem cellA34B2_check :
    cellCheck (2 ^ 34) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA34B2 = true := by
  decide +kernel

theorem cellA34B3_check :
    cellCheck (2 ^ 34) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA34B3 = true := by
  decide +kernel

theorem cellA34B4_check :
    cellCheck (2 ^ 34) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA34B4 = true := by
  decide +kernel

theorem cellA34B5_check :
    cellCheck (2 ^ 34) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA34B5 = true := by
  decide +kernel

theorem cellA34B6_check :
    cellCheck (2 ^ 34) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA34B6 = true := by
  decide +kernel

theorem cellA34B7_check :
    cellCheck (2 ^ 34) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA34B7 = true := by
  decide +kernel

theorem cellA34B8_check :
    cellCheck (2 ^ 34) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA34B8 = true := by
  decide +kernel

theorem cellA34B9_check :
    cellCheck (2 ^ 34) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA34B9 = true := by
  decide +kernel

theorem cellA34B10_check :
    cellCheck (2 ^ 34) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA34B10 = true := by
  decide +kernel

theorem cellA34B11_check :
    cellCheck (2 ^ 34) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA34B11 = true := by
  decide +kernel

theorem cellA34B12_check :
    cellCheck (2 ^ 34) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA34B12 = true := by
  decide +kernel

theorem cellA34B13_check :
    cellCheck (2 ^ 34) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA34B13 = true := by
  decide +kernel

theorem cellA34B14_check :
    cellCheck (2 ^ 34) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA34B14 = true := by
  decide +kernel

theorem cellA34B15_check :
    cellCheck (2 ^ 34) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA34B15 = true := by
  decide +kernel

theorem cellA34B16_check :
    cellCheck (2 ^ 34) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA34B16 = true := by
  decide +kernel

theorem rowA34_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 34) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 34))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA34 b) = true := by
  interval_cases b
  · simpa only [show rowA34 1 = cellA34B1 from rfl] using cellA34B1_check
  · simpa only [show rowA34 2 = cellA34B2 from rfl] using cellA34B2_check
  · simpa only [show rowA34 3 = cellA34B3 from rfl] using cellA34B3_check
  · simpa only [show rowA34 4 = cellA34B4 from rfl] using cellA34B4_check
  · simpa only [show rowA34 5 = cellA34B5 from rfl] using cellA34B5_check
  · simpa only [show rowA34 6 = cellA34B6 from rfl] using cellA34B6_check
  · simpa only [show rowA34 7 = cellA34B7 from rfl] using cellA34B7_check
  · simpa only [show rowA34 8 = cellA34B8 from rfl] using cellA34B8_check
  · simpa only [show rowA34 9 = cellA34B9 from rfl] using cellA34B9_check
  · simpa only [show rowA34 10 = cellA34B10 from rfl] using cellA34B10_check
  · simpa only [show rowA34 11 = cellA34B11 from rfl] using cellA34B11_check
  · simpa only [show rowA34 12 = cellA34B12 from rfl] using cellA34B12_check
  · simpa only [show rowA34 13 = cellA34B13 from rfl] using cellA34B13_check
  · simpa only [show rowA34 14 = cellA34B14 from rfl] using cellA34B14_check
  · simpa only [show rowA34 15 = cellA34B15 from rfl] using cellA34B15_check
  · simpa only [show rowA34 16 = cellA34B16 from rfl] using cellA34B16_check

theorem rowA34_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 34 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 34 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA34_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 34 b = rowA34 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk004

#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA34B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.rowA34_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.rowA34_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk004
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA35B1_check :
    cellCheck (2 ^ 35) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA35B1 = true := by
  decide +kernel

theorem cellA35B2_check :
    cellCheck (2 ^ 35) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA35B2 = true := by
  decide +kernel

theorem cellA35B3_check :
    cellCheck (2 ^ 35) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA35B3 = true := by
  decide +kernel

theorem cellA35B4_check :
    cellCheck (2 ^ 35) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA35B4 = true := by
  decide +kernel

theorem cellA35B5_check :
    cellCheck (2 ^ 35) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA35B5 = true := by
  decide +kernel

theorem cellA35B6_check :
    cellCheck (2 ^ 35) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA35B6 = true := by
  decide +kernel

theorem cellA35B7_check :
    cellCheck (2 ^ 35) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA35B7 = true := by
  decide +kernel

theorem cellA35B8_check :
    cellCheck (2 ^ 35) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA35B8 = true := by
  decide +kernel

theorem cellA35B9_check :
    cellCheck (2 ^ 35) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA35B9 = true := by
  decide +kernel

theorem cellA35B10_check :
    cellCheck (2 ^ 35) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA35B10 = true := by
  decide +kernel

theorem cellA35B11_check :
    cellCheck (2 ^ 35) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA35B11 = true := by
  decide +kernel

theorem cellA35B12_check :
    cellCheck (2 ^ 35) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA35B12 = true := by
  decide +kernel

theorem cellA35B13_check :
    cellCheck (2 ^ 35) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA35B13 = true := by
  decide +kernel

theorem cellA35B14_check :
    cellCheck (2 ^ 35) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA35B14 = true := by
  decide +kernel

theorem cellA35B15_check :
    cellCheck (2 ^ 35) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA35B15 = true := by
  decide +kernel

theorem cellA35B16_check :
    cellCheck (2 ^ 35) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA35B16 = true := by
  decide +kernel

theorem rowA35_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 35) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 35))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA35 b) = true := by
  interval_cases b
  · simpa only [show rowA35 1 = cellA35B1 from rfl] using cellA35B1_check
  · simpa only [show rowA35 2 = cellA35B2 from rfl] using cellA35B2_check
  · simpa only [show rowA35 3 = cellA35B3 from rfl] using cellA35B3_check
  · simpa only [show rowA35 4 = cellA35B4 from rfl] using cellA35B4_check
  · simpa only [show rowA35 5 = cellA35B5 from rfl] using cellA35B5_check
  · simpa only [show rowA35 6 = cellA35B6 from rfl] using cellA35B6_check
  · simpa only [show rowA35 7 = cellA35B7 from rfl] using cellA35B7_check
  · simpa only [show rowA35 8 = cellA35B8 from rfl] using cellA35B8_check
  · simpa only [show rowA35 9 = cellA35B9 from rfl] using cellA35B9_check
  · simpa only [show rowA35 10 = cellA35B10 from rfl] using cellA35B10_check
  · simpa only [show rowA35 11 = cellA35B11 from rfl] using cellA35B11_check
  · simpa only [show rowA35 12 = cellA35B12 from rfl] using cellA35B12_check
  · simpa only [show rowA35 13 = cellA35B13 from rfl] using cellA35B13_check
  · simpa only [show rowA35 14 = cellA35B14 from rfl] using cellA35B14_check
  · simpa only [show rowA35 15 = cellA35B15 from rfl] using cellA35B15_check
  · simpa only [show rowA35 16 = cellA35B16 from rfl] using cellA35B16_check

theorem rowA35_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 35 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 35 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA35_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 35 b = rowA35 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk004

#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA35B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA35B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA35B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA35B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA35B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA35B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA35B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA35B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA35B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA35B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA35B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA35B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA35B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA35B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA35B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA35B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.rowA35_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.rowA35_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk004
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA36B1_check :
    cellCheck (2 ^ 36) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA36B1 = true := by
  decide +kernel

theorem cellA36B2_check :
    cellCheck (2 ^ 36) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA36B2 = true := by
  decide +kernel

theorem cellA36B3_check :
    cellCheck (2 ^ 36) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA36B3 = true := by
  decide +kernel

theorem cellA36B4_check :
    cellCheck (2 ^ 36) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA36B4 = true := by
  decide +kernel

theorem cellA36B5_check :
    cellCheck (2 ^ 36) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA36B5 = true := by
  decide +kernel

theorem cellA36B6_check :
    cellCheck (2 ^ 36) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA36B6 = true := by
  decide +kernel

theorem cellA36B7_check :
    cellCheck (2 ^ 36) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA36B7 = true := by
  decide +kernel

theorem cellA36B8_check :
    cellCheck (2 ^ 36) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA36B8 = true := by
  decide +kernel

theorem cellA36B9_check :
    cellCheck (2 ^ 36) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA36B9 = true := by
  decide +kernel

theorem cellA36B10_check :
    cellCheck (2 ^ 36) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA36B10 = true := by
  decide +kernel

theorem cellA36B11_check :
    cellCheck (2 ^ 36) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA36B11 = true := by
  decide +kernel

theorem cellA36B12_check :
    cellCheck (2 ^ 36) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA36B12 = true := by
  decide +kernel

theorem cellA36B13_check :
    cellCheck (2 ^ 36) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA36B13 = true := by
  decide +kernel

theorem cellA36B14_check :
    cellCheck (2 ^ 36) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA36B14 = true := by
  decide +kernel

theorem cellA36B15_check :
    cellCheck (2 ^ 36) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA36B15 = true := by
  decide +kernel

theorem cellA36B16_check :
    cellCheck (2 ^ 36) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA36B16 = true := by
  decide +kernel

theorem rowA36_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 36) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA36 b) = true := by
  interval_cases b
  · simpa only [show rowA36 1 = cellA36B1 from rfl] using cellA36B1_check
  · simpa only [show rowA36 2 = cellA36B2 from rfl] using cellA36B2_check
  · simpa only [show rowA36 3 = cellA36B3 from rfl] using cellA36B3_check
  · simpa only [show rowA36 4 = cellA36B4 from rfl] using cellA36B4_check
  · simpa only [show rowA36 5 = cellA36B5 from rfl] using cellA36B5_check
  · simpa only [show rowA36 6 = cellA36B6 from rfl] using cellA36B6_check
  · simpa only [show rowA36 7 = cellA36B7 from rfl] using cellA36B7_check
  · simpa only [show rowA36 8 = cellA36B8 from rfl] using cellA36B8_check
  · simpa only [show rowA36 9 = cellA36B9 from rfl] using cellA36B9_check
  · simpa only [show rowA36 10 = cellA36B10 from rfl] using cellA36B10_check
  · simpa only [show rowA36 11 = cellA36B11 from rfl] using cellA36B11_check
  · simpa only [show rowA36 12 = cellA36B12 from rfl] using cellA36B12_check
  · simpa only [show rowA36 13 = cellA36B13 from rfl] using cellA36B13_check
  · simpa only [show rowA36 14 = cellA36B14 from rfl] using cellA36B14_check
  · simpa only [show rowA36 15 = cellA36B15 from rfl] using cellA36B15_check
  · simpa only [show rowA36 16 = cellA36B16 from rfl] using cellA36B16_check

theorem rowA36_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 36 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 36 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA36_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 36 b = rowA36 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk004

#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA36B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA36B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA36B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA36B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA36B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA36B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA36B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA36B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA36B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA36B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA36B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA36B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA36B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA36B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA36B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA36B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.rowA36_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.rowA36_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk004
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA37B1_check :
    cellCheck (2 ^ 37) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA37B1 = true := by
  decide +kernel

theorem cellA37B2_check :
    cellCheck (2 ^ 37) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA37B2 = true := by
  decide +kernel

theorem cellA37B3_check :
    cellCheck (2 ^ 37) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA37B3 = true := by
  decide +kernel

theorem cellA37B4_check :
    cellCheck (2 ^ 37) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA37B4 = true := by
  decide +kernel

theorem cellA37B5_check :
    cellCheck (2 ^ 37) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA37B5 = true := by
  decide +kernel

theorem cellA37B6_check :
    cellCheck (2 ^ 37) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA37B6 = true := by
  decide +kernel

theorem cellA37B7_check :
    cellCheck (2 ^ 37) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA37B7 = true := by
  decide +kernel

theorem cellA37B8_check :
    cellCheck (2 ^ 37) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA37B8 = true := by
  decide +kernel

theorem cellA37B9_check :
    cellCheck (2 ^ 37) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA37B9 = true := by
  decide +kernel

theorem cellA37B10_check :
    cellCheck (2 ^ 37) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA37B10 = true := by
  decide +kernel

theorem cellA37B11_check :
    cellCheck (2 ^ 37) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA37B11 = true := by
  decide +kernel

theorem cellA37B12_check :
    cellCheck (2 ^ 37) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA37B12 = true := by
  decide +kernel

theorem cellA37B13_check :
    cellCheck (2 ^ 37) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA37B13 = true := by
  decide +kernel

theorem cellA37B14_check :
    cellCheck (2 ^ 37) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA37B14 = true := by
  decide +kernel

theorem cellA37B15_check :
    cellCheck (2 ^ 37) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA37B15 = true := by
  decide +kernel

theorem cellA37B16_check :
    cellCheck (2 ^ 37) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA37B16 = true := by
  decide +kernel

theorem rowA37_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 37) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA37 b) = true := by
  interval_cases b
  · simpa only [show rowA37 1 = cellA37B1 from rfl] using cellA37B1_check
  · simpa only [show rowA37 2 = cellA37B2 from rfl] using cellA37B2_check
  · simpa only [show rowA37 3 = cellA37B3 from rfl] using cellA37B3_check
  · simpa only [show rowA37 4 = cellA37B4 from rfl] using cellA37B4_check
  · simpa only [show rowA37 5 = cellA37B5 from rfl] using cellA37B5_check
  · simpa only [show rowA37 6 = cellA37B6 from rfl] using cellA37B6_check
  · simpa only [show rowA37 7 = cellA37B7 from rfl] using cellA37B7_check
  · simpa only [show rowA37 8 = cellA37B8 from rfl] using cellA37B8_check
  · simpa only [show rowA37 9 = cellA37B9 from rfl] using cellA37B9_check
  · simpa only [show rowA37 10 = cellA37B10 from rfl] using cellA37B10_check
  · simpa only [show rowA37 11 = cellA37B11 from rfl] using cellA37B11_check
  · simpa only [show rowA37 12 = cellA37B12 from rfl] using cellA37B12_check
  · simpa only [show rowA37 13 = cellA37B13 from rfl] using cellA37B13_check
  · simpa only [show rowA37 14 = cellA37B14 from rfl] using cellA37B14_check
  · simpa only [show rowA37 15 = cellA37B15 from rfl] using cellA37B15_check
  · simpa only [show rowA37 16 = cellA37B16 from rfl] using cellA37B16_check

theorem rowA37_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 37 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 37 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA37_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 37 b = rowA37 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk004

#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA37B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA37B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA37B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA37B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA37B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA37B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA37B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA37B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA37B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA37B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA37B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA37B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA37B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA37B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA37B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA37B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.rowA37_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.rowA37_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk004
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA38B1_check :
    cellCheck (2 ^ 38) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA38B1 = true := by
  decide +kernel

theorem cellA38B2_check :
    cellCheck (2 ^ 38) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA38B2 = true := by
  decide +kernel

theorem cellA38B3_check :
    cellCheck (2 ^ 38) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA38B3 = true := by
  decide +kernel

theorem cellA38B4_check :
    cellCheck (2 ^ 38) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA38B4 = true := by
  decide +kernel

theorem cellA38B5_check :
    cellCheck (2 ^ 38) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA38B5 = true := by
  decide +kernel

theorem cellA38B6_check :
    cellCheck (2 ^ 38) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA38B6 = true := by
  decide +kernel

theorem cellA38B7_check :
    cellCheck (2 ^ 38) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA38B7 = true := by
  decide +kernel

theorem cellA38B8_check :
    cellCheck (2 ^ 38) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA38B8 = true := by
  decide +kernel

theorem cellA38B9_check :
    cellCheck (2 ^ 38) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA38B9 = true := by
  decide +kernel

theorem cellA38B10_check :
    cellCheck (2 ^ 38) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA38B10 = true := by
  decide +kernel

theorem cellA38B11_check :
    cellCheck (2 ^ 38) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA38B11 = true := by
  decide +kernel

theorem cellA38B12_check :
    cellCheck (2 ^ 38) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA38B12 = true := by
  decide +kernel

theorem cellA38B13_check :
    cellCheck (2 ^ 38) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA38B13 = true := by
  decide +kernel

theorem cellA38B14_check :
    cellCheck (2 ^ 38) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA38B14 = true := by
  decide +kernel

theorem cellA38B15_check :
    cellCheck (2 ^ 38) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA38B15 = true := by
  decide +kernel

theorem cellA38B16_check :
    cellCheck (2 ^ 38) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA38B16 = true := by
  decide +kernel

theorem rowA38_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (2 ^ 38) (5 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 38))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA38 b) = true := by
  interval_cases b
  · simpa only [show rowA38 1 = cellA38B1 from rfl] using cellA38B1_check
  · simpa only [show rowA38 2 = cellA38B2 from rfl] using cellA38B2_check
  · simpa only [show rowA38 3 = cellA38B3 from rfl] using cellA38B3_check
  · simpa only [show rowA38 4 = cellA38B4 from rfl] using cellA38B4_check
  · simpa only [show rowA38 5 = cellA38B5 from rfl] using cellA38B5_check
  · simpa only [show rowA38 6 = cellA38B6 from rfl] using cellA38B6_check
  · simpa only [show rowA38 7 = cellA38B7 from rfl] using cellA38B7_check
  · simpa only [show rowA38 8 = cellA38B8 from rfl] using cellA38B8_check
  · simpa only [show rowA38 9 = cellA38B9 from rfl] using cellA38B9_check
  · simpa only [show rowA38 10 = cellA38B10 from rfl] using cellA38B10_check
  · simpa only [show rowA38 11 = cellA38B11 from rfl] using cellA38B11_check
  · simpa only [show rowA38 12 = cellA38B12 from rfl] using cellA38B12_check
  · simpa only [show rowA38 13 = cellA38B13 from rfl] using cellA38B13_check
  · simpa only [show rowA38 14 = cellA38B14 from rfl] using cellA38B14_check
  · simpa only [show rowA38 15 = cellA38B15 from rfl] using cellA38B15_check
  · simpa only [show rowA38 16 = cellA38B16 from rfl] using cellA38B16_check

theorem rowA38_block_check :
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 38 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 38 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA38_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 38 b = rowA38 b from rfl] using h

end Math.B699.CRTStage2Pair25.Chunk004

#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B1_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B2_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B3_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B4_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B5_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B6_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B7_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B8_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B9_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B10_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B11_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B12_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B13_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B14_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B15_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.cellA38B16_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.rowA38_cell_check
#print axioms Math.B699.CRTStage2Pair25.Chunk004.rowA38_block_check
