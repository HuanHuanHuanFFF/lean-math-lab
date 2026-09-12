import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCrt.Block
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED complete stage04 membership table; all21 shifts and complete
RowCell parameter ranges are retained. No whole-grid decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.I11TerminalMembership.Pair23
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

theorem cellA4B1_check :
    cellCoverCheck (2 ^ 4) (3 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 1)) cellA4B1 candidates = true := by
  decide +kernel

theorem cellA4B2_check :
    cellCoverCheck (2 ^ 4) (3 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 2)) cellA4B2 candidates = true := by
  decide +kernel

theorem cellA4B3_shift00_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (-10) (cellA4B3.bounds (-10)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift01_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (-9) (cellA4B3.bounds (-9)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift02_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (-8) (cellA4B3.bounds (-8)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift03_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (-7) (cellA4B3.bounds (-7)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift04_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (-6) (cellA4B3.bounds (-6)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift05_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (-5) (cellA4B3.bounds (-5)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift06_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (-4) (cellA4B3.bounds (-4)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift07_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (-3) (cellA4B3.bounds (-3)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift08_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (-2) (cellA4B3.bounds (-2)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift09_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (-1) (cellA4B3.bounds (-1)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift10_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (0) (cellA4B3.bounds (0)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift11_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (1) (cellA4B3.bounds (1)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift12_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (2) (cellA4B3.bounds (2)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift13_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (3) (cellA4B3.bounds (3)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift14_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (4) (cellA4B3.bounds (4)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift15_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (5) (cellA4B3.bounds (5)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift16_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (6) (cellA4B3.bounds (6)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift17_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (7) (cellA4B3.bounds (7)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift18_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (8) (cellA4B3.bounds (8)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift19_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (9) (cellA4B3.bounds (9)) candidates = true := by
  decide +kernel

theorem cellA4B3_shift20_check :
    rowCoverCheck (2 ^ 4) (3 ^ 3) cellA4B3.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (10) (cellA4B3.bounds (10)) candidates = true := by
  decide +kernel

theorem cellA4B3_check :
    cellCoverCheck (2 ^ 4) (3 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 3)) cellA4B3 candidates = true := by
  unfold cellCoverCheck shifts
  apply List.all_eq_true.mpr
  intro d hd
  obtain ⟨k, hk, rfl⟩ := List.mem_map.mp hd
  have hkBound : k < 21 := List.mem_range.mp hk
  interval_cases k
  · exact cellA4B3_shift00_check
  · exact cellA4B3_shift01_check
  · exact cellA4B3_shift02_check
  · exact cellA4B3_shift03_check
  · exact cellA4B3_shift04_check
  · exact cellA4B3_shift05_check
  · exact cellA4B3_shift06_check
  · exact cellA4B3_shift07_check
  · exact cellA4B3_shift08_check
  · exact cellA4B3_shift09_check
  · exact cellA4B3_shift10_check
  · exact cellA4B3_shift11_check
  · exact cellA4B3_shift12_check
  · exact cellA4B3_shift13_check
  · exact cellA4B3_shift14_check
  · exact cellA4B3_shift15_check
  · exact cellA4B3_shift16_check
  · exact cellA4B3_shift17_check
  · exact cellA4B3_shift18_check
  · exact cellA4B3_shift19_check
  · exact cellA4B3_shift20_check

theorem cellA4B4_check :
    cellCoverCheck (2 ^ 4) (3 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 4)) cellA4B4 candidates = true := by
  decide +kernel

theorem cellA4B5_check :
    cellCoverCheck (2 ^ 4) (3 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 5)) cellA4B5 candidates = true := by
  decide +kernel

theorem cellA4B6_check :
    cellCoverCheck (2 ^ 4) (3 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 6)) cellA4B6 candidates = true := by
  decide +kernel

theorem cellA4B7_check :
    cellCoverCheck (2 ^ 4) (3 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 7)) cellA4B7 candidates = true := by
  decide +kernel

theorem cellA4B8_check :
    cellCoverCheck (2 ^ 4) (3 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 8)) cellA4B8 candidates = true := by
  decide +kernel

theorem cellA4B9_check :
    cellCoverCheck (2 ^ 4) (3 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 9)) cellA4B9 candidates = true := by
  decide +kernel

theorem cellA4B10_check :
    cellCoverCheck (2 ^ 4) (3 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 10)) cellA4B10 candidates = true := by
  decide +kernel

theorem cellA4B11_check :
    cellCoverCheck (2 ^ 4) (3 ^ 11)
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 11)) cellA4B11 candidates = true := by
  decide +kernel

theorem cellA4B12_check :
    cellCoverCheck (2 ^ 4) (3 ^ 12)
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 12)) cellA4B12 candidates = true := by
  decide +kernel

theorem cellA4B13_check :
    cellCoverCheck (2 ^ 4) (3 ^ 13)
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 13)) cellA4B13 candidates = true := by
  decide +kernel

theorem cellA4B14_check :
    cellCoverCheck (2 ^ 4) (3 ^ 14)
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 14)) cellA4B14 candidates = true := by
  decide +kernel

theorem cellA4B15_check :
    cellCoverCheck (2 ^ 4) (3 ^ 15)
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ 15)) cellA4B15 candidates = true := by
  decide +kernel

theorem rowA4_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 15) :
    cellCoverCheck (2 ^ 4) (3 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 4))
      (heightCap Stage04.H Stage04.M (3 ^ b)) (rowA4 b) candidates = true := by
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
  · simpa only [show rowA4 12 = cellA4B12 from rfl] using cellA4B12_check
  · simpa only [show rowA4 13 = cellA4B13 from rfl] using cellA4B13_check
  · simpa only [show rowA4 14 = cellA4B14 from rfl] using cellA4B14_check
  · simpa only [show rowA4 15 = cellA4B15 from rfl] using cellA4B15_check

theorem rowA4_block_check :
    blockCoverCheck 2 3 Stage04.H Stage04.M 4 1 1 15 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 4 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA4_cell_check b hbb.1 (by omega)
  simpa only [show cells 4 b = rowA4 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair23

#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B1_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B2_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B4_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B5_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B6_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B7_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B8_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B9_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B10_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B11_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B12_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B13_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B14_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B15_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA4_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA4_block_check

#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift00_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift01_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift02_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift03_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift04_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift05_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift06_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift07_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift08_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift09_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift10_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift11_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift12_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift13_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift14_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift15_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift16_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift17_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift18_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift19_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3_shift20_check
