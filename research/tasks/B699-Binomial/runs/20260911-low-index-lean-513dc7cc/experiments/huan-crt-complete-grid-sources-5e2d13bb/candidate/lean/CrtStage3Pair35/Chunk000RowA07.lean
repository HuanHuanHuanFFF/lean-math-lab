import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair35.Chunk000Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair35.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA7B1_check :
    cellCheck (3 ^ 7) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (3 ^ 7))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA7B1 = true := by
  decide +kernel

theorem cellA7B2_check :
    cellCheck (3 ^ 7) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (3 ^ 7))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA7B2 = true := by
  decide +kernel

theorem cellA7B3_check :
    cellCheck (3 ^ 7) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (3 ^ 7))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA7B3 = true := by
  decide +kernel

theorem cellA7B4_check :
    cellCheck (3 ^ 7) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (3 ^ 7))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA7B4 = true := by
  decide +kernel

theorem cellA7B5_check :
    cellCheck (3 ^ 7) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (3 ^ 7))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA7B5 = true := by
  decide +kernel

theorem cellA7B6_check :
    cellCheck (3 ^ 7) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (3 ^ 7))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA7B6 = true := by
  decide +kernel

theorem cellA7B7_check :
    cellCheck (3 ^ 7) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (3 ^ 7))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA7B7 = true := by
  decide +kernel

theorem cellA7B8_check :
    cellCheck (3 ^ 7) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (3 ^ 7))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA7B8 = true := by
  decide +kernel

theorem cellA7B9_check :
    cellCheck (3 ^ 7) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (3 ^ 7))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA7B9 = true := by
  decide +kernel

theorem cellA7B10_check :
    cellCheck (3 ^ 7) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (3 ^ 7))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA7B10 = true := by
  decide +kernel

theorem cellA7B11_check :
    cellCheck (3 ^ 7) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (3 ^ 7))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA7B11 = true := by
  decide +kernel

theorem rowA7_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (3 ^ 7) (5 ^ b)
      (heightCap Stage03.H Stage03.M (3 ^ 7))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA7 b) = true := by
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

theorem rowA7_block_check :
    blockCheck 3 5 Stage03.H Stage03.M Stage03.upper 7 1 1 11 chunkData = true := by
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

end Math.B699.CRTStage3Pair35.Chunk000

#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA7B1_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA7B2_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA7B3_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA7B4_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA7B5_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA7B6_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA7B7_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA7B8_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA7B9_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA7B10_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA7B11_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.rowA7_cell_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.rowA7_block_check
