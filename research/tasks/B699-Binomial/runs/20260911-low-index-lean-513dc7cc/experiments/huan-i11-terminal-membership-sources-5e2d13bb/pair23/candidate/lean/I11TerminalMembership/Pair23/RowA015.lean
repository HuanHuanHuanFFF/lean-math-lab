import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCrt.Block
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED complete stage04 membership table; all21 shifts and complete
RowCell parameter ranges are retained. No whole-grid decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.I11TerminalMembership.Pair23
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

theorem cellA15B1_check :
    cellCoverCheck (2 ^ 15) (3 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (3 ^ 1)) cellA15B1 candidates = true := by
  decide +kernel

theorem cellA15B2_check :
    cellCoverCheck (2 ^ 15) (3 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (3 ^ 2)) cellA15B2 candidates = true := by
  decide +kernel

theorem cellA15B3_check :
    cellCoverCheck (2 ^ 15) (3 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (3 ^ 3)) cellA15B3 candidates = true := by
  decide +kernel

theorem cellA15B4_check :
    cellCoverCheck (2 ^ 15) (3 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (3 ^ 4)) cellA15B4 candidates = true := by
  decide +kernel

theorem cellA15B5_check :
    cellCoverCheck (2 ^ 15) (3 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (3 ^ 5)) cellA15B5 candidates = true := by
  decide +kernel

theorem cellA15B6_check :
    cellCoverCheck (2 ^ 15) (3 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (3 ^ 6)) cellA15B6 candidates = true := by
  decide +kernel

theorem cellA15B7_check :
    cellCoverCheck (2 ^ 15) (3 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (3 ^ 7)) cellA15B7 candidates = true := by
  decide +kernel

theorem cellA15B8_check :
    cellCoverCheck (2 ^ 15) (3 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (3 ^ 8)) cellA15B8 candidates = true := by
  decide +kernel

theorem cellA15B9_check :
    cellCoverCheck (2 ^ 15) (3 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (3 ^ 9)) cellA15B9 candidates = true := by
  decide +kernel

theorem cellA15B10_check :
    cellCoverCheck (2 ^ 15) (3 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (3 ^ 10)) cellA15B10 candidates = true := by
  decide +kernel

theorem cellA15B11_check :
    cellCoverCheck (2 ^ 15) (3 ^ 11)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (3 ^ 11)) cellA15B11 candidates = true := by
  decide +kernel

theorem cellA15B12_check :
    cellCoverCheck (2 ^ 15) (3 ^ 12)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (3 ^ 12)) cellA15B12 candidates = true := by
  decide +kernel

theorem cellA15B13_check :
    cellCoverCheck (2 ^ 15) (3 ^ 13)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (3 ^ 13)) cellA15B13 candidates = true := by
  decide +kernel

theorem cellA15B14_check :
    cellCoverCheck (2 ^ 15) (3 ^ 14)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (3 ^ 14)) cellA15B14 candidates = true := by
  decide +kernel

theorem cellA15B15_check :
    cellCoverCheck (2 ^ 15) (3 ^ 15)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (3 ^ 15)) cellA15B15 candidates = true := by
  decide +kernel

theorem rowA15_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 15) :
    cellCoverCheck (2 ^ 15) (3 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (3 ^ b)) (rowA15 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA15 1 = cellA15B1 from rfl] using cellA15B1_check
  · simpa only [show rowA15 2 = cellA15B2 from rfl] using cellA15B2_check
  · simpa only [show rowA15 3 = cellA15B3 from rfl] using cellA15B3_check
  · simpa only [show rowA15 4 = cellA15B4 from rfl] using cellA15B4_check
  · simpa only [show rowA15 5 = cellA15B5 from rfl] using cellA15B5_check
  · simpa only [show rowA15 6 = cellA15B6 from rfl] using cellA15B6_check
  · simpa only [show rowA15 7 = cellA15B7 from rfl] using cellA15B7_check
  · simpa only [show rowA15 8 = cellA15B8 from rfl] using cellA15B8_check
  · simpa only [show rowA15 9 = cellA15B9 from rfl] using cellA15B9_check
  · simpa only [show rowA15 10 = cellA15B10 from rfl] using cellA15B10_check
  · simpa only [show rowA15 11 = cellA15B11 from rfl] using cellA15B11_check
  · simpa only [show rowA15 12 = cellA15B12 from rfl] using cellA15B12_check
  · simpa only [show rowA15 13 = cellA15B13 from rfl] using cellA15B13_check
  · simpa only [show rowA15 14 = cellA15B14 from rfl] using cellA15B14_check
  · simpa only [show rowA15 15 = cellA15B15 from rfl] using cellA15B15_check

theorem rowA15_block_check :
    blockCoverCheck 2 3 Stage04.H Stage04.M 15 1 1 15 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 15 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA15_cell_check b hbb.1 (by omega)
  simpa only [show cells 15 b = rowA15 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair23

#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B1_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B2_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B3_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B4_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B5_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B6_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B7_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B8_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B9_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B10_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B11_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B12_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B13_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B14_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B15_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA15_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA15_block_check
