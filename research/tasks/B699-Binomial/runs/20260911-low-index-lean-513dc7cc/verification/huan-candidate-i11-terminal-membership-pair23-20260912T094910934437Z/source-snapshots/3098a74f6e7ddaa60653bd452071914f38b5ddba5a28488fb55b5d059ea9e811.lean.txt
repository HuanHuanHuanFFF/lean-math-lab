import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.Data
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

namespace Math.B699.I11TerminalMembership.Pair23
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

theorem cellA17B1_check :
    cellCoverCheck (2 ^ 17) (3 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (3 ^ 1)) cellA17B1 candidates = true := by
  decide +kernel

theorem cellA17B2_check :
    cellCoverCheck (2 ^ 17) (3 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (3 ^ 2)) cellA17B2 candidates = true := by
  decide +kernel

theorem cellA17B3_check :
    cellCoverCheck (2 ^ 17) (3 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (3 ^ 3)) cellA17B3 candidates = true := by
  decide +kernel

theorem cellA17B4_check :
    cellCoverCheck (2 ^ 17) (3 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (3 ^ 4)) cellA17B4 candidates = true := by
  decide +kernel

theorem cellA17B5_check :
    cellCoverCheck (2 ^ 17) (3 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (3 ^ 5)) cellA17B5 candidates = true := by
  decide +kernel

theorem cellA17B6_check :
    cellCoverCheck (2 ^ 17) (3 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (3 ^ 6)) cellA17B6 candidates = true := by
  decide +kernel

theorem cellA17B7_check :
    cellCoverCheck (2 ^ 17) (3 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (3 ^ 7)) cellA17B7 candidates = true := by
  decide +kernel

theorem cellA17B8_check :
    cellCoverCheck (2 ^ 17) (3 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (3 ^ 8)) cellA17B8 candidates = true := by
  decide +kernel

theorem cellA17B9_check :
    cellCoverCheck (2 ^ 17) (3 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (3 ^ 9)) cellA17B9 candidates = true := by
  decide +kernel

theorem cellA17B10_check :
    cellCoverCheck (2 ^ 17) (3 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (3 ^ 10)) cellA17B10 candidates = true := by
  decide +kernel

theorem cellA17B11_check :
    cellCoverCheck (2 ^ 17) (3 ^ 11)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (3 ^ 11)) cellA17B11 candidates = true := by
  decide +kernel

theorem cellA17B12_check :
    cellCoverCheck (2 ^ 17) (3 ^ 12)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (3 ^ 12)) cellA17B12 candidates = true := by
  decide +kernel

theorem cellA17B13_check :
    cellCoverCheck (2 ^ 17) (3 ^ 13)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (3 ^ 13)) cellA17B13 candidates = true := by
  decide +kernel

theorem cellA17B14_check :
    cellCoverCheck (2 ^ 17) (3 ^ 14)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (3 ^ 14)) cellA17B14 candidates = true := by
  decide +kernel

theorem cellA17B15_check :
    cellCoverCheck (2 ^ 17) (3 ^ 15)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (3 ^ 15)) cellA17B15 candidates = true := by
  decide +kernel

theorem rowA17_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 15) :
    cellCoverCheck (2 ^ 17) (3 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 17))
      (heightCap Stage04.H Stage04.M (3 ^ b)) (rowA17 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA17 1 = cellA17B1 from rfl] using cellA17B1_check
  · simpa only [show rowA17 2 = cellA17B2 from rfl] using cellA17B2_check
  · simpa only [show rowA17 3 = cellA17B3 from rfl] using cellA17B3_check
  · simpa only [show rowA17 4 = cellA17B4 from rfl] using cellA17B4_check
  · simpa only [show rowA17 5 = cellA17B5 from rfl] using cellA17B5_check
  · simpa only [show rowA17 6 = cellA17B6 from rfl] using cellA17B6_check
  · simpa only [show rowA17 7 = cellA17B7 from rfl] using cellA17B7_check
  · simpa only [show rowA17 8 = cellA17B8 from rfl] using cellA17B8_check
  · simpa only [show rowA17 9 = cellA17B9 from rfl] using cellA17B9_check
  · simpa only [show rowA17 10 = cellA17B10 from rfl] using cellA17B10_check
  · simpa only [show rowA17 11 = cellA17B11 from rfl] using cellA17B11_check
  · simpa only [show rowA17 12 = cellA17B12 from rfl] using cellA17B12_check
  · simpa only [show rowA17 13 = cellA17B13 from rfl] using cellA17B13_check
  · simpa only [show rowA17 14 = cellA17B14 from rfl] using cellA17B14_check
  · simpa only [show rowA17 15 = cellA17B15 from rfl] using cellA17B15_check

theorem rowA17_block_check :
    blockCoverCheck 2 3 Stage04.H Stage04.M 17 1 1 15 cells candidates = true := by
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

end Math.B699.I11TerminalMembership.Pair23

#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B1_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B2_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B3_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B4_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B5_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B6_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B7_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B8_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B9_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B10_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B11_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B12_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B13_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B14_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B15_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA17_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA17_block_check
