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

theorem cellA3B1_check :
    cellCoverCheck (2 ^ 3) (3 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (3 ^ 1)) cellA3B1 candidates = true := by
  decide +kernel

theorem cellA3B2_check :
    cellCoverCheck (2 ^ 3) (3 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (3 ^ 2)) cellA3B2 candidates = true := by
  decide +kernel

theorem cellA3B3_check :
    cellCoverCheck (2 ^ 3) (3 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (3 ^ 3)) cellA3B3 candidates = true := by
  decide +kernel

theorem cellA3B4_check :
    cellCoverCheck (2 ^ 3) (3 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (3 ^ 4)) cellA3B4 candidates = true := by
  decide +kernel

theorem cellA3B5_check :
    cellCoverCheck (2 ^ 3) (3 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (3 ^ 5)) cellA3B5 candidates = true := by
  decide +kernel

theorem cellA3B6_check :
    cellCoverCheck (2 ^ 3) (3 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (3 ^ 6)) cellA3B6 candidates = true := by
  decide +kernel

theorem cellA3B7_check :
    cellCoverCheck (2 ^ 3) (3 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (3 ^ 7)) cellA3B7 candidates = true := by
  decide +kernel

theorem cellA3B8_check :
    cellCoverCheck (2 ^ 3) (3 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (3 ^ 8)) cellA3B8 candidates = true := by
  decide +kernel

theorem cellA3B9_check :
    cellCoverCheck (2 ^ 3) (3 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (3 ^ 9)) cellA3B9 candidates = true := by
  decide +kernel

theorem cellA3B10_check :
    cellCoverCheck (2 ^ 3) (3 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (3 ^ 10)) cellA3B10 candidates = true := by
  decide +kernel

theorem cellA3B11_check :
    cellCoverCheck (2 ^ 3) (3 ^ 11)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (3 ^ 11)) cellA3B11 candidates = true := by
  decide +kernel

theorem cellA3B12_check :
    cellCoverCheck (2 ^ 3) (3 ^ 12)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (3 ^ 12)) cellA3B12 candidates = true := by
  decide +kernel

theorem cellA3B13_check :
    cellCoverCheck (2 ^ 3) (3 ^ 13)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (3 ^ 13)) cellA3B13 candidates = true := by
  decide +kernel

theorem cellA3B14_check :
    cellCoverCheck (2 ^ 3) (3 ^ 14)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (3 ^ 14)) cellA3B14 candidates = true := by
  decide +kernel

theorem cellA3B15_check :
    cellCoverCheck (2 ^ 3) (3 ^ 15)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (3 ^ 15)) cellA3B15 candidates = true := by
  decide +kernel

theorem rowA3_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 15) :
    cellCoverCheck (2 ^ 3) (3 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 3))
      (heightCap Stage04.H Stage04.M (3 ^ b)) (rowA3 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA3 1 = cellA3B1 from rfl] using cellA3B1_check
  · simpa only [show rowA3 2 = cellA3B2 from rfl] using cellA3B2_check
  · simpa only [show rowA3 3 = cellA3B3 from rfl] using cellA3B3_check
  · simpa only [show rowA3 4 = cellA3B4 from rfl] using cellA3B4_check
  · simpa only [show rowA3 5 = cellA3B5 from rfl] using cellA3B5_check
  · simpa only [show rowA3 6 = cellA3B6 from rfl] using cellA3B6_check
  · simpa only [show rowA3 7 = cellA3B7 from rfl] using cellA3B7_check
  · simpa only [show rowA3 8 = cellA3B8 from rfl] using cellA3B8_check
  · simpa only [show rowA3 9 = cellA3B9 from rfl] using cellA3B9_check
  · simpa only [show rowA3 10 = cellA3B10 from rfl] using cellA3B10_check
  · simpa only [show rowA3 11 = cellA3B11 from rfl] using cellA3B11_check
  · simpa only [show rowA3 12 = cellA3B12 from rfl] using cellA3B12_check
  · simpa only [show rowA3 13 = cellA3B13 from rfl] using cellA3B13_check
  · simpa only [show rowA3 14 = cellA3B14 from rfl] using cellA3B14_check
  · simpa only [show rowA3 15 = cellA3B15 from rfl] using cellA3B15_check

theorem rowA3_block_check :
    blockCoverCheck 2 3 Stage04.H Stage04.M 3 1 1 15 cells candidates = true := by
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

end Math.B699.I11TerminalMembership.Pair23

#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B1_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B2_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B3_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B4_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B5_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B6_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B7_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B8_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B9_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B10_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B11_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B12_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B13_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B14_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B15_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA3_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA3_block_check
