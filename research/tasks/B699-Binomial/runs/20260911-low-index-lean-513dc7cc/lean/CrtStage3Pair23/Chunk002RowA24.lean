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
