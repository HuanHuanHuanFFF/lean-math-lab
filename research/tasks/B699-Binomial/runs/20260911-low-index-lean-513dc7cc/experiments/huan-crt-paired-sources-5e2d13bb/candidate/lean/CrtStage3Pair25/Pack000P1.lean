import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair25.Chunk000Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair25.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA3B1_check :
    cellCheck (2 ^ 3) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 3))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA3B1 = true := by
  decide +kernel

theorem cellA3B2_check :
    cellCheck (2 ^ 3) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 3))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA3B2 = true := by
  decide +kernel

theorem cellA3B3_check :
    cellCheck (2 ^ 3) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 3))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA3B3 = true := by
  decide +kernel

theorem cellA3B4_check :
    cellCheck (2 ^ 3) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 3))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA3B4 = true := by
  decide +kernel

theorem cellA3B5_check :
    cellCheck (2 ^ 3) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 3))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA3B5 = true := by
  decide +kernel

theorem cellA3B6_check :
    cellCheck (2 ^ 3) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 3))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA3B6 = true := by
  decide +kernel

theorem cellA3B7_check :
    cellCheck (2 ^ 3) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 3))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA3B7 = true := by
  decide +kernel

theorem cellA3B8_check :
    cellCheck (2 ^ 3) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 3))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA3B8 = true := by
  decide +kernel

theorem cellA3B9_check :
    cellCheck (2 ^ 3) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 3))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA3B9 = true := by
  decide +kernel

theorem cellA3B10_check :
    cellCheck (2 ^ 3) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 3))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA3B10 = true := by
  decide +kernel

theorem cellA3B11_check :
    cellCheck (2 ^ 3) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 3))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA3B11 = true := by
  decide +kernel

theorem rowA3_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (2 ^ 3) (5 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 3))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA3 b) = true := by
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
  · simpa only [show rowA3 10 = cellA3B10 from rfl] using cellA3B10_check
  · simpa only [show rowA3 11 = cellA3B11 from rfl] using cellA3B11_check

theorem rowA3_block_check :
    blockCheck 2 5 Stage03.H Stage03.M Stage03.upper 3 1 1 11 chunkData = true := by
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

end Math.B699.CRTStage3Pair25.Chunk000

#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA3B1_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA3B2_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA3B3_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA3B4_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA3B5_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA3B6_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA3B7_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA3B8_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA3B9_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA3B10_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA3B11_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.rowA3_cell_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.rowA3_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair25.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA4B1_check :
    cellCheck (2 ^ 4) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA4B1 = true := by
  decide +kernel

theorem cellA4B2_check :
    cellCheck (2 ^ 4) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA4B2 = true := by
  decide +kernel

theorem cellA4B3_check :
    cellCheck (2 ^ 4) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA4B3 = true := by
  decide +kernel

theorem cellA4B4_check :
    cellCheck (2 ^ 4) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA4B4 = true := by
  decide +kernel

theorem cellA4B5_check :
    cellCheck (2 ^ 4) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA4B5 = true := by
  decide +kernel

theorem cellA4B6_check :
    cellCheck (2 ^ 4) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA4B6 = true := by
  decide +kernel

theorem cellA4B7_check :
    cellCheck (2 ^ 4) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA4B7 = true := by
  decide +kernel

theorem cellA4B8_check :
    cellCheck (2 ^ 4) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA4B8 = true := by
  decide +kernel

theorem cellA4B9_check :
    cellCheck (2 ^ 4) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA4B9 = true := by
  decide +kernel

theorem cellA4B10_check :
    cellCheck (2 ^ 4) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA4B10 = true := by
  decide +kernel

theorem cellA4B11_check :
    cellCheck (2 ^ 4) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA4B11 = true := by
  decide +kernel

theorem rowA4_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (2 ^ 4) (5 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 4))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA4 b) = true := by
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
  · simpa only [show rowA4 10 = cellA4B10 from rfl] using cellA4B10_check
  · simpa only [show rowA4 11 = cellA4B11 from rfl] using cellA4B11_check

theorem rowA4_block_check :
    blockCheck 2 5 Stage03.H Stage03.M Stage03.upper 4 1 1 11 chunkData = true := by
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

end Math.B699.CRTStage3Pair25.Chunk000

#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA4B1_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA4B2_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA4B3_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA4B4_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA4B5_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA4B6_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA4B7_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA4B8_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA4B9_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA4B10_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.cellA4B11_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.rowA4_cell_check
#print axioms Math.B699.CRTStage3Pair25.Chunk000.rowA4_block_check
