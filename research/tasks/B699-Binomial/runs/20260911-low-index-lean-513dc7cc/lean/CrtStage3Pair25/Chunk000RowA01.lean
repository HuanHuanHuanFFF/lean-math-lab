import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair25.Chunk000Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair25.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA1B1_check :
    cellCheck (2 ^ 1) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 1))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA1B1 = true := by
  decide +kernel

theorem cellA1B2_check :
    cellCheck (2 ^ 1) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 1))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA1B2 = true := by
  decide +kernel

theorem cellA1B3_check :
    cellCheck (2 ^ 1) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 1))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA1B3 = true := by
  decide +kernel

theorem cellA1B4_check :
    cellCheck (2 ^ 1) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 1))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA1B4 = true := by
  decide +kernel

theorem cellA1B5_check :
    cellCheck (2 ^ 1) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 1))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA1B5 = true := by
  decide +kernel

theorem cellA1B6_check :
    cellCheck (2 ^ 1) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 1))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA1B6 = true := by
  decide +kernel

theorem cellA1B7_check :
    cellCheck (2 ^ 1) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 1))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA1B7 = true := by
  decide +kernel

theorem cellA1B8_check :
    cellCheck (2 ^ 1) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 1))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA1B8 = true := by
  decide +kernel

theorem cellA1B9_check :
    cellCheck (2 ^ 1) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 1))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA1B9 = true := by
  decide +kernel

theorem cellA1B10_check :
    cellCheck (2 ^ 1) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 1))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA1B10 = true := by
  decide +kernel

theorem cellA1B11_check :
    cellCheck (2 ^ 1) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 1))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA1B11 = true := by
  decide +kernel

theorem rowA1_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (2 ^ 1) (5 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 1))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA1 b) = true := by
  interval_cases b
  · simpa only [show rowA1 1 = cellA1B1 from rfl] using cellA1B1_check
  · simpa only [show rowA1 2 = cellA1B2 from rfl] using cellA1B2_check
  · simpa only [show rowA1 3 = cellA1B3 from rfl] using cellA1B3_check
  · simpa only [show rowA1 4 = cellA1B4 from rfl] using cellA1B4_check
  · simpa only [show rowA1 5 = cellA1B5 from rfl] using cellA1B5_check
  · simpa only [show rowA1 6 = cellA1B6 from rfl] using cellA1B6_check
  · simpa only [show rowA1 7 = cellA1B7 from rfl] using cellA1B7_check
  · simpa only [show rowA1 8 = cellA1B8 from rfl] using cellA1B8_check
  · simpa only [show rowA1 9 = cellA1B9 from rfl] using cellA1B9_check
  · simpa only [show rowA1 10 = cellA1B10 from rfl] using cellA1B10_check
  · simpa only [show rowA1 11 = cellA1B11 from rfl] using cellA1B11_check

theorem rowA1_block_check :
    blockCheck 2 5 Stage03.H Stage03.M Stage03.upper 1 1 1 11 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 1 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA1_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 1 b = rowA1 b from rfl] using h

end Math.B699.CRTStage3Pair25.Chunk000

#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA1B1_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA1B2_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA1B3_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA1B4_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA1B5_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA1B6_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA1B7_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA1B8_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA1B9_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA1B10_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA1B11_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.rowA1_cell_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.rowA1_block_check
