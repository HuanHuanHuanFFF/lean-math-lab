import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair27.Chunk002Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair27.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA20B1_check :
    cellCheck (2 ^ 20) (7 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (7 ^ 1)) Stage03.upper cellA20B1 = true := by
  decide +kernel

theorem cellA20B2_check :
    cellCheck (2 ^ 20) (7 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (7 ^ 2)) Stage03.upper cellA20B2 = true := by
  decide +kernel

theorem cellA20B3_check :
    cellCheck (2 ^ 20) (7 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (7 ^ 3)) Stage03.upper cellA20B3 = true := by
  decide +kernel

theorem cellA20B4_check :
    cellCheck (2 ^ 20) (7 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (7 ^ 4)) Stage03.upper cellA20B4 = true := by
  decide +kernel

theorem cellA20B5_check :
    cellCheck (2 ^ 20) (7 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (7 ^ 5)) Stage03.upper cellA20B5 = true := by
  decide +kernel

theorem cellA20B6_check :
    cellCheck (2 ^ 20) (7 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (7 ^ 6)) Stage03.upper cellA20B6 = true := by
  decide +kernel

theorem cellA20B7_check :
    cellCheck (2 ^ 20) (7 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (7 ^ 7)) Stage03.upper cellA20B7 = true := by
  decide +kernel

theorem cellA20B8_check :
    cellCheck (2 ^ 20) (7 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (7 ^ 8)) Stage03.upper cellA20B8 = true := by
  decide +kernel

theorem cellA20B9_check :
    cellCheck (2 ^ 20) (7 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (7 ^ 9)) Stage03.upper cellA20B9 = true := by
  decide +kernel

theorem rowA20_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 9) :
    cellCheck (2 ^ 20) (7 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (7 ^ b)) Stage03.upper (rowA20 b) = true := by
  interval_cases b
  · simpa only [show rowA20 1 = cellA20B1 from rfl] using cellA20B1_check
  · simpa only [show rowA20 2 = cellA20B2 from rfl] using cellA20B2_check
  · simpa only [show rowA20 3 = cellA20B3 from rfl] using cellA20B3_check
  · simpa only [show rowA20 4 = cellA20B4 from rfl] using cellA20B4_check
  · simpa only [show rowA20 5 = cellA20B5 from rfl] using cellA20B5_check
  · simpa only [show rowA20 6 = cellA20B6 from rfl] using cellA20B6_check
  · simpa only [show rowA20 7 = cellA20B7 from rfl] using cellA20B7_check
  · simpa only [show rowA20 8 = cellA20B8 from rfl] using cellA20B8_check
  · simpa only [show rowA20 9 = cellA20B9 from rfl] using cellA20B9_check

theorem rowA20_block_check :
    blockCheck 2 7 Stage03.H Stage03.M Stage03.upper 20 1 1 9 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 20 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA20_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 20 b = rowA20 b from rfl] using h

end Math.B699.CRTStage3Pair27.Chunk002

#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA20B1_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA20B2_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA20B3_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA20B4_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA20B5_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA20B6_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA20B7_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA20B8_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA20B9_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.rowA20_cell_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.rowA20_block_check
