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

theorem cellA13B1_check :
    cellCoverCheck (2 ^ 13) (3 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 13))
      (heightCap Stage04.H Stage04.M (3 ^ 1)) cellA13B1 candidates = true := by
  decide +kernel

theorem cellA13B2_check :
    cellCoverCheck (2 ^ 13) (3 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 13))
      (heightCap Stage04.H Stage04.M (3 ^ 2)) cellA13B2 candidates = true := by
  decide +kernel

theorem cellA13B3_check :
    cellCoverCheck (2 ^ 13) (3 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 13))
      (heightCap Stage04.H Stage04.M (3 ^ 3)) cellA13B3 candidates = true := by
  decide +kernel

theorem cellA13B4_check :
    cellCoverCheck (2 ^ 13) (3 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 13))
      (heightCap Stage04.H Stage04.M (3 ^ 4)) cellA13B4 candidates = true := by
  decide +kernel

theorem cellA13B5_check :
    cellCoverCheck (2 ^ 13) (3 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 13))
      (heightCap Stage04.H Stage04.M (3 ^ 5)) cellA13B5 candidates = true := by
  decide +kernel

theorem cellA13B6_check :
    cellCoverCheck (2 ^ 13) (3 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 13))
      (heightCap Stage04.H Stage04.M (3 ^ 6)) cellA13B6 candidates = true := by
  decide +kernel

theorem cellA13B7_check :
    cellCoverCheck (2 ^ 13) (3 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 13))
      (heightCap Stage04.H Stage04.M (3 ^ 7)) cellA13B7 candidates = true := by
  decide +kernel

theorem cellA13B8_check :
    cellCoverCheck (2 ^ 13) (3 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 13))
      (heightCap Stage04.H Stage04.M (3 ^ 8)) cellA13B8 candidates = true := by
  decide +kernel

theorem cellA13B9_check :
    cellCoverCheck (2 ^ 13) (3 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 13))
      (heightCap Stage04.H Stage04.M (3 ^ 9)) cellA13B9 candidates = true := by
  decide +kernel

theorem cellA13B10_check :
    cellCoverCheck (2 ^ 13) (3 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 13))
      (heightCap Stage04.H Stage04.M (3 ^ 10)) cellA13B10 candidates = true := by
  decide +kernel

theorem cellA13B11_check :
    cellCoverCheck (2 ^ 13) (3 ^ 11)
      (heightCap Stage04.H Stage04.M (2 ^ 13))
      (heightCap Stage04.H Stage04.M (3 ^ 11)) cellA13B11 candidates = true := by
  decide +kernel

theorem cellA13B12_check :
    cellCoverCheck (2 ^ 13) (3 ^ 12)
      (heightCap Stage04.H Stage04.M (2 ^ 13))
      (heightCap Stage04.H Stage04.M (3 ^ 12)) cellA13B12 candidates = true := by
  decide +kernel

theorem cellA13B13_check :
    cellCoverCheck (2 ^ 13) (3 ^ 13)
      (heightCap Stage04.H Stage04.M (2 ^ 13))
      (heightCap Stage04.H Stage04.M (3 ^ 13)) cellA13B13 candidates = true := by
  decide +kernel

theorem cellA13B14_check :
    cellCoverCheck (2 ^ 13) (3 ^ 14)
      (heightCap Stage04.H Stage04.M (2 ^ 13))
      (heightCap Stage04.H Stage04.M (3 ^ 14)) cellA13B14 candidates = true := by
  decide +kernel

theorem cellA13B15_check :
    cellCoverCheck (2 ^ 13) (3 ^ 15)
      (heightCap Stage04.H Stage04.M (2 ^ 13))
      (heightCap Stage04.H Stage04.M (3 ^ 15)) cellA13B15 candidates = true := by
  decide +kernel

theorem rowA13_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 15) :
    cellCoverCheck (2 ^ 13) (3 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 13))
      (heightCap Stage04.H Stage04.M (3 ^ b)) (rowA13 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA13 1 = cellA13B1 from rfl] using cellA13B1_check
  · simpa only [show rowA13 2 = cellA13B2 from rfl] using cellA13B2_check
  · simpa only [show rowA13 3 = cellA13B3 from rfl] using cellA13B3_check
  · simpa only [show rowA13 4 = cellA13B4 from rfl] using cellA13B4_check
  · simpa only [show rowA13 5 = cellA13B5 from rfl] using cellA13B5_check
  · simpa only [show rowA13 6 = cellA13B6 from rfl] using cellA13B6_check
  · simpa only [show rowA13 7 = cellA13B7 from rfl] using cellA13B7_check
  · simpa only [show rowA13 8 = cellA13B8 from rfl] using cellA13B8_check
  · simpa only [show rowA13 9 = cellA13B9 from rfl] using cellA13B9_check
  · simpa only [show rowA13 10 = cellA13B10 from rfl] using cellA13B10_check
  · simpa only [show rowA13 11 = cellA13B11 from rfl] using cellA13B11_check
  · simpa only [show rowA13 12 = cellA13B12 from rfl] using cellA13B12_check
  · simpa only [show rowA13 13 = cellA13B13 from rfl] using cellA13B13_check
  · simpa only [show rowA13 14 = cellA13B14 from rfl] using cellA13B14_check
  · simpa only [show rowA13 15 = cellA13B15 from rfl] using cellA13B15_check

theorem rowA13_block_check :
    blockCoverCheck 2 3 Stage04.H Stage04.M 13 1 1 15 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 13 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA13_cell_check b hbb.1 (by omega)
  simpa only [show cells 13 b = rowA13 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair23

#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B1_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B2_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B3_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B4_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B5_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B6_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B7_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B8_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B9_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B10_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B11_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B12_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B13_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B14_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B15_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA13_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA13_block_check
