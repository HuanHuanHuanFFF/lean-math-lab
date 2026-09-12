import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair27.Data
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

namespace Math.B699.I11TerminalMembership.Pair27
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

theorem cellA9B1_check :
    cellCoverCheck (2 ^ 9) (7 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 9))
      (heightCap Stage04.H Stage04.M (7 ^ 1)) cellA9B1 candidates = true := by
  decide +kernel

theorem cellA9B2_check :
    cellCoverCheck (2 ^ 9) (7 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 9))
      (heightCap Stage04.H Stage04.M (7 ^ 2)) cellA9B2 candidates = true := by
  decide +kernel

theorem cellA9B3_check :
    cellCoverCheck (2 ^ 9) (7 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 9))
      (heightCap Stage04.H Stage04.M (7 ^ 3)) cellA9B3 candidates = true := by
  decide +kernel

theorem cellA9B4_check :
    cellCoverCheck (2 ^ 9) (7 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 9))
      (heightCap Stage04.H Stage04.M (7 ^ 4)) cellA9B4 candidates = true := by
  decide +kernel

theorem cellA9B5_check :
    cellCoverCheck (2 ^ 9) (7 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 9))
      (heightCap Stage04.H Stage04.M (7 ^ 5)) cellA9B5 candidates = true := by
  decide +kernel

theorem cellA9B6_check :
    cellCoverCheck (2 ^ 9) (7 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 9))
      (heightCap Stage04.H Stage04.M (7 ^ 6)) cellA9B6 candidates = true := by
  decide +kernel

theorem cellA9B7_check :
    cellCoverCheck (2 ^ 9) (7 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 9))
      (heightCap Stage04.H Stage04.M (7 ^ 7)) cellA9B7 candidates = true := by
  decide +kernel

theorem cellA9B8_check :
    cellCoverCheck (2 ^ 9) (7 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 9))
      (heightCap Stage04.H Stage04.M (7 ^ 8)) cellA9B8 candidates = true := by
  decide +kernel

theorem rowA9_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 8) :
    cellCoverCheck (2 ^ 9) (7 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 9))
      (heightCap Stage04.H Stage04.M (7 ^ b)) (rowA9 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA9 1 = cellA9B1 from rfl] using cellA9B1_check
  · simpa only [show rowA9 2 = cellA9B2 from rfl] using cellA9B2_check
  · simpa only [show rowA9 3 = cellA9B3 from rfl] using cellA9B3_check
  · simpa only [show rowA9 4 = cellA9B4 from rfl] using cellA9B4_check
  · simpa only [show rowA9 5 = cellA9B5 from rfl] using cellA9B5_check
  · simpa only [show rowA9 6 = cellA9B6 from rfl] using cellA9B6_check
  · simpa only [show rowA9 7 = cellA9B7 from rfl] using cellA9B7_check
  · simpa only [show rowA9 8 = cellA9B8 from rfl] using cellA9B8_check

theorem rowA9_block_check :
    blockCoverCheck 2 7 Stage04.H Stage04.M 9 1 1 8 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 9 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA9_cell_check b hbb.1 (by omega)
  simpa only [show cells 9 b = rowA9 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair27

#print axioms Math.B699.I11TerminalMembership.Pair27.cellA9B1_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA9B2_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA9B3_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA9B4_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA9B5_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA9B6_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA9B7_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA9B8_check
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA9_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA9_block_check
