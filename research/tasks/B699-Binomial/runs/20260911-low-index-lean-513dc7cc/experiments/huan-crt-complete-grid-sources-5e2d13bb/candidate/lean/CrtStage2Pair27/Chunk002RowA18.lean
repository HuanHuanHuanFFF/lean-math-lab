import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair27.Chunk002Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair27.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA18B1_check :
    cellCheck (2 ^ 18) (7 ^ 1)
      (heightCap Stage02.H Stage02.M (2 ^ 18))
      (heightCap Stage02.H Stage02.M (7 ^ 1)) Stage02.upper cellA18B1 = true := by
  decide +kernel

theorem cellA18B2_check :
    cellCheck (2 ^ 18) (7 ^ 2)
      (heightCap Stage02.H Stage02.M (2 ^ 18))
      (heightCap Stage02.H Stage02.M (7 ^ 2)) Stage02.upper cellA18B2 = true := by
  decide +kernel

theorem cellA18B3_check :
    cellCheck (2 ^ 18) (7 ^ 3)
      (heightCap Stage02.H Stage02.M (2 ^ 18))
      (heightCap Stage02.H Stage02.M (7 ^ 3)) Stage02.upper cellA18B3 = true := by
  decide +kernel

theorem cellA18B4_check :
    cellCheck (2 ^ 18) (7 ^ 4)
      (heightCap Stage02.H Stage02.M (2 ^ 18))
      (heightCap Stage02.H Stage02.M (7 ^ 4)) Stage02.upper cellA18B4 = true := by
  decide +kernel

theorem cellA18B5_check :
    cellCheck (2 ^ 18) (7 ^ 5)
      (heightCap Stage02.H Stage02.M (2 ^ 18))
      (heightCap Stage02.H Stage02.M (7 ^ 5)) Stage02.upper cellA18B5 = true := by
  decide +kernel

theorem cellA18B6_check :
    cellCheck (2 ^ 18) (7 ^ 6)
      (heightCap Stage02.H Stage02.M (2 ^ 18))
      (heightCap Stage02.H Stage02.M (7 ^ 6)) Stage02.upper cellA18B6 = true := by
  decide +kernel

theorem cellA18B7_check :
    cellCheck (2 ^ 18) (7 ^ 7)
      (heightCap Stage02.H Stage02.M (2 ^ 18))
      (heightCap Stage02.H Stage02.M (7 ^ 7)) Stage02.upper cellA18B7 = true := by
  decide +kernel

theorem cellA18B8_check :
    cellCheck (2 ^ 18) (7 ^ 8)
      (heightCap Stage02.H Stage02.M (2 ^ 18))
      (heightCap Stage02.H Stage02.M (7 ^ 8)) Stage02.upper cellA18B8 = true := by
  decide +kernel

theorem cellA18B9_check :
    cellCheck (2 ^ 18) (7 ^ 9)
      (heightCap Stage02.H Stage02.M (2 ^ 18))
      (heightCap Stage02.H Stage02.M (7 ^ 9)) Stage02.upper cellA18B9 = true := by
  decide +kernel

theorem cellA18B10_check :
    cellCheck (2 ^ 18) (7 ^ 10)
      (heightCap Stage02.H Stage02.M (2 ^ 18))
      (heightCap Stage02.H Stage02.M (7 ^ 10)) Stage02.upper cellA18B10 = true := by
  decide +kernel

theorem cellA18B11_check :
    cellCheck (2 ^ 18) (7 ^ 11)
      (heightCap Stage02.H Stage02.M (2 ^ 18))
      (heightCap Stage02.H Stage02.M (7 ^ 11)) Stage02.upper cellA18B11 = true := by
  decide +kernel

theorem cellA18B12_check :
    cellCheck (2 ^ 18) (7 ^ 12)
      (heightCap Stage02.H Stage02.M (2 ^ 18))
      (heightCap Stage02.H Stage02.M (7 ^ 12)) Stage02.upper cellA18B12 = true := by
  decide +kernel

theorem cellA18B13_check :
    cellCheck (2 ^ 18) (7 ^ 13)
      (heightCap Stage02.H Stage02.M (2 ^ 18))
      (heightCap Stage02.H Stage02.M (7 ^ 13)) Stage02.upper cellA18B13 = true := by
  decide +kernel

theorem rowA18_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 13) :
    cellCheck (2 ^ 18) (7 ^ b)
      (heightCap Stage02.H Stage02.M (2 ^ 18))
      (heightCap Stage02.H Stage02.M (7 ^ b)) Stage02.upper (rowA18 b) = true := by
  interval_cases b
  · simpa only [show rowA18 1 = cellA18B1 from rfl] using cellA18B1_check
  · simpa only [show rowA18 2 = cellA18B2 from rfl] using cellA18B2_check
  · simpa only [show rowA18 3 = cellA18B3 from rfl] using cellA18B3_check
  · simpa only [show rowA18 4 = cellA18B4 from rfl] using cellA18B4_check
  · simpa only [show rowA18 5 = cellA18B5 from rfl] using cellA18B5_check
  · simpa only [show rowA18 6 = cellA18B6 from rfl] using cellA18B6_check
  · simpa only [show rowA18 7 = cellA18B7 from rfl] using cellA18B7_check
  · simpa only [show rowA18 8 = cellA18B8 from rfl] using cellA18B8_check
  · simpa only [show rowA18 9 = cellA18B9 from rfl] using cellA18B9_check
  · simpa only [show rowA18 10 = cellA18B10 from rfl] using cellA18B10_check
  · simpa only [show rowA18 11 = cellA18B11 from rfl] using cellA18B11_check
  · simpa only [show rowA18 12 = cellA18B12 from rfl] using cellA18B12_check
  · simpa only [show rowA18 13 = cellA18B13 from rfl] using cellA18B13_check

theorem rowA18_block_check :
    blockCheck 2 7 Stage02.H Stage02.M Stage02.upper 18 1 1 13 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 18 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA18_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 18 b = rowA18 b from rfl] using h

end Math.B699.CRTStage2Pair27.Chunk002

#print axioms Math.B699.CRTStage2Pair27.Chunk002.cellA18B1_check
#print axioms Math.B699.CRTStage2Pair27.Chunk002.cellA18B2_check
#print axioms Math.B699.CRTStage2Pair27.Chunk002.cellA18B3_check
#print axioms Math.B699.CRTStage2Pair27.Chunk002.cellA18B4_check
#print axioms Math.B699.CRTStage2Pair27.Chunk002.cellA18B5_check
#print axioms Math.B699.CRTStage2Pair27.Chunk002.cellA18B6_check
#print axioms Math.B699.CRTStage2Pair27.Chunk002.cellA18B7_check
#print axioms Math.B699.CRTStage2Pair27.Chunk002.cellA18B8_check
#print axioms Math.B699.CRTStage2Pair27.Chunk002.cellA18B9_check
#print axioms Math.B699.CRTStage2Pair27.Chunk002.cellA18B10_check
#print axioms Math.B699.CRTStage2Pair27.Chunk002.cellA18B11_check
#print axioms Math.B699.CRTStage2Pair27.Chunk002.cellA18B12_check
#print axioms Math.B699.CRTStage2Pair27.Chunk002.cellA18B13_check
#print axioms Math.B699.CRTStage2Pair27.Chunk002.rowA18_cell_check
#print axioms Math.B699.CRTStage2Pair27.Chunk002.rowA18_block_check
