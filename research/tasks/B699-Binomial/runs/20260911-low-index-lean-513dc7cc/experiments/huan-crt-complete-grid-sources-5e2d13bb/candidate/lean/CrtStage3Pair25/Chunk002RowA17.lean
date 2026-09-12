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

theorem cellA17B1_check :
    cellCheck (2 ^ 17) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA17B1 = true := by
  decide +kernel

theorem cellA17B2_check :
    cellCheck (2 ^ 17) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA17B2 = true := by
  decide +kernel

theorem cellA17B3_check :
    cellCheck (2 ^ 17) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA17B3 = true := by
  decide +kernel

theorem cellA17B4_check :
    cellCheck (2 ^ 17) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA17B4 = true := by
  decide +kernel

theorem cellA17B5_check :
    cellCheck (2 ^ 17) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA17B5 = true := by
  decide +kernel

theorem cellA17B6_check :
    cellCheck (2 ^ 17) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA17B6 = true := by
  decide +kernel

theorem cellA17B7_check :
    cellCheck (2 ^ 17) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA17B7 = true := by
  decide +kernel

theorem cellA17B8_check :
    cellCheck (2 ^ 17) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA17B8 = true := by
  decide +kernel

theorem cellA17B9_check :
    cellCheck (2 ^ 17) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA17B9 = true := by
  decide +kernel

theorem cellA17B10_check :
    cellCheck (2 ^ 17) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA17B10 = true := by
  decide +kernel

theorem cellA17B11_check :
    cellCheck (2 ^ 17) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA17B11 = true := by
  decide +kernel

theorem rowA17_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (2 ^ 17) (5 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA17 b) = true := by
  interval_cases b
  · simpa only [show rowA17 1 = cellA17B1 from rfl] using cellA17B1_check
  · simpa only [show rowA17 2 = cellA17B2 from rfl] using cellA17B2_check
  · simpa only [show rowA17 3 = cellA17B3 from rfl] using cellA17B3_check
  · simpa only [show rowA17 4 = cellA17B4 from rfl] using cellA17B4_check
  · simpa only [show rowA17 5 = cellA17B5 from rfl] using cellA17B5_check
  · simpa only [show rowA17 6 = cellA17B6 from rfl] using cellA17B6_check
  · simpa only [show rowA17 7 = cellA17B7 from rfl] using cellA17B7_check
  · simpa only [show rowA17 8 = cellA17B8 from rfl] using cellA17B8_check
  · simpa only [show rowA17 9 = cellA17B9 from rfl] using cellA17B9_check
  · simpa only [show rowA17 10 = cellA17B10 from rfl] using cellA17B10_check
  · simpa only [show rowA17 11 = cellA17B11 from rfl] using cellA17B11_check

theorem rowA17_block_check :
    blockCheck 2 5 Stage03.H Stage03.M Stage03.upper 17 1 1 11 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 17 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA17_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 17 b = rowA17 b from rfl] using h

end Math.B699.CRTStage3Pair25.Chunk002

#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B1_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B2_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B3_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B4_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B5_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B6_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B7_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B8_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B9_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B10_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B11_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA17_cell_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA17_block_check
