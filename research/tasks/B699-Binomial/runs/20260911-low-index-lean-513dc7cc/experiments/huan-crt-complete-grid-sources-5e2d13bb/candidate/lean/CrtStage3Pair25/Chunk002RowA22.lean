import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair25.Chunk002Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair25.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA22B1_check :
    cellCheck (2 ^ 22) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA22B1 = true := by
  decide +kernel

theorem cellA22B2_check :
    cellCheck (2 ^ 22) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA22B2 = true := by
  decide +kernel

theorem cellA22B3_check :
    cellCheck (2 ^ 22) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA22B3 = true := by
  decide +kernel

theorem cellA22B4_check :
    cellCheck (2 ^ 22) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA22B4 = true := by
  decide +kernel

theorem cellA22B5_check :
    cellCheck (2 ^ 22) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA22B5 = true := by
  decide +kernel

theorem cellA22B6_check :
    cellCheck (2 ^ 22) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA22B6 = true := by
  decide +kernel

theorem cellA22B7_check :
    cellCheck (2 ^ 22) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA22B7 = true := by
  decide +kernel

theorem cellA22B8_check :
    cellCheck (2 ^ 22) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA22B8 = true := by
  decide +kernel

theorem cellA22B9_check :
    cellCheck (2 ^ 22) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA22B9 = true := by
  decide +kernel

theorem cellA22B10_check :
    cellCheck (2 ^ 22) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA22B10 = true := by
  decide +kernel

theorem cellA22B11_check :
    cellCheck (2 ^ 22) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA22B11 = true := by
  decide +kernel

theorem rowA22_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (2 ^ 22) (5 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA22 b) = true := by
  interval_cases b
  · simpa only [show rowA22 1 = cellA22B1 from rfl] using cellA22B1_check
  · simpa only [show rowA22 2 = cellA22B2 from rfl] using cellA22B2_check
  · simpa only [show rowA22 3 = cellA22B3 from rfl] using cellA22B3_check
  · simpa only [show rowA22 4 = cellA22B4 from rfl] using cellA22B4_check
  · simpa only [show rowA22 5 = cellA22B5 from rfl] using cellA22B5_check
  · simpa only [show rowA22 6 = cellA22B6 from rfl] using cellA22B6_check
  · simpa only [show rowA22 7 = cellA22B7 from rfl] using cellA22B7_check
  · simpa only [show rowA22 8 = cellA22B8 from rfl] using cellA22B8_check
  · simpa only [show rowA22 9 = cellA22B9 from rfl] using cellA22B9_check
  · simpa only [show rowA22 10 = cellA22B10 from rfl] using cellA22B10_check
  · simpa only [show rowA22 11 = cellA22B11 from rfl] using cellA22B11_check

theorem rowA22_block_check :
    blockCheck 2 5 Stage03.H Stage03.M Stage03.upper 22 1 1 11 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 22 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA22_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 22 b = rowA22 b from rfl] using h

end Math.B699.CRTStage3Pair25.Chunk002

#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B1_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B2_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B3_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B4_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B5_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B6_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B7_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B8_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B9_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B10_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B11_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA22_cell_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA22_block_check
