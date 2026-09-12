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

theorem cellA36B1_check :
    cellCheck (2 ^ 36) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA36B1 = true := by
  decide +kernel

theorem cellA36B2_check :
    cellCheck (2 ^ 36) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA36B2 = true := by
  decide +kernel

theorem cellA36B3_check :
    cellCheck (2 ^ 36) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA36B3 = true := by
  decide +kernel

theorem cellA36B4_check :
    cellCheck (2 ^ 36) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA36B4 = true := by
  decide +kernel

theorem cellA36B5_check :
    cellCheck (2 ^ 36) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA36B5 = true := by
  decide +kernel

theorem cellA36B6_check :
    cellCheck (2 ^ 36) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA36B6 = true := by
  decide +kernel

theorem cellA36B7_check :
    cellCheck (2 ^ 36) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA36B7 = true := by
  decide +kernel

theorem cellA36B8_check :
    cellCheck (2 ^ 36) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA36B8 = true := by
  decide +kernel

theorem cellA36B9_check :
    cellCheck (2 ^ 36) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA36B9 = true := by
  decide +kernel

theorem cellA36B10_check :
    cellCheck (2 ^ 36) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA36B10 = true := by
  decide +kernel

theorem cellA36B11_check :
    cellCheck (2 ^ 36) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA36B11 = true := by
  decide +kernel

theorem cellA36B12_check :
    cellCheck (2 ^ 36) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA36B12 = true := by
  decide +kernel

theorem cellA36B13_check :
    cellCheck (2 ^ 36) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA36B13 = true := by
  decide +kernel

theorem rowA36_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (2 ^ 36) (7 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 36))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA36 b) = true := by
  interval_cases b
  · simpa only [show rowA36 1 = cellA36B1 from rfl] using cellA36B1_check
  · simpa only [show rowA36 2 = cellA36B2 from rfl] using cellA36B2_check
  · simpa only [show rowA36 3 = cellA36B3 from rfl] using cellA36B3_check
  · simpa only [show rowA36 4 = cellA36B4 from rfl] using cellA36B4_check
  · simpa only [show rowA36 5 = cellA36B5 from rfl] using cellA36B5_check
  · simpa only [show rowA36 6 = cellA36B6 from rfl] using cellA36B6_check
  · simpa only [show rowA36 7 = cellA36B7 from rfl] using cellA36B7_check
  · simpa only [show rowA36 8 = cellA36B8 from rfl] using cellA36B8_check
  · simpa only [show rowA36 9 = cellA36B9 from rfl] using cellA36B9_check
  · simpa only [show rowA36 10 = cellA36B10 from rfl] using cellA36B10_check
  · simpa only [show rowA36 11 = cellA36B11 from rfl] using cellA36B11_check
  · simpa only [show rowA36 12 = cellA36B12 from rfl] using cellA36B12_check
  · simpa only [show rowA36 13 = cellA36B13 from rfl] using cellA36B13_check

theorem rowA36_block_check :
    blockCheck 2 7 Stage02.H Stage02.M Stage02.upper 36 1 1 13 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 36 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA36_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 36 b = rowA36 b from rfl] using h

end Math.B699.CRTStage2Pair27.Chunk004

#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA36B1_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA36B2_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA36B3_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA36B4_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA36B5_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA36B6_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA36B7_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA36B8_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA36B9_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA36B10_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA36B11_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA36B12_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.cellA36B13_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.rowA36_cell_check
#print axioms Math.B699.CRTStage2Pair27.Chunk004.rowA36_block_check
