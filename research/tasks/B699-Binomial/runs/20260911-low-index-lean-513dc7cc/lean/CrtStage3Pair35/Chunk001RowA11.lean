import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair35.Chunk001Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair35.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA11B1_check :
    cellCheck (3 ^ 11) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (3 ^ 11))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA11B1 = true := by
  decide +kernel

theorem cellA11B2_check :
    cellCheck (3 ^ 11) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (3 ^ 11))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA11B2 = true := by
  decide +kernel

theorem cellA11B3_check :
    cellCheck (3 ^ 11) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (3 ^ 11))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA11B3 = true := by
  decide +kernel

theorem cellA11B4_check :
    cellCheck (3 ^ 11) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (3 ^ 11))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA11B4 = true := by
  decide +kernel

theorem cellA11B5_check :
    cellCheck (3 ^ 11) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (3 ^ 11))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA11B5 = true := by
  decide +kernel

theorem cellA11B6_check :
    cellCheck (3 ^ 11) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (3 ^ 11))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA11B6 = true := by
  decide +kernel

theorem cellA11B7_check :
    cellCheck (3 ^ 11) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (3 ^ 11))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA11B7 = true := by
  decide +kernel

theorem cellA11B8_check :
    cellCheck (3 ^ 11) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (3 ^ 11))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA11B8 = true := by
  decide +kernel

theorem cellA11B9_check :
    cellCheck (3 ^ 11) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (3 ^ 11))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA11B9 = true := by
  decide +kernel

theorem cellA11B10_check :
    cellCheck (3 ^ 11) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (3 ^ 11))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA11B10 = true := by
  decide +kernel

theorem cellA11B11_check :
    cellCheck (3 ^ 11) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (3 ^ 11))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA11B11 = true := by
  decide +kernel

theorem rowA11_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (3 ^ 11) (5 ^ b)
      (heightCap Stage03.H Stage03.M (3 ^ 11))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA11 b) = true := by
  interval_cases b
  · simpa only [show rowA11 1 = cellA11B1 from rfl] using cellA11B1_check
  · simpa only [show rowA11 2 = cellA11B2 from rfl] using cellA11B2_check
  · simpa only [show rowA11 3 = cellA11B3 from rfl] using cellA11B3_check
  · simpa only [show rowA11 4 = cellA11B4 from rfl] using cellA11B4_check
  · simpa only [show rowA11 5 = cellA11B5 from rfl] using cellA11B5_check
  · simpa only [show rowA11 6 = cellA11B6 from rfl] using cellA11B6_check
  · simpa only [show rowA11 7 = cellA11B7 from rfl] using cellA11B7_check
  · simpa only [show rowA11 8 = cellA11B8 from rfl] using cellA11B8_check
  · simpa only [show rowA11 9 = cellA11B9 from rfl] using cellA11B9_check
  · simpa only [show rowA11 10 = cellA11B10 from rfl] using cellA11B10_check
  · simpa only [show rowA11 11 = cellA11B11 from rfl] using cellA11B11_check

theorem rowA11_block_check :
    blockCheck 3 5 Stage03.H Stage03.M Stage03.upper 11 1 1 11 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 11 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA11_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 11 b = rowA11 b from rfl] using h

end Math.B699.CRTStage3Pair35.Chunk001

#print axioms Math.B699.CRTStage3Pair35.Chunk001.cellA11B1_check
#print axioms Math.B699.CRTStage3Pair35.Chunk001.cellA11B2_check
#print axioms Math.B699.CRTStage3Pair35.Chunk001.cellA11B3_check
#print axioms Math.B699.CRTStage3Pair35.Chunk001.cellA11B4_check
#print axioms Math.B699.CRTStage3Pair35.Chunk001.cellA11B5_check
#print axioms Math.B699.CRTStage3Pair35.Chunk001.cellA11B6_check
#print axioms Math.B699.CRTStage3Pair35.Chunk001.cellA11B7_check
#print axioms Math.B699.CRTStage3Pair35.Chunk001.cellA11B8_check
#print axioms Math.B699.CRTStage3Pair35.Chunk001.cellA11B9_check
#print axioms Math.B699.CRTStage3Pair35.Chunk001.cellA11B10_check
#print axioms Math.B699.CRTStage3Pair35.Chunk001.cellA11B11_check
#print axioms Math.B699.CRTStage3Pair35.Chunk001.rowA11_cell_check
#print axioms Math.B699.CRTStage3Pair35.Chunk001.rowA11_block_check
