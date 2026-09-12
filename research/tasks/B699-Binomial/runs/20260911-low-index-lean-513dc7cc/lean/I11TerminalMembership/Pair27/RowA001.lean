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

theorem cellA1B1_check :
    cellCoverCheck (2 ^ 1) (7 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 1))
      (heightCap Stage04.H Stage04.M (7 ^ 1)) cellA1B1 candidates = true := by
  decide +kernel

theorem cellA1B2_check :
    cellCoverCheck (2 ^ 1) (7 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 1))
      (heightCap Stage04.H Stage04.M (7 ^ 2)) cellA1B2 candidates = true := by
  decide +kernel

theorem cellA1B3_check :
    cellCoverCheck (2 ^ 1) (7 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 1))
      (heightCap Stage04.H Stage04.M (7 ^ 3)) cellA1B3 candidates = true := by
  decide +kernel

theorem cellA1B4_check :
    cellCoverCheck (2 ^ 1) (7 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 1))
      (heightCap Stage04.H Stage04.M (7 ^ 4)) cellA1B4 candidates = true := by
  decide +kernel

theorem cellA1B5_check :
    cellCoverCheck (2 ^ 1) (7 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 1))
      (heightCap Stage04.H Stage04.M (7 ^ 5)) cellA1B5 candidates = true := by
  decide +kernel

theorem cellA1B6_check :
    cellCoverCheck (2 ^ 1) (7 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 1))
      (heightCap Stage04.H Stage04.M (7 ^ 6)) cellA1B6 candidates = true := by
  decide +kernel

theorem cellA1B7_check :
    cellCoverCheck (2 ^ 1) (7 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 1))
      (heightCap Stage04.H Stage04.M (7 ^ 7)) cellA1B7 candidates = true := by
  decide +kernel

theorem cellA1B8_check :
    cellCoverCheck (2 ^ 1) (7 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 1))
      (heightCap Stage04.H Stage04.M (7 ^ 8)) cellA1B8 candidates = true := by
  decide +kernel

theorem rowA1_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 8) :
    cellCoverCheck (2 ^ 1) (7 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 1))
      (heightCap Stage04.H Stage04.M (7 ^ b)) (rowA1 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA1 1 = cellA1B1 from rfl] using cellA1B1_check
  · simpa only [show rowA1 2 = cellA1B2 from rfl] using cellA1B2_check
  · simpa only [show rowA1 3 = cellA1B3 from rfl] using cellA1B3_check
  · simpa only [show rowA1 4 = cellA1B4 from rfl] using cellA1B4_check
  · simpa only [show rowA1 5 = cellA1B5 from rfl] using cellA1B5_check
  · simpa only [show rowA1 6 = cellA1B6 from rfl] using cellA1B6_check
  · simpa only [show rowA1 7 = cellA1B7 from rfl] using cellA1B7_check
  · simpa only [show rowA1 8 = cellA1B8 from rfl] using cellA1B8_check

theorem rowA1_block_check :
    blockCoverCheck 2 7 Stage04.H Stage04.M 1 1 1 8 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 1 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA1_cell_check b hbb.1 (by omega)
  simpa only [show cells 1 b = rowA1 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair27

#print axioms Math.B699.I11TerminalMembership.Pair27.cellA1B1_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA1B2_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA1B3_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA1B4_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA1B5_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA1B6_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA1B7_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA1B8_check
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA1_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA1_block_check
