import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair23.Chunk000Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair23.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA7B1_check :
    cellCheck (2 ^ 7) (3 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 1)) Stage03.upper cellA7B1 = true := by
  decide +kernel

theorem cellA7B2_check :
    cellCheck (2 ^ 7) (3 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 2)) Stage03.upper cellA7B2 = true := by
  decide +kernel

theorem cellA7B3_check :
    cellCheck (2 ^ 7) (3 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 3)) Stage03.upper cellA7B3 = true := by
  decide +kernel

theorem cellA7B4_check :
    cellCheck (2 ^ 7) (3 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 4)) Stage03.upper cellA7B4 = true := by
  decide +kernel

theorem cellA7B5_check :
    cellCheck (2 ^ 7) (3 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 5)) Stage03.upper cellA7B5 = true := by
  decide +kernel

theorem cellA7B6_check :
    cellCheck (2 ^ 7) (3 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 6)) Stage03.upper cellA7B6 = true := by
  decide +kernel

theorem cellA7B7_check :
    cellCheck (2 ^ 7) (3 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 7)) Stage03.upper cellA7B7 = true := by
  decide +kernel

theorem cellA7B8_check :
    cellCheck (2 ^ 7) (3 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 8)) Stage03.upper cellA7B8 = true := by
  decide +kernel

theorem cellA7B9_check :
    cellCheck (2 ^ 7) (3 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 9)) Stage03.upper cellA7B9 = true := by
  decide +kernel

theorem cellA7B10_check :
    cellCheck (2 ^ 7) (3 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 10)) Stage03.upper cellA7B10 = true := by
  decide +kernel

theorem cellA7B11_check :
    cellCheck (2 ^ 7) (3 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 11)) Stage03.upper cellA7B11 = true := by
  decide +kernel

theorem cellA7B12_check :
    cellCheck (2 ^ 7) (3 ^ 12)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 12)) Stage03.upper cellA7B12 = true := by
  decide +kernel

theorem cellA7B13_check :
    cellCheck (2 ^ 7) (3 ^ 13)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 13)) Stage03.upper cellA7B13 = true := by
  decide +kernel

theorem cellA7B14_check :
    cellCheck (2 ^ 7) (3 ^ 14)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 14)) Stage03.upper cellA7B14 = true := by
  decide +kernel

theorem cellA7B15_check :
    cellCheck (2 ^ 7) (3 ^ 15)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 15)) Stage03.upper cellA7B15 = true := by
  decide +kernel

theorem cellA7B16_check :
    cellCheck (2 ^ 7) (3 ^ 16)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 16)) Stage03.upper cellA7B16 = true := by
  decide +kernel

theorem cellA7B17_check :
    cellCheck (2 ^ 7) (3 ^ 17)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ 17)) Stage03.upper cellA7B17 = true := by
  decide +kernel

theorem rowA7_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 17) :
    cellCheck (2 ^ 7) (3 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 7))
      (heightCap Stage03.H Stage03.M (3 ^ b)) Stage03.upper (rowA7 b) = true := by
  interval_cases b
  · simpa only [show rowA7 1 = cellA7B1 from rfl] using cellA7B1_check
  · simpa only [show rowA7 2 = cellA7B2 from rfl] using cellA7B2_check
  · simpa only [show rowA7 3 = cellA7B3 from rfl] using cellA7B3_check
  · simpa only [show rowA7 4 = cellA7B4 from rfl] using cellA7B4_check
  · simpa only [show rowA7 5 = cellA7B5 from rfl] using cellA7B5_check
  · simpa only [show rowA7 6 = cellA7B6 from rfl] using cellA7B6_check
  · simpa only [show rowA7 7 = cellA7B7 from rfl] using cellA7B7_check
  · simpa only [show rowA7 8 = cellA7B8 from rfl] using cellA7B8_check
  · simpa only [show rowA7 9 = cellA7B9 from rfl] using cellA7B9_check
  · simpa only [show rowA7 10 = cellA7B10 from rfl] using cellA7B10_check
  · simpa only [show rowA7 11 = cellA7B11 from rfl] using cellA7B11_check
  · simpa only [show rowA7 12 = cellA7B12 from rfl] using cellA7B12_check
  · simpa only [show rowA7 13 = cellA7B13 from rfl] using cellA7B13_check
  · simpa only [show rowA7 14 = cellA7B14 from rfl] using cellA7B14_check
  · simpa only [show rowA7 15 = cellA7B15 from rfl] using cellA7B15_check
  · simpa only [show rowA7 16 = cellA7B16 from rfl] using cellA7B16_check
  · simpa only [show rowA7 17 = cellA7B17 from rfl] using cellA7B17_check

theorem rowA7_block_check :
    blockCheck 2 3 Stage03.H Stage03.M Stage03.upper 7 1 1 17 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 7 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA7_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 7 b = rowA7 b from rfl] using h

end Math.B699.CRTStage3Pair23.Chunk000

#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B1_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B2_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B3_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B4_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B5_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B6_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B7_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B8_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B9_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B10_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B11_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B12_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B13_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B14_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B15_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B16_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA7B17_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.rowA7_cell_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.rowA7_block_check
