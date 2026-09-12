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

theorem cellA2B1_check :
    cellCheck (3 ^ 2) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (3 ^ 2))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA2B1 = true := by
  decide +kernel

theorem cellA2B2_check :
    cellCheck (3 ^ 2) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (3 ^ 2))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA2B2 = true := by
  decide +kernel

theorem cellA2B3_check :
    cellCheck (3 ^ 2) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (3 ^ 2))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA2B3 = true := by
  decide +kernel

theorem cellA2B4_check :
    cellCheck (3 ^ 2) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (3 ^ 2))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA2B4 = true := by
  decide +kernel

theorem cellA2B5_check :
    cellCheck (3 ^ 2) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (3 ^ 2))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA2B5 = true := by
  decide +kernel

theorem cellA2B6_check :
    cellCheck (3 ^ 2) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (3 ^ 2))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA2B6 = true := by
  decide +kernel

theorem cellA2B7_check :
    cellCheck (3 ^ 2) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (3 ^ 2))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA2B7 = true := by
  decide +kernel

theorem cellA2B8_check :
    cellCheck (3 ^ 2) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (3 ^ 2))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA2B8 = true := by
  decide +kernel

theorem cellA2B9_check :
    cellCheck (3 ^ 2) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (3 ^ 2))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA2B9 = true := by
  decide +kernel

theorem cellA2B10_check :
    cellCheck (3 ^ 2) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (3 ^ 2))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA2B10 = true := by
  decide +kernel

theorem cellA2B11_check :
    cellCheck (3 ^ 2) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (3 ^ 2))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA2B11 = true := by
  decide +kernel

theorem rowA2_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (3 ^ 2) (5 ^ b)
      (heightCap Stage03.H Stage03.M (3 ^ 2))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA2 b) = true := by
  interval_cases b
  · simpa only [show rowA2 1 = cellA2B1 from rfl] using cellA2B1_check
  · simpa only [show rowA2 2 = cellA2B2 from rfl] using cellA2B2_check
  · simpa only [show rowA2 3 = cellA2B3 from rfl] using cellA2B3_check
  · simpa only [show rowA2 4 = cellA2B4 from rfl] using cellA2B4_check
  · simpa only [show rowA2 5 = cellA2B5 from rfl] using cellA2B5_check
  · simpa only [show rowA2 6 = cellA2B6 from rfl] using cellA2B6_check
  · simpa only [show rowA2 7 = cellA2B7 from rfl] using cellA2B7_check
  · simpa only [show rowA2 8 = cellA2B8 from rfl] using cellA2B8_check
  · simpa only [show rowA2 9 = cellA2B9 from rfl] using cellA2B9_check
  · simpa only [show rowA2 10 = cellA2B10 from rfl] using cellA2B10_check
  · simpa only [show rowA2 11 = cellA2B11 from rfl] using cellA2B11_check

theorem rowA2_block_check :
    blockCheck 3 5 Stage03.H Stage03.M Stage03.upper 2 1 1 11 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 2 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA2_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 2 b = rowA2 b from rfl] using h

end Math.B699.CRTStage3Pair35.Chunk000

#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA2B1_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA2B2_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA2B3_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA2B4_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA2B5_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA2B6_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA2B7_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA2B8_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA2B9_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA2B10_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.cellA2B11_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.rowA2_cell_check
#print axioms Math.B699.CRTStage3Pair35.Chunk000.rowA2_block_check
