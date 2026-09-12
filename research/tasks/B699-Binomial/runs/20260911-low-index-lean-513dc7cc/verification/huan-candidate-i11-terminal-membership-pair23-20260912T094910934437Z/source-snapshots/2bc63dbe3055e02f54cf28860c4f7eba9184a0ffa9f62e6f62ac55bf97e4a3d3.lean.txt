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

theorem cellA22B1_check :
    cellCoverCheck (2 ^ 22) (3 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (3 ^ 1)) cellA22B1 candidates = true := by
  decide +kernel

theorem cellA22B2_check :
    cellCoverCheck (2 ^ 22) (3 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (3 ^ 2)) cellA22B2 candidates = true := by
  decide +kernel

theorem cellA22B3_check :
    cellCoverCheck (2 ^ 22) (3 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (3 ^ 3)) cellA22B3 candidates = true := by
  decide +kernel

theorem cellA22B4_check :
    cellCoverCheck (2 ^ 22) (3 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (3 ^ 4)) cellA22B4 candidates = true := by
  decide +kernel

theorem cellA22B5_check :
    cellCoverCheck (2 ^ 22) (3 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (3 ^ 5)) cellA22B5 candidates = true := by
  decide +kernel

theorem cellA22B6_check :
    cellCoverCheck (2 ^ 22) (3 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (3 ^ 6)) cellA22B6 candidates = true := by
  decide +kernel

theorem cellA22B7_check :
    cellCoverCheck (2 ^ 22) (3 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (3 ^ 7)) cellA22B7 candidates = true := by
  decide +kernel

theorem cellA22B8_check :
    cellCoverCheck (2 ^ 22) (3 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (3 ^ 8)) cellA22B8 candidates = true := by
  decide +kernel

theorem cellA22B9_check :
    cellCoverCheck (2 ^ 22) (3 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (3 ^ 9)) cellA22B9 candidates = true := by
  decide +kernel

theorem cellA22B10_check :
    cellCoverCheck (2 ^ 22) (3 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (3 ^ 10)) cellA22B10 candidates = true := by
  decide +kernel

theorem cellA22B11_check :
    cellCoverCheck (2 ^ 22) (3 ^ 11)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (3 ^ 11)) cellA22B11 candidates = true := by
  decide +kernel

theorem cellA22B12_check :
    cellCoverCheck (2 ^ 22) (3 ^ 12)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (3 ^ 12)) cellA22B12 candidates = true := by
  decide +kernel

theorem cellA22B13_check :
    cellCoverCheck (2 ^ 22) (3 ^ 13)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (3 ^ 13)) cellA22B13 candidates = true := by
  decide +kernel

theorem cellA22B14_check :
    cellCoverCheck (2 ^ 22) (3 ^ 14)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (3 ^ 14)) cellA22B14 candidates = true := by
  decide +kernel

theorem cellA22B15_check :
    cellCoverCheck (2 ^ 22) (3 ^ 15)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (3 ^ 15)) cellA22B15 candidates = true := by
  decide +kernel

theorem rowA22_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 15) :
    cellCoverCheck (2 ^ 22) (3 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 22))
      (heightCap Stage04.H Stage04.M (3 ^ b)) (rowA22 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA22 1 = cellA22B1 from rfl] using cellA22B1_check
  · simpa only [show rowA22 2 = cellA22B2 from rfl] using cellA22B2_check
  · simpa only [show rowA22 3 = cellA22B3 from rfl] using cellA22B3_check
  · simpa only [show rowA22 4 = cellA22B4 from rfl] using cellA22B4_check
  · simpa only [show rowA22 5 = cellA22B5 from rfl] using cellA22B5_check
  · simpa only [show rowA22 6 = cellA22B6 from rfl] using cellA22B6_check
  · simpa only [show rowA22 7 = cellA22B7 from rfl] using cellA22B7_check
  · simpa only [show rowA22 8 = cellA22B8 from rfl] using cellA22B8_check
  · simpa only [show rowA22 9 = cellA22B9 from rfl] using cellA22B9_check
  · simpa only [show rowA22 10 = cellA22B10 from rfl] using cellA22B10_check
  · simpa only [show rowA22 11 = cellA22B11 from rfl] using cellA22B11_check
  · simpa only [show rowA22 12 = cellA22B12 from rfl] using cellA22B12_check
  · simpa only [show rowA22 13 = cellA22B13 from rfl] using cellA22B13_check
  · simpa only [show rowA22 14 = cellA22B14 from rfl] using cellA22B14_check
  · simpa only [show rowA22 15 = cellA22B15 from rfl] using cellA22B15_check

theorem rowA22_block_check :
    blockCoverCheck 2 3 Stage04.H Stage04.M 22 1 1 15 cells candidates = true := by
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

end Math.B699.I11TerminalMembership.Pair23

#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B1_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B2_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B3_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B4_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B5_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B6_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B7_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B8_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B9_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B10_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B11_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B12_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B13_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B14_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B15_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA22_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA22_block_check
