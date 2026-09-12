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

theorem cellA24B1_check :
    cellCoverCheck (2 ^ 24) (5 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 24))
      (heightCap Stage04.H Stage04.M (5 ^ 1)) cellA24B1 candidates = true := by
  decide +kernel

theorem cellA24B2_check :
    cellCoverCheck (2 ^ 24) (5 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 24))
      (heightCap Stage04.H Stage04.M (5 ^ 2)) cellA24B2 candidates = true := by
  decide +kernel

theorem cellA24B3_check :
    cellCoverCheck (2 ^ 24) (5 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 24))
      (heightCap Stage04.H Stage04.M (5 ^ 3)) cellA24B3 candidates = true := by
  decide +kernel

theorem cellA24B4_check :
    cellCoverCheck (2 ^ 24) (5 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 24))
      (heightCap Stage04.H Stage04.M (5 ^ 4)) cellA24B4 candidates = true := by
  decide +kernel

theorem cellA24B5_check :
    cellCoverCheck (2 ^ 24) (5 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 24))
      (heightCap Stage04.H Stage04.M (5 ^ 5)) cellA24B5 candidates = true := by
  decide +kernel

theorem cellA24B6_check :
    cellCoverCheck (2 ^ 24) (5 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 24))
      (heightCap Stage04.H Stage04.M (5 ^ 6)) cellA24B6 candidates = true := by
  decide +kernel

theorem cellA24B7_check :
    cellCoverCheck (2 ^ 24) (5 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 24))
      (heightCap Stage04.H Stage04.M (5 ^ 7)) cellA24B7 candidates = true := by
  decide +kernel

theorem cellA24B8_check :
    cellCoverCheck (2 ^ 24) (5 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 24))
      (heightCap Stage04.H Stage04.M (5 ^ 8)) cellA24B8 candidates = true := by
  decide +kernel

theorem cellA24B9_check :
    cellCoverCheck (2 ^ 24) (5 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 24))
      (heightCap Stage04.H Stage04.M (5 ^ 9)) cellA24B9 candidates = true := by
  decide +kernel

theorem cellA24B10_check :
    cellCoverCheck (2 ^ 24) (5 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 24))
      (heightCap Stage04.H Stage04.M (5 ^ 10)) cellA24B10 candidates = true := by
  decide +kernel

theorem rowA24_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 10) :
    cellCoverCheck (2 ^ 24) (5 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 24))
      (heightCap Stage04.H Stage04.M (5 ^ b)) (rowA24 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA24 1 = cellA24B1 from rfl] using cellA24B1_check
  · simpa only [show rowA24 2 = cellA24B2 from rfl] using cellA24B2_check
  · simpa only [show rowA24 3 = cellA24B3 from rfl] using cellA24B3_check
  · simpa only [show rowA24 4 = cellA24B4 from rfl] using cellA24B4_check
  · simpa only [show rowA24 5 = cellA24B5 from rfl] using cellA24B5_check
  · simpa only [show rowA24 6 = cellA24B6 from rfl] using cellA24B6_check
  · simpa only [show rowA24 7 = cellA24B7 from rfl] using cellA24B7_check
  · simpa only [show rowA24 8 = cellA24B8 from rfl] using cellA24B8_check
  · simpa only [show rowA24 9 = cellA24B9 from rfl] using cellA24B9_check
  · simpa only [show rowA24 10 = cellA24B10 from rfl] using cellA24B10_check

theorem rowA24_block_check :
    blockCoverCheck 2 5 Stage04.H Stage04.M 24 1 1 10 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 24 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA24_cell_check b hbb.1 (by omega)
  simpa only [show cells 24 b = rowA24 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair25

#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B1_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B2_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B3_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B4_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B5_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B6_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B7_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B8_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B9_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B10_check
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA24_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA24_block_check
