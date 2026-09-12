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

theorem cellA2B1_check :
    cellCoverCheck (2 ^ 2) (3 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 2))
      (heightCap Stage04.H Stage04.M (3 ^ 1)) cellA2B1 candidates = true := by
  decide +kernel

theorem cellA2B2_check :
    cellCoverCheck (2 ^ 2) (3 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 2))
      (heightCap Stage04.H Stage04.M (3 ^ 2)) cellA2B2 candidates = true := by
  decide +kernel

theorem cellA2B3_check :
    cellCoverCheck (2 ^ 2) (3 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 2))
      (heightCap Stage04.H Stage04.M (3 ^ 3)) cellA2B3 candidates = true := by
  decide +kernel

theorem cellA2B4_check :
    cellCoverCheck (2 ^ 2) (3 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 2))
      (heightCap Stage04.H Stage04.M (3 ^ 4)) cellA2B4 candidates = true := by
  decide +kernel

theorem cellA2B5_check :
    cellCoverCheck (2 ^ 2) (3 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 2))
      (heightCap Stage04.H Stage04.M (3 ^ 5)) cellA2B5 candidates = true := by
  decide +kernel

theorem cellA2B6_check :
    cellCoverCheck (2 ^ 2) (3 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 2))
      (heightCap Stage04.H Stage04.M (3 ^ 6)) cellA2B6 candidates = true := by
  decide +kernel

theorem cellA2B7_check :
    cellCoverCheck (2 ^ 2) (3 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 2))
      (heightCap Stage04.H Stage04.M (3 ^ 7)) cellA2B7 candidates = true := by
  decide +kernel

theorem cellA2B8_check :
    cellCoverCheck (2 ^ 2) (3 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 2))
      (heightCap Stage04.H Stage04.M (3 ^ 8)) cellA2B8 candidates = true := by
  decide +kernel

theorem cellA2B9_check :
    cellCoverCheck (2 ^ 2) (3 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 2))
      (heightCap Stage04.H Stage04.M (3 ^ 9)) cellA2B9 candidates = true := by
  decide +kernel

theorem cellA2B10_check :
    cellCoverCheck (2 ^ 2) (3 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 2))
      (heightCap Stage04.H Stage04.M (3 ^ 10)) cellA2B10 candidates = true := by
  decide +kernel

theorem cellA2B11_check :
    cellCoverCheck (2 ^ 2) (3 ^ 11)
      (heightCap Stage04.H Stage04.M (2 ^ 2))
      (heightCap Stage04.H Stage04.M (3 ^ 11)) cellA2B11 candidates = true := by
  decide +kernel

theorem cellA2B12_check :
    cellCoverCheck (2 ^ 2) (3 ^ 12)
      (heightCap Stage04.H Stage04.M (2 ^ 2))
      (heightCap Stage04.H Stage04.M (3 ^ 12)) cellA2B12 candidates = true := by
  decide +kernel

theorem cellA2B13_check :
    cellCoverCheck (2 ^ 2) (3 ^ 13)
      (heightCap Stage04.H Stage04.M (2 ^ 2))
      (heightCap Stage04.H Stage04.M (3 ^ 13)) cellA2B13 candidates = true := by
  decide +kernel

theorem cellA2B14_check :
    cellCoverCheck (2 ^ 2) (3 ^ 14)
      (heightCap Stage04.H Stage04.M (2 ^ 2))
      (heightCap Stage04.H Stage04.M (3 ^ 14)) cellA2B14 candidates = true := by
  decide +kernel

theorem cellA2B15_check :
    cellCoverCheck (2 ^ 2) (3 ^ 15)
      (heightCap Stage04.H Stage04.M (2 ^ 2))
      (heightCap Stage04.H Stage04.M (3 ^ 15)) cellA2B15 candidates = true := by
  decide +kernel

theorem rowA2_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 15) :
    cellCoverCheck (2 ^ 2) (3 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 2))
      (heightCap Stage04.H Stage04.M (3 ^ b)) (rowA2 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA2 1 = cellA2B1 from rfl] using cellA2B1_check
  · simpa only [show rowA2 2 = cellA2B2 from rfl] using cellA2B2_check
  · simpa only [show rowA2 3 = cellA2B3 from rfl] using cellA2B3_check
  · simpa only [show rowA2 4 = cellA2B4 from rfl] using cellA2B4_check
  · simpa only [show rowA2 5 = cellA2B5 from rfl] using cellA2B5_check
  · simpa only [show rowA2 6 = cellA2B6 from rfl] using cellA2B6_check
  · simpa only [show rowA2 7 = cellA2B7 from rfl] using cellA2B7_check
  · simpa only [show rowA2 8 = cellA2B8 from rfl] using cellA2B8_check
  · simpa only [show rowA2 9 = cellA2B9 from rfl] using cellA2B9_check
  · simpa only [show rowA2 10 = cellA2B10 from rfl] using cellA2B10_check
  · simpa only [show rowA2 11 = cellA2B11 from rfl] using cellA2B11_check
  · simpa only [show rowA2 12 = cellA2B12 from rfl] using cellA2B12_check
  · simpa only [show rowA2 13 = cellA2B13 from rfl] using cellA2B13_check
  · simpa only [show rowA2 14 = cellA2B14 from rfl] using cellA2B14_check
  · simpa only [show rowA2 15 = cellA2B15 from rfl] using cellA2B15_check

theorem rowA2_block_check :
    blockCoverCheck 2 3 Stage04.H Stage04.M 2 1 1 15 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 2 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA2_cell_check b hbb.1 (by omega)
  simpa only [show cells 2 b = rowA2 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair23

#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B1_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B2_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B3_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B4_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B5_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B6_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B7_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B8_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B9_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B10_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B11_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B12_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B13_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B14_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B15_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA2_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA2_block_check
