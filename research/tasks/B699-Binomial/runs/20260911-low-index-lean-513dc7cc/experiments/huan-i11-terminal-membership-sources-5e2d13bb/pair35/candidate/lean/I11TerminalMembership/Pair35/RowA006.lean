import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair35.Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCrt.Block
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED complete stage04 membership table; all21 shifts and complete
RowCell parameter ranges are retained. No whole-grid decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.I11TerminalMembership.Pair35
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

theorem cellA6B1_check :
    cellCoverCheck (3 ^ 6) (5 ^ 1)
      (heightCap Stage04.H Stage04.M (3 ^ 6))
      (heightCap Stage04.H Stage04.M (5 ^ 1)) cellA6B1 candidates = true := by
  decide +kernel

theorem cellA6B2_check :
    cellCoverCheck (3 ^ 6) (5 ^ 2)
      (heightCap Stage04.H Stage04.M (3 ^ 6))
      (heightCap Stage04.H Stage04.M (5 ^ 2)) cellA6B2 candidates = true := by
  decide +kernel

theorem cellA6B3_check :
    cellCoverCheck (3 ^ 6) (5 ^ 3)
      (heightCap Stage04.H Stage04.M (3 ^ 6))
      (heightCap Stage04.H Stage04.M (5 ^ 3)) cellA6B3 candidates = true := by
  decide +kernel

theorem cellA6B4_check :
    cellCoverCheck (3 ^ 6) (5 ^ 4)
      (heightCap Stage04.H Stage04.M (3 ^ 6))
      (heightCap Stage04.H Stage04.M (5 ^ 4)) cellA6B4 candidates = true := by
  decide +kernel

theorem cellA6B5_check :
    cellCoverCheck (3 ^ 6) (5 ^ 5)
      (heightCap Stage04.H Stage04.M (3 ^ 6))
      (heightCap Stage04.H Stage04.M (5 ^ 5)) cellA6B5 candidates = true := by
  decide +kernel

theorem cellA6B6_check :
    cellCoverCheck (3 ^ 6) (5 ^ 6)
      (heightCap Stage04.H Stage04.M (3 ^ 6))
      (heightCap Stage04.H Stage04.M (5 ^ 6)) cellA6B6 candidates = true := by
  decide +kernel

theorem cellA6B7_check :
    cellCoverCheck (3 ^ 6) (5 ^ 7)
      (heightCap Stage04.H Stage04.M (3 ^ 6))
      (heightCap Stage04.H Stage04.M (5 ^ 7)) cellA6B7 candidates = true := by
  decide +kernel

theorem cellA6B8_check :
    cellCoverCheck (3 ^ 6) (5 ^ 8)
      (heightCap Stage04.H Stage04.M (3 ^ 6))
      (heightCap Stage04.H Stage04.M (5 ^ 8)) cellA6B8 candidates = true := by
  decide +kernel

theorem cellA6B9_check :
    cellCoverCheck (3 ^ 6) (5 ^ 9)
      (heightCap Stage04.H Stage04.M (3 ^ 6))
      (heightCap Stage04.H Stage04.M (5 ^ 9)) cellA6B9 candidates = true := by
  decide +kernel

theorem cellA6B10_check :
    cellCoverCheck (3 ^ 6) (5 ^ 10)
      (heightCap Stage04.H Stage04.M (3 ^ 6))
      (heightCap Stage04.H Stage04.M (5 ^ 10)) cellA6B10 candidates = true := by
  decide +kernel

theorem rowA6_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 10) :
    cellCoverCheck (3 ^ 6) (5 ^ b)
      (heightCap Stage04.H Stage04.M (3 ^ 6))
      (heightCap Stage04.H Stage04.M (5 ^ b)) (rowA6 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA6 1 = cellA6B1 from rfl] using cellA6B1_check
  · simpa only [show rowA6 2 = cellA6B2 from rfl] using cellA6B2_check
  · simpa only [show rowA6 3 = cellA6B3 from rfl] using cellA6B3_check
  · simpa only [show rowA6 4 = cellA6B4 from rfl] using cellA6B4_check
  · simpa only [show rowA6 5 = cellA6B5 from rfl] using cellA6B5_check
  · simpa only [show rowA6 6 = cellA6B6 from rfl] using cellA6B6_check
  · simpa only [show rowA6 7 = cellA6B7 from rfl] using cellA6B7_check
  · simpa only [show rowA6 8 = cellA6B8 from rfl] using cellA6B8_check
  · simpa only [show rowA6 9 = cellA6B9 from rfl] using cellA6B9_check
  · simpa only [show rowA6 10 = cellA6B10 from rfl] using cellA6B10_check

theorem rowA6_block_check :
    blockCoverCheck 3 5 Stage04.H Stage04.M 6 1 1 10 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 6 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA6_cell_check b hbb.1 (by omega)
  simpa only [show cells 6 b = rowA6 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair35

#print axioms Math.B699.I11TerminalMembership.Pair35.cellA6B1_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA6B2_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA6B3_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA6B4_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA6B5_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA6B6_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA6B7_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA6B8_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA6B9_check
#print axioms Math.B699.I11TerminalMembership.Pair35.cellA6B10_check
#print axioms Math.B699.I11TerminalMembership.Pair35.rowA6_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair35.rowA6_block_check
