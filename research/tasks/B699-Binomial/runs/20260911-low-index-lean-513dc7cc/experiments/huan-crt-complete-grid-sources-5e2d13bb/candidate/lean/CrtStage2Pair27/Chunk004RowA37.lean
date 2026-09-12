import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair27.Chunk004Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair27.Chunk004
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA37B1_check :
    cellCheck (2 ^ 37) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA37B1 = true := by
  decide +kernel

theorem cellA37B2_check :
    cellCheck (2 ^ 37) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA37B2 = true := by
  decide +kernel

theorem cellA37B3_check :
    cellCheck (2 ^ 37) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA37B3 = true := by
  decide +kernel

theorem cellA37B4_check :
    cellCheck (2 ^ 37) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA37B4 = true := by
  decide +kernel

theorem cellA37B5_check :
    cellCheck (2 ^ 37) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA37B5 = true := by
  decide +kernel

theorem cellA37B6_check :
    cellCheck (2 ^ 37) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA37B6 = true := by
  decide +kernel

theorem cellA37B7_check :
    cellCheck (2 ^ 37) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA37B7 = true := by
  decide +kernel

theorem cellA37B8_check :
    cellCheck (2 ^ 37) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA37B8 = true := by
  decide +kernel

theorem cellA37B9_check :
    cellCheck (2 ^ 37) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA37B9 = true := by
  decide +kernel

theorem cellA37B10_check :
    cellCheck (2 ^ 37) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA37B10 = true := by
  decide +kernel

theorem cellA37B11_check :
    cellCheck (2 ^ 37) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA37B11 = true := by
  decide +kernel

theorem cellA37B12_check :
    cellCheck (2 ^ 37) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA37B12 = true := by
  decide +kernel

theorem cellA37B13_check :
    cellCheck (2 ^ 37) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA37B13 = true := by
  decide +kernel

theorem rowA37_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (2 ^ 37) (7 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 37))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA37 b) = true := by
  interval_cases b
  · simpa only [show rowA37 1 = cellA37B1 from rfl] using cellA37B1_check
  · simpa only [show rowA37 2 = cellA37B2 from rfl] using cellA37B2_check
  · simpa only [show rowA37 3 = cellA37B3 from rfl] using cellA37B3_check
  · simpa only [show rowA37 4 = cellA37B4 from rfl] using cellA37B4_check
  · simpa only [show rowA37 5 = cellA37B5 from rfl] using cellA37B5_check
  · simpa only [show rowA37 6 = cellA37B6 from rfl] using cellA37B6_check
  · simpa only [show rowA37 7 = cellA37B7 from rfl] using cellA37B7_check
  · simpa only [show rowA37 8 = cellA37B8 from rfl] using cellA37B8_check
  · simpa only [show rowA37 9 = cellA37B9 from rfl] using cellA37B9_check
  · simpa only [show rowA37 10 = cellA37B10 from rfl] using cellA37B10_check
  · simpa only [show rowA37 11 = cellA37B11 from rfl] using cellA37B11_check
  · simpa only [show rowA37 12 = cellA37B12 from rfl] using cellA37B12_check
  · simpa only [show rowA37 13 = cellA37B13 from rfl] using cellA37B13_check

theorem rowA37_block_check :
    blockCheck 2 7 Stage02.H Stage02.M Stage02.upper 37 1 1 13 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 37 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA37_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 37 b = rowA37 b from rfl] using h

end Math.B699.CRTStage2Pair27.Chunk004

#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA37B1_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA37B2_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA37B3_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA37B4_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA37B5_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA37B6_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA37B7_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA37B8_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA37B9_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA37B10_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA37B11_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA37B12_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA37B13_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.rowA37_cell_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.rowA37_block_check
