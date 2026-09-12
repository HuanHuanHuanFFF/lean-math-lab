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

theorem cellA20B1_check :
    cellCoverCheck (2 ^ 20) (3 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (3 ^ 1)) cellA20B1 candidates = true := by
  decide +kernel

theorem cellA20B2_check :
    cellCoverCheck (2 ^ 20) (3 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (3 ^ 2)) cellA20B2 candidates = true := by
  decide +kernel

theorem cellA20B3_check :
    cellCoverCheck (2 ^ 20) (3 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (3 ^ 3)) cellA20B3 candidates = true := by
  decide +kernel

theorem cellA20B4_check :
    cellCoverCheck (2 ^ 20) (3 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (3 ^ 4)) cellA20B4 candidates = true := by
  decide +kernel

theorem cellA20B5_check :
    cellCoverCheck (2 ^ 20) (3 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (3 ^ 5)) cellA20B5 candidates = true := by
  decide +kernel

theorem cellA20B6_check :
    cellCoverCheck (2 ^ 20) (3 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (3 ^ 6)) cellA20B6 candidates = true := by
  decide +kernel

theorem cellA20B7_check :
    cellCoverCheck (2 ^ 20) (3 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (3 ^ 7)) cellA20B7 candidates = true := by
  decide +kernel

theorem cellA20B8_check :
    cellCoverCheck (2 ^ 20) (3 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (3 ^ 8)) cellA20B8 candidates = true := by
  decide +kernel

theorem cellA20B9_check :
    cellCoverCheck (2 ^ 20) (3 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (3 ^ 9)) cellA20B9 candidates = true := by
  decide +kernel

theorem cellA20B10_check :
    cellCoverCheck (2 ^ 20) (3 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (3 ^ 10)) cellA20B10 candidates = true := by
  decide +kernel

theorem cellA20B11_check :
    cellCoverCheck (2 ^ 20) (3 ^ 11)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (3 ^ 11)) cellA20B11 candidates = true := by
  decide +kernel

theorem cellA20B12_check :
    cellCoverCheck (2 ^ 20) (3 ^ 12)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (3 ^ 12)) cellA20B12 candidates = true := by
  decide +kernel

theorem cellA20B13_check :
    cellCoverCheck (2 ^ 20) (3 ^ 13)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (3 ^ 13)) cellA20B13 candidates = true := by
  decide +kernel

theorem cellA20B14_check :
    cellCoverCheck (2 ^ 20) (3 ^ 14)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (3 ^ 14)) cellA20B14 candidates = true := by
  decide +kernel

theorem cellA20B15_check :
    cellCoverCheck (2 ^ 20) (3 ^ 15)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (3 ^ 15)) cellA20B15 candidates = true := by
  decide +kernel

theorem rowA20_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 15) :
    cellCoverCheck (2 ^ 20) (3 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 20))
      (heightCap Stage04.H Stage04.M (3 ^ b)) (rowA20 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA20 1 = cellA20B1 from rfl] using cellA20B1_check
  · simpa only [show rowA20 2 = cellA20B2 from rfl] using cellA20B2_check
  · simpa only [show rowA20 3 = cellA20B3 from rfl] using cellA20B3_check
  · simpa only [show rowA20 4 = cellA20B4 from rfl] using cellA20B4_check
  · simpa only [show rowA20 5 = cellA20B5 from rfl] using cellA20B5_check
  · simpa only [show rowA20 6 = cellA20B6 from rfl] using cellA20B6_check
  · simpa only [show rowA20 7 = cellA20B7 from rfl] using cellA20B7_check
  · simpa only [show rowA20 8 = cellA20B8 from rfl] using cellA20B8_check
  · simpa only [show rowA20 9 = cellA20B9 from rfl] using cellA20B9_check
  · simpa only [show rowA20 10 = cellA20B10 from rfl] using cellA20B10_check
  · simpa only [show rowA20 11 = cellA20B11 from rfl] using cellA20B11_check
  · simpa only [show rowA20 12 = cellA20B12 from rfl] using cellA20B12_check
  · simpa only [show rowA20 13 = cellA20B13 from rfl] using cellA20B13_check
  · simpa only [show rowA20 14 = cellA20B14 from rfl] using cellA20B14_check
  · simpa only [show rowA20 15 = cellA20B15 from rfl] using cellA20B15_check

theorem rowA20_block_check :
    blockCoverCheck 2 3 Stage04.H Stage04.M 20 1 1 15 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 20 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA20_cell_check b hbb.1 (by omega)
  simpa only [show cells 20 b = rowA20 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair23

#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B1_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B2_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B3_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B4_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B5_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B6_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B7_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B8_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B9_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B10_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B11_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B12_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B13_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B14_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B15_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA20_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA20_block_check
