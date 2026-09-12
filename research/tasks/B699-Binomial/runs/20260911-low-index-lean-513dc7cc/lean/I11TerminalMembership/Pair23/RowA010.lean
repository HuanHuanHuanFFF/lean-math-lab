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

theorem cellA10B1_check :
    cellCoverCheck (2 ^ 10) (3 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 10))
      (heightCap Stage04.H Stage04.M (3 ^ 1)) cellA10B1 candidates = true := by
  decide +kernel

theorem cellA10B2_check :
    cellCoverCheck (2 ^ 10) (3 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 10))
      (heightCap Stage04.H Stage04.M (3 ^ 2)) cellA10B2 candidates = true := by
  decide +kernel

theorem cellA10B3_check :
    cellCoverCheck (2 ^ 10) (3 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 10))
      (heightCap Stage04.H Stage04.M (3 ^ 3)) cellA10B3 candidates = true := by
  decide +kernel

theorem cellA10B4_check :
    cellCoverCheck (2 ^ 10) (3 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 10))
      (heightCap Stage04.H Stage04.M (3 ^ 4)) cellA10B4 candidates = true := by
  decide +kernel

theorem cellA10B5_check :
    cellCoverCheck (2 ^ 10) (3 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 10))
      (heightCap Stage04.H Stage04.M (3 ^ 5)) cellA10B5 candidates = true := by
  decide +kernel

theorem cellA10B6_check :
    cellCoverCheck (2 ^ 10) (3 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 10))
      (heightCap Stage04.H Stage04.M (3 ^ 6)) cellA10B6 candidates = true := by
  decide +kernel

theorem cellA10B7_check :
    cellCoverCheck (2 ^ 10) (3 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 10))
      (heightCap Stage04.H Stage04.M (3 ^ 7)) cellA10B7 candidates = true := by
  decide +kernel

theorem cellA10B8_check :
    cellCoverCheck (2 ^ 10) (3 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 10))
      (heightCap Stage04.H Stage04.M (3 ^ 8)) cellA10B8 candidates = true := by
  decide +kernel

theorem cellA10B9_check :
    cellCoverCheck (2 ^ 10) (3 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 10))
      (heightCap Stage04.H Stage04.M (3 ^ 9)) cellA10B9 candidates = true := by
  decide +kernel

theorem cellA10B10_check :
    cellCoverCheck (2 ^ 10) (3 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 10))
      (heightCap Stage04.H Stage04.M (3 ^ 10)) cellA10B10 candidates = true := by
  decide +kernel

theorem cellA10B11_check :
    cellCoverCheck (2 ^ 10) (3 ^ 11)
      (heightCap Stage04.H Stage04.M (2 ^ 10))
      (heightCap Stage04.H Stage04.M (3 ^ 11)) cellA10B11 candidates = true := by
  decide +kernel

theorem cellA10B12_check :
    cellCoverCheck (2 ^ 10) (3 ^ 12)
      (heightCap Stage04.H Stage04.M (2 ^ 10))
      (heightCap Stage04.H Stage04.M (3 ^ 12)) cellA10B12 candidates = true := by
  decide +kernel

theorem cellA10B13_check :
    cellCoverCheck (2 ^ 10) (3 ^ 13)
      (heightCap Stage04.H Stage04.M (2 ^ 10))
      (heightCap Stage04.H Stage04.M (3 ^ 13)) cellA10B13 candidates = true := by
  decide +kernel

theorem cellA10B14_check :
    cellCoverCheck (2 ^ 10) (3 ^ 14)
      (heightCap Stage04.H Stage04.M (2 ^ 10))
      (heightCap Stage04.H Stage04.M (3 ^ 14)) cellA10B14 candidates = true := by
  decide +kernel

theorem cellA10B15_check :
    cellCoverCheck (2 ^ 10) (3 ^ 15)
      (heightCap Stage04.H Stage04.M (2 ^ 10))
      (heightCap Stage04.H Stage04.M (3 ^ 15)) cellA10B15 candidates = true := by
  decide +kernel

theorem rowA10_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 15) :
    cellCoverCheck (2 ^ 10) (3 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 10))
      (heightCap Stage04.H Stage04.M (3 ^ b)) (rowA10 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA10 1 = cellA10B1 from rfl] using cellA10B1_check
  · simpa only [show rowA10 2 = cellA10B2 from rfl] using cellA10B2_check
  · simpa only [show rowA10 3 = cellA10B3 from rfl] using cellA10B3_check
  · simpa only [show rowA10 4 = cellA10B4 from rfl] using cellA10B4_check
  · simpa only [show rowA10 5 = cellA10B5 from rfl] using cellA10B5_check
  · simpa only [show rowA10 6 = cellA10B6 from rfl] using cellA10B6_check
  · simpa only [show rowA10 7 = cellA10B7 from rfl] using cellA10B7_check
  · simpa only [show rowA10 8 = cellA10B8 from rfl] using cellA10B8_check
  · simpa only [show rowA10 9 = cellA10B9 from rfl] using cellA10B9_check
  · simpa only [show rowA10 10 = cellA10B10 from rfl] using cellA10B10_check
  · simpa only [show rowA10 11 = cellA10B11 from rfl] using cellA10B11_check
  · simpa only [show rowA10 12 = cellA10B12 from rfl] using cellA10B12_check
  · simpa only [show rowA10 13 = cellA10B13 from rfl] using cellA10B13_check
  · simpa only [show rowA10 14 = cellA10B14 from rfl] using cellA10B14_check
  · simpa only [show rowA10 15 = cellA10B15 from rfl] using cellA10B15_check

theorem rowA10_block_check :
    blockCoverCheck 2 3 Stage04.H Stage04.M 10 1 1 15 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 10 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA10_cell_check b hbb.1 (by omega)
  simpa only [show cells 10 b = rowA10 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair23

#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B1_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B2_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B3_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B4_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B5_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B6_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B7_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B8_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B9_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B10_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B11_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B12_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B13_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B14_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B15_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA10_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA10_block_check
