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

theorem cellA11B1_check :
    cellCoverCheck (2 ^ 11) (3 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 11))
      (heightCap Stage04.H Stage04.M (3 ^ 1)) cellA11B1 candidates = true := by
  decide +kernel

theorem cellA11B2_check :
    cellCoverCheck (2 ^ 11) (3 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 11))
      (heightCap Stage04.H Stage04.M (3 ^ 2)) cellA11B2 candidates = true := by
  decide +kernel

theorem cellA11B3_check :
    cellCoverCheck (2 ^ 11) (3 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 11))
      (heightCap Stage04.H Stage04.M (3 ^ 3)) cellA11B3 candidates = true := by
  decide +kernel

theorem cellA11B4_check :
    cellCoverCheck (2 ^ 11) (3 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 11))
      (heightCap Stage04.H Stage04.M (3 ^ 4)) cellA11B4 candidates = true := by
  decide +kernel

theorem cellA11B5_check :
    cellCoverCheck (2 ^ 11) (3 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 11))
      (heightCap Stage04.H Stage04.M (3 ^ 5)) cellA11B5 candidates = true := by
  decide +kernel

theorem cellA11B6_check :
    cellCoverCheck (2 ^ 11) (3 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 11))
      (heightCap Stage04.H Stage04.M (3 ^ 6)) cellA11B6 candidates = true := by
  decide +kernel

theorem cellA11B7_check :
    cellCoverCheck (2 ^ 11) (3 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 11))
      (heightCap Stage04.H Stage04.M (3 ^ 7)) cellA11B7 candidates = true := by
  decide +kernel

theorem cellA11B8_check :
    cellCoverCheck (2 ^ 11) (3 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 11))
      (heightCap Stage04.H Stage04.M (3 ^ 8)) cellA11B8 candidates = true := by
  decide +kernel

theorem cellA11B9_check :
    cellCoverCheck (2 ^ 11) (3 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 11))
      (heightCap Stage04.H Stage04.M (3 ^ 9)) cellA11B9 candidates = true := by
  decide +kernel

theorem cellA11B10_check :
    cellCoverCheck (2 ^ 11) (3 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 11))
      (heightCap Stage04.H Stage04.M (3 ^ 10)) cellA11B10 candidates = true := by
  decide +kernel

theorem cellA11B11_check :
    cellCoverCheck (2 ^ 11) (3 ^ 11)
      (heightCap Stage04.H Stage04.M (2 ^ 11))
      (heightCap Stage04.H Stage04.M (3 ^ 11)) cellA11B11 candidates = true := by
  decide +kernel

theorem cellA11B12_check :
    cellCoverCheck (2 ^ 11) (3 ^ 12)
      (heightCap Stage04.H Stage04.M (2 ^ 11))
      (heightCap Stage04.H Stage04.M (3 ^ 12)) cellA11B12 candidates = true := by
  decide +kernel

theorem cellA11B13_check :
    cellCoverCheck (2 ^ 11) (3 ^ 13)
      (heightCap Stage04.H Stage04.M (2 ^ 11))
      (heightCap Stage04.H Stage04.M (3 ^ 13)) cellA11B13 candidates = true := by
  decide +kernel

theorem cellA11B14_check :
    cellCoverCheck (2 ^ 11) (3 ^ 14)
      (heightCap Stage04.H Stage04.M (2 ^ 11))
      (heightCap Stage04.H Stage04.M (3 ^ 14)) cellA11B14 candidates = true := by
  decide +kernel

theorem cellA11B15_check :
    cellCoverCheck (2 ^ 11) (3 ^ 15)
      (heightCap Stage04.H Stage04.M (2 ^ 11))
      (heightCap Stage04.H Stage04.M (3 ^ 15)) cellA11B15 candidates = true := by
  decide +kernel

theorem rowA11_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 15) :
    cellCoverCheck (2 ^ 11) (3 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 11))
      (heightCap Stage04.H Stage04.M (3 ^ b)) (rowA11 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA11 1 = cellA11B1 from rfl] using cellA11B1_check
  · simpa only [show rowA11 2 = cellA11B2 from rfl] using cellA11B2_check
  · simpa only [show rowA11 3 = cellA11B3 from rfl] using cellA11B3_check
  · simpa only [show rowA11 4 = cellA11B4 from rfl] using cellA11B4_check
  · simpa only [show rowA11 5 = cellA11B5 from rfl] using cellA11B5_check
  · simpa only [show rowA11 6 = cellA11B6 from rfl] using cellA11B6_check
  · simpa only [show rowA11 7 = cellA11B7 from rfl] using cellA11B7_check
  · simpa only [show rowA11 8 = cellA11B8 from rfl] using cellA11B8_check
  · simpa only [show rowA11 9 = cellA11B9 from rfl] using cellA11B9_check
  · simpa only [show rowA11 10 = cellA11B10 from rfl] using cellA11B10_check
  · simpa only [show rowA11 11 = cellA11B11 from rfl] using cellA11B11_check
  · simpa only [show rowA11 12 = cellA11B12 from rfl] using cellA11B12_check
  · simpa only [show rowA11 13 = cellA11B13 from rfl] using cellA11B13_check
  · simpa only [show rowA11 14 = cellA11B14 from rfl] using cellA11B14_check
  · simpa only [show rowA11 15 = cellA11B15 from rfl] using cellA11B15_check

theorem rowA11_block_check :
    blockCoverCheck 2 3 Stage04.H Stage04.M 11 1 1 15 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 11 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA11_cell_check b hbb.1 (by omega)
  simpa only [show cells 11 b = rowA11 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair23

#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B1_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B2_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B3_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B4_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B5_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B6_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B7_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B8_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B9_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B10_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B11_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B12_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B13_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B14_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B15_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA11_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA11_block_check
