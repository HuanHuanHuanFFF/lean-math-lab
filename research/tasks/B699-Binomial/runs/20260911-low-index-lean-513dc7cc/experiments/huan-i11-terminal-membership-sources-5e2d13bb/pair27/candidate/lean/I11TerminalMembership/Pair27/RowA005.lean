import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair27.Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCrt.Block
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED complete stage04 membership table; all21 shifts and complete
RowCell parameter ranges are retained. No whole-grid decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.I11TerminalMembership.Pair27
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

theorem cellA5B1_check :
    cellCoverCheck (2 ^ 5) (7 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 5))
      (heightCap Stage04.H Stage04.M (7 ^ 1)) cellA5B1 candidates = true := by
  decide +kernel

theorem cellA5B2_check :
    cellCoverCheck (2 ^ 5) (7 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 5))
      (heightCap Stage04.H Stage04.M (7 ^ 2)) cellA5B2 candidates = true := by
  decide +kernel

theorem cellA5B3_check :
    cellCoverCheck (2 ^ 5) (7 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 5))
      (heightCap Stage04.H Stage04.M (7 ^ 3)) cellA5B3 candidates = true := by
  decide +kernel

theorem cellA5B4_check :
    cellCoverCheck (2 ^ 5) (7 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 5))
      (heightCap Stage04.H Stage04.M (7 ^ 4)) cellA5B4 candidates = true := by
  decide +kernel

theorem cellA5B5_check :
    cellCoverCheck (2 ^ 5) (7 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 5))
      (heightCap Stage04.H Stage04.M (7 ^ 5)) cellA5B5 candidates = true := by
  decide +kernel

theorem cellA5B6_check :
    cellCoverCheck (2 ^ 5) (7 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 5))
      (heightCap Stage04.H Stage04.M (7 ^ 6)) cellA5B6 candidates = true := by
  decide +kernel

theorem cellA5B7_check :
    cellCoverCheck (2 ^ 5) (7 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 5))
      (heightCap Stage04.H Stage04.M (7 ^ 7)) cellA5B7 candidates = true := by
  decide +kernel

theorem cellA5B8_check :
    cellCoverCheck (2 ^ 5) (7 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 5))
      (heightCap Stage04.H Stage04.M (7 ^ 8)) cellA5B8 candidates = true := by
  decide +kernel

theorem rowA5_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 8) :
    cellCoverCheck (2 ^ 5) (7 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 5))
      (heightCap Stage04.H Stage04.M (7 ^ b)) (rowA5 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA5 1 = cellA5B1 from rfl] using cellA5B1_check
  · simpa only [show rowA5 2 = cellA5B2 from rfl] using cellA5B2_check
  · simpa only [show rowA5 3 = cellA5B3 from rfl] using cellA5B3_check
  · simpa only [show rowA5 4 = cellA5B4 from rfl] using cellA5B4_check
  · simpa only [show rowA5 5 = cellA5B5 from rfl] using cellA5B5_check
  · simpa only [show rowA5 6 = cellA5B6 from rfl] using cellA5B6_check
  · simpa only [show rowA5 7 = cellA5B7 from rfl] using cellA5B7_check
  · simpa only [show rowA5 8 = cellA5B8 from rfl] using cellA5B8_check

theorem rowA5_block_check :
    blockCoverCheck 2 7 Stage04.H Stage04.M 5 1 1 8 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 5 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA5_cell_check b hbb.1 (by omega)
  simpa only [show cells 5 b = rowA5 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair27

#print axioms Math.B699.I11TerminalMembership.Pair27.cellA5B1_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA5B2_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA5B3_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA5B4_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA5B5_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA5B6_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA5B7_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA5B8_check
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA5_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA5_block_check
