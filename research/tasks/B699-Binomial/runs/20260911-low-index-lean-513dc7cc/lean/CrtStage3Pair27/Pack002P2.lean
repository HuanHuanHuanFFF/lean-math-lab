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

theorem cellA21B1_check :
    cellCheck (2 ^ 21) (7 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (7 ^ 1)) Stage03.upper cellA21B1 = true := by
  decide +kernel

theorem cellA21B2_check :
    cellCheck (2 ^ 21) (7 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (7 ^ 2)) Stage03.upper cellA21B2 = true := by
  decide +kernel

theorem cellA21B3_check :
    cellCheck (2 ^ 21) (7 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (7 ^ 3)) Stage03.upper cellA21B3 = true := by
  decide +kernel

theorem cellA21B4_check :
    cellCheck (2 ^ 21) (7 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (7 ^ 4)) Stage03.upper cellA21B4 = true := by
  decide +kernel

theorem cellA21B5_check :
    cellCheck (2 ^ 21) (7 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (7 ^ 5)) Stage03.upper cellA21B5 = true := by
  decide +kernel

theorem cellA21B6_check :
    cellCheck (2 ^ 21) (7 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (7 ^ 6)) Stage03.upper cellA21B6 = true := by
  decide +kernel

theorem cellA21B7_check :
    cellCheck (2 ^ 21) (7 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (7 ^ 7)) Stage03.upper cellA21B7 = true := by
  decide +kernel

theorem cellA21B8_check :
    cellCheck (2 ^ 21) (7 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (7 ^ 8)) Stage03.upper cellA21B8 = true := by
  decide +kernel

theorem cellA21B9_check :
    cellCheck (2 ^ 21) (7 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (7 ^ 9)) Stage03.upper cellA21B9 = true := by
  decide +kernel

theorem rowA21_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 9) :
    cellCheck (2 ^ 21) (7 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (7 ^ b)) Stage03.upper (rowA21 b) = true := by
  interval_cases b
  · simpa only [show rowA21 1 = cellA21B1 from rfl] using cellA21B1_check
  · simpa only [show rowA21 2 = cellA21B2 from rfl] using cellA21B2_check
  · simpa only [show rowA21 3 = cellA21B3 from rfl] using cellA21B3_check
  · simpa only [show rowA21 4 = cellA21B4 from rfl] using cellA21B4_check
  · simpa only [show rowA21 5 = cellA21B5 from rfl] using cellA21B5_check
  · simpa only [show rowA21 6 = cellA21B6 from rfl] using cellA21B6_check
  · simpa only [show rowA21 7 = cellA21B7 from rfl] using cellA21B7_check
  · simpa only [show rowA21 8 = cellA21B8 from rfl] using cellA21B8_check
  · simpa only [show rowA21 9 = cellA21B9 from rfl] using cellA21B9_check

theorem rowA21_block_check :
    blockCheck 2 7 Stage03.H Stage03.M Stage03.upper 21 1 1 9 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 21 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA21_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 21 b = rowA21 b from rfl] using h

end Math.B699.CRTStage3Pair27.Chunk002

#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA21B1_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA21B2_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA21B3_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA21B4_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA21B5_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA21B6_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA21B7_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA21B8_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA21B9_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.rowA21_cell_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.rowA21_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair27.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA22B1_check :
    cellCheck (2 ^ 22) (7 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (7 ^ 1)) Stage03.upper cellA22B1 = true := by
  decide +kernel

theorem cellA22B2_check :
    cellCheck (2 ^ 22) (7 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (7 ^ 2)) Stage03.upper cellA22B2 = true := by
  decide +kernel

theorem cellA22B3_check :
    cellCheck (2 ^ 22) (7 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (7 ^ 3)) Stage03.upper cellA22B3 = true := by
  decide +kernel

theorem cellA22B4_check :
    cellCheck (2 ^ 22) (7 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (7 ^ 4)) Stage03.upper cellA22B4 = true := by
  decide +kernel

theorem cellA22B5_check :
    cellCheck (2 ^ 22) (7 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (7 ^ 5)) Stage03.upper cellA22B5 = true := by
  decide +kernel

theorem cellA22B6_check :
    cellCheck (2 ^ 22) (7 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (7 ^ 6)) Stage03.upper cellA22B6 = true := by
  decide +kernel

theorem cellA22B7_check :
    cellCheck (2 ^ 22) (7 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (7 ^ 7)) Stage03.upper cellA22B7 = true := by
  decide +kernel

theorem cellA22B8_check :
    cellCheck (2 ^ 22) (7 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (7 ^ 8)) Stage03.upper cellA22B8 = true := by
  decide +kernel

theorem cellA22B9_check :
    cellCheck (2 ^ 22) (7 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (7 ^ 9)) Stage03.upper cellA22B9 = true := by
  decide +kernel

theorem rowA22_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 9) :
    cellCheck (2 ^ 22) (7 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (7 ^ b)) Stage03.upper (rowA22 b) = true := by
  interval_cases b
  · simpa only [show rowA22 1 = cellA22B1 from rfl] using cellA22B1_check
  · simpa only [show rowA22 2 = cellA22B2 from rfl] using cellA22B2_check
  · simpa only [show rowA22 3 = cellA22B3 from rfl] using cellA22B3_check
  · simpa only [show rowA22 4 = cellA22B4 from rfl] using cellA22B4_check
  · simpa only [show rowA22 5 = cellA22B5 from rfl] using cellA22B5_check
  · simpa only [show rowA22 6 = cellA22B6 from rfl] using cellA22B6_check
  · simpa only [show rowA22 7 = cellA22B7 from rfl] using cellA22B7_check
  · simpa only [show rowA22 8 = cellA22B8 from rfl] using cellA22B8_check
  · simpa only [show rowA22 9 = cellA22B9 from rfl] using cellA22B9_check

theorem rowA22_block_check :
    blockCheck 2 7 Stage03.H Stage03.M Stage03.upper 22 1 1 9 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 22 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA22_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 22 b = rowA22 b from rfl] using h

end Math.B699.CRTStage3Pair27.Chunk002

#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA22B1_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA22B2_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA22B3_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA22B4_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA22B5_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA22B6_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA22B7_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA22B8_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.cellA22B9_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.rowA22_cell_check
#print axioms Math.B699.CRTStage3Pair27.Chunk002.rowA22_block_check
