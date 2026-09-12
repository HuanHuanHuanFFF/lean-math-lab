import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair23.Chunk003Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair23.Chunk003
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA25B1_check :
    cellCheck (2 ^ 25) (3 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 1)) Stage03.upper cellA25B1 = true := by
  decide +kernel

theorem cellA25B2_check :
    cellCheck (2 ^ 25) (3 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 2)) Stage03.upper cellA25B2 = true := by
  decide +kernel

theorem cellA25B3_check :
    cellCheck (2 ^ 25) (3 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 3)) Stage03.upper cellA25B3 = true := by
  decide +kernel

theorem cellA25B4_check :
    cellCheck (2 ^ 25) (3 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 4)) Stage03.upper cellA25B4 = true := by
  decide +kernel

theorem cellA25B5_check :
    cellCheck (2 ^ 25) (3 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 5)) Stage03.upper cellA25B5 = true := by
  decide +kernel

theorem cellA25B6_check :
    cellCheck (2 ^ 25) (3 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 6)) Stage03.upper cellA25B6 = true := by
  decide +kernel

theorem cellA25B7_check :
    cellCheck (2 ^ 25) (3 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 7)) Stage03.upper cellA25B7 = true := by
  decide +kernel

theorem cellA25B8_check :
    cellCheck (2 ^ 25) (3 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 8)) Stage03.upper cellA25B8 = true := by
  decide +kernel

theorem cellA25B9_check :
    cellCheck (2 ^ 25) (3 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 9)) Stage03.upper cellA25B9 = true := by
  decide +kernel

theorem cellA25B10_check :
    cellCheck (2 ^ 25) (3 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 10)) Stage03.upper cellA25B10 = true := by
  decide +kernel

theorem cellA25B11_check :
    cellCheck (2 ^ 25) (3 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 11)) Stage03.upper cellA25B11 = true := by
  decide +kernel

theorem cellA25B12_check :
    cellCheck (2 ^ 25) (3 ^ 12)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 12)) Stage03.upper cellA25B12 = true := by
  decide +kernel

theorem cellA25B13_check :
    cellCheck (2 ^ 25) (3 ^ 13)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 13)) Stage03.upper cellA25B13 = true := by
  decide +kernel

theorem cellA25B14_check :
    cellCheck (2 ^ 25) (3 ^ 14)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 14)) Stage03.upper cellA25B14 = true := by
  decide +kernel

theorem cellA25B15_check :
    cellCheck (2 ^ 25) (3 ^ 15)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 15)) Stage03.upper cellA25B15 = true := by
  decide +kernel

theorem cellA25B16_check :
    cellCheck (2 ^ 25) (3 ^ 16)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 16)) Stage03.upper cellA25B16 = true := by
  decide +kernel

theorem cellA25B17_check :
    cellCheck (2 ^ 25) (3 ^ 17)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ 17)) Stage03.upper cellA25B17 = true := by
  decide +kernel

theorem rowA25_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 17) :
    cellCheck (2 ^ 25) (3 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 25))
      (heightCap Stage03.H Stage03.M (3 ^ b)) Stage03.upper (rowA25 b) = true := by
  interval_cases b
  · simpa only [show rowA25 1 = cellA25B1 from rfl] using cellA25B1_check
  · simpa only [show rowA25 2 = cellA25B2 from rfl] using cellA25B2_check
  · simpa only [show rowA25 3 = cellA25B3 from rfl] using cellA25B3_check
  · simpa only [show rowA25 4 = cellA25B4 from rfl] using cellA25B4_check
  · simpa only [show rowA25 5 = cellA25B5 from rfl] using cellA25B5_check
  · simpa only [show rowA25 6 = cellA25B6 from rfl] using cellA25B6_check
  · simpa only [show rowA25 7 = cellA25B7 from rfl] using cellA25B7_check
  · simpa only [show rowA25 8 = cellA25B8 from rfl] using cellA25B8_check
  · simpa only [show rowA25 9 = cellA25B9 from rfl] using cellA25B9_check
  · simpa only [show rowA25 10 = cellA25B10 from rfl] using cellA25B10_check
  · simpa only [show rowA25 11 = cellA25B11 from rfl] using cellA25B11_check
  · simpa only [show rowA25 12 = cellA25B12 from rfl] using cellA25B12_check
  · simpa only [show rowA25 13 = cellA25B13 from rfl] using cellA25B13_check
  · simpa only [show rowA25 14 = cellA25B14 from rfl] using cellA25B14_check
  · simpa only [show rowA25 15 = cellA25B15 from rfl] using cellA25B15_check
  · simpa only [show rowA25 16 = cellA25B16 from rfl] using cellA25B16_check
  · simpa only [show rowA25 17 = cellA25B17 from rfl] using cellA25B17_check

theorem rowA25_block_check :
    blockCheck 2 3 Stage03.H Stage03.M Stage03.upper 25 1 1 17 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 25 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA25_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 25 b = rowA25 b from rfl] using h

end Math.B699.CRTStage3Pair23.Chunk003

#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B1_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B2_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B3_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B4_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B5_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B6_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B7_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B8_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B9_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B10_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B11_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B12_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B13_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B14_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B15_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B16_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.cellA25B17_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.rowA25_cell_check
#print axioms Math.B699.CRTStage3Pair23.Chunk003.rowA25_block_check
