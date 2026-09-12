import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair23.Chunk002Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair23.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA19B1_check :
    cellCheck (2 ^ 19) (3 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 1)) Stage03.upper cellA19B1 = true := by
  decide +kernel

theorem cellA19B2_check :
    cellCheck (2 ^ 19) (3 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 2)) Stage03.upper cellA19B2 = true := by
  decide +kernel

theorem cellA19B3_check :
    cellCheck (2 ^ 19) (3 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 3)) Stage03.upper cellA19B3 = true := by
  decide +kernel

theorem cellA19B4_check :
    cellCheck (2 ^ 19) (3 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 4)) Stage03.upper cellA19B4 = true := by
  decide +kernel

theorem cellA19B5_check :
    cellCheck (2 ^ 19) (3 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 5)) Stage03.upper cellA19B5 = true := by
  decide +kernel

theorem cellA19B6_check :
    cellCheck (2 ^ 19) (3 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 6)) Stage03.upper cellA19B6 = true := by
  decide +kernel

theorem cellA19B7_check :
    cellCheck (2 ^ 19) (3 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 7)) Stage03.upper cellA19B7 = true := by
  decide +kernel

theorem cellA19B8_check :
    cellCheck (2 ^ 19) (3 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 8)) Stage03.upper cellA19B8 = true := by
  decide +kernel

theorem cellA19B9_check :
    cellCheck (2 ^ 19) (3 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 9)) Stage03.upper cellA19B9 = true := by
  decide +kernel

theorem cellA19B10_check :
    cellCheck (2 ^ 19) (3 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 10)) Stage03.upper cellA19B10 = true := by
  decide +kernel

theorem cellA19B11_check :
    cellCheck (2 ^ 19) (3 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 11)) Stage03.upper cellA19B11 = true := by
  decide +kernel

theorem cellA19B12_check :
    cellCheck (2 ^ 19) (3 ^ 12)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 12)) Stage03.upper cellA19B12 = true := by
  decide +kernel

theorem cellA19B13_check :
    cellCheck (2 ^ 19) (3 ^ 13)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 13)) Stage03.upper cellA19B13 = true := by
  decide +kernel

theorem cellA19B14_check :
    cellCheck (2 ^ 19) (3 ^ 14)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 14)) Stage03.upper cellA19B14 = true := by
  decide +kernel

theorem cellA19B15_check :
    cellCheck (2 ^ 19) (3 ^ 15)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 15)) Stage03.upper cellA19B15 = true := by
  decide +kernel

theorem cellA19B16_check :
    cellCheck (2 ^ 19) (3 ^ 16)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 16)) Stage03.upper cellA19B16 = true := by
  decide +kernel

theorem cellA19B17_check :
    cellCheck (2 ^ 19) (3 ^ 17)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ 17)) Stage03.upper cellA19B17 = true := by
  decide +kernel

theorem rowA19_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 17) :
    cellCheck (2 ^ 19) (3 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (3 ^ b)) Stage03.upper (rowA19 b) = true := by
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
  · simpa only [show rowA19 10 = cellA19B10 from rfl] using cellA19B10_check
  · simpa only [show rowA19 11 = cellA19B11 from rfl] using cellA19B11_check
  · simpa only [show rowA19 12 = cellA19B12 from rfl] using cellA19B12_check
  · simpa only [show rowA19 13 = cellA19B13 from rfl] using cellA19B13_check
  · simpa only [show rowA19 14 = cellA19B14 from rfl] using cellA19B14_check
  · simpa only [show rowA19 15 = cellA19B15 from rfl] using cellA19B15_check
  · simpa only [show rowA19 16 = cellA19B16 from rfl] using cellA19B16_check
  · simpa only [show rowA19 17 = cellA19B17 from rfl] using cellA19B17_check

theorem rowA19_block_check :
    blockCheck 2 3 Stage03.H Stage03.M Stage03.upper 19 1 1 17 chunkData = true := by
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

end Math.B699.CRTStage3Pair23.Chunk002

#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B1_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B2_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B3_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B4_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B5_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B6_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B7_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B8_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B9_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B10_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B11_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B12_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B13_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B14_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B15_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B16_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.cellA19B17_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.rowA19_cell_check
#print axioms Math.B699.CRTStage3Pair23.Chunk002.rowA19_block_check
