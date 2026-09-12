import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair25.Chunk002Data
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair25.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA17B1_check :
    cellCheck (2 ^ 17) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA17B1 = true := by
  decide +kernel

theorem cellA17B2_check :
    cellCheck (2 ^ 17) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA17B2 = true := by
  decide +kernel

theorem cellA17B3_check :
    cellCheck (2 ^ 17) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA17B3 = true := by
  decide +kernel

theorem cellA17B4_check :
    cellCheck (2 ^ 17) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA17B4 = true := by
  decide +kernel

theorem cellA17B5_check :
    cellCheck (2 ^ 17) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA17B5 = true := by
  decide +kernel

theorem cellA17B6_check :
    cellCheck (2 ^ 17) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA17B6 = true := by
  decide +kernel

theorem cellA17B7_check :
    cellCheck (2 ^ 17) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA17B7 = true := by
  decide +kernel

theorem cellA17B8_check :
    cellCheck (2 ^ 17) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA17B8 = true := by
  decide +kernel

theorem cellA17B9_check :
    cellCheck (2 ^ 17) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA17B9 = true := by
  decide +kernel

theorem cellA17B10_check :
    cellCheck (2 ^ 17) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA17B10 = true := by
  decide +kernel

theorem cellA17B11_check :
    cellCheck (2 ^ 17) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA17B11 = true := by
  decide +kernel

theorem rowA17_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (2 ^ 17) (5 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 17))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA17 b) = true := by
  interval_cases b
  · simpa only [show rowA17 1 = cellA17B1 from rfl] using cellA17B1_check
  · simpa only [show rowA17 2 = cellA17B2 from rfl] using cellA17B2_check
  · simpa only [show rowA17 3 = cellA17B3 from rfl] using cellA17B3_check
  · simpa only [show rowA17 4 = cellA17B4 from rfl] using cellA17B4_check
  · simpa only [show rowA17 5 = cellA17B5 from rfl] using cellA17B5_check
  · simpa only [show rowA17 6 = cellA17B6 from rfl] using cellA17B6_check
  · simpa only [show rowA17 7 = cellA17B7 from rfl] using cellA17B7_check
  · simpa only [show rowA17 8 = cellA17B8 from rfl] using cellA17B8_check
  · simpa only [show rowA17 9 = cellA17B9 from rfl] using cellA17B9_check
  · simpa only [show rowA17 10 = cellA17B10 from rfl] using cellA17B10_check
  · simpa only [show rowA17 11 = cellA17B11 from rfl] using cellA17B11_check

theorem rowA17_block_check :
    blockCheck 2 5 Stage03.H Stage03.M Stage03.upper 17 1 1 11 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 17 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA17_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 17 b = rowA17 b from rfl] using h

end Math.B699.CRTStage3Pair25.Chunk002

#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B1_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B2_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B3_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B4_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B5_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B6_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B7_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B8_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B9_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B10_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA17B11_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA17_cell_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA17_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair25.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA18B1_check :
    cellCheck (2 ^ 18) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA18B1 = true := by
  decide +kernel

theorem cellA18B2_check :
    cellCheck (2 ^ 18) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA18B2 = true := by
  decide +kernel

theorem cellA18B3_check :
    cellCheck (2 ^ 18) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA18B3 = true := by
  decide +kernel

theorem cellA18B4_check :
    cellCheck (2 ^ 18) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA18B4 = true := by
  decide +kernel

theorem cellA18B5_check :
    cellCheck (2 ^ 18) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA18B5 = true := by
  decide +kernel

theorem cellA18B6_check :
    cellCheck (2 ^ 18) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA18B6 = true := by
  decide +kernel

theorem cellA18B7_check :
    cellCheck (2 ^ 18) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA18B7 = true := by
  decide +kernel

theorem cellA18B8_check :
    cellCheck (2 ^ 18) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA18B8 = true := by
  decide +kernel

theorem cellA18B9_check :
    cellCheck (2 ^ 18) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA18B9 = true := by
  decide +kernel

theorem cellA18B10_check :
    cellCheck (2 ^ 18) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA18B10 = true := by
  decide +kernel

theorem cellA18B11_check :
    cellCheck (2 ^ 18) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA18B11 = true := by
  decide +kernel

theorem rowA18_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (2 ^ 18) (5 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 18))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA18 b) = true := by
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

theorem rowA18_block_check :
    blockCheck 2 5 Stage03.H Stage03.M Stage03.upper 18 1 1 11 chunkData = true := by
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

end Math.B699.CRTStage3Pair25.Chunk002

#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA18B1_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA18B2_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA18B3_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA18B4_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA18B5_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA18B6_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA18B7_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA18B8_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA18B9_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA18B10_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA18B11_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA18_cell_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA18_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair25.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA19B1_check :
    cellCheck (2 ^ 19) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA19B1 = true := by
  decide +kernel

theorem cellA19B2_check :
    cellCheck (2 ^ 19) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA19B2 = true := by
  decide +kernel

theorem cellA19B3_check :
    cellCheck (2 ^ 19) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA19B3 = true := by
  decide +kernel

theorem cellA19B4_check :
    cellCheck (2 ^ 19) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA19B4 = true := by
  decide +kernel

theorem cellA19B5_check :
    cellCheck (2 ^ 19) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA19B5 = true := by
  decide +kernel

theorem cellA19B6_check :
    cellCheck (2 ^ 19) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA19B6 = true := by
  decide +kernel

theorem cellA19B7_check :
    cellCheck (2 ^ 19) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA19B7 = true := by
  decide +kernel

theorem cellA19B8_check :
    cellCheck (2 ^ 19) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA19B8 = true := by
  decide +kernel

theorem cellA19B9_check :
    cellCheck (2 ^ 19) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA19B9 = true := by
  decide +kernel

theorem cellA19B10_check :
    cellCheck (2 ^ 19) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA19B10 = true := by
  decide +kernel

theorem cellA19B11_check :
    cellCheck (2 ^ 19) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA19B11 = true := by
  decide +kernel

theorem rowA19_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (2 ^ 19) (5 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 19))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA19 b) = true := by
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

theorem rowA19_block_check :
    blockCheck 2 5 Stage03.H Stage03.M Stage03.upper 19 1 1 11 chunkData = true := by
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

end Math.B699.CRTStage3Pair25.Chunk002

#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA19B1_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA19B2_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA19B3_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA19B4_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA19B5_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA19B6_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA19B7_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA19B8_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA19B9_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA19B10_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA19B11_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA19_cell_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA19_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair25.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA20B1_check :
    cellCheck (2 ^ 20) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA20B1 = true := by
  decide +kernel

theorem cellA20B2_check :
    cellCheck (2 ^ 20) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA20B2 = true := by
  decide +kernel

theorem cellA20B3_check :
    cellCheck (2 ^ 20) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA20B3 = true := by
  decide +kernel

theorem cellA20B4_check :
    cellCheck (2 ^ 20) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA20B4 = true := by
  decide +kernel

theorem cellA20B5_check :
    cellCheck (2 ^ 20) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA20B5 = true := by
  decide +kernel

theorem cellA20B6_check :
    cellCheck (2 ^ 20) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA20B6 = true := by
  decide +kernel

theorem cellA20B7_check :
    cellCheck (2 ^ 20) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA20B7 = true := by
  decide +kernel

theorem cellA20B8_check :
    cellCheck (2 ^ 20) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA20B8 = true := by
  decide +kernel

theorem cellA20B9_check :
    cellCheck (2 ^ 20) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA20B9 = true := by
  decide +kernel

theorem cellA20B10_check :
    cellCheck (2 ^ 20) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA20B10 = true := by
  decide +kernel

theorem cellA20B11_check :
    cellCheck (2 ^ 20) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA20B11 = true := by
  decide +kernel

theorem rowA20_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (2 ^ 20) (5 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 20))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA20 b) = true := by
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
  · simpa only [show rowA20 10 = cellA20B10 from rfl] using cellA20B10_check
  · simpa only [show rowA20 11 = cellA20B11 from rfl] using cellA20B11_check

theorem rowA20_block_check :
    blockCheck 2 5 Stage03.H Stage03.M Stage03.upper 20 1 1 11 chunkData = true := by
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

end Math.B699.CRTStage3Pair25.Chunk002

#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA20B1_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA20B2_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA20B3_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA20B4_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA20B5_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA20B6_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA20B7_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA20B8_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA20B9_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA20B10_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA20B11_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA20_cell_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA20_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair25.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA21B1_check :
    cellCheck (2 ^ 21) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA21B1 = true := by
  decide +kernel

theorem cellA21B2_check :
    cellCheck (2 ^ 21) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA21B2 = true := by
  decide +kernel

theorem cellA21B3_check :
    cellCheck (2 ^ 21) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA21B3 = true := by
  decide +kernel

theorem cellA21B4_check :
    cellCheck (2 ^ 21) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA21B4 = true := by
  decide +kernel

theorem cellA21B5_check :
    cellCheck (2 ^ 21) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA21B5 = true := by
  decide +kernel

theorem cellA21B6_check :
    cellCheck (2 ^ 21) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA21B6 = true := by
  decide +kernel

theorem cellA21B7_check :
    cellCheck (2 ^ 21) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA21B7 = true := by
  decide +kernel

theorem cellA21B8_check :
    cellCheck (2 ^ 21) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA21B8 = true := by
  decide +kernel

theorem cellA21B9_check :
    cellCheck (2 ^ 21) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA21B9 = true := by
  decide +kernel

theorem cellA21B10_check :
    cellCheck (2 ^ 21) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA21B10 = true := by
  decide +kernel

theorem cellA21B11_check :
    cellCheck (2 ^ 21) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA21B11 = true := by
  decide +kernel

theorem rowA21_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (2 ^ 21) (5 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 21))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA21 b) = true := by
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
  · simpa only [show rowA21 10 = cellA21B10 from rfl] using cellA21B10_check
  · simpa only [show rowA21 11 = cellA21B11 from rfl] using cellA21B11_check

theorem rowA21_block_check :
    blockCheck 2 5 Stage03.H Stage03.M Stage03.upper 21 1 1 11 chunkData = true := by
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

end Math.B699.CRTStage3Pair25.Chunk002

#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA21B1_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA21B2_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA21B3_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA21B4_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA21B5_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA21B6_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA21B7_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA21B8_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA21B9_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA21B10_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA21B11_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA21_cell_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA21_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair25.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA22B1_check :
    cellCheck (2 ^ 22) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA22B1 = true := by
  decide +kernel

theorem cellA22B2_check :
    cellCheck (2 ^ 22) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA22B2 = true := by
  decide +kernel

theorem cellA22B3_check :
    cellCheck (2 ^ 22) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA22B3 = true := by
  decide +kernel

theorem cellA22B4_check :
    cellCheck (2 ^ 22) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA22B4 = true := by
  decide +kernel

theorem cellA22B5_check :
    cellCheck (2 ^ 22) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA22B5 = true := by
  decide +kernel

theorem cellA22B6_check :
    cellCheck (2 ^ 22) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA22B6 = true := by
  decide +kernel

theorem cellA22B7_check :
    cellCheck (2 ^ 22) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA22B7 = true := by
  decide +kernel

theorem cellA22B8_check :
    cellCheck (2 ^ 22) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA22B8 = true := by
  decide +kernel

theorem cellA22B9_check :
    cellCheck (2 ^ 22) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA22B9 = true := by
  decide +kernel

theorem cellA22B10_check :
    cellCheck (2 ^ 22) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA22B10 = true := by
  decide +kernel

theorem cellA22B11_check :
    cellCheck (2 ^ 22) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA22B11 = true := by
  decide +kernel

theorem rowA22_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (2 ^ 22) (5 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 22))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA22 b) = true := by
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
  · simpa only [show rowA22 10 = cellA22B10 from rfl] using cellA22B10_check
  · simpa only [show rowA22 11 = cellA22B11 from rfl] using cellA22B11_check

theorem rowA22_block_check :
    blockCheck 2 5 Stage03.H Stage03.M Stage03.upper 22 1 1 11 chunkData = true := by
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

end Math.B699.CRTStage3Pair25.Chunk002

#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B1_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B2_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B3_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B4_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B5_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B6_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B7_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B8_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B9_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B10_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA22B11_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA22_cell_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA22_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair25.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA23B1_check :
    cellCheck (2 ^ 23) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA23B1 = true := by
  decide +kernel

theorem cellA23B2_check :
    cellCheck (2 ^ 23) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA23B2 = true := by
  decide +kernel

theorem cellA23B3_check :
    cellCheck (2 ^ 23) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA23B3 = true := by
  decide +kernel

theorem cellA23B4_check :
    cellCheck (2 ^ 23) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA23B4 = true := by
  decide +kernel

theorem cellA23B5_check :
    cellCheck (2 ^ 23) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA23B5 = true := by
  decide +kernel

theorem cellA23B6_check :
    cellCheck (2 ^ 23) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA23B6 = true := by
  decide +kernel

theorem cellA23B7_check :
    cellCheck (2 ^ 23) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA23B7 = true := by
  decide +kernel

theorem cellA23B8_check :
    cellCheck (2 ^ 23) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA23B8 = true := by
  decide +kernel

theorem cellA23B9_check :
    cellCheck (2 ^ 23) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA23B9 = true := by
  decide +kernel

theorem cellA23B10_check :
    cellCheck (2 ^ 23) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA23B10 = true := by
  decide +kernel

theorem cellA23B11_check :
    cellCheck (2 ^ 23) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA23B11 = true := by
  decide +kernel

theorem rowA23_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (2 ^ 23) (5 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 23))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA23 b) = true := by
  interval_cases b
  · simpa only [show rowA23 1 = cellA23B1 from rfl] using cellA23B1_check
  · simpa only [show rowA23 2 = cellA23B2 from rfl] using cellA23B2_check
  · simpa only [show rowA23 3 = cellA23B3 from rfl] using cellA23B3_check
  · simpa only [show rowA23 4 = cellA23B4 from rfl] using cellA23B4_check
  · simpa only [show rowA23 5 = cellA23B5 from rfl] using cellA23B5_check
  · simpa only [show rowA23 6 = cellA23B6 from rfl] using cellA23B6_check
  · simpa only [show rowA23 7 = cellA23B7 from rfl] using cellA23B7_check
  · simpa only [show rowA23 8 = cellA23B8 from rfl] using cellA23B8_check
  · simpa only [show rowA23 9 = cellA23B9 from rfl] using cellA23B9_check
  · simpa only [show rowA23 10 = cellA23B10 from rfl] using cellA23B10_check
  · simpa only [show rowA23 11 = cellA23B11 from rfl] using cellA23B11_check

theorem rowA23_block_check :
    blockCheck 2 5 Stage03.H Stage03.M Stage03.upper 23 1 1 11 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 23 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA23_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 23 b = rowA23 b from rfl] using h

end Math.B699.CRTStage3Pair25.Chunk002

#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA23B1_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA23B2_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA23B3_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA23B4_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA23B5_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA23B6_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA23B7_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA23B8_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA23B9_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA23B10_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA23B11_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA23_cell_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA23_block_check

/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair25.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA24B1_check :
    cellCheck (2 ^ 24) (5 ^ 1)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (5 ^ 1)) Stage03.upper cellA24B1 = true := by
  decide +kernel

theorem cellA24B2_check :
    cellCheck (2 ^ 24) (5 ^ 2)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (5 ^ 2)) Stage03.upper cellA24B2 = true := by
  decide +kernel

theorem cellA24B3_check :
    cellCheck (2 ^ 24) (5 ^ 3)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (5 ^ 3)) Stage03.upper cellA24B3 = true := by
  decide +kernel

theorem cellA24B4_check :
    cellCheck (2 ^ 24) (5 ^ 4)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (5 ^ 4)) Stage03.upper cellA24B4 = true := by
  decide +kernel

theorem cellA24B5_check :
    cellCheck (2 ^ 24) (5 ^ 5)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (5 ^ 5)) Stage03.upper cellA24B5 = true := by
  decide +kernel

theorem cellA24B6_check :
    cellCheck (2 ^ 24) (5 ^ 6)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (5 ^ 6)) Stage03.upper cellA24B6 = true := by
  decide +kernel

theorem cellA24B7_check :
    cellCheck (2 ^ 24) (5 ^ 7)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (5 ^ 7)) Stage03.upper cellA24B7 = true := by
  decide +kernel

theorem cellA24B8_check :
    cellCheck (2 ^ 24) (5 ^ 8)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (5 ^ 8)) Stage03.upper cellA24B8 = true := by
  decide +kernel

theorem cellA24B9_check :
    cellCheck (2 ^ 24) (5 ^ 9)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (5 ^ 9)) Stage03.upper cellA24B9 = true := by
  decide +kernel

theorem cellA24B10_check :
    cellCheck (2 ^ 24) (5 ^ 10)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (5 ^ 10)) Stage03.upper cellA24B10 = true := by
  decide +kernel

theorem cellA24B11_check :
    cellCheck (2 ^ 24) (5 ^ 11)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (5 ^ 11)) Stage03.upper cellA24B11 = true := by
  decide +kernel

theorem rowA24_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 11) :
    cellCheck (2 ^ 24) (5 ^ b)
      (heightCap Stage03.H Stage03.M (2 ^ 24))
      (heightCap Stage03.H Stage03.M (5 ^ b)) Stage03.upper (rowA24 b) = true := by
  interval_cases b
  · simpa only [show rowA24 1 = cellA24B1 from rfl] using cellA24B1_check
  · simpa only [show rowA24 2 = cellA24B2 from rfl] using cellA24B2_check
  · simpa only [show rowA24 3 = cellA24B3 from rfl] using cellA24B3_check
  · simpa only [show rowA24 4 = cellA24B4 from rfl] using cellA24B4_check
  · simpa only [show rowA24 5 = cellA24B5 from rfl] using cellA24B5_check
  · simpa only [show rowA24 6 = cellA24B6 from rfl] using cellA24B6_check
  · simpa only [show rowA24 7 = cellA24B7 from rfl] using cellA24B7_check
  · simpa only [show rowA24 8 = cellA24B8 from rfl] using cellA24B8_check
  · simpa only [show rowA24 9 = cellA24B9 from rfl] using cellA24B9_check
  · simpa only [show rowA24 10 = cellA24B10 from rfl] using cellA24B10_check
  · simpa only [show rowA24 11 = cellA24B11 from rfl] using cellA24B11_check

theorem rowA24_block_check :
    blockCheck 2 5 Stage03.H Stage03.M Stage03.upper 24 1 1 11 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 24 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA24_cell_check b hbb.1 (by omega)
  simpa only [show chunkData 24 b = rowA24 b from rfl] using h

end Math.B699.CRTStage3Pair25.Chunk002

#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA24B1_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA24B2_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA24B3_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA24B4_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA24B5_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA24B6_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA24B7_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA24B8_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA24B9_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA24B10_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.cellA24B11_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA24_cell_check
#print axioms Math.B699.CRTStage3Pair25.Chunk002.rowA24_block_check
