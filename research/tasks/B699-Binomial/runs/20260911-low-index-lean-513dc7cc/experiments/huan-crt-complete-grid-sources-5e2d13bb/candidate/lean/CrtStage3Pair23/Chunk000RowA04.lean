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

theorem cellA4B1_check :
    cellCheck (2 ^ 4) (3 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 1)) Stage03.upper cellA4B1 = true := by
  decide +kernel

theorem cellA4B2_check :
    cellCheck (2 ^ 4) (3 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 2)) Stage03.upper cellA4B2 = true := by
  decide +kernel

theorem cellA4B3_check :
    cellCheck (2 ^ 4) (3 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 3)) Stage03.upper cellA4B3 = true := by
  decide +kernel

theorem cellA4B4_check :
    cellCheck (2 ^ 4) (3 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 4)) Stage03.upper cellA4B4 = true := by
  decide +kernel

theorem cellA4B5_check :
    cellCheck (2 ^ 4) (3 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 5)) Stage03.upper cellA4B5 = true := by
  decide +kernel

theorem cellA4B6_check :
    cellCheck (2 ^ 4) (3 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 6)) Stage03.upper cellA4B6 = true := by
  decide +kernel

theorem cellA4B7_check :
    cellCheck (2 ^ 4) (3 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 7)) Stage03.upper cellA4B7 = true := by
  decide +kernel

theorem cellA4B8_check :
    cellCheck (2 ^ 4) (3 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 8)) Stage03.upper cellA4B8 = true := by
  decide +kernel

theorem cellA4B9_check :
    cellCheck (2 ^ 4) (3 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 9)) Stage03.upper cellA4B9 = true := by
  decide +kernel

theorem cellA4B10_check :
    cellCheck (2 ^ 4) (3 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 10)) Stage03.upper cellA4B10 = true := by
  decide +kernel

theorem cellA4B11_check :
    cellCheck (2 ^ 4) (3 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 11)) Stage03.upper cellA4B11 = true := by
  decide +kernel

theorem cellA4B12_check :
    cellCheck (2 ^ 4) (3 ^ 12)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 12)) Stage03.upper cellA4B12 = true := by
  decide +kernel

theorem cellA4B13_check :
    cellCheck (2 ^ 4) (3 ^ 13)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 13)) Stage03.upper cellA4B13 = true := by
  decide +kernel

theorem cellA4B14_check :
    cellCheck (2 ^ 4) (3 ^ 14)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 14)) Stage03.upper cellA4B14 = true := by
  decide +kernel

theorem cellA4B15_check :
    cellCheck (2 ^ 4) (3 ^ 15)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 15)) Stage03.upper cellA4B15 = true := by
  decide +kernel

theorem cellA4B16_check :
    cellCheck (2 ^ 4) (3 ^ 16)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 16)) Stage03.upper cellA4B16 = true := by
  decide +kernel

theorem cellA4B17_check :
    cellCheck (2 ^ 4) (3 ^ 17)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ 17)) Stage03.upper cellA4B17 = true := by
  decide +kernel

theorem rowA4_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 17) :
    cellCheck (2 ^ 4) (3 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (3 ^ b)) Stage03.upper (rowA4 b) = true := by
  interval_cases b
  · simpa only [show rowA4 1 = cellA4B1 from rfl] using cellA4B1_check
  · simpa only [show rowA4 2 = cellA4B2 from rfl] using cellA4B2_check
  · simpa only [show rowA4 3 = cellA4B3 from rfl] using cellA4B3_check
  · simpa only [show rowA4 4 = cellA4B4 from rfl] using cellA4B4_check
  · simpa only [show rowA4 5 = cellA4B5 from rfl] using cellA4B5_check
  · simpa only [show rowA4 6 = cellA4B6 from rfl] using cellA4B6_check
  · simpa only [show rowA4 7 = cellA4B7 from rfl] using cellA4B7_check
  · simpa only [show rowA4 8 = cellA4B8 from rfl] using cellA4B8_check
  · simpa only [show rowA4 9 = cellA4B9 from rfl] using cellA4B9_check
  · simpa only [show rowA4 10 = cellA4B10 from rfl] using cellA4B10_check
  · simpa only [show rowA4 11 = cellA4B11 from rfl] using cellA4B11_check
  · simpa only [show rowA4 12 = cellA4B12 from rfl] using cellA4B12_check
  · simpa only [show rowA4 13 = cellA4B13 from rfl] using cellA4B13_check
  · simpa only [show rowA4 14 = cellA4B14 from rfl] using cellA4B14_check
  · simpa only [show rowA4 15 = cellA4B15 from rfl] using cellA4B15_check
  · simpa only [show rowA4 16 = cellA4B16 from rfl] using cellA4B16_check
  · simpa only [show rowA4 17 = cellA4B17 from rfl] using cellA4B17_check

theorem rowA4_block_check :
    blockCheck 2 3 Stage03.H Stage03.M Stage03.upper 4 1 1 17 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 4 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA4_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 4 b = rowA4 b from rfl] using h

end Math.B699.CRTStage3Pair23.Chunk000

#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B1_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B2_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B3_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B4_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B5_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B6_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B7_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B8_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B9_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B10_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B11_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B12_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B13_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B14_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B15_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B16_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.cellA4B17_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.rowA4_cell_check
#print axioms Math.B699.CRTStage3Pair23.Chunk000.rowA4_block_check
