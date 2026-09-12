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

theorem cellA20B1_check :
    cellCoverCheck (2 ^ 20) (5 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (5 ^ 1)) cellA20B1 candidates = true := by
  decide +kernel

theorem cellA20B2_check :
    cellCoverCheck (2 ^ 20) (5 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (5 ^ 2)) cellA20B2 candidates = true := by
  decide +kernel

theorem cellA20B3_check :
    cellCoverCheck (2 ^ 20) (5 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (5 ^ 3)) cellA20B3 candidates = true := by
  decide +kernel

theorem cellA20B4_check :
    cellCoverCheck (2 ^ 20) (5 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (5 ^ 4)) cellA20B4 candidates = true := by
  decide +kernel

theorem cellA20B5_check :
    cellCoverCheck (2 ^ 20) (5 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (5 ^ 5)) cellA20B5 candidates = true := by
  decide +kernel

theorem cellA20B6_check :
    cellCoverCheck (2 ^ 20) (5 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (5 ^ 6)) cellA20B6 candidates = true := by
  decide +kernel

theorem cellA20B7_check :
    cellCoverCheck (2 ^ 20) (5 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (5 ^ 7)) cellA20B7 candidates = true := by
  decide +kernel

theorem cellA20B8_check :
    cellCoverCheck (2 ^ 20) (5 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (5 ^ 8)) cellA20B8 candidates = true := by
  decide +kernel

theorem cellA20B9_check :
    cellCoverCheck (2 ^ 20) (5 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (5 ^ 9)) cellA20B9 candidates = true := by
  decide +kernel

theorem cellA20B10_check :
    cellCoverCheck (2 ^ 20) (5 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (5 ^ 10)) cellA20B10 candidates = true := by
  decide +kernel

theorem rowA20_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 10) :
    cellCoverCheck (2 ^ 20) (5 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (5 ^ b)) (rowA20 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA20 1 = cellA20B1 from rfl] using cellA20B1_check
  · simpa only [show rowA20 2 = cellA20B2 from rfl] using cellA20B2_check
  · simpa only [show rowA20 3 = cellA20B3 from rfl] using cellA20B3_check
  · simpa only [show rowA20 4 = cellA20B4 from rfl] using cellA20B4_check
  · simpa only [show rowA20 5 = cellA20B5 from rfl] using cellA20B5_check
  · simpa only [show rowA20 6 = cellA20B6 from rfl] using cellA20B6_check
  · simpa only [show rowA20 7 = cellA20B7 from rfl] using cellA20B7_check
  · simpa only [show rowA20 8 = cellA20B8 from rfl] using cellA20B8_check
  · simpa only [show rowA20 9 = cellA20B9 from rfl] using cellA20B9_check
  · simpa only [show rowA20 10 = cellA20B10 from rfl] using cellA20B10_check

theorem rowA20_block_check :
    blockCoverCheck 2 5 Stage04.H Stage04.M 20 1 1 10 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 20 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA20_cell_check b hbb.1 (by omega)
  simpa only [show cells 20 b = rowA20 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair25

#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B1_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B2_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B3_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B4_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B5_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B6_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B7_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B8_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B9_check
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B10_check
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA20_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA20_block_check
