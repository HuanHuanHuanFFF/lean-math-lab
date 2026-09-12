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

theorem cellA17B1_check :
    cellCheck (2 ^ 17) (3 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 1)) Stage03.upper cellA17B1 = true := by
  decide +kernel

theorem cellA17B2_check :
    cellCheck (2 ^ 17) (3 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 2)) Stage03.upper cellA17B2 = true := by
  decide +kernel

theorem cellA17B3_check :
    cellCheck (2 ^ 17) (3 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 3)) Stage03.upper cellA17B3 = true := by
  decide +kernel

theorem cellA17B4_check :
    cellCheck (2 ^ 17) (3 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 4)) Stage03.upper cellA17B4 = true := by
  decide +kernel

theorem cellA17B5_check :
    cellCheck (2 ^ 17) (3 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 5)) Stage03.upper cellA17B5 = true := by
  decide +kernel

theorem cellA17B6_check :
    cellCheck (2 ^ 17) (3 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 6)) Stage03.upper cellA17B6 = true := by
  decide +kernel

theorem cellA17B7_check :
    cellCheck (2 ^ 17) (3 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 7)) Stage03.upper cellA17B7 = true := by
  decide +kernel

theorem cellA17B8_check :
    cellCheck (2 ^ 17) (3 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 8)) Stage03.upper cellA17B8 = true := by
  decide +kernel

theorem cellA17B9_check :
    cellCheck (2 ^ 17) (3 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 9)) Stage03.upper cellA17B9 = true := by
  decide +kernel

theorem cellA17B10_check :
    cellCheck (2 ^ 17) (3 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 10)) Stage03.upper cellA17B10 = true := by
  decide +kernel

theorem cellA17B11_check :
    cellCheck (2 ^ 17) (3 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 11)) Stage03.upper cellA17B11 = true := by
  decide +kernel

theorem cellA17B12_check :
    cellCheck (2 ^ 17) (3 ^ 12)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 12)) Stage03.upper cellA17B12 = true := by
  decide +kernel

theorem cellA17B13_check :
    cellCheck (2 ^ 17) (3 ^ 13)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 13)) Stage03.upper cellA17B13 = true := by
  decide +kernel

theorem cellA17B14_check :
    cellCheck (2 ^ 17) (3 ^ 14)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 14)) Stage03.upper cellA17B14 = true := by
  decide +kernel

theorem cellA17B15_check :
    cellCheck (2 ^ 17) (3 ^ 15)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 15)) Stage03.upper cellA17B15 = true := by
  decide +kernel

theorem cellA17B16_check :
    cellCheck (2 ^ 17) (3 ^ 16)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 16)) Stage03.upper cellA17B16 = true := by
  decide +kernel

theorem cellA17B17_check :
    cellCheck (2 ^ 17) (3 ^ 17)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ 17)) Stage03.upper cellA17B17 = true := by
  decide +kernel

theorem rowA17_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 17) :
    cellCheck (2 ^ 17) (3 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (3 ^ b)) Stage03.upper (rowA17 b) = true := by
  interval_cases b
  · simpa only [show rowA17 1 = cellA17B1 from rfl] using cellA17B1_check
  · simpa only [show rowA17 2 = cellA17B2 from rfl] using cellA17B2_check
  · simpa only [show rowA17 3 = cellA17B3 from rfl] using cellA17B3_check
  · simpa only [show rowA17 4 = cellA17B4 from rfl] using cellA17B4_check
  · simpa only [show rowA17 5 = cellA17B5 from rfl] using cellA17B5_check
  · simpa only [show rowA17 6 = cellA17B6 from rfl] using cellA17B6_check
  · simpa only [show rowA17 7 = cellA17B7 from rfl] using cellA17B7_check
  · simpa only [show rowA17 8 = cellA17B8 from rfl] using cellA17B8_check
  · simpa only [show rowA17 9 = cellA17B9 from rfl] using cellA17B9_check
  · simpa only [show rowA17 10 = cellA17B10 from rfl] using cellA17B10_check
  · simpa only [show rowA17 11 = cellA17B11 from rfl] using cellA17B11_check
  · simpa only [show rowA17 12 = cellA17B12 from rfl] using cellA17B12_check
  · simpa only [show rowA17 13 = cellA17B13 from rfl] using cellA17B13_check
  · simpa only [show rowA17 14 = cellA17B14 from rfl] using cellA17B14_check
  · simpa only [show rowA17 15 = cellA17B15 from rfl] using cellA17B15_check
  · simpa only [show rowA17 16 = cellA17B16 from rfl] using cellA17B16_check
  · simpa only [show rowA17 17 = cellA17B17 from rfl] using cellA17B17_check

theorem rowA17_block_check :
    blockCheck 2 3 Stage03.H Stage03.M Stage03.upper 17 1 1 17 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 17 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA17_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 17 b = rowA17 b from rfl] using h

end Math.B699.CRTStage3Pair23.Chunk002

#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B1_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B2_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B3_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B4_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B5_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B6_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B7_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B8_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B9_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B10_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B11_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B12_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B13_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B14_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B15_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B16_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA17B17_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.rowA17_cell_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.rowA17_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair23.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA18B1_check :
    cellCheck (2 ^ 18) (3 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 1)) Stage03.upper cellA18B1 = true := by
  decide +kernel

theorem cellA18B2_check :
    cellCheck (2 ^ 18) (3 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 2)) Stage03.upper cellA18B2 = true := by
  decide +kernel

theorem cellA18B3_check :
    cellCheck (2 ^ 18) (3 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 3)) Stage03.upper cellA18B3 = true := by
  decide +kernel

theorem cellA18B4_check :
    cellCheck (2 ^ 18) (3 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 4)) Stage03.upper cellA18B4 = true := by
  decide +kernel

theorem cellA18B5_check :
    cellCheck (2 ^ 18) (3 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 5)) Stage03.upper cellA18B5 = true := by
  decide +kernel

theorem cellA18B6_check :
    cellCheck (2 ^ 18) (3 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 6)) Stage03.upper cellA18B6 = true := by
  decide +kernel

theorem cellA18B7_check :
    cellCheck (2 ^ 18) (3 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 7)) Stage03.upper cellA18B7 = true := by
  decide +kernel

theorem cellA18B8_check :
    cellCheck (2 ^ 18) (3 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 8)) Stage03.upper cellA18B8 = true := by
  decide +kernel

theorem cellA18B9_check :
    cellCheck (2 ^ 18) (3 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 9)) Stage03.upper cellA18B9 = true := by
  decide +kernel

theorem cellA18B10_check :
    cellCheck (2 ^ 18) (3 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 10)) Stage03.upper cellA18B10 = true := by
  decide +kernel

theorem cellA18B11_check :
    cellCheck (2 ^ 18) (3 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 11)) Stage03.upper cellA18B11 = true := by
  decide +kernel

theorem cellA18B12_check :
    cellCheck (2 ^ 18) (3 ^ 12)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 12)) Stage03.upper cellA18B12 = true := by
  decide +kernel

theorem cellA18B13_check :
    cellCheck (2 ^ 18) (3 ^ 13)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 13)) Stage03.upper cellA18B13 = true := by
  decide +kernel

theorem cellA18B14_check :
    cellCheck (2 ^ 18) (3 ^ 14)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 14)) Stage03.upper cellA18B14 = true := by
  decide +kernel

theorem cellA18B15_check :
    cellCheck (2 ^ 18) (3 ^ 15)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 15)) Stage03.upper cellA18B15 = true := by
  decide +kernel

theorem cellA18B16_check :
    cellCheck (2 ^ 18) (3 ^ 16)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 16)) Stage03.upper cellA18B16 = true := by
  decide +kernel

theorem cellA18B17_check :
    cellCheck (2 ^ 18) (3 ^ 17)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ 17)) Stage03.upper cellA18B17 = true := by
  decide +kernel

theorem rowA18_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 17) :
    cellCheck (2 ^ 18) (3 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (3 ^ b)) Stage03.upper (rowA18 b) = true := by
  interval_cases b
  · simpa only [show rowA18 1 = cellA18B1 from rfl] using cellA18B1_check
  · simpa only [show rowA18 2 = cellA18B2 from rfl] using cellA18B2_check
  · simpa only [show rowA18 3 = cellA18B3 from rfl] using cellA18B3_check
  · simpa only [show rowA18 4 = cellA18B4 from rfl] using cellA18B4_check
  · simpa only [show rowA18 5 = cellA18B5 from rfl] using cellA18B5_check
  · simpa only [show rowA18 6 = cellA18B6 from rfl] using cellA18B6_check
  · simpa only [show rowA18 7 = cellA18B7 from rfl] using cellA18B7_check
  · simpa only [show rowA18 8 = cellA18B8 from rfl] using cellA18B8_check
  · simpa only [show rowA18 9 = cellA18B9 from rfl] using cellA18B9_check
  · simpa only [show rowA18 10 = cellA18B10 from rfl] using cellA18B10_check
  · simpa only [show rowA18 11 = cellA18B11 from rfl] using cellA18B11_check
  · simpa only [show rowA18 12 = cellA18B12 from rfl] using cellA18B12_check
  · simpa only [show rowA18 13 = cellA18B13 from rfl] using cellA18B13_check
  · simpa only [show rowA18 14 = cellA18B14 from rfl] using cellA18B14_check
  · simpa only [show rowA18 15 = cellA18B15 from rfl] using cellA18B15_check
  · simpa only [show rowA18 16 = cellA18B16 from rfl] using cellA18B16_check
  · simpa only [show rowA18 17 = cellA18B17 from rfl] using cellA18B17_check

theorem rowA18_block_check :
    blockCheck 2 3 Stage03.H Stage03.M Stage03.upper 18 1 1 17 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 18 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA18_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 18 b = rowA18 b from rfl] using h

end Math.B699.CRTStage3Pair23.Chunk002

#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B1_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B2_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B3_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B4_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B5_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B6_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B7_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B8_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B9_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B10_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B11_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B12_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B13_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B14_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B15_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B16_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA18B17_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.rowA18_cell_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.rowA18_block_check
