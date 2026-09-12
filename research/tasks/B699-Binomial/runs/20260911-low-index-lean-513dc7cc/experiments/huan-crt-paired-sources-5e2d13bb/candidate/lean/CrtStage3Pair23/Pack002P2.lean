import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair23.Chunk002Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair23.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA21B1_check :
    cellCheck (2 ^ 21) (3 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 1)) Stage03.upper cellA21B1 = true := by
  decide +kernel

theorem cellA21B2_check :
    cellCheck (2 ^ 21) (3 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 2)) Stage03.upper cellA21B2 = true := by
  decide +kernel

theorem cellA21B3_check :
    cellCheck (2 ^ 21) (3 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 3)) Stage03.upper cellA21B3 = true := by
  decide +kernel

theorem cellA21B4_check :
    cellCheck (2 ^ 21) (3 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 4)) Stage03.upper cellA21B4 = true := by
  decide +kernel

theorem cellA21B5_check :
    cellCheck (2 ^ 21) (3 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 5)) Stage03.upper cellA21B5 = true := by
  decide +kernel

theorem cellA21B6_check :
    cellCheck (2 ^ 21) (3 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 6)) Stage03.upper cellA21B6 = true := by
  decide +kernel

theorem cellA21B7_check :
    cellCheck (2 ^ 21) (3 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 7)) Stage03.upper cellA21B7 = true := by
  decide +kernel

theorem cellA21B8_check :
    cellCheck (2 ^ 21) (3 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 8)) Stage03.upper cellA21B8 = true := by
  decide +kernel

theorem cellA21B9_check :
    cellCheck (2 ^ 21) (3 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 9)) Stage03.upper cellA21B9 = true := by
  decide +kernel

theorem cellA21B10_check :
    cellCheck (2 ^ 21) (3 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 10)) Stage03.upper cellA21B10 = true := by
  decide +kernel

theorem cellA21B11_check :
    cellCheck (2 ^ 21) (3 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 11)) Stage03.upper cellA21B11 = true := by
  decide +kernel

theorem cellA21B12_check :
    cellCheck (2 ^ 21) (3 ^ 12)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 12)) Stage03.upper cellA21B12 = true := by
  decide +kernel

theorem cellA21B13_check :
    cellCheck (2 ^ 21) (3 ^ 13)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 13)) Stage03.upper cellA21B13 = true := by
  decide +kernel

theorem cellA21B14_check :
    cellCheck (2 ^ 21) (3 ^ 14)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 14)) Stage03.upper cellA21B14 = true := by
  decide +kernel

theorem cellA21B15_check :
    cellCheck (2 ^ 21) (3 ^ 15)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 15)) Stage03.upper cellA21B15 = true := by
  decide +kernel

theorem cellA21B16_check :
    cellCheck (2 ^ 21) (3 ^ 16)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 16)) Stage03.upper cellA21B16 = true := by
  decide +kernel

theorem cellA21B17_check :
    cellCheck (2 ^ 21) (3 ^ 17)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ 17)) Stage03.upper cellA21B17 = true := by
  decide +kernel

theorem rowA21_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 17) :
    cellCheck (2 ^ 21) (3 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (3 ^ b)) Stage03.upper (rowA21 b) = true := by
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
  · simpa only [show rowA21 17 = cellA21B17 from rfl] using cellA21B17_check

theorem rowA21_block_check :
    blockCheck 2 3 Stage03.H Stage03.M Stage03.upper 21 1 1 17 chunkData = true := by
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

end Math.B699.CRTStage3Pair23.Chunk002

#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B1_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B2_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B3_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B4_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B5_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B6_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B7_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B8_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B9_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B10_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B11_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B12_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B13_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B14_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B15_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B16_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA21B17_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.rowA21_cell_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.rowA21_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair23.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA22B1_check :
    cellCheck (2 ^ 22) (3 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 1)) Stage03.upper cellA22B1 = true := by
  decide +kernel

theorem cellA22B2_check :
    cellCheck (2 ^ 22) (3 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 2)) Stage03.upper cellA22B2 = true := by
  decide +kernel

theorem cellA22B3_check :
    cellCheck (2 ^ 22) (3 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 3)) Stage03.upper cellA22B3 = true := by
  decide +kernel

theorem cellA22B4_check :
    cellCheck (2 ^ 22) (3 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 4)) Stage03.upper cellA22B4 = true := by
  decide +kernel

theorem cellA22B5_check :
    cellCheck (2 ^ 22) (3 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 5)) Stage03.upper cellA22B5 = true := by
  decide +kernel

theorem cellA22B6_check :
    cellCheck (2 ^ 22) (3 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 6)) Stage03.upper cellA22B6 = true := by
  decide +kernel

theorem cellA22B7_check :
    cellCheck (2 ^ 22) (3 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 7)) Stage03.upper cellA22B7 = true := by
  decide +kernel

theorem cellA22B8_check :
    cellCheck (2 ^ 22) (3 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 8)) Stage03.upper cellA22B8 = true := by
  decide +kernel

theorem cellA22B9_check :
    cellCheck (2 ^ 22) (3 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 9)) Stage03.upper cellA22B9 = true := by
  decide +kernel

theorem cellA22B10_check :
    cellCheck (2 ^ 22) (3 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 10)) Stage03.upper cellA22B10 = true := by
  decide +kernel

theorem cellA22B11_check :
    cellCheck (2 ^ 22) (3 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 11)) Stage03.upper cellA22B11 = true := by
  decide +kernel

theorem cellA22B12_check :
    cellCheck (2 ^ 22) (3 ^ 12)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 12)) Stage03.upper cellA22B12 = true := by
  decide +kernel

theorem cellA22B13_check :
    cellCheck (2 ^ 22) (3 ^ 13)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 13)) Stage03.upper cellA22B13 = true := by
  decide +kernel

theorem cellA22B14_check :
    cellCheck (2 ^ 22) (3 ^ 14)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 14)) Stage03.upper cellA22B14 = true := by
  decide +kernel

theorem cellA22B15_check :
    cellCheck (2 ^ 22) (3 ^ 15)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 15)) Stage03.upper cellA22B15 = true := by
  decide +kernel

theorem cellA22B16_check :
    cellCheck (2 ^ 22) (3 ^ 16)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 16)) Stage03.upper cellA22B16 = true := by
  decide +kernel

theorem cellA22B17_check :
    cellCheck (2 ^ 22) (3 ^ 17)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ 17)) Stage03.upper cellA22B17 = true := by
  decide +kernel

theorem rowA22_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 17) :
    cellCheck (2 ^ 22) (3 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (3 ^ b)) Stage03.upper (rowA22 b) = true := by
  interval_cases b
  · simpa only [show rowA22 1 = cellA22B1 from rfl] using cellA22B1_check
  · simpa only [show rowA22 2 = cellA22B2 from rfl] using cellA22B2_check
  · simpa only [show rowA22 3 = cellA22B3 from rfl] using cellA22B3_check
  · simpa only [show rowA22 4 = cellA22B4 from rfl] using cellA22B4_check
  · simpa only [show rowA22 5 = cellA22B5 from rfl] using cellA22B5_check
  · simpa only [show rowA22 6 = cellA22B6 from rfl] using cellA22B6_check
  · simpa only [show rowA22 7 = cellA22B7 from rfl] using cellA22B7_check
  · simpa only [show rowA22 8 = cellA22B8 from rfl] using cellA22B8_check
  · simpa only [show rowA22 9 = cellA22B9 from rfl] using cellA22B9_check
  · simpa only [show rowA22 10 = cellA22B10 from rfl] using cellA22B10_check
  · simpa only [show rowA22 11 = cellA22B11 from rfl] using cellA22B11_check
  · simpa only [show rowA22 12 = cellA22B12 from rfl] using cellA22B12_check
  · simpa only [show rowA22 13 = cellA22B13 from rfl] using cellA22B13_check
  · simpa only [show rowA22 14 = cellA22B14 from rfl] using cellA22B14_check
  · simpa only [show rowA22 15 = cellA22B15 from rfl] using cellA22B15_check
  · simpa only [show rowA22 16 = cellA22B16 from rfl] using cellA22B16_check
  · simpa only [show rowA22 17 = cellA22B17 from rfl] using cellA22B17_check

theorem rowA22_block_check :
    blockCheck 2 3 Stage03.H Stage03.M Stage03.upper 22 1 1 17 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 22 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA22_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 22 b = rowA22 b from rfl] using h

end Math.B699.CRTStage3Pair23.Chunk002

#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B1_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B2_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B3_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B4_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B5_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B6_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B7_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B8_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B9_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B10_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B11_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B12_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B13_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B14_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B15_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B16_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA22B17_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.rowA22_cell_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.rowA22_block_check
