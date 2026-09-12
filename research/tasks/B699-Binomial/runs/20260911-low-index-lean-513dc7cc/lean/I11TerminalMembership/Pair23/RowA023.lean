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

theorem cellA23B1_check :
    cellCoverCheck (2 ^ 23) (3 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 23))
      (heightCap Stage04.H Stage04.M (3 ^ 1)) cellA23B1 candidates = true := by
  decide +kernel

theorem cellA23B2_check :
    cellCoverCheck (2 ^ 23) (3 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 23))
      (heightCap Stage04.H Stage04.M (3 ^ 2)) cellA23B2 candidates = true := by
  decide +kernel

theorem cellA23B3_check :
    cellCoverCheck (2 ^ 23) (3 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 23))
      (heightCap Stage04.H Stage04.M (3 ^ 3)) cellA23B3 candidates = true := by
  decide +kernel

theorem cellA23B4_check :
    cellCoverCheck (2 ^ 23) (3 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 23))
      (heightCap Stage04.H Stage04.M (3 ^ 4)) cellA23B4 candidates = true := by
  decide +kernel

theorem cellA23B5_check :
    cellCoverCheck (2 ^ 23) (3 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 23))
      (heightCap Stage04.H Stage04.M (3 ^ 5)) cellA23B5 candidates = true := by
  decide +kernel

theorem cellA23B6_check :
    cellCoverCheck (2 ^ 23) (3 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 23))
      (heightCap Stage04.H Stage04.M (3 ^ 6)) cellA23B6 candidates = true := by
  decide +kernel

theorem cellA23B7_check :
    cellCoverCheck (2 ^ 23) (3 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 23))
      (heightCap Stage04.H Stage04.M (3 ^ 7)) cellA23B7 candidates = true := by
  decide +kernel

theorem cellA23B8_check :
    cellCoverCheck (2 ^ 23) (3 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 23))
      (heightCap Stage04.H Stage04.M (3 ^ 8)) cellA23B8 candidates = true := by
  decide +kernel

theorem cellA23B9_check :
    cellCoverCheck (2 ^ 23) (3 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 23))
      (heightCap Stage04.H Stage04.M (3 ^ 9)) cellA23B9 candidates = true := by
  decide +kernel

theorem cellA23B10_check :
    cellCoverCheck (2 ^ 23) (3 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 23))
      (heightCap Stage04.H Stage04.M (3 ^ 10)) cellA23B10 candidates = true := by
  decide +kernel

theorem cellA23B11_check :
    cellCoverCheck (2 ^ 23) (3 ^ 11)
      (heightCap Stage04.H Stage04.M (2 ^ 23))
      (heightCap Stage04.H Stage04.M (3 ^ 11)) cellA23B11 candidates = true := by
  decide +kernel

theorem cellA23B12_check :
    cellCoverCheck (2 ^ 23) (3 ^ 12)
      (heightCap Stage04.H Stage04.M (2 ^ 23))
      (heightCap Stage04.H Stage04.M (3 ^ 12)) cellA23B12 candidates = true := by
  decide +kernel

theorem cellA23B13_check :
    cellCoverCheck (2 ^ 23) (3 ^ 13)
      (heightCap Stage04.H Stage04.M (2 ^ 23))
      (heightCap Stage04.H Stage04.M (3 ^ 13)) cellA23B13 candidates = true := by
  decide +kernel

theorem cellA23B14_check :
    cellCoverCheck (2 ^ 23) (3 ^ 14)
      (heightCap Stage04.H Stage04.M (2 ^ 23))
      (heightCap Stage04.H Stage04.M (3 ^ 14)) cellA23B14 candidates = true := by
  decide +kernel

theorem cellA23B15_check :
    cellCoverCheck (2 ^ 23) (3 ^ 15)
      (heightCap Stage04.H Stage04.M (2 ^ 23))
      (heightCap Stage04.H Stage04.M (3 ^ 15)) cellA23B15 candidates = true := by
  decide +kernel

theorem rowA23_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 15) :
    cellCoverCheck (2 ^ 23) (3 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 23))
      (heightCap Stage04.H Stage04.M (3 ^ b)) (rowA23 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA23 1 = cellA23B1 from rfl] using cellA23B1_check
  · simpa only [show rowA23 2 = cellA23B2 from rfl] using cellA23B2_check
  · simpa only [show rowA23 3 = cellA23B3 from rfl] using cellA23B3_check
  · simpa only [show rowA23 4 = cellA23B4 from rfl] using cellA23B4_check
  · simpa only [show rowA23 5 = cellA23B5 from rfl] using cellA23B5_check
  · simpa only [show rowA23 6 = cellA23B6 from rfl] using cellA23B6_check
  · simpa only [show rowA23 7 = cellA23B7 from rfl] using cellA23B7_check
  · simpa only [show rowA23 8 = cellA23B8 from rfl] using cellA23B8_check
  · simpa only [show rowA23 9 = cellA23B9 from rfl] using cellA23B9_check
  · simpa only [show rowA23 10 = cellA23B10 from rfl] using cellA23B10_check
  · simpa only [show rowA23 11 = cellA23B11 from rfl] using cellA23B11_check
  · simpa only [show rowA23 12 = cellA23B12 from rfl] using cellA23B12_check
  · simpa only [show rowA23 13 = cellA23B13 from rfl] using cellA23B13_check
  · simpa only [show rowA23 14 = cellA23B14 from rfl] using cellA23B14_check
  · simpa only [show rowA23 15 = cellA23B15 from rfl] using cellA23B15_check

theorem rowA23_block_check :
    blockCoverCheck 2 3 Stage04.H Stage04.M 23 1 1 15 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 23 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA23_cell_check b hbb.1 (by omega)
  simpa only [show cells 23 b = rowA23 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair23

#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B1_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B2_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B3_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B4_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B5_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B6_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B7_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B8_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B9_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B10_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B11_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B12_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B13_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B14_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B15_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA23_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA23_block_check
