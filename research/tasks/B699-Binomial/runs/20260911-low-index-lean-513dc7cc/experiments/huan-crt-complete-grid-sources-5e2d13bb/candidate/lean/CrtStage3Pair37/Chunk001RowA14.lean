import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair37.Chunk001Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair37.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA14B1_check :
    cellCheck (3 ^ 14) (7 ^ 1)
      (heightCap Stage03.H Stage03.M (3 ^ 14))
      (heightCap Stage03.H Stage03.M (7 ^ 1)) Stage03.upper cellA14B1 = true := by
  decide +kernel

theorem cellA14B2_check :
    cellCheck (3 ^ 14) (7 ^ 2)
      (heightCap Stage03.H Stage03.M (3 ^ 14))
      (heightCap Stage03.H Stage03.M (7 ^ 2)) Stage03.upper cellA14B2 = true := by
  decide +kernel

theorem cellA14B3_check :
    cellCheck (3 ^ 14) (7 ^ 3)
      (heightCap Stage03.H Stage03.M (3 ^ 14))
      (heightCap Stage03.H Stage03.M (7 ^ 3)) Stage03.upper cellA14B3 = true := by
  decide +kernel

theorem cellA14B4_check :
    cellCheck (3 ^ 14) (7 ^ 4)
      (heightCap Stage03.H Stage03.M (3 ^ 14))
      (heightCap Stage03.H Stage03.M (7 ^ 4)) Stage03.upper cellA14B4 = true := by
  decide +kernel

theorem cellA14B5_check :
    cellCheck (3 ^ 14) (7 ^ 5)
      (heightCap Stage03.H Stage03.M (3 ^ 14))
      (heightCap Stage03.H Stage03.M (7 ^ 5)) Stage03.upper cellA14B5 = true := by
  decide +kernel

theorem cellA14B6_check :
    cellCheck (3 ^ 14) (7 ^ 6)
      (heightCap Stage03.H Stage03.M (3 ^ 14))
      (heightCap Stage03.H Stage03.M (7 ^ 6)) Stage03.upper cellA14B6 = true := by
  decide +kernel

theorem cellA14B7_check :
    cellCheck (3 ^ 14) (7 ^ 7)
      (heightCap Stage03.H Stage03.M (3 ^ 14))
      (heightCap Stage03.H Stage03.M (7 ^ 7)) Stage03.upper cellA14B7 = true := by
  decide +kernel

theorem cellA14B8_check :
    cellCheck (3 ^ 14) (7 ^ 8)
      (heightCap Stage03.H Stage03.M (3 ^ 14))
      (heightCap Stage03.H Stage03.M (7 ^ 8)) Stage03.upper cellA14B8 = true := by
  decide +kernel

theorem cellA14B9_check :
    cellCheck (3 ^ 14) (7 ^ 9)
      (heightCap Stage03.H Stage03.M (3 ^ 14))
      (heightCap Stage03.H Stage03.M (7 ^ 9)) Stage03.upper cellA14B9 = true := by
  decide +kernel

theorem rowA14_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 9) :
    cellCheck (3 ^ 14) (7 ^ b)
      (heightCap Stage03.H Stage03.M (3 ^ 14))
      (heightCap Stage03.H Stage03.M (7 ^ b)) Stage03.upper (rowA14 b) = true := by
  interval_cases b
  · simpa only [show rowA14 1 = cellA14B1 from rfl] using cellA14B1_check
  · simpa only [show rowA14 2 = cellA14B2 from rfl] using cellA14B2_check
  · simpa only [show rowA14 3 = cellA14B3 from rfl] using cellA14B3_check
  · simpa only [show rowA14 4 = cellA14B4 from rfl] using cellA14B4_check
  · simpa only [show rowA14 5 = cellA14B5 from rfl] using cellA14B5_check
  · simpa only [show rowA14 6 = cellA14B6 from rfl] using cellA14B6_check
  · simpa only [show rowA14 7 = cellA14B7 from rfl] using cellA14B7_check
  · simpa only [show rowA14 8 = cellA14B8 from rfl] using cellA14B8_check
  · simpa only [show rowA14 9 = cellA14B9 from rfl] using cellA14B9_check

theorem rowA14_block_check :
    blockCheck 3 7 Stage03.H Stage03.M Stage03.upper 14 1 1 9 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 14 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA14_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 14 b = rowA14 b from rfl] using h

end Math.B699.CRTStage3Pair37.Chunk001

#print axioms Math.B699.CRTStage3Pair37.Chunk001.cellA14B1_check
#print axioms Math.B699.CRTStage3Pair37.Chunk001.cellA14B2_check
#print axioms Math.B699.CRTStage3Pair37.Chunk001.cellA14B3_check
#print axioms Math.B699.CRTStage3Pair37.Chunk001.cellA14B4_check
#print axioms Math.B699.CRTStage3Pair37.Chunk001.cellA14B5_check
#print axioms Math.B699.CRTStage3Pair37.Chunk001.cellA14B6_check
#print axioms Math.B699.CRTStage3Pair37.Chunk001.cellA14B7_check
#print axioms Math.B699.CRTStage3Pair37.Chunk001.cellA14B8_check
#print axioms Math.B699.CRTStage3Pair37.Chunk001.cellA14B9_check
#print axioms Math.B699.CRTStage3Pair37.Chunk001.rowA14_cell_check
#print axioms Math.B699.CRTStage3Pair37.Chunk001.rowA14_block_check
