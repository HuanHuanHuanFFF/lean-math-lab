import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair25.Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCrt.Block
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED complete stage04 membership table; all21 shifts and complete
RowCell parameter ranges are retained. No whole-grid decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.I11TerminalMembership.Pair25
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

theorem cellA18B1_check :
    cellCoverCheck (2 ^ 18) (5 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 18))
      (heightCap Stage04.H Stage04.M (5 ^ 1)) cellA18B1 candidates = true := by
  decide +kernel

theorem cellA18B2_check :
    cellCoverCheck (2 ^ 18) (5 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 18))
      (heightCap Stage04.H Stage04.M (5 ^ 2)) cellA18B2 candidates = true := by
  decide +kernel

theorem cellA18B3_check :
    cellCoverCheck (2 ^ 18) (5 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 18))
      (heightCap Stage04.H Stage04.M (5 ^ 3)) cellA18B3 candidates = true := by
  decide +kernel

theorem cellA18B4_check :
    cellCoverCheck (2 ^ 18) (5 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 18))
      (heightCap Stage04.H Stage04.M (5 ^ 4)) cellA18B4 candidates = true := by
  decide +kernel

theorem cellA18B5_check :
    cellCoverCheck (2 ^ 18) (5 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 18))
      (heightCap Stage04.H Stage04.M (5 ^ 5)) cellA18B5 candidates = true := by
  decide +kernel

theorem cellA18B6_check :
    cellCoverCheck (2 ^ 18) (5 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 18))
      (heightCap Stage04.H Stage04.M (5 ^ 6)) cellA18B6 candidates = true := by
  decide +kernel

theorem cellA18B7_check :
    cellCoverCheck (2 ^ 18) (5 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 18))
      (heightCap Stage04.H Stage04.M (5 ^ 7)) cellA18B7 candidates = true := by
  decide +kernel

theorem cellA18B8_check :
    cellCoverCheck (2 ^ 18) (5 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 18))
      (heightCap Stage04.H Stage04.M (5 ^ 8)) cellA18B8 candidates = true := by
  decide +kernel

theorem cellA18B9_check :
    cellCoverCheck (2 ^ 18) (5 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 18))
      (heightCap Stage04.H Stage04.M (5 ^ 9)) cellA18B9 candidates = true := by
  decide +kernel

theorem cellA18B10_check :
    cellCoverCheck (2 ^ 18) (5 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 18))
      (heightCap Stage04.H Stage04.M (5 ^ 10)) cellA18B10 candidates = true := by
  decide +kernel

theorem rowA18_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 10) :
    cellCoverCheck (2 ^ 18) (5 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 18))
      (heightCap Stage04.H Stage04.M (5 ^ b)) (rowA18 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA18 1 = cellA18B1 from rfl] using cellA18B1_check
  · simpa only [show rowA18 2 = cellA18B2 from rfl] using cellA18B2_check
  · simpa only [show rowA18 3 = cellA18B3 from rfl] using cellA18B3_check
  · simpa only [show rowA18 4 = cellA18B4 from rfl] using cellA18B4_check
  · simpa only [show rowA18 5 = cellA18B5 from rfl] using cellA18B5_check
  · simpa only [show rowA18 6 = cellA18B6 from rfl] using cellA18B6_check
  · simpa only [show rowA18 7 = cellA18B7 from rfl] using cellA18B7_check
  · simpa only [show rowA18 8 = cellA18B8 from rfl] using cellA18B8_check
  · simpa only [show rowA18 9 = cellA18B9 from rfl] using cellA18B9_check
  · simpa only [show rowA18 10 = cellA18B10 from rfl] using cellA18B10_check

theorem rowA18_block_check :
    blockCoverCheck 2 5 Stage04.H Stage04.M 18 1 1 10 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 18 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA18_cell_check b hbb.1 (by omega)
  simpa only [show cells 18 b = rowA18 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair25

#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B1_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B2_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B3_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B4_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B5_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B6_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B7_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B8_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B9_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B10_check
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA18_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA18_block_check
