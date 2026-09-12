import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCrt.Block
import Mathlib.Tactic.IntervalCases

/-! UNCOMPILED complete stage04 membership table; all21 shifts and complete
RowCell parameter ranges are retained. No whole-grid decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.I11TerminalMembership.Pair23
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

theorem cellA16B1_check :
    cellCoverCheck (2 ^ 16) (3 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (3 ^ 1)) cellA16B1 candidates = true := by
  decide +kernel

theorem cellA16B2_check :
    cellCoverCheck (2 ^ 16) (3 ^ 2)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (3 ^ 2)) cellA16B2 candidates = true := by
  decide +kernel

theorem cellA16B3_check :
    cellCoverCheck (2 ^ 16) (3 ^ 3)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (3 ^ 3)) cellA16B3 candidates = true := by
  decide +kernel

theorem cellA16B4_check :
    cellCoverCheck (2 ^ 16) (3 ^ 4)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (3 ^ 4)) cellA16B4 candidates = true := by
  decide +kernel

theorem cellA16B5_check :
    cellCoverCheck (2 ^ 16) (3 ^ 5)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (3 ^ 5)) cellA16B5 candidates = true := by
  decide +kernel

theorem cellA16B6_check :
    cellCoverCheck (2 ^ 16) (3 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (3 ^ 6)) cellA16B6 candidates = true := by
  decide +kernel

theorem cellA16B7_check :
    cellCoverCheck (2 ^ 16) (3 ^ 7)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (3 ^ 7)) cellA16B7 candidates = true := by
  decide +kernel

theorem cellA16B8_check :
    cellCoverCheck (2 ^ 16) (3 ^ 8)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (3 ^ 8)) cellA16B8 candidates = true := by
  decide +kernel

theorem cellA16B9_check :
    cellCoverCheck (2 ^ 16) (3 ^ 9)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (3 ^ 9)) cellA16B9 candidates = true := by
  decide +kernel

theorem cellA16B10_check :
    cellCoverCheck (2 ^ 16) (3 ^ 10)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (3 ^ 10)) cellA16B10 candidates = true := by
  decide +kernel

theorem cellA16B11_check :
    cellCoverCheck (2 ^ 16) (3 ^ 11)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (3 ^ 11)) cellA16B11 candidates = true := by
  decide +kernel

theorem cellA16B12_check :
    cellCoverCheck (2 ^ 16) (3 ^ 12)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (3 ^ 12)) cellA16B12 candidates = true := by
  decide +kernel

theorem cellA16B13_check :
    cellCoverCheck (2 ^ 16) (3 ^ 13)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (3 ^ 13)) cellA16B13 candidates = true := by
  decide +kernel

theorem cellA16B14_check :
    cellCoverCheck (2 ^ 16) (3 ^ 14)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (3 ^ 14)) cellA16B14 candidates = true := by
  decide +kernel

theorem cellA16B15_check :
    cellCoverCheck (2 ^ 16) (3 ^ 15)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (3 ^ 15)) cellA16B15 candidates = true := by
  decide +kernel

theorem rowA16_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 15) :
    cellCoverCheck (2 ^ 16) (3 ^ b)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (3 ^ b)) (rowA16 b) candidates = true := by
  interval_cases b
  · simpa only [show rowA16 1 = cellA16B1 from rfl] using cellA16B1_check
  · simpa only [show rowA16 2 = cellA16B2 from rfl] using cellA16B2_check
  · simpa only [show rowA16 3 = cellA16B3 from rfl] using cellA16B3_check
  · simpa only [show rowA16 4 = cellA16B4 from rfl] using cellA16B4_check
  · simpa only [show rowA16 5 = cellA16B5 from rfl] using cellA16B5_check
  · simpa only [show rowA16 6 = cellA16B6 from rfl] using cellA16B6_check
  · simpa only [show rowA16 7 = cellA16B7 from rfl] using cellA16B7_check
  · simpa only [show rowA16 8 = cellA16B8 from rfl] using cellA16B8_check
  · simpa only [show rowA16 9 = cellA16B9 from rfl] using cellA16B9_check
  · simpa only [show rowA16 10 = cellA16B10 from rfl] using cellA16B10_check
  · simpa only [show rowA16 11 = cellA16B11 from rfl] using cellA16B11_check
  · simpa only [show rowA16 12 = cellA16B12 from rfl] using cellA16B12_check
  · simpa only [show rowA16 13 = cellA16B13 from rfl] using cellA16B13_check
  · simpa only [show rowA16 14 = cellA16B14 from rfl] using cellA16B14_check
  · simpa only [show rowA16 15 = cellA16B15 from rfl] using cellA16B15_check

theorem rowA16_block_check :
    blockCoverCheck 2 3 Stage04.H Stage04.M 16 1 1 15 cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = 16 := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA16_cell_check b hbb.1 (by omega)
  simpa only [show cells 16 b = rowA16 b from rfl] using h

end Math.B699.I11TerminalMembership.Pair23

#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B1_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B2_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B3_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B4_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B5_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B6_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B7_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B8_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B9_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B10_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B11_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B12_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B13_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B14_check
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B15_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA16_cell_check
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA16_block_check
