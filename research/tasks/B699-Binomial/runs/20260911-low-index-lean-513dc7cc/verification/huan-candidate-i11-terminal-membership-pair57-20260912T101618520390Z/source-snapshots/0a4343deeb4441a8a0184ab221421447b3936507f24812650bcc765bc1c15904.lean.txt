import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair57.Data
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

namespace Math.B699.I11TerminalMembership.Pair57
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

theorem cellA8B1_check :
    cellCoverCheck (5 ^ 8) (7 ^ 1)
      (heightCap Stage04.H Stage04.M (5 ^ 8))
      (heightCap Stage04.H Stage04.M (7 ^ 1)) cellA8B1 candidates = true := by
  decide +kernel

theorem cellA8B2_check :
    cellCoverCheck (5 ^ 8) (7 ^ 2)
      (heightCap Stage04.H Stage04.M (5 ^ 8))
      (heightCap Stage04.H Stage04.M (7 ^ 2)) cellA8B2 candidates = true := by
  decide +kernel

theorem cellA8B3_check :
    cellCoverCheck (5 ^ 8) (7 ^ 3)
      (heightCap Stage04.H Stage04.M (5 ^ 8))
      (heightCap Stage04.H Stage04.M (7 ^ 3)) cellA8B3 candidates = true := by
  decide +kernel

theorem cellA8B4_check :
    cellCoverCheck (5 ^ 8) (7 ^ 4)
      (heightCap Stage04.H Stage04.M (5 ^ 8))
      (heightCap Stage04.H Stage04.M (7 ^ 4)) cellA8B4 candidates = true := by
  decide +kernel

theorem cellA8B5_check :
    cellCoverCheck (5 ^ 8) (7 ^ 5)
      (heightCap Stage04.H Stage04.M (5 ^ 8))
      (heightCap Stage04.H Stage04.M (7 ^ 5)) cellA8B5 candidates = true := by
  decide +kernel

theorem cellA8B6_check :
    cellCoverCheck (5 ^ 8) (7 ^ 6)
      (heightCap Stage04.H Stage04.M (5 ^ 8))
      (heightCap Stage04.H Stage04.M (7 ^ 6)) cellA8B6 candidates = true := by
  decide +kernel

theorem cellA8B7_check :
    cellCoverCheck (5 ^ 8) (7 ^ 7)
      (heightCap Stage04.H Stage04.M (5 ^ 8))
      (heightCap Stage04.H Stage04.M (7 ^ 7)) cellA8B7 candidates = true := by
  decide +kernel

theorem cellA8B8_check :
    cellCoverCheck (5 ^ 8) (7 ^ 8)
      (heightCap Stage04.H Stage04.M (5 ^ 8))
      (heightCap Stage04.H Stage04.M (7 ^ 8)) cellA8B8 candidates = true := by
  decide +kernel

theorem rowA8_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 8) :
    cellCoverCheck (5 ^ 8) (7 ^ b)
      (heightCap Stage04.H Stage04.M (5 ^ 8))
      (heightCap Stage04.H Stage04.M (7 ^ b)) (rowA8 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA8 1 = cellA8B1 from rfl] using cellA8B1_check
  · simpa only [show rowA8 2 = cellA8B2 from rfl] using cellA8B2_check
  · simpa only [show rowA8 3 = cellA8B3 from rfl] using cellA8B3_check
  · simpa only [show rowA8 4 = cellA8B4 from rfl] using cellA8B4_check
  · simpa only [show rowA8 5 = cellA8B5 from rfl] using cellA8B5_check
  · simpa only [show rowA8 6 = cellA8B6 from rfl] using cellA8B6_check
  · simpa only [show rowA8 7 = cellA8B7 from rfl] using cellA8B7_check
  · simpa only [show rowA8 8 = cellA8B8 from rfl] using cellA8B8_check

theorem rowA8_block_check :
    blockCoverCheck 5 7 Stage04.H Stage04.M 8 1 1 8 cells candidates = true := by
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

end Math.B699.I11TerminalMembership.Pair57

#print axioms Math.B699.I11TerminalMembership.Pair57.cellA8B1_check
#print axioms Math.B699.I11TerminalMembership.Pair57.cellA8B2_check
#print axioms Math.B699.I11TerminalMembership.Pair57.cellA8B3_check
#print axioms Math.B699.I11TerminalMembership.Pair57.cellA8B4_check
#print axioms Math.B699.I11TerminalMembership.Pair57.cellA8B5_check
#print axioms Math.B699.I11TerminalMembership.Pair57.cellA8B6_check
#print axioms Math.B699.I11TerminalMembership.Pair57.cellA8B7_check
#print axioms Math.B699.I11TerminalMembership.Pair57.cellA8B8_check
#print axioms Math.B699.I11TerminalMembership.Pair57.rowA8_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair57.rowA8_block_check
