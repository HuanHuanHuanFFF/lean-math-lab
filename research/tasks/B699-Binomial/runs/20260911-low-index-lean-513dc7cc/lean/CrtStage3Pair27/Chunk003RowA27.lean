import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair27.Chunk003Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair27.Chunk003
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA27B1_check :
    cellCheck (2 ^ 27) (7 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 27))
      (heightCap Stage03.H Stage03.M (7 ^ 1)) Stage03.upper cellA27B1 = true := by
  decide +kernel

theorem cellA27B2_check :
    cellCheck (2 ^ 27) (7 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 27))
      (heightCap Stage03.H Stage03.M (7 ^ 2)) Stage03.upper cellA27B2 = true := by
  decide +kernel

theorem cellA27B3_check :
    cellCheck (2 ^ 27) (7 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 27))
      (heightCap Stage03.H Stage03.M (7 ^ 3)) Stage03.upper cellA27B3 = true := by
  decide +kernel

theorem cellA27B4_check :
    cellCheck (2 ^ 27) (7 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 27))
      (heightCap Stage03.H Stage03.M (7 ^ 4)) Stage03.upper cellA27B4 = true := by
  decide +kernel

theorem cellA27B5_check :
    cellCheck (2 ^ 27) (7 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 27))
      (heightCap Stage03.H Stage03.M (7 ^ 5)) Stage03.upper cellA27B5 = true := by
  decide +kernel

theorem cellA27B6_check :
    cellCheck (2 ^ 27) (7 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 27))
      (heightCap Stage03.H Stage03.M (7 ^ 6)) Stage03.upper cellA27B6 = true := by
  decide +kernel

theorem cellA27B7_check :
    cellCheck (2 ^ 27) (7 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 27))
      (heightCap Stage03.H Stage03.M (7 ^ 7)) Stage03.upper cellA27B7 = true := by
  decide +kernel

theorem cellA27B8_check :
    cellCheck (2 ^ 27) (7 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 27))
      (heightCap Stage03.H Stage03.M (7 ^ 8)) Stage03.upper cellA27B8 = true := by
  decide +kernel

theorem cellA27B9_check :
    cellCheck (2 ^ 27) (7 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 27))
      (heightCap Stage03.H Stage03.M (7 ^ 9)) Stage03.upper cellA27B9 = true := by
  decide +kernel

theorem rowA27_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 9) :
    cellCheck (2 ^ 27) (7 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 27))
      (heightCap Stage03.H Stage03.M (7 ^ b)) Stage03.upper (rowA27 b) = true := by
  interval_cases b
  · simpa only [show rowA27 1 = cellA27B1 from rfl] using cellA27B1_check
  · simpa only [show rowA27 2 = cellA27B2 from rfl] using cellA27B2_check
  · simpa only [show rowA27 3 = cellA27B3 from rfl] using cellA27B3_check
  · simpa only [show rowA27 4 = cellA27B4 from rfl] using cellA27B4_check
  · simpa only [show rowA27 5 = cellA27B5 from rfl] using cellA27B5_check
  · simpa only [show rowA27 6 = cellA27B6 from rfl] using cellA27B6_check
  · simpa only [show rowA27 7 = cellA27B7 from rfl] using cellA27B7_check
  · simpa only [show rowA27 8 = cellA27B8 from rfl] using cellA27B8_check
  · simpa only [show rowA27 9 = cellA27B9 from rfl] using cellA27B9_check

theorem rowA27_block_check :
    blockCheck 2 7 Stage03.H Stage03.M Stage03.upper 27 1 1 9 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 27 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA27_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 27 b = rowA27 b from rfl] using h

end Math.B699.CRTStage3Pair27.Chunk003

#print axioms Math.B699.CRTStage3Pair27.Chunk003.cellA27B1_check
#print axioms Math.B699.CRTStage3Pair27.Chunk003.cellA27B2_check
#print axioms Math.B699.CRTStage3Pair27.Chunk003.cellA27B3_check
#print axioms Math.B699.CRTStage3Pair27.Chunk003.cellA27B4_check
#print axioms Math.B699.CRTStage3Pair27.Chunk003.cellA27B5_check
#print axioms Math.B699.CRTStage3Pair27.Chunk003.cellA27B6_check
#print axioms Math.B699.CRTStage3Pair27.Chunk003.cellA27B7_check
#print axioms Math.B699.CRTStage3Pair27.Chunk003.cellA27B8_check
#print axioms Math.B699.CRTStage3Pair27.Chunk003.cellA27B9_check
#print axioms Math.B699.CRTStage3Pair27.Chunk003.rowA27_cell_check
#print axioms Math.B699.CRTStage3Pair27.Chunk003.rowA27_block_check
