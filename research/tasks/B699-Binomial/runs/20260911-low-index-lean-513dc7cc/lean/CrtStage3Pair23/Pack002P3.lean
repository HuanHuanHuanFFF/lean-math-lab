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

theorem cellA23B1_check :
    cellCheck (2 ^ 23) (3 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 1)) Stage03.upper cellA23B1 = true := by
  decide +kernel

theorem cellA23B2_check :
    cellCheck (2 ^ 23) (3 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 2)) Stage03.upper cellA23B2 = true := by
  decide +kernel

theorem cellA23B3_check :
    cellCheck (2 ^ 23) (3 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 3)) Stage03.upper cellA23B3 = true := by
  decide +kernel

theorem cellA23B4_check :
    cellCheck (2 ^ 23) (3 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 4)) Stage03.upper cellA23B4 = true := by
  decide +kernel

theorem cellA23B5_check :
    cellCheck (2 ^ 23) (3 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 5)) Stage03.upper cellA23B5 = true := by
  decide +kernel

theorem cellA23B6_check :
    cellCheck (2 ^ 23) (3 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 6)) Stage03.upper cellA23B6 = true := by
  decide +kernel

theorem cellA23B7_check :
    cellCheck (2 ^ 23) (3 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 7)) Stage03.upper cellA23B7 = true := by
  decide +kernel

theorem cellA23B8_check :
    cellCheck (2 ^ 23) (3 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 8)) Stage03.upper cellA23B8 = true := by
  decide +kernel

theorem cellA23B9_check :
    cellCheck (2 ^ 23) (3 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 9)) Stage03.upper cellA23B9 = true := by
  decide +kernel

theorem cellA23B10_check :
    cellCheck (2 ^ 23) (3 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 10)) Stage03.upper cellA23B10 = true := by
  decide +kernel

theorem cellA23B11_check :
    cellCheck (2 ^ 23) (3 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 11)) Stage03.upper cellA23B11 = true := by
  decide +kernel

theorem cellA23B12_check :
    cellCheck (2 ^ 23) (3 ^ 12)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 12)) Stage03.upper cellA23B12 = true := by
  decide +kernel

theorem cellA23B13_check :
    cellCheck (2 ^ 23) (3 ^ 13)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 13)) Stage03.upper cellA23B13 = true := by
  decide +kernel

theorem cellA23B14_check :
    cellCheck (2 ^ 23) (3 ^ 14)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 14)) Stage03.upper cellA23B14 = true := by
  decide +kernel

theorem cellA23B15_check :
    cellCheck (2 ^ 23) (3 ^ 15)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 15)) Stage03.upper cellA23B15 = true := by
  decide +kernel

theorem cellA23B16_check :
    cellCheck (2 ^ 23) (3 ^ 16)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 16)) Stage03.upper cellA23B16 = true := by
  decide +kernel

theorem cellA23B17_check :
    cellCheck (2 ^ 23) (3 ^ 17)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ 17)) Stage03.upper cellA23B17 = true := by
  decide +kernel

theorem rowA23_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 17) :
    cellCheck (2 ^ 23) (3 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (3 ^ b)) Stage03.upper (rowA23 b) = true := by
  interval_cases b
  · simpa only [show rowA23 1 = cellA23B1 from rfl] using cellA23B1_check
  · simpa only [show rowA23 2 = cellA23B2 from rfl] using cellA23B2_check
  · simpa only [show rowA23 3 = cellA23B3 from rfl] using cellA23B3_check
  · simpa only [show rowA23 4 = cellA23B4 from rfl] using cellA23B4_check
  · simpa only [show rowA23 5 = cellA23B5 from rfl] using cellA23B5_check
  · simpa only [show rowA23 6 = cellA23B6 from rfl] using cellA23B6_check
  · simpa only [show rowA23 7 = cellA23B7 from rfl] using cellA23B7_check
  · simpa only [show rowA23 8 = cellA23B8 from rfl] using cellA23B8_check
  · simpa only [show rowA23 9 = cellA23B9 from rfl] using cellA23B9_check
  · simpa only [show rowA23 10 = cellA23B10 from rfl] using cellA23B10_check
  · simpa only [show rowA23 11 = cellA23B11 from rfl] using cellA23B11_check
  · simpa only [show rowA23 12 = cellA23B12 from rfl] using cellA23B12_check
  · simpa only [show rowA23 13 = cellA23B13 from rfl] using cellA23B13_check
  · simpa only [show rowA23 14 = cellA23B14 from rfl] using cellA23B14_check
  · simpa only [show rowA23 15 = cellA23B15 from rfl] using cellA23B15_check
  · simpa only [show rowA23 16 = cellA23B16 from rfl] using cellA23B16_check
  · simpa only [show rowA23 17 = cellA23B17 from rfl] using cellA23B17_check

theorem rowA23_block_check :
    blockCheck 2 3 Stage03.H Stage03.M Stage03.upper 23 1 1 17 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 23 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA23_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 23 b = rowA23 b from rfl] using h

end Math.B699.CRTStage3Pair23.Chunk002

#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B1_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B2_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B3_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B4_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B5_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B6_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B7_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B8_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B9_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B10_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B11_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B12_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B13_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B14_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B15_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B16_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA23B17_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.rowA23_cell_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.rowA23_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair23.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA24B1_check :
    cellCheck (2 ^ 24) (3 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 1)) Stage03.upper cellA24B1 = true := by
  decide +kernel

theorem cellA24B2_check :
    cellCheck (2 ^ 24) (3 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 2)) Stage03.upper cellA24B2 = true := by
  decide +kernel

theorem cellA24B3_check :
    cellCheck (2 ^ 24) (3 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 3)) Stage03.upper cellA24B3 = true := by
  decide +kernel

theorem cellA24B4_check :
    cellCheck (2 ^ 24) (3 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 4)) Stage03.upper cellA24B4 = true := by
  decide +kernel

theorem cellA24B5_check :
    cellCheck (2 ^ 24) (3 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 5)) Stage03.upper cellA24B5 = true := by
  decide +kernel

theorem cellA24B6_check :
    cellCheck (2 ^ 24) (3 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 6)) Stage03.upper cellA24B6 = true := by
  decide +kernel

theorem cellA24B7_check :
    cellCheck (2 ^ 24) (3 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 7)) Stage03.upper cellA24B7 = true := by
  decide +kernel

theorem cellA24B8_check :
    cellCheck (2 ^ 24) (3 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 8)) Stage03.upper cellA24B8 = true := by
  decide +kernel

theorem cellA24B9_check :
    cellCheck (2 ^ 24) (3 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 9)) Stage03.upper cellA24B9 = true := by
  decide +kernel

theorem cellA24B10_check :
    cellCheck (2 ^ 24) (3 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 10)) Stage03.upper cellA24B10 = true := by
  decide +kernel

theorem cellA24B11_check :
    cellCheck (2 ^ 24) (3 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 11)) Stage03.upper cellA24B11 = true := by
  decide +kernel

theorem cellA24B12_check :
    cellCheck (2 ^ 24) (3 ^ 12)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 12)) Stage03.upper cellA24B12 = true := by
  decide +kernel

theorem cellA24B13_check :
    cellCheck (2 ^ 24) (3 ^ 13)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 13)) Stage03.upper cellA24B13 = true := by
  decide +kernel

theorem cellA24B14_check :
    cellCheck (2 ^ 24) (3 ^ 14)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 14)) Stage03.upper cellA24B14 = true := by
  decide +kernel

theorem cellA24B15_check :
    cellCheck (2 ^ 24) (3 ^ 15)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 15)) Stage03.upper cellA24B15 = true := by
  decide +kernel

theorem cellA24B16_check :
    cellCheck (2 ^ 24) (3 ^ 16)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 16)) Stage03.upper cellA24B16 = true := by
  decide +kernel

theorem cellA24B17_check :
    cellCheck (2 ^ 24) (3 ^ 17)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ 17)) Stage03.upper cellA24B17 = true := by
  decide +kernel

theorem rowA24_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 17) :
    cellCheck (2 ^ 24) (3 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (3 ^ b)) Stage03.upper (rowA24 b) = true := by
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
  · simpa only [show rowA24 17 = cellA24B17 from rfl] using cellA24B17_check

theorem rowA24_block_check :
    blockCheck 2 3 Stage03.H Stage03.M Stage03.upper 24 1 1 17 chunkData = true := by
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

end Math.B699.CRTStage3Pair23.Chunk002

#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B1_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B2_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B3_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B4_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B5_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B6_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B7_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B8_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B9_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B10_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B11_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B12_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B13_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B14_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B15_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B16_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA24B17_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.rowA24_cell_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.rowA24_block_check
