import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair35.Data
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

namespace Math.B699.I11TerminalMembership.Pair35
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

theorem cellA3B1_check :
    cellCoverCheck (3 ^ 3) (5 ^ 1)
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 1)) cellA3B1 candidates = true := by
  decide +kernel

theorem cellA3B2_shift00_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (-10) (cellA3B2.bounds (-10)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift01_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (-9) (cellA3B2.bounds (-9)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift02_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (-8) (cellA3B2.bounds (-8)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift03_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (-7) (cellA3B2.bounds (-7)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift04_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (-6) (cellA3B2.bounds (-6)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift05_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (-5) (cellA3B2.bounds (-5)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift06_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (-4) (cellA3B2.bounds (-4)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift07_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (-3) (cellA3B2.bounds (-3)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift08_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (-2) (cellA3B2.bounds (-2)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift09_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (-1) (cellA3B2.bounds (-1)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift10_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (0) (cellA3B2.bounds (0)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift11_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (1) (cellA3B2.bounds (1)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift12_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (2) (cellA3B2.bounds (2)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift13_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (3) (cellA3B2.bounds (3)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift14_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (4) (cellA3B2.bounds (4)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift15_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (5) (cellA3B2.bounds (5)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift16_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (6) (cellA3B2.bounds (6)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift17_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (7) (cellA3B2.bounds (7)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift18_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (8) (cellA3B2.bounds (8)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift19_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (9) (cellA3B2.bounds (9)) candidates = true := by
  decide +kernel

theorem cellA3B2_shift20_check :
    rowCoverCheck (3 ^ 3) (5 ^ 2) cellA3B2.inverse
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2))
      (10) (cellA3B2.bounds (10)) candidates = true := by
  decide +kernel

theorem cellA3B2_check :
    cellCoverCheck (3 ^ 3) (5 ^ 2)
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 2)) cellA3B2 candidates = true := by
  unfold cellCoverCheck shifts
  apply List.all_eq_true.mpr
  intro d hd
  obtain ⟨k, hk, rfl⟩ := List.mem_map.mp hd
  have hkBound : k < 21 := List.mem_range.mp hk
  interval_cases k
  · exact cellA3B2_shift00_check
  · exact cellA3B2_shift01_check
  · exact cellA3B2_shift02_check
  · exact cellA3B2_shift03_check
  · exact cellA3B2_shift04_check
  · exact cellA3B2_shift05_check
  · exact cellA3B2_shift06_check
  · exact cellA3B2_shift07_check
  · exact cellA3B2_shift08_check
  · exact cellA3B2_shift09_check
  · exact cellA3B2_shift10_check
  · exact cellA3B2_shift11_check
  · exact cellA3B2_shift12_check
  · exact cellA3B2_shift13_check
  · exact cellA3B2_shift14_check
  · exact cellA3B2_shift15_check
  · exact cellA3B2_shift16_check
  · exact cellA3B2_shift17_check
  · exact cellA3B2_shift18_check
  · exact cellA3B2_shift19_check
  · exact cellA3B2_shift20_check

theorem cellA3B3_check :
    cellCoverCheck (3 ^ 3) (5 ^ 3)
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 3)) cellA3B3 candidates = true := by
  decide +kernel

theorem cellA3B4_check :
    cellCoverCheck (3 ^ 3) (5 ^ 4)
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 4)) cellA3B4 candidates = true := by
  decide +kernel

theorem cellA3B5_check :
    cellCoverCheck (3 ^ 3) (5 ^ 5)
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 5)) cellA3B5 candidates = true := by
  decide +kernel

theorem cellA3B6_check :
    cellCoverCheck (3 ^ 3) (5 ^ 6)
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 6)) cellA3B6 candidates = true := by
  decide +kernel

theorem cellA3B7_check :
    cellCoverCheck (3 ^ 3) (5 ^ 7)
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 7)) cellA3B7 candidates = true := by
  decide +kernel

theorem cellA3B8_check :
    cellCoverCheck (3 ^ 3) (5 ^ 8)
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 8)) cellA3B8 candidates = true := by
  decide +kernel

theorem cellA3B9_check :
    cellCoverCheck (3 ^ 3) (5 ^ 9)
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 9)) cellA3B9 candidates = true := by
  decide +kernel

theorem cellA3B10_check :
    cellCoverCheck (3 ^ 3) (5 ^ 10)
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ 10)) cellA3B10 candidates = true := by
  decide +kernel

theorem rowA3_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 10) :
    cellCoverCheck (3 ^ 3) (5 ^ b)
      (heightCap Stage04.H Stage04.M (3 ^ 3))
      (heightCap Stage04.H Stage04.M (5 ^ b)) (rowA3 b) candidates = true := by
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

theorem rowA3_block_check :
    blockCoverCheck 3 5 Stage04.H Stage04.M 3 1 1 10 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 3 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA3_cell_check b hbb.1 (by omega)
  simpa only [show cells 3 b = rowA3 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair35

#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B1_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B3_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B4_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B5_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B6_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B7_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B8_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B9_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B10_check
#print axioms Math.B699.I11TerminalMembership.Pair35.rowA3_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair35.rowA3_block_check

#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift00_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift01_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift02_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift03_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift04_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift05_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift06_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift07_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift08_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift09_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift10_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift11_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift12_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift13_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift14_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift15_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift16_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift17_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift18_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift19_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA3B2_shift20_check
