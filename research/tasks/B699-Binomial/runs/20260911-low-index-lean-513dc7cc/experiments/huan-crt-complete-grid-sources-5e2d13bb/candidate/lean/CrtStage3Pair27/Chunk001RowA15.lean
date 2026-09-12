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

theorem cellA15B1_check :
    cellCheck (2 ^ 15) (7 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 15))
      (heightCap Stage03.H Stage03.M (7 ^ 1)) Stage03.upper cellA15B1 = true := by
  decide +kernel

theorem cellA15B2_check :
    cellCheck (2 ^ 15) (7 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 15))
      (heightCap Stage03.H Stage03.M (7 ^ 2)) Stage03.upper cellA15B2 = true := by
  decide +kernel

theorem cellA15B3_check :
    cellCheck (2 ^ 15) (7 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 15))
      (heightCap Stage03.H Stage03.M (7 ^ 3)) Stage03.upper cellA15B3 = true := by
  decide +kernel

theorem cellA15B4_check :
    cellCheck (2 ^ 15) (7 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 15))
      (heightCap Stage03.H Stage03.M (7 ^ 4)) Stage03.upper cellA15B4 = true := by
  decide +kernel

theorem cellA15B5_check :
    cellCheck (2 ^ 15) (7 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 15))
      (heightCap Stage03.H Stage03.M (7 ^ 5)) Stage03.upper cellA15B5 = true := by
  decide +kernel

theorem cellA15B6_check :
    cellCheck (2 ^ 15) (7 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 15))
      (heightCap Stage03.H Stage03.M (7 ^ 6)) Stage03.upper cellA15B6 = true := by
  decide +kernel

theorem cellA15B7_check :
    cellCheck (2 ^ 15) (7 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 15))
      (heightCap Stage03.H Stage03.M (7 ^ 7)) Stage03.upper cellA15B7 = true := by
  decide +kernel

theorem cellA15B8_check :
    cellCheck (2 ^ 15) (7 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 15))
      (heightCap Stage03.H Stage03.M (7 ^ 8)) Stage03.upper cellA15B8 = true := by
  decide +kernel

theorem cellA15B9_check :
    cellCheck (2 ^ 15) (7 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 15))
      (heightCap Stage03.H Stage03.M (7 ^ 9)) Stage03.upper cellA15B9 = true := by
  decide +kernel

theorem rowA15_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 9) :
    cellCheck (2 ^ 15) (7 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 15))
      (heightCap Stage03.H Stage03.M (7 ^ b)) Stage03.upper (rowA15 b) = true := by
  interval_cases b
  · simpa only [show rowA15 1 = cellA15B1 from rfl] using cellA15B1_check
  · simpa only [show rowA15 2 = cellA15B2 from rfl] using cellA15B2_check
  · simpa only [show rowA15 3 = cellA15B3 from rfl] using cellA15B3_check
  · simpa only [show rowA15 4 = cellA15B4 from rfl] using cellA15B4_check
  · simpa only [show rowA15 5 = cellA15B5 from rfl] using cellA15B5_check
  · simpa only [show rowA15 6 = cellA15B6 from rfl] using cellA15B6_check
  · simpa only [show rowA15 7 = cellA15B7 from rfl] using cellA15B7_check
  · simpa only [show rowA15 8 = cellA15B8 from rfl] using cellA15B8_check
  · simpa only [show rowA15 9 = cellA15B9 from rfl] using cellA15B9_check

theorem rowA15_block_check :
    blockCheck 2 7 Stage03.H Stage03.M Stage03.upper 15 1 1 9 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 15 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA15_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 15 b = rowA15 b from rfl] using h

end Math.B699.CRTStage3Pair27.Chunk001

#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA15B1_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA15B2_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA15B3_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA15B4_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA15B5_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA15B6_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA15B7_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA15B8_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.cellA15B9_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.rowA15_cell_check
#print axioms Math.B699.CRTStage3Pair27.Chunk001.rowA15_block_check
