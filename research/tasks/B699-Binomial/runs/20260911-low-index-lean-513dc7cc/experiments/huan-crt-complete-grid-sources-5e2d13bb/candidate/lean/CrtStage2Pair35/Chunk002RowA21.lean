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

theorem cellA21B1_check :
    cellCheck (3 ^ 21) (5 ^ 1)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ 1)) Stage02.upper cellA21B1 = true := by
  decide +kernel

theorem cellA21B2_check :
    cellCheck (3 ^ 21) (5 ^ 2)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ 2)) Stage02.upper cellA21B2 = true := by
  decide +kernel

theorem cellA21B3_check :
    cellCheck (3 ^ 21) (5 ^ 3)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ 3)) Stage02.upper cellA21B3 = true := by
  decide +kernel

theorem cellA21B4_check :
    cellCheck (3 ^ 21) (5 ^ 4)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ 4)) Stage02.upper cellA21B4 = true := by
  decide +kernel

theorem cellA21B5_check :
    cellCheck (3 ^ 21) (5 ^ 5)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ 5)) Stage02.upper cellA21B5 = true := by
  decide +kernel

theorem cellA21B6_check :
    cellCheck (3 ^ 21) (5 ^ 6)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ 6)) Stage02.upper cellA21B6 = true := by
  decide +kernel

theorem cellA21B7_check :
    cellCheck (3 ^ 21) (5 ^ 7)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ 7)) Stage02.upper cellA21B7 = true := by
  decide +kernel

theorem cellA21B8_check :
    cellCheck (3 ^ 21) (5 ^ 8)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ 8)) Stage02.upper cellA21B8 = true := by
  decide +kernel

theorem cellA21B9_check :
    cellCheck (3 ^ 21) (5 ^ 9)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ 9)) Stage02.upper cellA21B9 = true := by
  decide +kernel

theorem cellA21B10_check :
    cellCheck (3 ^ 21) (5 ^ 10)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ 10)) Stage02.upper cellA21B10 = true := by
  decide +kernel

theorem cellA21B11_check :
    cellCheck (3 ^ 21) (5 ^ 11)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ 11)) Stage02.upper cellA21B11 = true := by
  decide +kernel

theorem cellA21B12_check :
    cellCheck (3 ^ 21) (5 ^ 12)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ 12)) Stage02.upper cellA21B12 = true := by
  decide +kernel

theorem cellA21B13_check :
    cellCheck (3 ^ 21) (5 ^ 13)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ 13)) Stage02.upper cellA21B13 = true := by
  decide +kernel

theorem cellA21B14_check :
    cellCheck (3 ^ 21) (5 ^ 14)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ 14)) Stage02.upper cellA21B14 = true := by
  decide +kernel

theorem cellA21B15_check :
    cellCheck (3 ^ 21) (5 ^ 15)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ 15)) Stage02.upper cellA21B15 = true := by
  decide +kernel

theorem cellA21B16_check :
    cellCheck (3 ^ 21) (5 ^ 16)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ 16)) Stage02.upper cellA21B16 = true := by
  decide +kernel

theorem rowA21_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 16) :
    cellCheck (3 ^ 21) (5 ^ b)
      (heightCap Stage02.H Stage02.M (3 ^ 21))
      (heightCap Stage02.H Stage02.M (5 ^ b)) Stage02.upper (rowA21 b) = true := by
  interval_cases b
  · simpa only [show rowA21 1 = cellA21B1 from rfl] using cellA21B1_check
  · simpa only [show rowA21 2 = cellA21B2 from rfl] using cellA21B2_check
  · simpa only [show rowA21 3 = cellA21B3 from rfl] using cellA21B3_check
  · simpa only [show rowA21 4 = cellA21B4 from rfl] using cellA21B4_check
  · simpa only [show rowA21 5 = cellA21B5 from rfl] using cellA21B5_check
  · simpa only [show rowA21 6 = cellA21B6 from rfl] using cellA21B6_check
  · simpa only [show rowA21 7 = cellA21B7 from rfl] using cellA21B7_check
  · simpa only [show rowA21 8 = cellA21B8 from rfl] using cellA21B8_check
  · simpa only [show rowA21 9 = cellA21B9 from rfl] using cellA21B9_check
  · simpa only [show rowA21 10 = cellA21B10 from rfl] using cellA21B10_check
  · simpa only [show rowA21 11 = cellA21B11 from rfl] using cellA21B11_check
  · simpa only [show rowA21 12 = cellA21B12 from rfl] using cellA21B12_check
  · simpa only [show rowA21 13 = cellA21B13 from rfl] using cellA21B13_check
  · simpa only [show rowA21 14 = cellA21B14 from rfl] using cellA21B14_check
  · simpa only [show rowA21 15 = cellA21B15 from rfl] using cellA21B15_check
  · simpa only [show rowA21 16 = cellA21B16 from rfl] using cellA21B16_check

theorem rowA21_block_check :
    blockCheck 3 5 Stage02.H Stage02.M Stage02.upper 21 1 1 16 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 21 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA21_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 21 b = rowA21 b from rfl] using h

end Math.B699.CRTStage2Pair35.Chunk002

#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA21B1_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA21B2_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA21B3_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA21B4_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA21B5_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA21B6_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA21B7_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA21B8_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA21B9_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA21B10_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA21B11_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA21B12_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA21B13_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA21B14_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA21B15_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.cellA21B16_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.rowA21_cell_check
#print axioms Math.B699.CRTStage2Pair35.Chunk002.rowA21_block_check
