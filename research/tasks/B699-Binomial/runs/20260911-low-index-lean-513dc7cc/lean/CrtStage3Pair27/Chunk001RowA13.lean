import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair27.Chunk001Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair27.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA13B1_check :
    cellCheck (2 ^ 13) (7 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 13))
      (heightCap Stage03.H Stage03.M (7 ^ 1)) Stage03.upper cellA13B1 = true := by
  decide +kernel

theorem cellA13B2_check :
    cellCheck (2 ^ 13) (7 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 13))
      (heightCap Stage03.H Stage03.M (7 ^ 2)) Stage03.upper cellA13B2 = true := by
  decide +kernel

theorem cellA13B3_check :
    cellCheck (2 ^ 13) (7 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 13))
      (heightCap Stage03.H Stage03.M (7 ^ 3)) Stage03.upper cellA13B3 = true := by
  decide +kernel

theorem cellA13B4_check :
    cellCheck (2 ^ 13) (7 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 13))
      (heightCap Stage03.H Stage03.M (7 ^ 4)) Stage03.upper cellA13B4 = true := by
  decide +kernel

theorem cellA13B5_check :
    cellCheck (2 ^ 13) (7 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 13))
      (heightCap Stage03.H Stage03.M (7 ^ 5)) Stage03.upper cellA13B5 = true := by
  decide +kernel

theorem cellA13B6_check :
    cellCheck (2 ^ 13) (7 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 13))
      (heightCap Stage03.H Stage03.M (7 ^ 6)) Stage03.upper cellA13B6 = true := by
  decide +kernel

theorem cellA13B7_check :
    cellCheck (2 ^ 13) (7 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 13))
      (heightCap Stage03.H Stage03.M (7 ^ 7)) Stage03.upper cellA13B7 = true := by
  decide +kernel

theorem cellA13B8_check :
    cellCheck (2 ^ 13) (7 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 13))
      (heightCap Stage03.H Stage03.M (7 ^ 8)) Stage03.upper cellA13B8 = true := by
  decide +kernel

theorem cellA13B9_check :
    cellCheck (2 ^ 13) (7 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 13))
      (heightCap Stage03.H Stage03.M (7 ^ 9)) Stage03.upper cellA13B9 = true := by
  decide +kernel

theorem rowA13_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 9) :
    cellCheck (2 ^ 13) (7 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 13))
      (heightCap Stage03.H Stage03.M (7 ^ b)) Stage03.upper (rowA13 b) = true := by
  interval_cases b
  · simpa only [show rowA13 1 = cellA13B1 from rfl] using cellA13B1_check
  · simpa only [show rowA13 2 = cellA13B2 from rfl] using cellA13B2_check
  · simpa only [show rowA13 3 = cellA13B3 from rfl] using cellA13B3_check
  · simpa only [show rowA13 4 = cellA13B4 from rfl] using cellA13B4_check
  · simpa only [show rowA13 5 = cellA13B5 from rfl] using cellA13B5_check
  · simpa only [show rowA13 6 = cellA13B6 from rfl] using cellA13B6_check
  · simpa only [show rowA13 7 = cellA13B7 from rfl] using cellA13B7_check
  · simpa only [show rowA13 8 = cellA13B8 from rfl] using cellA13B8_check
  · simpa only [show rowA13 9 = cellA13B9 from rfl] using cellA13B9_check

theorem rowA13_block_check :
    blockCheck 2 7 Stage03.H Stage03.M Stage03.upper 13 1 1 9 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 13 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA13_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 13 b = rowA13 b from rfl] using h

end Math.B699.CRTStage3Pair27.Chunk001

#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA13B1_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA13B2_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA13B3_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA13B4_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA13B5_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA13B6_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA13B7_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA13B8_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA13B9_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.rowA13_cell_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.rowA13_block_check
