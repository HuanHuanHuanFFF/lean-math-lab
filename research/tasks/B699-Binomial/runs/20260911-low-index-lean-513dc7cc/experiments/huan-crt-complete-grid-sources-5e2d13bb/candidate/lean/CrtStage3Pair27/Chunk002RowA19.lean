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

theorem cellA19B1_check :
    cellCheck (2 ^ 19) (7 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (7 ^ 1)) Stage03.upper cellA19B1 = true := by
  decide +kernel

theorem cellA19B2_check :
    cellCheck (2 ^ 19) (7 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (7 ^ 2)) Stage03.upper cellA19B2 = true := by
  decide +kernel

theorem cellA19B3_check :
    cellCheck (2 ^ 19) (7 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (7 ^ 3)) Stage03.upper cellA19B3 = true := by
  decide +kernel

theorem cellA19B4_check :
    cellCheck (2 ^ 19) (7 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (7 ^ 4)) Stage03.upper cellA19B4 = true := by
  decide +kernel

theorem cellA19B5_check :
    cellCheck (2 ^ 19) (7 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (7 ^ 5)) Stage03.upper cellA19B5 = true := by
  decide +kernel

theorem cellA19B6_check :
    cellCheck (2 ^ 19) (7 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (7 ^ 6)) Stage03.upper cellA19B6 = true := by
  decide +kernel

theorem cellA19B7_check :
    cellCheck (2 ^ 19) (7 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (7 ^ 7)) Stage03.upper cellA19B7 = true := by
  decide +kernel

theorem cellA19B8_check :
    cellCheck (2 ^ 19) (7 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (7 ^ 8)) Stage03.upper cellA19B8 = true := by
  decide +kernel

theorem cellA19B9_check :
    cellCheck (2 ^ 19) (7 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (7 ^ 9)) Stage03.upper cellA19B9 = true := by
  decide +kernel

theorem rowA19_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 9) :
    cellCheck (2 ^ 19) (7 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (7 ^ b)) Stage03.upper (rowA19 b) = true := by
  interval_cases b
  · simpa only [show rowA19 1 = cellA19B1 from rfl] using cellA19B1_check
  · simpa only [show rowA19 2 = cellA19B2 from rfl] using cellA19B2_check
  · simpa only [show rowA19 3 = cellA19B3 from rfl] using cellA19B3_check
  · simpa only [show rowA19 4 = cellA19B4 from rfl] using cellA19B4_check
  · simpa only [show rowA19 5 = cellA19B5 from rfl] using cellA19B5_check
  · simpa only [show rowA19 6 = cellA19B6 from rfl] using cellA19B6_check
  · simpa only [show rowA19 7 = cellA19B7 from rfl] using cellA19B7_check
  · simpa only [show rowA19 8 = cellA19B8 from rfl] using cellA19B8_check
  · simpa only [show rowA19 9 = cellA19B9 from rfl] using cellA19B9_check

theorem rowA19_block_check :
    blockCheck 2 7 Stage03.H Stage03.M Stage03.upper 19 1 1 9 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 19 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA19_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 19 b = rowA19 b from rfl] using h

end Math.B699.CRTStage3Pair27.Chunk002

#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA19B1_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA19B2_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA19B3_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA19B4_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA19B5_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA19B6_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA19B7_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA19B8_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA19B9_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.rowA19_cell_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.rowA19_block_check
