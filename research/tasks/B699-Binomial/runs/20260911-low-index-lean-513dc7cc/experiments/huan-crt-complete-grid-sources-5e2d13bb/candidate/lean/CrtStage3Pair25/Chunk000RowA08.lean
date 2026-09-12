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

theorem cellA8B1_check :
    cellCheck (2 ^ 8) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 8))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA8B1 = true := by
  decide +kernel

theorem cellA8B2_check :
    cellCheck (2 ^ 8) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 8))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA8B2 = true := by
  decide +kernel

theorem cellA8B3_check :
    cellCheck (2 ^ 8) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 8))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA8B3 = true := by
  decide +kernel

theorem cellA8B4_check :
    cellCheck (2 ^ 8) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 8))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA8B4 = true := by
  decide +kernel

theorem cellA8B5_check :
    cellCheck (2 ^ 8) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 8))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA8B5 = true := by
  decide +kernel

theorem cellA8B6_check :
    cellCheck (2 ^ 8) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 8))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA8B6 = true := by
  decide +kernel

theorem cellA8B7_check :
    cellCheck (2 ^ 8) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 8))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA8B7 = true := by
  decide +kernel

theorem cellA8B8_check :
    cellCheck (2 ^ 8) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 8))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA8B8 = true := by
  decide +kernel

theorem cellA8B9_check :
    cellCheck (2 ^ 8) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 8))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA8B9 = true := by
  decide +kernel

theorem cellA8B10_check :
    cellCheck (2 ^ 8) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 8))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA8B10 = true := by
  decide +kernel

theorem cellA8B11_check :
    cellCheck (2 ^ 8) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 8))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA8B11 = true := by
  decide +kernel

theorem rowA8_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (2 ^ 8) (5 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 8))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA8 b) = true := by
  interval_cases b
  · simpa only [show rowA8 1 = cellA8B1 from rfl] using cellA8B1_check
  · simpa only [show rowA8 2 = cellA8B2 from rfl] using cellA8B2_check
  · simpa only [show rowA8 3 = cellA8B3 from rfl] using cellA8B3_check
  · simpa only [show rowA8 4 = cellA8B4 from rfl] using cellA8B4_check
  · simpa only [show rowA8 5 = cellA8B5 from rfl] using cellA8B5_check
  · simpa only [show rowA8 6 = cellA8B6 from rfl] using cellA8B6_check
  · simpa only [show rowA8 7 = cellA8B7 from rfl] using cellA8B7_check
  · simpa only [show rowA8 8 = cellA8B8 from rfl] using cellA8B8_check
  · simpa only [show rowA8 9 = cellA8B9 from rfl] using cellA8B9_check
  · simpa only [show rowA8 10 = cellA8B10 from rfl] using cellA8B10_check
  · simpa only [show rowA8 11 = cellA8B11 from rfl] using cellA8B11_check

theorem rowA8_block_check :
    blockCheck 2 5 Stage03.H Stage03.M Stage03.upper 8 1 1 11 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 8 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA8_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 8 b = rowA8 b from rfl] using h

end Math.B699.CRTStage3Pair25.Chunk000

#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA8B1_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA8B2_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA8B3_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA8B4_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA8B5_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA8B6_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA8B7_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA8B8_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA8B9_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA8B10_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA8B11_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.rowA8_cell_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.rowA8_block_check
