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

theorem cellA3B1_check :
    cellCoverCheck (2 ^ 3) (7 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (7 ^ 1)) cellA3B1 candidates = true := by
  decide +kernel

theorem cellA3B2_check :
    cellCoverCheck (2 ^ 3) (7 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (7 ^ 2)) cellA3B2 candidates = true := by
  decide +kernel

theorem cellA3B3_check :
    cellCoverCheck (2 ^ 3) (7 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (7 ^ 3)) cellA3B3 candidates = true := by
  decide +kernel

theorem cellA3B4_check :
    cellCoverCheck (2 ^ 3) (7 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (7 ^ 4)) cellA3B4 candidates = true := by
  decide +kernel

theorem cellA3B5_check :
    cellCoverCheck (2 ^ 3) (7 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (7 ^ 5)) cellA3B5 candidates = true := by
  decide +kernel

theorem cellA3B6_check :
    cellCoverCheck (2 ^ 3) (7 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (7 ^ 6)) cellA3B6 candidates = true := by
  decide +kernel

theorem cellA3B7_check :
    cellCoverCheck (2 ^ 3) (7 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (7 ^ 7)) cellA3B7 candidates = true := by
  decide +kernel

theorem cellA3B8_check :
    cellCoverCheck (2 ^ 3) (7 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (7 ^ 8)) cellA3B8 candidates = true := by
  decide +kernel

theorem rowA3_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 8) :
    cellCoverCheck (2 ^ 3) (7 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (7 ^ b)) (rowA3 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA3 1 = cellA3B1 from rfl] using cellA3B1_check
  · simpa only [show rowA3 2 = cellA3B2 from rfl] using cellA3B2_check
  · simpa only [show rowA3 3 = cellA3B3 from rfl] using cellA3B3_check
  · simpa only [show rowA3 4 = cellA3B4 from rfl] using cellA3B4_check
  · simpa only [show rowA3 5 = cellA3B5 from rfl] using cellA3B5_check
  · simpa only [show rowA3 6 = cellA3B6 from rfl] using cellA3B6_check
  · simpa only [show rowA3 7 = cellA3B7 from rfl] using cellA3B7_check
  · simpa only [show rowA3 8 = cellA3B8 from rfl] using cellA3B8_check

theorem rowA3_block_check :
    blockCoverCheck 2 7 Stage04.H Stage04.M 3 1 1 8 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 3 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA3_cell_check b hbb.1 (by omega)
  simpa only [show cells 3 b = rowA3 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair27

#print axioms Math.B699.I11TerminalMembership.Pair27.cellA3B1_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA3B2_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA3B3_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA3B4_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA3B5_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA3B6_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA3B7_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA3B8_check
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA3_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA3_block_check
