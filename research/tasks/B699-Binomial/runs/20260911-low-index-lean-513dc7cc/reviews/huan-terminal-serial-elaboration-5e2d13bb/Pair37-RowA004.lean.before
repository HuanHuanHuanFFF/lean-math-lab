import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair37.Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCrt.Block
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED complete stage04 membership table; all21 shifts and complete
RowCell parameter ranges are retained. No whole-grid decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.I11TerminalMembership.Pair37
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

theorem cellA4B1_check :
    cellCoverCheck (3 ^ 4) (7 ^ 1)
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (heightCap Stage04.H Stage04.M (7 ^ 1)) cellA4B1 candidates = true := by
  decide +kernel

theorem cellA4B2_check :
    cellCoverCheck (3 ^ 4) (7 ^ 2)
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (heightCap Stage04.H Stage04.M (7 ^ 2)) cellA4B2 candidates = true := by
  decide +kernel

theorem cellA4B3_check :
    cellCoverCheck (3 ^ 4) (7 ^ 3)
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (heightCap Stage04.H Stage04.M (7 ^ 3)) cellA4B3 candidates = true := by
  decide +kernel

theorem cellA4B4_check :
    cellCoverCheck (3 ^ 4) (7 ^ 4)
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (heightCap Stage04.H Stage04.M (7 ^ 4)) cellA4B4 candidates = true := by
  decide +kernel

theorem cellA4B5_check :
    cellCoverCheck (3 ^ 4) (7 ^ 5)
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (heightCap Stage04.H Stage04.M (7 ^ 5)) cellA4B5 candidates = true := by
  decide +kernel

theorem cellA4B6_check :
    cellCoverCheck (3 ^ 4) (7 ^ 6)
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (heightCap Stage04.H Stage04.M (7 ^ 6)) cellA4B6 candidates = true := by
  decide +kernel

theorem cellA4B7_check :
    cellCoverCheck (3 ^ 4) (7 ^ 7)
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (heightCap Stage04.H Stage04.M (7 ^ 7)) cellA4B7 candidates = true := by
  decide +kernel

theorem cellA4B8_check :
    cellCoverCheck (3 ^ 4) (7 ^ 8)
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (heightCap Stage04.H Stage04.M (7 ^ 8)) cellA4B8 candidates = true := by
  decide +kernel

theorem rowA4_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 8) :
    cellCoverCheck (3 ^ 4) (7 ^ b)
      (heightCap Stage04.H Stage04.M (3 ^ 4))
      (heightCap Stage04.H Stage04.M (7 ^ b)) (rowA4 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA4 1 = cellA4B1 from rfl] using cellA4B1_check
  · simpa only [show rowA4 2 = cellA4B2 from rfl] using cellA4B2_check
  · simpa only [show rowA4 3 = cellA4B3 from rfl] using cellA4B3_check
  · simpa only [show rowA4 4 = cellA4B4 from rfl] using cellA4B4_check
  · simpa only [show rowA4 5 = cellA4B5 from rfl] using cellA4B5_check
  · simpa only [show rowA4 6 = cellA4B6 from rfl] using cellA4B6_check
  · simpa only [show rowA4 7 = cellA4B7 from rfl] using cellA4B7_check
  · simpa only [show rowA4 8 = cellA4B8 from rfl] using cellA4B8_check

theorem rowA4_block_check :
    blockCoverCheck 3 7 Stage04.H Stage04.M 4 1 1 8 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 4 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA4_cell_check b hbb.1 (by omega)
  simpa only [show cells 4 b = rowA4 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair37

#print axioms Math.B699.I11TerminalMembership.Pair37.cellA4B1_check
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA4B2_check
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA4B3_check
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA4B4_check
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA4B5_check
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA4B6_check
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA4B7_check
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA4B8_check
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA4_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA4_block_check
