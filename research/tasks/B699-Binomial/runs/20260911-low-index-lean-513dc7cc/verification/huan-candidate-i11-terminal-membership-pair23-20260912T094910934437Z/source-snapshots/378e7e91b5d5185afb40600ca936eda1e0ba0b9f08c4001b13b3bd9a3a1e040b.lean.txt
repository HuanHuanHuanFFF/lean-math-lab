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

theorem cellA8B1_check :
    cellCoverCheck (2 ^ 8) (3 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 1)) cellA8B1 candidates = true := by
  decide +kernel

theorem cellA8B2_check :
    cellCoverCheck (2 ^ 8) (3 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 2)) cellA8B2 candidates = true := by
  decide +kernel

theorem cellA8B3_check :
    cellCoverCheck (2 ^ 8) (3 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 3)) cellA8B3 candidates = true := by
  decide +kernel

theorem cellA8B4_shift00_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (-10) (cellA8B4.bounds (-10)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift01_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (-9) (cellA8B4.bounds (-9)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift02_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (-8) (cellA8B4.bounds (-8)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift03_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (-7) (cellA8B4.bounds (-7)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift04_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (-6) (cellA8B4.bounds (-6)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift05_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (-5) (cellA8B4.bounds (-5)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift06_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (-4) (cellA8B4.bounds (-4)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift07_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (-3) (cellA8B4.bounds (-3)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift08_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (-2) (cellA8B4.bounds (-2)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift09_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (-1) (cellA8B4.bounds (-1)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift10_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (0) (cellA8B4.bounds (0)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift11_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (1) (cellA8B4.bounds (1)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift12_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (2) (cellA8B4.bounds (2)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift13_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (3) (cellA8B4.bounds (3)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift14_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (4) (cellA8B4.bounds (4)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift15_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (5) (cellA8B4.bounds (5)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift16_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (6) (cellA8B4.bounds (6)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift17_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (7) (cellA8B4.bounds (7)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift18_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (8) (cellA8B4.bounds (8)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift19_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (9) (cellA8B4.bounds (9)) candidates = true := by
  decide +kernel

theorem cellA8B4_shift20_check :
    rowCoverCheck (2 ^ 8) (3 ^ 4) cellA8B4.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (10) (cellA8B4.bounds (10)) candidates = true := by
  decide +kernel

theorem cellA8B4_check :
    cellCoverCheck (2 ^ 8) (3 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 4)) cellA8B4 candidates = true := by
  unfold cellCoverCheck shifts
  apply List.all_eq_true.mpr
  intro d hd
  obtain ⟨k, hk, rfl⟩ := List.mem_map.mp hd
  have hkBound : k < 21 := List.mem_range.mp hk
  interval_cases k
  · exact cellA8B4_shift00_check
  · exact cellA8B4_shift01_check
  · exact cellA8B4_shift02_check
  · exact cellA8B4_shift03_check
  · exact cellA8B4_shift04_check
  · exact cellA8B4_shift05_check
  · exact cellA8B4_shift06_check
  · exact cellA8B4_shift07_check
  · exact cellA8B4_shift08_check
  · exact cellA8B4_shift09_check
  · exact cellA8B4_shift10_check
  · exact cellA8B4_shift11_check
  · exact cellA8B4_shift12_check
  · exact cellA8B4_shift13_check
  · exact cellA8B4_shift14_check
  · exact cellA8B4_shift15_check
  · exact cellA8B4_shift16_check
  · exact cellA8B4_shift17_check
  · exact cellA8B4_shift18_check
  · exact cellA8B4_shift19_check
  · exact cellA8B4_shift20_check

theorem cellA8B5_shift00_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (-10) (cellA8B5.bounds (-10)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift01_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (-9) (cellA8B5.bounds (-9)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift02_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (-8) (cellA8B5.bounds (-8)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift03_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (-7) (cellA8B5.bounds (-7)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift04_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (-6) (cellA8B5.bounds (-6)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift05_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (-5) (cellA8B5.bounds (-5)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift06_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (-4) (cellA8B5.bounds (-4)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift07_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (-3) (cellA8B5.bounds (-3)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift08_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (-2) (cellA8B5.bounds (-2)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift09_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (-1) (cellA8B5.bounds (-1)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift10_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (0) (cellA8B5.bounds (0)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift11_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (1) (cellA8B5.bounds (1)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift12_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (2) (cellA8B5.bounds (2)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift13_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (3) (cellA8B5.bounds (3)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift14_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (4) (cellA8B5.bounds (4)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift15_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (5) (cellA8B5.bounds (5)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift16_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (6) (cellA8B5.bounds (6)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift17_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (7) (cellA8B5.bounds (7)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift18_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (8) (cellA8B5.bounds (8)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift19_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (9) (cellA8B5.bounds (9)) candidates = true := by
  decide +kernel

theorem cellA8B5_shift20_check :
    rowCoverCheck (2 ^ 8) (3 ^ 5) cellA8B5.inverse
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5))
      (10) (cellA8B5.bounds (10)) candidates = true := by
  decide +kernel

theorem cellA8B5_check :
    cellCoverCheck (2 ^ 8) (3 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 5)) cellA8B5 candidates = true := by
  unfold cellCoverCheck shifts
  apply List.all_eq_true.mpr
  intro d hd
  obtain ⟨k, hk, rfl⟩ := List.mem_map.mp hd
  have hkBound : k < 21 := List.mem_range.mp hk
  interval_cases k
  · exact cellA8B5_shift00_check
  · exact cellA8B5_shift01_check
  · exact cellA8B5_shift02_check
  · exact cellA8B5_shift03_check
  · exact cellA8B5_shift04_check
  · exact cellA8B5_shift05_check
  · exact cellA8B5_shift06_check
  · exact cellA8B5_shift07_check
  · exact cellA8B5_shift08_check
  · exact cellA8B5_shift09_check
  · exact cellA8B5_shift10_check
  · exact cellA8B5_shift11_check
  · exact cellA8B5_shift12_check
  · exact cellA8B5_shift13_check
  · exact cellA8B5_shift14_check
  · exact cellA8B5_shift15_check
  · exact cellA8B5_shift16_check
  · exact cellA8B5_shift17_check
  · exact cellA8B5_shift18_check
  · exact cellA8B5_shift19_check
  · exact cellA8B5_shift20_check

theorem cellA8B6_check :
    cellCoverCheck (2 ^ 8) (3 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 6)) cellA8B6 candidates = true := by
  decide +kernel

theorem cellA8B7_check :
    cellCoverCheck (2 ^ 8) (3 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 7)) cellA8B7 candidates = true := by
  decide +kernel

theorem cellA8B8_check :
    cellCoverCheck (2 ^ 8) (3 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 8)) cellA8B8 candidates = true := by
  decide +kernel

theorem cellA8B9_check :
    cellCoverCheck (2 ^ 8) (3 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 9)) cellA8B9 candidates = true := by
  decide +kernel

theorem cellA8B10_check :
    cellCoverCheck (2 ^ 8) (3 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 10)) cellA8B10 candidates = true := by
  decide +kernel

theorem cellA8B11_check :
    cellCoverCheck (2 ^ 8) (3 ^ 11)
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 11)) cellA8B11 candidates = true := by
  decide +kernel

theorem cellA8B12_check :
    cellCoverCheck (2 ^ 8) (3 ^ 12)
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 12)) cellA8B12 candidates = true := by
  decide +kernel

theorem cellA8B13_check :
    cellCoverCheck (2 ^ 8) (3 ^ 13)
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 13)) cellA8B13 candidates = true := by
  decide +kernel

theorem cellA8B14_check :
    cellCoverCheck (2 ^ 8) (3 ^ 14)
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 14)) cellA8B14 candidates = true := by
  decide +kernel

theorem cellA8B15_check :
    cellCoverCheck (2 ^ 8) (3 ^ 15)
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ 15)) cellA8B15 candidates = true := by
  decide +kernel

theorem rowA8_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 15) :
    cellCoverCheck (2 ^ 8) (3 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 8))
      (heightCap Stage04.H Stage04.M (3 ^ b)) (rowA8 b) candidates = true := by
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
  · simpa only [show rowA8 10 = cellA8B10 from rfl] using cellA8B10_check
  · simpa only [show rowA8 11 = cellA8B11 from rfl] using cellA8B11_check
  · simpa only [show rowA8 12 = cellA8B12 from rfl] using cellA8B12_check
  · simpa only [show rowA8 13 = cellA8B13 from rfl] using cellA8B13_check
  · simpa only [show rowA8 14 = cellA8B14 from rfl] using cellA8B14_check
  · simpa only [show rowA8 15 = cellA8B15 from rfl] using cellA8B15_check

theorem rowA8_block_check :
    blockCoverCheck 2 3 Stage04.H Stage04.M 8 1 1 15 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 8 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA8_cell_check b hbb.1 (by omega)
  simpa only [show cells 8 b = rowA8 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair23

#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B1_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B2_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B3_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B6_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B7_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B8_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B9_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B10_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B11_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B12_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B13_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B14_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B15_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA8_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA8_block_check

#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift00_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift01_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift02_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift03_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift04_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift05_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift06_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift07_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift08_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift09_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift10_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift11_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift12_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift13_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift14_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift15_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift16_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift17_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift18_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift19_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4_shift20_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift00_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift01_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift02_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift03_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift04_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift05_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift06_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift07_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift08_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift09_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift10_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift11_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift12_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift13_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift14_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift15_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift16_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift17_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift18_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift19_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5_shift20_check
