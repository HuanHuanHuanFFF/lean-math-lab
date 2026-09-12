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

theorem cellA25B1_check :
    cellCheck (2 ^ 25) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 25))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA25B1 = true := by
  decide +kernel

theorem cellA25B2_check :
    cellCheck (2 ^ 25) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 25))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA25B2 = true := by
  decide +kernel

theorem cellA25B3_check :
    cellCheck (2 ^ 25) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 25))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA25B3 = true := by
  decide +kernel

theorem cellA25B4_check :
    cellCheck (2 ^ 25) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 25))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA25B4 = true := by
  decide +kernel

theorem cellA25B5_check :
    cellCheck (2 ^ 25) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 25))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA25B5 = true := by
  decide +kernel

theorem cellA25B6_check :
    cellCheck (2 ^ 25) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 25))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA25B6 = true := by
  decide +kernel

theorem cellA25B7_check :
    cellCheck (2 ^ 25) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 25))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA25B7 = true := by
  decide +kernel

theorem cellA25B8_check :
    cellCheck (2 ^ 25) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 25))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA25B8 = true := by
  decide +kernel

theorem cellA25B9_check :
    cellCheck (2 ^ 25) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 25))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA25B9 = true := by
  decide +kernel

theorem cellA25B10_check :
    cellCheck (2 ^ 25) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 25))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA25B10 = true := by
  decide +kernel

theorem cellA25B11_check :
    cellCheck (2 ^ 25) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 25))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA25B11 = true := by
  decide +kernel

theorem cellA25B12_check :
    cellCheck (2 ^ 25) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 25))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA25B12 = true := by
  decide +kernel

theorem cellA25B13_check :
    cellCheck (2 ^ 25) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 25))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA25B13 = true := by
  decide +kernel

theorem rowA25_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (2 ^ 25) (7 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 25))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA25 b) = true := by
  interval_cases b
  · simpa only [show rowA25 1 = cellA25B1 from rfl] using cellA25B1_check
  · simpa only [show rowA25 2 = cellA25B2 from rfl] using cellA25B2_check
  · simpa only [show rowA25 3 = cellA25B3 from rfl] using cellA25B3_check
  · simpa only [show rowA25 4 = cellA25B4 from rfl] using cellA25B4_check
  · simpa only [show rowA25 5 = cellA25B5 from rfl] using cellA25B5_check
  · simpa only [show rowA25 6 = cellA25B6 from rfl] using cellA25B6_check
  · simpa only [show rowA25 7 = cellA25B7 from rfl] using cellA25B7_check
  · simpa only [show rowA25 8 = cellA25B8 from rfl] using cellA25B8_check
  · simpa only [show rowA25 9 = cellA25B9 from rfl] using cellA25B9_check
  · simpa only [show rowA25 10 = cellA25B10 from rfl] using cellA25B10_check
  · simpa only [show rowA25 11 = cellA25B11 from rfl] using cellA25B11_check
  · simpa only [show rowA25 12 = cellA25B12 from rfl] using cellA25B12_check
  · simpa only [show rowA25 13 = cellA25B13 from rfl] using cellA25B13_check

theorem rowA25_block_check :
    blockCheck 2 7 Stage02.H Stage02.M Stage02.upper 25 1 1 13 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 25 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA25_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 25 b = rowA25 b from rfl] using h

end Math.B699.CRTStage2Pair27.Chunk003

#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA25B1_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA25B2_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA25B3_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA25B4_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA25B5_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA25B6_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA25B7_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA25B8_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA25B9_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA25B10_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA25B11_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA25B12_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA25B13_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.rowA25_cell_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.rowA25_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair27.Chunk003
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA26B1_check :
    cellCheck (2 ^ 26) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 26))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA26B1 = true := by
  decide +kernel

theorem cellA26B2_check :
    cellCheck (2 ^ 26) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 26))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA26B2 = true := by
  decide +kernel

theorem cellA26B3_check :
    cellCheck (2 ^ 26) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 26))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA26B3 = true := by
  decide +kernel

theorem cellA26B4_check :
    cellCheck (2 ^ 26) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 26))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA26B4 = true := by
  decide +kernel

theorem cellA26B5_check :
    cellCheck (2 ^ 26) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 26))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA26B5 = true := by
  decide +kernel

theorem cellA26B6_check :
    cellCheck (2 ^ 26) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 26))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA26B6 = true := by
  decide +kernel

theorem cellA26B7_check :
    cellCheck (2 ^ 26) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 26))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA26B7 = true := by
  decide +kernel

theorem cellA26B8_check :
    cellCheck (2 ^ 26) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 26))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA26B8 = true := by
  decide +kernel

theorem cellA26B9_check :
    cellCheck (2 ^ 26) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 26))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA26B9 = true := by
  decide +kernel

theorem cellA26B10_check :
    cellCheck (2 ^ 26) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 26))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA26B10 = true := by
  decide +kernel

theorem cellA26B11_check :
    cellCheck (2 ^ 26) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 26))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA26B11 = true := by
  decide +kernel

theorem cellA26B12_check :
    cellCheck (2 ^ 26) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 26))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA26B12 = true := by
  decide +kernel

theorem cellA26B13_check :
    cellCheck (2 ^ 26) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 26))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA26B13 = true := by
  decide +kernel

theorem rowA26_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (2 ^ 26) (7 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 26))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA26 b) = true := by
  interval_cases b
  · simpa only [show rowA26 1 = cellA26B1 from rfl] using cellA26B1_check
  · simpa only [show rowA26 2 = cellA26B2 from rfl] using cellA26B2_check
  · simpa only [show rowA26 3 = cellA26B3 from rfl] using cellA26B3_check
  · simpa only [show rowA26 4 = cellA26B4 from rfl] using cellA26B4_check
  · simpa only [show rowA26 5 = cellA26B5 from rfl] using cellA26B5_check
  · simpa only [show rowA26 6 = cellA26B6 from rfl] using cellA26B6_check
  · simpa only [show rowA26 7 = cellA26B7 from rfl] using cellA26B7_check
  · simpa only [show rowA26 8 = cellA26B8 from rfl] using cellA26B8_check
  · simpa only [show rowA26 9 = cellA26B9 from rfl] using cellA26B9_check
  · simpa only [show rowA26 10 = cellA26B10 from rfl] using cellA26B10_check
  · simpa only [show rowA26 11 = cellA26B11 from rfl] using cellA26B11_check
  · simpa only [show rowA26 12 = cellA26B12 from rfl] using cellA26B12_check
  · simpa only [show rowA26 13 = cellA26B13 from rfl] using cellA26B13_check

theorem rowA26_block_check :
    blockCheck 2 7 Stage02.H Stage02.M Stage02.upper 26 1 1 13 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 26 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA26_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 26 b = rowA26 b from rfl] using h

end Math.B699.CRTStage2Pair27.Chunk003

#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA26B1_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA26B2_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA26B3_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA26B4_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA26B5_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA26B6_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA26B7_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA26B8_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA26B9_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA26B10_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA26B11_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA26B12_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA26B13_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.rowA26_cell_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.rowA26_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair27.Chunk003
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA27B1_check :
    cellCheck (2 ^ 27) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 27))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA27B1 = true := by
  decide +kernel

theorem cellA27B2_check :
    cellCheck (2 ^ 27) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 27))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA27B2 = true := by
  decide +kernel

theorem cellA27B3_check :
    cellCheck (2 ^ 27) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 27))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA27B3 = true := by
  decide +kernel

theorem cellA27B4_check :
    cellCheck (2 ^ 27) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 27))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA27B4 = true := by
  decide +kernel

theorem cellA27B5_check :
    cellCheck (2 ^ 27) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 27))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA27B5 = true := by
  decide +kernel

theorem cellA27B6_check :
    cellCheck (2 ^ 27) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 27))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA27B6 = true := by
  decide +kernel

theorem cellA27B7_check :
    cellCheck (2 ^ 27) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 27))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA27B7 = true := by
  decide +kernel

theorem cellA27B8_check :
    cellCheck (2 ^ 27) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 27))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA27B8 = true := by
  decide +kernel

theorem cellA27B9_check :
    cellCheck (2 ^ 27) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 27))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA27B9 = true := by
  decide +kernel

theorem cellA27B10_check :
    cellCheck (2 ^ 27) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 27))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA27B10 = true := by
  decide +kernel

theorem cellA27B11_check :
    cellCheck (2 ^ 27) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 27))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA27B11 = true := by
  decide +kernel

theorem cellA27B12_check :
    cellCheck (2 ^ 27) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 27))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA27B12 = true := by
  decide +kernel

theorem cellA27B13_check :
    cellCheck (2 ^ 27) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 27))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA27B13 = true := by
  decide +kernel

theorem rowA27_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (2 ^ 27) (7 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 27))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA27 b) = true := by
  interval_cases b
  · simpa only [show rowA27 1 = cellA27B1 from rfl] using cellA27B1_check
  · simpa only [show rowA27 2 = cellA27B2 from rfl] using cellA27B2_check
  · simpa only [show rowA27 3 = cellA27B3 from rfl] using cellA27B3_check
  · simpa only [show rowA27 4 = cellA27B4 from rfl] using cellA27B4_check
  · simpa only [show rowA27 5 = cellA27B5 from rfl] using cellA27B5_check
  · simpa only [show rowA27 6 = cellA27B6 from rfl] using cellA27B6_check
  · simpa only [show rowA27 7 = cellA27B7 from rfl] using cellA27B7_check
  · simpa only [show rowA27 8 = cellA27B8 from rfl] using cellA27B8_check
  · simpa only [show rowA27 9 = cellA27B9 from rfl] using cellA27B9_check
  · simpa only [show rowA27 10 = cellA27B10 from rfl] using cellA27B10_check
  · simpa only [show rowA27 11 = cellA27B11 from rfl] using cellA27B11_check
  · simpa only [show rowA27 12 = cellA27B12 from rfl] using cellA27B12_check
  · simpa only [show rowA27 13 = cellA27B13 from rfl] using cellA27B13_check

theorem rowA27_block_check :
    blockCheck 2 7 Stage02.H Stage02.M Stage02.upper 27 1 1 13 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 27 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA27_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 27 b = rowA27 b from rfl] using h

end Math.B699.CRTStage2Pair27.Chunk003

#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA27B1_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA27B2_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA27B3_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA27B4_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA27B5_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA27B6_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA27B7_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA27B8_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA27B9_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA27B10_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA27B11_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA27B12_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA27B13_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.rowA27_cell_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.rowA27_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair27.Chunk003
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA28B1_check :
    cellCheck (2 ^ 28) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA28B1 = true := by
  decide +kernel

theorem cellA28B2_check :
    cellCheck (2 ^ 28) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA28B2 = true := by
  decide +kernel

theorem cellA28B3_check :
    cellCheck (2 ^ 28) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA28B3 = true := by
  decide +kernel

theorem cellA28B4_check :
    cellCheck (2 ^ 28) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA28B4 = true := by
  decide +kernel

theorem cellA28B5_check :
    cellCheck (2 ^ 28) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA28B5 = true := by
  decide +kernel

theorem cellA28B6_check :
    cellCheck (2 ^ 28) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA28B6 = true := by
  decide +kernel

theorem cellA28B7_check :
    cellCheck (2 ^ 28) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA28B7 = true := by
  decide +kernel

theorem cellA28B8_check :
    cellCheck (2 ^ 28) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA28B8 = true := by
  decide +kernel

theorem cellA28B9_check :
    cellCheck (2 ^ 28) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA28B9 = true := by
  decide +kernel

theorem cellA28B10_check :
    cellCheck (2 ^ 28) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA28B10 = true := by
  decide +kernel

theorem cellA28B11_check :
    cellCheck (2 ^ 28) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA28B11 = true := by
  decide +kernel

theorem cellA28B12_check :
    cellCheck (2 ^ 28) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA28B12 = true := by
  decide +kernel

theorem cellA28B13_check :
    cellCheck (2 ^ 28) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA28B13 = true := by
  decide +kernel

theorem rowA28_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (2 ^ 28) (7 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 28))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA28 b) = true := by
  interval_cases b
  · simpa only [show rowA28 1 = cellA28B1 from rfl] using cellA28B1_check
  · simpa only [show rowA28 2 = cellA28B2 from rfl] using cellA28B2_check
  · simpa only [show rowA28 3 = cellA28B3 from rfl] using cellA28B3_check
  · simpa only [show rowA28 4 = cellA28B4 from rfl] using cellA28B4_check
  · simpa only [show rowA28 5 = cellA28B5 from rfl] using cellA28B5_check
  · simpa only [show rowA28 6 = cellA28B6 from rfl] using cellA28B6_check
  · simpa only [show rowA28 7 = cellA28B7 from rfl] using cellA28B7_check
  · simpa only [show rowA28 8 = cellA28B8 from rfl] using cellA28B8_check
  · simpa only [show rowA28 9 = cellA28B9 from rfl] using cellA28B9_check
  · simpa only [show rowA28 10 = cellA28B10 from rfl] using cellA28B10_check
  · simpa only [show rowA28 11 = cellA28B11 from rfl] using cellA28B11_check
  · simpa only [show rowA28 12 = cellA28B12 from rfl] using cellA28B12_check
  · simpa only [show rowA28 13 = cellA28B13 from rfl] using cellA28B13_check

theorem rowA28_block_check :
    blockCheck 2 7 Stage02.H Stage02.M Stage02.upper 28 1 1 13 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 28 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA28_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 28 b = rowA28 b from rfl] using h

end Math.B699.CRTStage2Pair27.Chunk003

#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA28B1_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA28B2_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA28B3_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA28B4_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA28B5_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA28B6_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA28B7_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA28B8_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA28B9_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA28B10_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA28B11_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA28B12_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA28B13_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.rowA28_cell_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.rowA28_block_check

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

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair27.Chunk003
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA30B1_check :
    cellCheck (2 ^ 30) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA30B1 = true := by
  decide +kernel

theorem cellA30B2_check :
    cellCheck (2 ^ 30) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA30B2 = true := by
  decide +kernel

theorem cellA30B3_check :
    cellCheck (2 ^ 30) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA30B3 = true := by
  decide +kernel

theorem cellA30B4_check :
    cellCheck (2 ^ 30) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA30B4 = true := by
  decide +kernel

theorem cellA30B5_check :
    cellCheck (2 ^ 30) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA30B5 = true := by
  decide +kernel

theorem cellA30B6_check :
    cellCheck (2 ^ 30) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA30B6 = true := by
  decide +kernel

theorem cellA30B7_check :
    cellCheck (2 ^ 30) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA30B7 = true := by
  decide +kernel

theorem cellA30B8_check :
    cellCheck (2 ^ 30) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA30B8 = true := by
  decide +kernel

theorem cellA30B9_check :
    cellCheck (2 ^ 30) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA30B9 = true := by
  decide +kernel

theorem cellA30B10_check :
    cellCheck (2 ^ 30) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA30B10 = true := by
  decide +kernel

theorem cellA30B11_check :
    cellCheck (2 ^ 30) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA30B11 = true := by
  decide +kernel

theorem cellA30B12_check :
    cellCheck (2 ^ 30) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA30B12 = true := by
  decide +kernel

theorem cellA30B13_check :
    cellCheck (2 ^ 30) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA30B13 = true := by
  decide +kernel

theorem rowA30_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (2 ^ 30) (7 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 30))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA30 b) = true := by
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

theorem rowA30_block_check :
    blockCheck 2 7 Stage02.H Stage02.M Stage02.upper 30 1 1 13 chunkData = true := by
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

end Math.B699.CRTStage2Pair27.Chunk003

#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA30B1_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA30B2_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA30B3_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA30B4_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA30B5_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA30B6_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA30B7_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA30B8_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA30B9_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA30B10_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA30B11_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA30B12_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA30B13_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.rowA30_cell_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.rowA30_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair27.Chunk003
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA31B1_check :
    cellCheck (2 ^ 31) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA31B1 = true := by
  decide +kernel

theorem cellA31B2_check :
    cellCheck (2 ^ 31) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA31B2 = true := by
  decide +kernel

theorem cellA31B3_check :
    cellCheck (2 ^ 31) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA31B3 = true := by
  decide +kernel

theorem cellA31B4_check :
    cellCheck (2 ^ 31) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA31B4 = true := by
  decide +kernel

theorem cellA31B5_check :
    cellCheck (2 ^ 31) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA31B5 = true := by
  decide +kernel

theorem cellA31B6_check :
    cellCheck (2 ^ 31) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA31B6 = true := by
  decide +kernel

theorem cellA31B7_check :
    cellCheck (2 ^ 31) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA31B7 = true := by
  decide +kernel

theorem cellA31B8_check :
    cellCheck (2 ^ 31) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA31B8 = true := by
  decide +kernel

theorem cellA31B9_check :
    cellCheck (2 ^ 31) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA31B9 = true := by
  decide +kernel

theorem cellA31B10_check :
    cellCheck (2 ^ 31) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA31B10 = true := by
  decide +kernel

theorem cellA31B11_check :
    cellCheck (2 ^ 31) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA31B11 = true := by
  decide +kernel

theorem cellA31B12_check :
    cellCheck (2 ^ 31) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA31B12 = true := by
  decide +kernel

theorem cellA31B13_check :
    cellCheck (2 ^ 31) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA31B13 = true := by
  decide +kernel

theorem rowA31_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (2 ^ 31) (7 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 31))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA31 b) = true := by
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

theorem rowA31_block_check :
    blockCheck 2 7 Stage02.H Stage02.M Stage02.upper 31 1 1 13 chunkData = true := by
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

end Math.B699.CRTStage2Pair27.Chunk003

#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA31B1_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA31B2_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA31B3_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA31B4_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA31B5_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA31B6_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA31B7_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA31B8_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA31B9_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA31B10_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA31B11_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA31B12_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA31B13_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.rowA31_cell_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.rowA31_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair27.Chunk003
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA32B1_check :
    cellCheck (2 ^ 32) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA32B1 = true := by
  decide +kernel

theorem cellA32B2_check :
    cellCheck (2 ^ 32) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA32B2 = true := by
  decide +kernel

theorem cellA32B3_check :
    cellCheck (2 ^ 32) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA32B3 = true := by
  decide +kernel

theorem cellA32B4_check :
    cellCheck (2 ^ 32) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA32B4 = true := by
  decide +kernel

theorem cellA32B5_check :
    cellCheck (2 ^ 32) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA32B5 = true := by
  decide +kernel

theorem cellA32B6_check :
    cellCheck (2 ^ 32) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA32B6 = true := by
  decide +kernel

theorem cellA32B7_check :
    cellCheck (2 ^ 32) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA32B7 = true := by
  decide +kernel

theorem cellA32B8_check :
    cellCheck (2 ^ 32) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA32B8 = true := by
  decide +kernel

theorem cellA32B9_check :
    cellCheck (2 ^ 32) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA32B9 = true := by
  decide +kernel

theorem cellA32B10_check :
    cellCheck (2 ^ 32) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA32B10 = true := by
  decide +kernel

theorem cellA32B11_check :
    cellCheck (2 ^ 32) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA32B11 = true := by
  decide +kernel

theorem cellA32B12_check :
    cellCheck (2 ^ 32) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA32B12 = true := by
  decide +kernel

theorem cellA32B13_check :
    cellCheck (2 ^ 32) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA32B13 = true := by
  decide +kernel

theorem rowA32_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (2 ^ 32) (7 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 32))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA32 b) = true := by
  interval_cases b
  · simpa only [show rowA32 1 = cellA32B1 from rfl] using cellA32B1_check
  · simpa only [show rowA32 2 = cellA32B2 from rfl] using cellA32B2_check
  · simpa only [show rowA32 3 = cellA32B3 from rfl] using cellA32B3_check
  · simpa only [show rowA32 4 = cellA32B4 from rfl] using cellA32B4_check
  · simpa only [show rowA32 5 = cellA32B5 from rfl] using cellA32B5_check
  · simpa only [show rowA32 6 = cellA32B6 from rfl] using cellA32B6_check
  · simpa only [show rowA32 7 = cellA32B7 from rfl] using cellA32B7_check
  · simpa only [show rowA32 8 = cellA32B8 from rfl] using cellA32B8_check
  · simpa only [show rowA32 9 = cellA32B9 from rfl] using cellA32B9_check
  · simpa only [show rowA32 10 = cellA32B10 from rfl] using cellA32B10_check
  · simpa only [show rowA32 11 = cellA32B11 from rfl] using cellA32B11_check
  · simpa only [show rowA32 12 = cellA32B12 from rfl] using cellA32B12_check
  · simpa only [show rowA32 13 = cellA32B13 from rfl] using cellA32B13_check

theorem rowA32_block_check :
    blockCheck 2 7 Stage02.H Stage02.M Stage02.upper 32 1 1 13 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 32 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA32_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 32 b = rowA32 b from rfl] using h

end Math.B699.CRTStage2Pair27.Chunk003

#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA32B1_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA32B2_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA32B3_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA32B4_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA32B5_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA32B6_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA32B7_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA32B8_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA32B9_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA32B10_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA32B11_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA32B12_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.cellA32B13_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.rowA32_cell_check
#print axioms Math.B699.CRTStage2Pair27.Chunk003.rowA32_block_check
