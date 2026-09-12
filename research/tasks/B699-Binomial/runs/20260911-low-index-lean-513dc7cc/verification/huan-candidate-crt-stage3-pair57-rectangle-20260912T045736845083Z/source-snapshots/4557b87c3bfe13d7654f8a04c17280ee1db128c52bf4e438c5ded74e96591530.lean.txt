import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair57.Chunk000Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair57.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA1B1_check :
    cellCheck (5 ^ 1) (7 ^ 1)
      (heightCap Stage03.H Stage03.M (5 ^ 1))
      (heightCap Stage03.H Stage03.M (7 ^ 1)) Stage03.upper cellA1B1 = true := by
  decide +kernel

theorem cellA1B2_check :
    cellCheck (5 ^ 1) (7 ^ 2)
      (heightCap Stage03.H Stage03.M (5 ^ 1))
      (heightCap Stage03.H Stage03.M (7 ^ 2)) Stage03.upper cellA1B2 = true := by
  decide +kernel

theorem cellA1B3_check :
    cellCheck (5 ^ 1) (7 ^ 3)
      (heightCap Stage03.H Stage03.M (5 ^ 1))
      (heightCap Stage03.H Stage03.M (7 ^ 3)) Stage03.upper cellA1B3 = true := by
  decide +kernel

theorem cellA1B4_check :
    cellCheck (5 ^ 1) (7 ^ 4)
      (heightCap Stage03.H Stage03.M (5 ^ 1))
      (heightCap Stage03.H Stage03.M (7 ^ 4)) Stage03.upper cellA1B4 = true := by
  decide +kernel

theorem cellA1B5_check :
    cellCheck (5 ^ 1) (7 ^ 5)
      (heightCap Stage03.H Stage03.M (5 ^ 1))
      (heightCap Stage03.H Stage03.M (7 ^ 5)) Stage03.upper cellA1B5 = true := by
  decide +kernel

theorem cellA1B6_check :
    cellCheck (5 ^ 1) (7 ^ 6)
      (heightCap Stage03.H Stage03.M (5 ^ 1))
      (heightCap Stage03.H Stage03.M (7 ^ 6)) Stage03.upper cellA1B6 = true := by
  decide +kernel

theorem cellA1B7_check :
    cellCheck (5 ^ 1) (7 ^ 7)
      (heightCap Stage03.H Stage03.M (5 ^ 1))
      (heightCap Stage03.H Stage03.M (7 ^ 7)) Stage03.upper cellA1B7 = true := by
  decide +kernel

theorem cellA1B8_check :
    cellCheck (5 ^ 1) (7 ^ 8)
      (heightCap Stage03.H Stage03.M (5 ^ 1))
      (heightCap Stage03.H Stage03.M (7 ^ 8)) Stage03.upper cellA1B8 = true := by
  decide +kernel

theorem cellA1B9_check :
    cellCheck (5 ^ 1) (7 ^ 9)
      (heightCap Stage03.H Stage03.M (5 ^ 1))
      (heightCap Stage03.H Stage03.M (7 ^ 9)) Stage03.upper cellA1B9 = true := by
  decide +kernel

theorem rowA1_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 9) :
    cellCheck (5 ^ 1) (7 ^ b)
      (heightCap Stage03.H Stage03.M (5 ^ 1))
      (heightCap Stage03.H Stage03.M (7 ^ b)) Stage03.upper (rowA1 b) = true := by
  interval_cases b
  · simpa only [show rowA1 1 = cellA1B1 from rfl] using cellA1B1_check
  · simpa only [show rowA1 2 = cellA1B2 from rfl] using cellA1B2_check
  · simpa only [show rowA1 3 = cellA1B3 from rfl] using cellA1B3_check
  · simpa only [show rowA1 4 = cellA1B4 from rfl] using cellA1B4_check
  · simpa only [show rowA1 5 = cellA1B5 from rfl] using cellA1B5_check
  · simpa only [show rowA1 6 = cellA1B6 from rfl] using cellA1B6_check
  · simpa only [show rowA1 7 = cellA1B7 from rfl] using cellA1B7_check
  · simpa only [show rowA1 8 = cellA1B8 from rfl] using cellA1B8_check
  · simpa only [show rowA1 9 = cellA1B9 from rfl] using cellA1B9_check

theorem rowA1_block_check :
    blockCheck 5 7 Stage03.H Stage03.M Stage03.upper 1 1 1 9 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 1 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA1_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 1 b = rowA1 b from rfl] using h

end Math.B699.CRTStage3Pair57.Chunk000

#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA1B1_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA1B2_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA1B3_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA1B4_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA1B5_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA1B6_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA1B7_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA1B8_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA1B9_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.rowA1_cell_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.rowA1_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair57.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA2B1_check :
    cellCheck (5 ^ 2) (7 ^ 1)
      (heightCap Stage03.H Stage03.M (5 ^ 2))
      (heightCap Stage03.H Stage03.M (7 ^ 1)) Stage03.upper cellA2B1 = true := by
  decide +kernel

theorem cellA2B2_check :
    cellCheck (5 ^ 2) (7 ^ 2)
      (heightCap Stage03.H Stage03.M (5 ^ 2))
      (heightCap Stage03.H Stage03.M (7 ^ 2)) Stage03.upper cellA2B2 = true := by
  decide +kernel

theorem cellA2B3_check :
    cellCheck (5 ^ 2) (7 ^ 3)
      (heightCap Stage03.H Stage03.M (5 ^ 2))
      (heightCap Stage03.H Stage03.M (7 ^ 3)) Stage03.upper cellA2B3 = true := by
  decide +kernel

theorem cellA2B4_check :
    cellCheck (5 ^ 2) (7 ^ 4)
      (heightCap Stage03.H Stage03.M (5 ^ 2))
      (heightCap Stage03.H Stage03.M (7 ^ 4)) Stage03.upper cellA2B4 = true := by
  decide +kernel

theorem cellA2B5_check :
    cellCheck (5 ^ 2) (7 ^ 5)
      (heightCap Stage03.H Stage03.M (5 ^ 2))
      (heightCap Stage03.H Stage03.M (7 ^ 5)) Stage03.upper cellA2B5 = true := by
  decide +kernel

theorem cellA2B6_check :
    cellCheck (5 ^ 2) (7 ^ 6)
      (heightCap Stage03.H Stage03.M (5 ^ 2))
      (heightCap Stage03.H Stage03.M (7 ^ 6)) Stage03.upper cellA2B6 = true := by
  decide +kernel

theorem cellA2B7_check :
    cellCheck (5 ^ 2) (7 ^ 7)
      (heightCap Stage03.H Stage03.M (5 ^ 2))
      (heightCap Stage03.H Stage03.M (7 ^ 7)) Stage03.upper cellA2B7 = true := by
  decide +kernel

theorem cellA2B8_check :
    cellCheck (5 ^ 2) (7 ^ 8)
      (heightCap Stage03.H Stage03.M (5 ^ 2))
      (heightCap Stage03.H Stage03.M (7 ^ 8)) Stage03.upper cellA2B8 = true := by
  decide +kernel

theorem cellA2B9_check :
    cellCheck (5 ^ 2) (7 ^ 9)
      (heightCap Stage03.H Stage03.M (5 ^ 2))
      (heightCap Stage03.H Stage03.M (7 ^ 9)) Stage03.upper cellA2B9 = true := by
  decide +kernel

theorem rowA2_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 9) :
    cellCheck (5 ^ 2) (7 ^ b)
      (heightCap Stage03.H Stage03.M (5 ^ 2))
      (heightCap Stage03.H Stage03.M (7 ^ b)) Stage03.upper (rowA2 b) = true := by
  interval_cases b
  · simpa only [show rowA2 1 = cellA2B1 from rfl] using cellA2B1_check
  · simpa only [show rowA2 2 = cellA2B2 from rfl] using cellA2B2_check
  · simpa only [show rowA2 3 = cellA2B3 from rfl] using cellA2B3_check
  · simpa only [show rowA2 4 = cellA2B4 from rfl] using cellA2B4_check
  · simpa only [show rowA2 5 = cellA2B5 from rfl] using cellA2B5_check
  · simpa only [show rowA2 6 = cellA2B6 from rfl] using cellA2B6_check
  · simpa only [show rowA2 7 = cellA2B7 from rfl] using cellA2B7_check
  · simpa only [show rowA2 8 = cellA2B8 from rfl] using cellA2B8_check
  · simpa only [show rowA2 9 = cellA2B9 from rfl] using cellA2B9_check

theorem rowA2_block_check :
    blockCheck 5 7 Stage03.H Stage03.M Stage03.upper 2 1 1 9 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 2 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA2_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 2 b = rowA2 b from rfl] using h

end Math.B699.CRTStage3Pair57.Chunk000

#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA2B1_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA2B2_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA2B3_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA2B4_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA2B5_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA2B6_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA2B7_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA2B8_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA2B9_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.rowA2_cell_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.rowA2_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair57.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA3B1_check :
    cellCheck (5 ^ 3) (7 ^ 1)
      (heightCap Stage03.H Stage03.M (5 ^ 3))
      (heightCap Stage03.H Stage03.M (7 ^ 1)) Stage03.upper cellA3B1 = true := by
  decide +kernel

theorem cellA3B2_check :
    cellCheck (5 ^ 3) (7 ^ 2)
      (heightCap Stage03.H Stage03.M (5 ^ 3))
      (heightCap Stage03.H Stage03.M (7 ^ 2)) Stage03.upper cellA3B2 = true := by
  decide +kernel

theorem cellA3B3_check :
    cellCheck (5 ^ 3) (7 ^ 3)
      (heightCap Stage03.H Stage03.M (5 ^ 3))
      (heightCap Stage03.H Stage03.M (7 ^ 3)) Stage03.upper cellA3B3 = true := by
  decide +kernel

theorem cellA3B4_check :
    cellCheck (5 ^ 3) (7 ^ 4)
      (heightCap Stage03.H Stage03.M (5 ^ 3))
      (heightCap Stage03.H Stage03.M (7 ^ 4)) Stage03.upper cellA3B4 = true := by
  decide +kernel

theorem cellA3B5_check :
    cellCheck (5 ^ 3) (7 ^ 5)
      (heightCap Stage03.H Stage03.M (5 ^ 3))
      (heightCap Stage03.H Stage03.M (7 ^ 5)) Stage03.upper cellA3B5 = true := by
  decide +kernel

theorem cellA3B6_check :
    cellCheck (5 ^ 3) (7 ^ 6)
      (heightCap Stage03.H Stage03.M (5 ^ 3))
      (heightCap Stage03.H Stage03.M (7 ^ 6)) Stage03.upper cellA3B6 = true := by
  decide +kernel

theorem cellA3B7_check :
    cellCheck (5 ^ 3) (7 ^ 7)
      (heightCap Stage03.H Stage03.M (5 ^ 3))
      (heightCap Stage03.H Stage03.M (7 ^ 7)) Stage03.upper cellA3B7 = true := by
  decide +kernel

theorem cellA3B8_check :
    cellCheck (5 ^ 3) (7 ^ 8)
      (heightCap Stage03.H Stage03.M (5 ^ 3))
      (heightCap Stage03.H Stage03.M (7 ^ 8)) Stage03.upper cellA3B8 = true := by
  decide +kernel

theorem cellA3B9_check :
    cellCheck (5 ^ 3) (7 ^ 9)
      (heightCap Stage03.H Stage03.M (5 ^ 3))
      (heightCap Stage03.H Stage03.M (7 ^ 9)) Stage03.upper cellA3B9 = true := by
  decide +kernel

theorem rowA3_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 9) :
    cellCheck (5 ^ 3) (7 ^ b)
      (heightCap Stage03.H Stage03.M (5 ^ 3))
      (heightCap Stage03.H Stage03.M (7 ^ b)) Stage03.upper (rowA3 b) = true := by
  interval_cases b
  · simpa only [show rowA3 1 = cellA3B1 from rfl] using cellA3B1_check
  · simpa only [show rowA3 2 = cellA3B2 from rfl] using cellA3B2_check
  · simpa only [show rowA3 3 = cellA3B3 from rfl] using cellA3B3_check
  · simpa only [show rowA3 4 = cellA3B4 from rfl] using cellA3B4_check
  · simpa only [show rowA3 5 = cellA3B5 from rfl] using cellA3B5_check
  · simpa only [show rowA3 6 = cellA3B6 from rfl] using cellA3B6_check
  · simpa only [show rowA3 7 = cellA3B7 from rfl] using cellA3B7_check
  · simpa only [show rowA3 8 = cellA3B8 from rfl] using cellA3B8_check
  · simpa only [show rowA3 9 = cellA3B9 from rfl] using cellA3B9_check

theorem rowA3_block_check :
    blockCheck 5 7 Stage03.H Stage03.M Stage03.upper 3 1 1 9 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 3 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA3_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 3 b = rowA3 b from rfl] using h

end Math.B699.CRTStage3Pair57.Chunk000

#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA3B1_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA3B2_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA3B3_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA3B4_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA3B5_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA3B6_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA3B7_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA3B8_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA3B9_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.rowA3_cell_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.rowA3_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair57.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA4B1_check :
    cellCheck (5 ^ 4) (7 ^ 1)
      (heightCap Stage03.H Stage03.M (5 ^ 4))
      (heightCap Stage03.H Stage03.M (7 ^ 1)) Stage03.upper cellA4B1 = true := by
  decide +kernel

theorem cellA4B2_check :
    cellCheck (5 ^ 4) (7 ^ 2)
      (heightCap Stage03.H Stage03.M (5 ^ 4))
      (heightCap Stage03.H Stage03.M (7 ^ 2)) Stage03.upper cellA4B2 = true := by
  decide +kernel

theorem cellA4B3_check :
    cellCheck (5 ^ 4) (7 ^ 3)
      (heightCap Stage03.H Stage03.M (5 ^ 4))
      (heightCap Stage03.H Stage03.M (7 ^ 3)) Stage03.upper cellA4B3 = true := by
  decide +kernel

theorem cellA4B4_check :
    cellCheck (5 ^ 4) (7 ^ 4)
      (heightCap Stage03.H Stage03.M (5 ^ 4))
      (heightCap Stage03.H Stage03.M (7 ^ 4)) Stage03.upper cellA4B4 = true := by
  decide +kernel

theorem cellA4B5_check :
    cellCheck (5 ^ 4) (7 ^ 5)
      (heightCap Stage03.H Stage03.M (5 ^ 4))
      (heightCap Stage03.H Stage03.M (7 ^ 5)) Stage03.upper cellA4B5 = true := by
  decide +kernel

theorem cellA4B6_check :
    cellCheck (5 ^ 4) (7 ^ 6)
      (heightCap Stage03.H Stage03.M (5 ^ 4))
      (heightCap Stage03.H Stage03.M (7 ^ 6)) Stage03.upper cellA4B6 = true := by
  decide +kernel

theorem cellA4B7_check :
    cellCheck (5 ^ 4) (7 ^ 7)
      (heightCap Stage03.H Stage03.M (5 ^ 4))
      (heightCap Stage03.H Stage03.M (7 ^ 7)) Stage03.upper cellA4B7 = true := by
  decide +kernel

theorem cellA4B8_check :
    cellCheck (5 ^ 4) (7 ^ 8)
      (heightCap Stage03.H Stage03.M (5 ^ 4))
      (heightCap Stage03.H Stage03.M (7 ^ 8)) Stage03.upper cellA4B8 = true := by
  decide +kernel

theorem cellA4B9_check :
    cellCheck (5 ^ 4) (7 ^ 9)
      (heightCap Stage03.H Stage03.M (5 ^ 4))
      (heightCap Stage03.H Stage03.M (7 ^ 9)) Stage03.upper cellA4B9 = true := by
  decide +kernel

theorem rowA4_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 9) :
    cellCheck (5 ^ 4) (7 ^ b)
      (heightCap Stage03.H Stage03.M (5 ^ 4))
      (heightCap Stage03.H Stage03.M (7 ^ b)) Stage03.upper (rowA4 b) = true := by
  interval_cases b
  · simpa only [show rowA4 1 = cellA4B1 from rfl] using cellA4B1_check
  · simpa only [show rowA4 2 = cellA4B2 from rfl] using cellA4B2_check
  · simpa only [show rowA4 3 = cellA4B3 from rfl] using cellA4B3_check
  · simpa only [show rowA4 4 = cellA4B4 from rfl] using cellA4B4_check
  · simpa only [show rowA4 5 = cellA4B5 from rfl] using cellA4B5_check
  · simpa only [show rowA4 6 = cellA4B6 from rfl] using cellA4B6_check
  · simpa only [show rowA4 7 = cellA4B7 from rfl] using cellA4B7_check
  · simpa only [show rowA4 8 = cellA4B8 from rfl] using cellA4B8_check
  · simpa only [show rowA4 9 = cellA4B9 from rfl] using cellA4B9_check

theorem rowA4_block_check :
    blockCheck 5 7 Stage03.H Stage03.M Stage03.upper 4 1 1 9 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 4 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA4_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 4 b = rowA4 b from rfl] using h

end Math.B699.CRTStage3Pair57.Chunk000

#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA4B1_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA4B2_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA4B3_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA4B4_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA4B5_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA4B6_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA4B7_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA4B8_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA4B9_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.rowA4_cell_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.rowA4_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair57.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA5B1_check :
    cellCheck (5 ^ 5) (7 ^ 1)
      (heightCap Stage03.H Stage03.M (5 ^ 5))
      (heightCap Stage03.H Stage03.M (7 ^ 1)) Stage03.upper cellA5B1 = true := by
  decide +kernel

theorem cellA5B2_check :
    cellCheck (5 ^ 5) (7 ^ 2)
      (heightCap Stage03.H Stage03.M (5 ^ 5))
      (heightCap Stage03.H Stage03.M (7 ^ 2)) Stage03.upper cellA5B2 = true := by
  decide +kernel

theorem cellA5B3_check :
    cellCheck (5 ^ 5) (7 ^ 3)
      (heightCap Stage03.H Stage03.M (5 ^ 5))
      (heightCap Stage03.H Stage03.M (7 ^ 3)) Stage03.upper cellA5B3 = true := by
  decide +kernel

theorem cellA5B4_check :
    cellCheck (5 ^ 5) (7 ^ 4)
      (heightCap Stage03.H Stage03.M (5 ^ 5))
      (heightCap Stage03.H Stage03.M (7 ^ 4)) Stage03.upper cellA5B4 = true := by
  decide +kernel

theorem cellA5B5_check :
    cellCheck (5 ^ 5) (7 ^ 5)
      (heightCap Stage03.H Stage03.M (5 ^ 5))
      (heightCap Stage03.H Stage03.M (7 ^ 5)) Stage03.upper cellA5B5 = true := by
  decide +kernel

theorem cellA5B6_check :
    cellCheck (5 ^ 5) (7 ^ 6)
      (heightCap Stage03.H Stage03.M (5 ^ 5))
      (heightCap Stage03.H Stage03.M (7 ^ 6)) Stage03.upper cellA5B6 = true := by
  decide +kernel

theorem cellA5B7_check :
    cellCheck (5 ^ 5) (7 ^ 7)
      (heightCap Stage03.H Stage03.M (5 ^ 5))
      (heightCap Stage03.H Stage03.M (7 ^ 7)) Stage03.upper cellA5B7 = true := by
  decide +kernel

theorem cellA5B8_check :
    cellCheck (5 ^ 5) (7 ^ 8)
      (heightCap Stage03.H Stage03.M (5 ^ 5))
      (heightCap Stage03.H Stage03.M (7 ^ 8)) Stage03.upper cellA5B8 = true := by
  decide +kernel

theorem cellA5B9_check :
    cellCheck (5 ^ 5) (7 ^ 9)
      (heightCap Stage03.H Stage03.M (5 ^ 5))
      (heightCap Stage03.H Stage03.M (7 ^ 9)) Stage03.upper cellA5B9 = true := by
  decide +kernel

theorem rowA5_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 9) :
    cellCheck (5 ^ 5) (7 ^ b)
      (heightCap Stage03.H Stage03.M (5 ^ 5))
      (heightCap Stage03.H Stage03.M (7 ^ b)) Stage03.upper (rowA5 b) = true := by
  interval_cases b
  · simpa only [show rowA5 1 = cellA5B1 from rfl] using cellA5B1_check
  · simpa only [show rowA5 2 = cellA5B2 from rfl] using cellA5B2_check
  · simpa only [show rowA5 3 = cellA5B3 from rfl] using cellA5B3_check
  · simpa only [show rowA5 4 = cellA5B4 from rfl] using cellA5B4_check
  · simpa only [show rowA5 5 = cellA5B5 from rfl] using cellA5B5_check
  · simpa only [show rowA5 6 = cellA5B6 from rfl] using cellA5B6_check
  · simpa only [show rowA5 7 = cellA5B7 from rfl] using cellA5B7_check
  · simpa only [show rowA5 8 = cellA5B8 from rfl] using cellA5B8_check
  · simpa only [show rowA5 9 = cellA5B9 from rfl] using cellA5B9_check

theorem rowA5_block_check :
    blockCheck 5 7 Stage03.H Stage03.M Stage03.upper 5 1 1 9 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 5 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA5_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 5 b = rowA5 b from rfl] using h

end Math.B699.CRTStage3Pair57.Chunk000

#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA5B1_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA5B2_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA5B3_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA5B4_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA5B5_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA5B6_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA5B7_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA5B8_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA5B9_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.rowA5_cell_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.rowA5_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair57.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA6B1_check :
    cellCheck (5 ^ 6) (7 ^ 1)
      (heightCap Stage03.H Stage03.M (5 ^ 6))
      (heightCap Stage03.H Stage03.M (7 ^ 1)) Stage03.upper cellA6B1 = true := by
  decide +kernel

theorem cellA6B2_check :
    cellCheck (5 ^ 6) (7 ^ 2)
      (heightCap Stage03.H Stage03.M (5 ^ 6))
      (heightCap Stage03.H Stage03.M (7 ^ 2)) Stage03.upper cellA6B2 = true := by
  decide +kernel

theorem cellA6B3_check :
    cellCheck (5 ^ 6) (7 ^ 3)
      (heightCap Stage03.H Stage03.M (5 ^ 6))
      (heightCap Stage03.H Stage03.M (7 ^ 3)) Stage03.upper cellA6B3 = true := by
  decide +kernel

theorem cellA6B4_check :
    cellCheck (5 ^ 6) (7 ^ 4)
      (heightCap Stage03.H Stage03.M (5 ^ 6))
      (heightCap Stage03.H Stage03.M (7 ^ 4)) Stage03.upper cellA6B4 = true := by
  decide +kernel

theorem cellA6B5_check :
    cellCheck (5 ^ 6) (7 ^ 5)
      (heightCap Stage03.H Stage03.M (5 ^ 6))
      (heightCap Stage03.H Stage03.M (7 ^ 5)) Stage03.upper cellA6B5 = true := by
  decide +kernel

theorem cellA6B6_check :
    cellCheck (5 ^ 6) (7 ^ 6)
      (heightCap Stage03.H Stage03.M (5 ^ 6))
      (heightCap Stage03.H Stage03.M (7 ^ 6)) Stage03.upper cellA6B6 = true := by
  decide +kernel

theorem cellA6B7_check :
    cellCheck (5 ^ 6) (7 ^ 7)
      (heightCap Stage03.H Stage03.M (5 ^ 6))
      (heightCap Stage03.H Stage03.M (7 ^ 7)) Stage03.upper cellA6B7 = true := by
  decide +kernel

theorem cellA6B8_check :
    cellCheck (5 ^ 6) (7 ^ 8)
      (heightCap Stage03.H Stage03.M (5 ^ 6))
      (heightCap Stage03.H Stage03.M (7 ^ 8)) Stage03.upper cellA6B8 = true := by
  decide +kernel

theorem cellA6B9_check :
    cellCheck (5 ^ 6) (7 ^ 9)
      (heightCap Stage03.H Stage03.M (5 ^ 6))
      (heightCap Stage03.H Stage03.M (7 ^ 9)) Stage03.upper cellA6B9 = true := by
  decide +kernel

theorem rowA6_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 9) :
    cellCheck (5 ^ 6) (7 ^ b)
      (heightCap Stage03.H Stage03.M (5 ^ 6))
      (heightCap Stage03.H Stage03.M (7 ^ b)) Stage03.upper (rowA6 b) = true := by
  interval_cases b
  · simpa only [show rowA6 1 = cellA6B1 from rfl] using cellA6B1_check
  · simpa only [show rowA6 2 = cellA6B2 from rfl] using cellA6B2_check
  · simpa only [show rowA6 3 = cellA6B3 from rfl] using cellA6B3_check
  · simpa only [show rowA6 4 = cellA6B4 from rfl] using cellA6B4_check
  · simpa only [show rowA6 5 = cellA6B5 from rfl] using cellA6B5_check
  · simpa only [show rowA6 6 = cellA6B6 from rfl] using cellA6B6_check
  · simpa only [show rowA6 7 = cellA6B7 from rfl] using cellA6B7_check
  · simpa only [show rowA6 8 = cellA6B8 from rfl] using cellA6B8_check
  · simpa only [show rowA6 9 = cellA6B9 from rfl] using cellA6B9_check

theorem rowA6_block_check :
    blockCheck 5 7 Stage03.H Stage03.M Stage03.upper 6 1 1 9 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 6 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA6_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 6 b = rowA6 b from rfl] using h

end Math.B699.CRTStage3Pair57.Chunk000

#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA6B1_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA6B2_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA6B3_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA6B4_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA6B5_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA6B6_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA6B7_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA6B8_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA6B9_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.rowA6_cell_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.rowA6_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair57.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA7B1_check :
    cellCheck (5 ^ 7) (7 ^ 1)
      (heightCap Stage03.H Stage03.M (5 ^ 7))
      (heightCap Stage03.H Stage03.M (7 ^ 1)) Stage03.upper cellA7B1 = true := by
  decide +kernel

theorem cellA7B2_check :
    cellCheck (5 ^ 7) (7 ^ 2)
      (heightCap Stage03.H Stage03.M (5 ^ 7))
      (heightCap Stage03.H Stage03.M (7 ^ 2)) Stage03.upper cellA7B2 = true := by
  decide +kernel

theorem cellA7B3_check :
    cellCheck (5 ^ 7) (7 ^ 3)
      (heightCap Stage03.H Stage03.M (5 ^ 7))
      (heightCap Stage03.H Stage03.M (7 ^ 3)) Stage03.upper cellA7B3 = true := by
  decide +kernel

theorem cellA7B4_check :
    cellCheck (5 ^ 7) (7 ^ 4)
      (heightCap Stage03.H Stage03.M (5 ^ 7))
      (heightCap Stage03.H Stage03.M (7 ^ 4)) Stage03.upper cellA7B4 = true := by
  decide +kernel

theorem cellA7B5_check :
    cellCheck (5 ^ 7) (7 ^ 5)
      (heightCap Stage03.H Stage03.M (5 ^ 7))
      (heightCap Stage03.H Stage03.M (7 ^ 5)) Stage03.upper cellA7B5 = true := by
  decide +kernel

theorem cellA7B6_check :
    cellCheck (5 ^ 7) (7 ^ 6)
      (heightCap Stage03.H Stage03.M (5 ^ 7))
      (heightCap Stage03.H Stage03.M (7 ^ 6)) Stage03.upper cellA7B6 = true := by
  decide +kernel

theorem cellA7B7_check :
    cellCheck (5 ^ 7) (7 ^ 7)
      (heightCap Stage03.H Stage03.M (5 ^ 7))
      (heightCap Stage03.H Stage03.M (7 ^ 7)) Stage03.upper cellA7B7 = true := by
  decide +kernel

theorem cellA7B8_check :
    cellCheck (5 ^ 7) (7 ^ 8)
      (heightCap Stage03.H Stage03.M (5 ^ 7))
      (heightCap Stage03.H Stage03.M (7 ^ 8)) Stage03.upper cellA7B8 = true := by
  decide +kernel

theorem cellA7B9_check :
    cellCheck (5 ^ 7) (7 ^ 9)
      (heightCap Stage03.H Stage03.M (5 ^ 7))
      (heightCap Stage03.H Stage03.M (7 ^ 9)) Stage03.upper cellA7B9 = true := by
  decide +kernel

theorem rowA7_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 9) :
    cellCheck (5 ^ 7) (7 ^ b)
      (heightCap Stage03.H Stage03.M (5 ^ 7))
      (heightCap Stage03.H Stage03.M (7 ^ b)) Stage03.upper (rowA7 b) = true := by
  interval_cases b
  · simpa only [show rowA7 1 = cellA7B1 from rfl] using cellA7B1_check
  · simpa only [show rowA7 2 = cellA7B2 from rfl] using cellA7B2_check
  · simpa only [show rowA7 3 = cellA7B3 from rfl] using cellA7B3_check
  · simpa only [show rowA7 4 = cellA7B4 from rfl] using cellA7B4_check
  · simpa only [show rowA7 5 = cellA7B5 from rfl] using cellA7B5_check
  · simpa only [show rowA7 6 = cellA7B6 from rfl] using cellA7B6_check
  · simpa only [show rowA7 7 = cellA7B7 from rfl] using cellA7B7_check
  · simpa only [show rowA7 8 = cellA7B8 from rfl] using cellA7B8_check
  · simpa only [show rowA7 9 = cellA7B9 from rfl] using cellA7B9_check

theorem rowA7_block_check :
    blockCheck 5 7 Stage03.H Stage03.M Stage03.upper 7 1 1 9 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 7 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA7_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 7 b = rowA7 b from rfl] using h

end Math.B699.CRTStage3Pair57.Chunk000

#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA7B1_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA7B2_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA7B3_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA7B4_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA7B5_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA7B6_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA7B7_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA7B8_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA7B9_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.rowA7_cell_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.rowA7_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair57.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA8B1_check :
    cellCheck (5 ^ 8) (7 ^ 1)
      (heightCap Stage03.H Stage03.M (5 ^ 8))
      (heightCap Stage03.H Stage03.M (7 ^ 1)) Stage03.upper cellA8B1 = true := by
  decide +kernel

theorem cellA8B2_check :
    cellCheck (5 ^ 8) (7 ^ 2)
      (heightCap Stage03.H Stage03.M (5 ^ 8))
      (heightCap Stage03.H Stage03.M (7 ^ 2)) Stage03.upper cellA8B2 = true := by
  decide +kernel

theorem cellA8B3_check :
    cellCheck (5 ^ 8) (7 ^ 3)
      (heightCap Stage03.H Stage03.M (5 ^ 8))
      (heightCap Stage03.H Stage03.M (7 ^ 3)) Stage03.upper cellA8B3 = true := by
  decide +kernel

theorem cellA8B4_check :
    cellCheck (5 ^ 8) (7 ^ 4)
      (heightCap Stage03.H Stage03.M (5 ^ 8))
      (heightCap Stage03.H Stage03.M (7 ^ 4)) Stage03.upper cellA8B4 = true := by
  decide +kernel

theorem cellA8B5_check :
    cellCheck (5 ^ 8) (7 ^ 5)
      (heightCap Stage03.H Stage03.M (5 ^ 8))
      (heightCap Stage03.H Stage03.M (7 ^ 5)) Stage03.upper cellA8B5 = true := by
  decide +kernel

theorem cellA8B6_check :
    cellCheck (5 ^ 8) (7 ^ 6)
      (heightCap Stage03.H Stage03.M (5 ^ 8))
      (heightCap Stage03.H Stage03.M (7 ^ 6)) Stage03.upper cellA8B6 = true := by
  decide +kernel

theorem cellA8B7_check :
    cellCheck (5 ^ 8) (7 ^ 7)
      (heightCap Stage03.H Stage03.M (5 ^ 8))
      (heightCap Stage03.H Stage03.M (7 ^ 7)) Stage03.upper cellA8B7 = true := by
  decide +kernel

theorem cellA8B8_check :
    cellCheck (5 ^ 8) (7 ^ 8)
      (heightCap Stage03.H Stage03.M (5 ^ 8))
      (heightCap Stage03.H Stage03.M (7 ^ 8)) Stage03.upper cellA8B8 = true := by
  decide +kernel

theorem cellA8B9_check :
    cellCheck (5 ^ 8) (7 ^ 9)
      (heightCap Stage03.H Stage03.M (5 ^ 8))
      (heightCap Stage03.H Stage03.M (7 ^ 9)) Stage03.upper cellA8B9 = true := by
  decide +kernel

theorem rowA8_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 9) :
    cellCheck (5 ^ 8) (7 ^ b)
      (heightCap Stage03.H Stage03.M (5 ^ 8))
      (heightCap Stage03.H Stage03.M (7 ^ b)) Stage03.upper (rowA8 b) = true := by
  interval_cases b
  · simpa only [show rowA8 1 = cellA8B1 from rfl] using cellA8B1_check
  · simpa only [show rowA8 2 = cellA8B2 from rfl] using cellA8B2_check
  · simpa only [show rowA8 3 = cellA8B3 from rfl] using cellA8B3_check
  · simpa only [show rowA8 4 = cellA8B4 from rfl] using cellA8B4_check
  · simpa only [show rowA8 5 = cellA8B5 from rfl] using cellA8B5_check
  · simpa only [show rowA8 6 = cellA8B6 from rfl] using cellA8B6_check
  · simpa only [show rowA8 7 = cellA8B7 from rfl] using cellA8B7_check
  · simpa only [show rowA8 8 = cellA8B8 from rfl] using cellA8B8_check
  · simpa only [show rowA8 9 = cellA8B9 from rfl] using cellA8B9_check

theorem rowA8_block_check :
    blockCheck 5 7 Stage03.H Stage03.M Stage03.upper 8 1 1 9 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 8 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA8_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 8 b = rowA8 b from rfl] using h

end Math.B699.CRTStage3Pair57.Chunk000

#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA8B1_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA8B2_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA8B3_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA8B4_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA8B5_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA8B6_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA8B7_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA8B8_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.cellA8B9_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.rowA8_cell_check
#print axioms Math.B699.CRTStage3Pair57.Chunk000.rowA8_block_check
