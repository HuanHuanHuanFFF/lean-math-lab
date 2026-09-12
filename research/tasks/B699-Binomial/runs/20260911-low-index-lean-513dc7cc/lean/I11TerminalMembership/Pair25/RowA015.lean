import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair25.Data
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

namespace Math.B699.I11TerminalMembership.Pair25
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

theorem cellA15B1_check :
    cellCoverCheck (2 ^ 15) (5 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (5 ^ 1)) cellA15B1 candidates = true := by
  decide +kernel

theorem cellA15B2_check :
    cellCoverCheck (2 ^ 15) (5 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (5 ^ 2)) cellA15B2 candidates = true := by
  decide +kernel

theorem cellA15B3_check :
    cellCoverCheck (2 ^ 15) (5 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (5 ^ 3)) cellA15B3 candidates = true := by
  decide +kernel

theorem cellA15B4_check :
    cellCoverCheck (2 ^ 15) (5 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (5 ^ 4)) cellA15B4 candidates = true := by
  decide +kernel

theorem cellA15B5_check :
    cellCoverCheck (2 ^ 15) (5 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (5 ^ 5)) cellA15B5 candidates = true := by
  decide +kernel

theorem cellA15B6_check :
    cellCoverCheck (2 ^ 15) (5 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (5 ^ 6)) cellA15B6 candidates = true := by
  decide +kernel

theorem cellA15B7_check :
    cellCoverCheck (2 ^ 15) (5 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (5 ^ 7)) cellA15B7 candidates = true := by
  decide +kernel

theorem cellA15B8_check :
    cellCoverCheck (2 ^ 15) (5 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (5 ^ 8)) cellA15B8 candidates = true := by
  decide +kernel

theorem cellA15B9_check :
    cellCoverCheck (2 ^ 15) (5 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (5 ^ 9)) cellA15B9 candidates = true := by
  decide +kernel

theorem cellA15B10_check :
    cellCoverCheck (2 ^ 15) (5 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (5 ^ 10)) cellA15B10 candidates = true := by
  decide +kernel

theorem rowA15_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 10) :
    cellCoverCheck (2 ^ 15) (5 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 15))
      (heightCap Stage04.H Stage04.M (5 ^ b)) (rowA15 b) candidates = true := by
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

theorem rowA15_block_check :
    blockCoverCheck 2 5 Stage04.H Stage04.M 15 1 1 10 cells candidates = true := by
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

end Math.B699.I11TerminalMembership.Pair25

#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B1_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B2_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B3_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B4_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B5_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B6_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B7_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B8_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B9_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B10_check
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA15_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA15_block_check
