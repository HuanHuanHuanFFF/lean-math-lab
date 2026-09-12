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

theorem cellA22B1_check :
    cellCoverCheck (2 ^ 22) (7 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (7 ^ 1)) cellA22B1 candidates = true := by
  decide +kernel

theorem cellA22B2_check :
    cellCoverCheck (2 ^ 22) (7 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (7 ^ 2)) cellA22B2 candidates = true := by
  decide +kernel

theorem cellA22B3_check :
    cellCoverCheck (2 ^ 22) (7 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (7 ^ 3)) cellA22B3 candidates = true := by
  decide +kernel

theorem cellA22B4_check :
    cellCoverCheck (2 ^ 22) (7 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (7 ^ 4)) cellA22B4 candidates = true := by
  decide +kernel

theorem cellA22B5_check :
    cellCoverCheck (2 ^ 22) (7 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (7 ^ 5)) cellA22B5 candidates = true := by
  decide +kernel

theorem cellA22B6_check :
    cellCoverCheck (2 ^ 22) (7 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (7 ^ 6)) cellA22B6 candidates = true := by
  decide +kernel

theorem cellA22B7_check :
    cellCoverCheck (2 ^ 22) (7 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (7 ^ 7)) cellA22B7 candidates = true := by
  decide +kernel

theorem cellA22B8_check :
    cellCoverCheck (2 ^ 22) (7 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (7 ^ 8)) cellA22B8 candidates = true := by
  decide +kernel

theorem rowA22_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 8) :
    cellCoverCheck (2 ^ 22) (7 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (7 ^ b)) (rowA22 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA22 1 = cellA22B1 from rfl] using cellA22B1_check
  · simpa only [show rowA22 2 = cellA22B2 from rfl] using cellA22B2_check
  · simpa only [show rowA22 3 = cellA22B3 from rfl] using cellA22B3_check
  · simpa only [show rowA22 4 = cellA22B4 from rfl] using cellA22B4_check
  · simpa only [show rowA22 5 = cellA22B5 from rfl] using cellA22B5_check
  · simpa only [show rowA22 6 = cellA22B6 from rfl] using cellA22B6_check
  · simpa only [show rowA22 7 = cellA22B7 from rfl] using cellA22B7_check
  · simpa only [show rowA22 8 = cellA22B8 from rfl] using cellA22B8_check

theorem rowA22_block_check :
    blockCoverCheck 2 7 Stage04.H Stage04.M 22 1 1 8 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 22 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA22_cell_check b hbb.1 (by omega)
  simpa only [show cells 22 b = rowA22 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair27

#print axioms Math.B699.I11TerminalMembership.Pair27.cellA22B1_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA22B2_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA22B3_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA22B4_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA22B5_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA22B6_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA22B7_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA22B8_check
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA22_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA22_block_check
