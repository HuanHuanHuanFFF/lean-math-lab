import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair37.Chunk002Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair37.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA19B1_check :
    cellCheck (3 ^ 19) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (3 ^ 19))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA19B1 = true := by
  decide +kernel

theorem cellA19B2_check :
    cellCheck (3 ^ 19) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (3 ^ 19))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA19B2 = true := by
  decide +kernel

theorem cellA19B3_check :
    cellCheck (3 ^ 19) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (3 ^ 19))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA19B3 = true := by
  decide +kernel

theorem cellA19B4_check :
    cellCheck (3 ^ 19) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (3 ^ 19))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA19B4 = true := by
  decide +kernel

theorem cellA19B5_check :
    cellCheck (3 ^ 19) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (3 ^ 19))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA19B5 = true := by
  decide +kernel

theorem cellA19B6_check :
    cellCheck (3 ^ 19) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (3 ^ 19))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA19B6 = true := by
  decide +kernel

theorem cellA19B7_check :
    cellCheck (3 ^ 19) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (3 ^ 19))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA19B7 = true := by
  decide +kernel

theorem cellA19B8_check :
    cellCheck (3 ^ 19) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (3 ^ 19))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA19B8 = true := by
  decide +kernel

theorem cellA19B9_check :
    cellCheck (3 ^ 19) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (3 ^ 19))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA19B9 = true := by
  decide +kernel

theorem cellA19B10_check :
    cellCheck (3 ^ 19) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (3 ^ 19))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA19B10 = true := by
  decide +kernel

theorem cellA19B11_check :
    cellCheck (3 ^ 19) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (3 ^ 19))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA19B11 = true := by
  decide +kernel

theorem cellA19B12_check :
    cellCheck (3 ^ 19) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (3 ^ 19))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA19B12 = true := by
  decide +kernel

theorem cellA19B13_check :
    cellCheck (3 ^ 19) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (3 ^ 19))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA19B13 = true := by
  decide +kernel

theorem rowA19_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (3 ^ 19) (7 ^ b)
      (heightCap Stage02.H Stage02.M (3 ^ 19))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA19 b) = true := by
  interval_cases b
  · simpa only [show rowA19 1 = cellA19B1 from rfl] using cellA19B1_check
  · simpa only [show rowA19 2 = cellA19B2 from rfl] using cellA19B2_check
  · simpa only [show rowA19 3 = cellA19B3 from rfl] using cellA19B3_check
  · simpa only [show rowA19 4 = cellA19B4 from rfl] using cellA19B4_check
  · simpa only [show rowA19 5 = cellA19B5 from rfl] using cellA19B5_check
  · simpa only [show rowA19 6 = cellA19B6 from rfl] using cellA19B6_check
  · simpa only [show rowA19 7 = cellA19B7 from rfl] using cellA19B7_check
  · simpa only [show rowA19 8 = cellA19B8 from rfl] using cellA19B8_check
  · simpa only [show rowA19 9 = cellA19B9 from rfl] using cellA19B9_check
  · simpa only [show rowA19 10 = cellA19B10 from rfl] using cellA19B10_check
  · simpa only [show rowA19 11 = cellA19B11 from rfl] using cellA19B11_check
  · simpa only [show rowA19 12 = cellA19B12 from rfl] using cellA19B12_check
  · simpa only [show rowA19 13 = cellA19B13 from rfl] using cellA19B13_check

theorem rowA19_block_check :
    blockCheck 3 7 Stage02.H Stage02.M Stage02.upper 19 1 1 13 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 19 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA19_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 19 b = rowA19 b from rfl] using h

end Math.B699.CRTStage2Pair37.Chunk002

#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA19B1_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA19B2_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA19B3_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA19B4_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA19B5_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA19B6_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA19B7_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA19B8_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA19B9_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA19B10_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA19B11_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA19B12_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA19B13_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.rowA19_cell_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.rowA19_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair37.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA20B1_check :
    cellCheck (3 ^ 20) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (3 ^ 20))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA20B1 = true := by
  decide +kernel

theorem cellA20B2_check :
    cellCheck (3 ^ 20) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (3 ^ 20))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA20B2 = true := by
  decide +kernel

theorem cellA20B3_check :
    cellCheck (3 ^ 20) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (3 ^ 20))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA20B3 = true := by
  decide +kernel

theorem cellA20B4_check :
    cellCheck (3 ^ 20) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (3 ^ 20))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA20B4 = true := by
  decide +kernel

theorem cellA20B5_check :
    cellCheck (3 ^ 20) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (3 ^ 20))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA20B5 = true := by
  decide +kernel

theorem cellA20B6_check :
    cellCheck (3 ^ 20) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (3 ^ 20))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA20B6 = true := by
  decide +kernel

theorem cellA20B7_check :
    cellCheck (3 ^ 20) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (3 ^ 20))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA20B7 = true := by
  decide +kernel

theorem cellA20B8_check :
    cellCheck (3 ^ 20) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (3 ^ 20))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA20B8 = true := by
  decide +kernel

theorem cellA20B9_check :
    cellCheck (3 ^ 20) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (3 ^ 20))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA20B9 = true := by
  decide +kernel

theorem cellA20B10_check :
    cellCheck (3 ^ 20) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (3 ^ 20))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA20B10 = true := by
  decide +kernel

theorem cellA20B11_check :
    cellCheck (3 ^ 20) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (3 ^ 20))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA20B11 = true := by
  decide +kernel

theorem cellA20B12_check :
    cellCheck (3 ^ 20) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (3 ^ 20))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA20B12 = true := by
  decide +kernel

theorem cellA20B13_check :
    cellCheck (3 ^ 20) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (3 ^ 20))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA20B13 = true := by
  decide +kernel

theorem rowA20_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (3 ^ 20) (7 ^ b)
      (heightCap Stage02.H Stage02.M (3 ^ 20))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA20 b) = true := by
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

theorem rowA20_block_check :
    blockCheck 3 7 Stage02.H Stage02.M Stage02.upper 20 1 1 13 chunkData = true := by
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

end Math.B699.CRTStage2Pair37.Chunk002

#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA20B1_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA20B2_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA20B3_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA20B4_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA20B5_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA20B6_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA20B7_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA20B8_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA20B9_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA20B10_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA20B11_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA20B12_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.cellA20B13_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.rowA20_cell_check
#print axioms Math.B699.CRTStage2Pair37.Chunk002.rowA20_block_check
