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

theorem cellA17B1_check :
    cellCoverCheck (2 ^ 17) (7 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (7 ^ 1)) cellA17B1 candidates = true := by
  decide +kernel

theorem cellA17B2_check :
    cellCoverCheck (2 ^ 17) (7 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (7 ^ 2)) cellA17B2 candidates = true := by
  decide +kernel

theorem cellA17B3_check :
    cellCoverCheck (2 ^ 17) (7 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (7 ^ 3)) cellA17B3 candidates = true := by
  decide +kernel

theorem cellA17B4_check :
    cellCoverCheck (2 ^ 17) (7 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (7 ^ 4)) cellA17B4 candidates = true := by
  decide +kernel

theorem cellA17B5_check :
    cellCoverCheck (2 ^ 17) (7 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (7 ^ 5)) cellA17B5 candidates = true := by
  decide +kernel

theorem cellA17B6_check :
    cellCoverCheck (2 ^ 17) (7 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (7 ^ 6)) cellA17B6 candidates = true := by
  decide +kernel

theorem cellA17B7_check :
    cellCoverCheck (2 ^ 17) (7 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (7 ^ 7)) cellA17B7 candidates = true := by
  decide +kernel

theorem cellA17B8_check :
    cellCoverCheck (2 ^ 17) (7 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (7 ^ 8)) cellA17B8 candidates = true := by
  decide +kernel

theorem rowA17_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 8) :
    cellCoverCheck (2 ^ 17) (7 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (7 ^ b)) (rowA17 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA17 1 = cellA17B1 from rfl] using cellA17B1_check
  · simpa only [show rowA17 2 = cellA17B2 from rfl] using cellA17B2_check
  · simpa only [show rowA17 3 = cellA17B3 from rfl] using cellA17B3_check
  · simpa only [show rowA17 4 = cellA17B4 from rfl] using cellA17B4_check
  · simpa only [show rowA17 5 = cellA17B5 from rfl] using cellA17B5_check
  · simpa only [show rowA17 6 = cellA17B6 from rfl] using cellA17B6_check
  · simpa only [show rowA17 7 = cellA17B7 from rfl] using cellA17B7_check
  · simpa only [show rowA17 8 = cellA17B8 from rfl] using cellA17B8_check

theorem rowA17_block_check :
    blockCoverCheck 2 7 Stage04.H Stage04.M 17 1 1 8 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 17 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA17_cell_check b hbb.1 (by omega)
  simpa only [show cells 17 b = rowA17 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair27

#print axioms Math.B699.I11TerminalMembership.Pair27.cellA17B1_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA17B2_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA17B3_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA17B4_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA17B5_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA17B6_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA17B7_check
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA17B8_check
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA17_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA17_block_check
