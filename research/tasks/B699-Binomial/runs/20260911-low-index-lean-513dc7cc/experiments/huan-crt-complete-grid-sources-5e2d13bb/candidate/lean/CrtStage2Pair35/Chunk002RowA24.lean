import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair35.Chunk002Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair35.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA24B1_check :
    cellCheck (3 ^ 24) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA24B1 = true := by
  decide +kernel

theorem cellA24B2_check :
    cellCheck (3 ^ 24) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA24B2 = true := by
  decide +kernel

theorem cellA24B3_check :
    cellCheck (3 ^ 24) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA24B3 = true := by
  decide +kernel

theorem cellA24B4_check :
    cellCheck (3 ^ 24) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA24B4 = true := by
  decide +kernel

theorem cellA24B5_check :
    cellCheck (3 ^ 24) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA24B5 = true := by
  decide +kernel

theorem cellA24B6_check :
    cellCheck (3 ^ 24) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA24B6 = true := by
  decide +kernel

theorem cellA24B7_check :
    cellCheck (3 ^ 24) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA24B7 = true := by
  decide +kernel

theorem cellA24B8_check :
    cellCheck (3 ^ 24) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA24B8 = true := by
  decide +kernel

theorem cellA24B9_check :
    cellCheck (3 ^ 24) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA24B9 = true := by
  decide +kernel

theorem cellA24B10_check :
    cellCheck (3 ^ 24) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA24B10 = true := by
  decide +kernel

theorem cellA24B11_check :
    cellCheck (3 ^ 24) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA24B11 = true := by
  decide +kernel

theorem cellA24B12_check :
    cellCheck (3 ^ 24) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA24B12 = true := by
  decide +kernel

theorem cellA24B13_check :
    cellCheck (3 ^ 24) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA24B13 = true := by
  decide +kernel

theorem cellA24B14_check :
    cellCheck (3 ^ 24) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA24B14 = true := by
  decide +kernel

theorem cellA24B15_check :
    cellCheck (3 ^ 24) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA24B15 = true := by
  decide +kernel

theorem cellA24B16_check :
    cellCheck (3 ^ 24) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA24B16 = true := by
  decide +kernel

theorem rowA24_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (3 ^ 24) (5 ^ b)
      (heightCap Stage02.H Stage02.M (3 ^ 24))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA24 b) = true := by
  interval_cases b
  · simpa only [show rowA24 1 = cellA24B1 from rfl] using cellA24B1_check
  · simpa only [show rowA24 2 = cellA24B2 from rfl] using cellA24B2_check
  · simpa only [show rowA24 3 = cellA24B3 from rfl] using cellA24B3_check
  · simpa only [show rowA24 4 = cellA24B4 from rfl] using cellA24B4_check
  · simpa only [show rowA24 5 = cellA24B5 from rfl] using cellA24B5_check
  · simpa only [show rowA24 6 = cellA24B6 from rfl] using cellA24B6_check
  · simpa only [show rowA24 7 = cellA24B7 from rfl] using cellA24B7_check
  · simpa only [show rowA24 8 = cellA24B8 from rfl] using cellA24B8_check
  · simpa only [show rowA24 9 = cellA24B9 from rfl] using cellA24B9_check
  · simpa only [show rowA24 10 = cellA24B10 from rfl] using cellA24B10_check
  · simpa only [show rowA24 11 = cellA24B11 from rfl] using cellA24B11_check
  · simpa only [show rowA24 12 = cellA24B12 from rfl] using cellA24B12_check
  · simpa only [show rowA24 13 = cellA24B13 from rfl] using cellA24B13_check
  · simpa only [show rowA24 14 = cellA24B14 from rfl] using cellA24B14_check
  · simpa only [show rowA24 15 = cellA24B15 from rfl] using cellA24B15_check
  · simpa only [show rowA24 16 = cellA24B16 from rfl] using cellA24B16_check

theorem rowA24_block_check :
    blockCheck 3 5 Stage02.H Stage02.M Stage02.upper 24 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 24 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA24_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 24 b = rowA24 b from rfl] using h

end Math.B699.CRTStage2Pair35.Chunk002

#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA24B1_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA24B2_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA24B3_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA24B4_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA24B5_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA24B6_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA24B7_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA24B8_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA24B9_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA24B10_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA24B11_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA24B12_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA24B13_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA24B14_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA24B15_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA24B16_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.rowA24_cell_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.rowA24_block_check
