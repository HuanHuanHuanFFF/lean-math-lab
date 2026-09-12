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

theorem cellA19B1_check :
    cellCoverCheck (2 ^ 19) (7 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 19))
      (heightCap Stage04.H Stage04.M (7 ^ 1)) cellA19B1 candidates = true := by
  decide +kernel

theorem cellA19B2_check :
    cellCoverCheck (2 ^ 19) (7 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 19))
      (heightCap Stage04.H Stage04.M (7 ^ 2)) cellA19B2 candidates = true := by
  decide +kernel

theorem cellA19B3_check :
    cellCoverCheck (2 ^ 19) (7 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 19))
      (heightCap Stage04.H Stage04.M (7 ^ 3)) cellA19B3 candidates = true := by
  decide +kernel

theorem cellA19B4_check :
    cellCoverCheck (2 ^ 19) (7 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 19))
      (heightCap Stage04.H Stage04.M (7 ^ 4)) cellA19B4 candidates = true := by
  decide +kernel

theorem cellA19B5_check :
    cellCoverCheck (2 ^ 19) (7 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 19))
      (heightCap Stage04.H Stage04.M (7 ^ 5)) cellA19B5 candidates = true := by
  decide +kernel

theorem cellA19B6_check :
    cellCoverCheck (2 ^ 19) (7 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 19))
      (heightCap Stage04.H Stage04.M (7 ^ 6)) cellA19B6 candidates = true := by
  decide +kernel

theorem cellA19B7_check :
    cellCoverCheck (2 ^ 19) (7 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 19))
      (heightCap Stage04.H Stage04.M (7 ^ 7)) cellA19B7 candidates = true := by
  decide +kernel

theorem cellA19B8_check :
    cellCoverCheck (2 ^ 19) (7 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 19))
      (heightCap Stage04.H Stage04.M (7 ^ 8)) cellA19B8 candidates = true := by
  decide +kernel

theorem rowA19_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 8) :
    cellCoverCheck (2 ^ 19) (7 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 19))
      (heightCap Stage04.H Stage04.M (7 ^ b)) (rowA19 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA19 1 = cellA19B1 from rfl] using cellA19B1_check
  · simpa only [show rowA19 2 = cellA19B2 from rfl] using cellA19B2_check
  · simpa only [show rowA19 3 = cellA19B3 from rfl] using cellA19B3_check
  · simpa only [show rowA19 4 = cellA19B4 from rfl] using cellA19B4_check
  · simpa only [show rowA19 5 = cellA19B5 from rfl] using cellA19B5_check
  · simpa only [show rowA19 6 = cellA19B6 from rfl] using cellA19B6_check
  · simpa only [show rowA19 7 = cellA19B7 from rfl] using cellA19B7_check
  · simpa only [show rowA19 8 = cellA19B8 from rfl] using cellA19B8_check

theorem rowA19_block_check :
    blockCoverCheck 2 7 Stage04.H Stage04.M 19 1 1 8 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 19 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA19_cell_check b hbb.1 (by omega)
  simpa only [show cells 19 b = rowA19 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair27

#print axioms Math.B699.I11TerminalMembership.Pair27.cellA19B1_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA19B2_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA19B3_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA19B4_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA19B5_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA19B6_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA19B7_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA19B8_check
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA19_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA19_block_check
