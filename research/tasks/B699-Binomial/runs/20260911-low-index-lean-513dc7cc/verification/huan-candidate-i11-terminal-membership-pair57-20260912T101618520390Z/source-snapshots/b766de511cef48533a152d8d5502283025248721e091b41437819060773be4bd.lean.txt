import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair57.RowA001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair57.RowA002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair57.RowA003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair57.RowA004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair57.RowA005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair57.RowA006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair57.RowA007
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair57.RowA008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair57.RowA009
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair57.RowA010
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCrt.Pair

/-! UNCOMPILED complete stage04 membership table; all21 shifts and complete
RowCell parameter ranges are retained. No whole-grid decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.I11TerminalMembership.Pair57
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

private theorem append_rows_named
    {p q H M start left right next total bStart bCount : ℕ}
    {data : ℕ → ℕ → CellData} {cs : List B699LowIndex.NatInterval}
    (hnext : start + left = next) (htotal : left + right = total)
    (hl : blockCoverCheck p q H M start left bStart bCount data cs = true)
    (hr : blockCoverCheck p q H M next right bStart bCount data cs = true) :
    blockCoverCheck p q H M start total bStart bCount data cs = true := by
  have hr' : blockCoverCheck p q H M (start + left) right bStart bCount data cs = true := by
    rw [hnext]
    exact hr
  have h := blockCoverCheck_append_rows hl hr'
  rw [htotal] at h
  exact h

theorem rectangle_check :
    rectangleCoverCheck 5 7 Stage04.H Stage04.M 10 8 cells candidates = true := by
  have h2 : blockCoverCheck 5 7 Stage04.H Stage04.M 1 2 1 8 cells candidates = true :=
    append_rows_named
      (p := 5) (q := 7) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 1) (right := 1) (next := 2) (total := 2)
      (bStart := 1) (bCount := 8) (data := cells) (cs := candidates)
      (by decide : 1 + 1 = 2) (by decide : 1 + 1 = 2)
      rowA1_block_check rowA2_block_check
  have h3 : blockCoverCheck 5 7 Stage04.H Stage04.M 1 3 1 8 cells candidates = true :=
    append_rows_named
      (p := 5) (q := 7) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 2) (right := 1) (next := 3) (total := 3)
      (bStart := 1) (bCount := 8) (data := cells) (cs := candidates)
      (by decide : 1 + 2 = 3) (by decide : 2 + 1 = 3)
      h2 rowA3_block_check
  have h4 : blockCoverCheck 5 7 Stage04.H Stage04.M 1 4 1 8 cells candidates = true :=
    append_rows_named
      (p := 5) (q := 7) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 3) (right := 1) (next := 4) (total := 4)
      (bStart := 1) (bCount := 8) (data := cells) (cs := candidates)
      (by decide : 1 + 3 = 4) (by decide : 3 + 1 = 4)
      h3 rowA4_block_check
  have h5 : blockCoverCheck 5 7 Stage04.H Stage04.M 1 5 1 8 cells candidates = true :=
    append_rows_named
      (p := 5) (q := 7) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 4) (right := 1) (next := 5) (total := 5)
      (bStart := 1) (bCount := 8) (data := cells) (cs := candidates)
      (by decide : 1 + 4 = 5) (by decide : 4 + 1 = 5)
      h4 rowA5_block_check
  have h6 : blockCoverCheck 5 7 Stage04.H Stage04.M 1 6 1 8 cells candidates = true :=
    append_rows_named
      (p := 5) (q := 7) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 5) (right := 1) (next := 6) (total := 6)
      (bStart := 1) (bCount := 8) (data := cells) (cs := candidates)
      (by decide : 1 + 5 = 6) (by decide : 5 + 1 = 6)
      h5 rowA6_block_check
  have h7 : blockCoverCheck 5 7 Stage04.H Stage04.M 1 7 1 8 cells candidates = true :=
    append_rows_named
      (p := 5) (q := 7) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 6) (right := 1) (next := 7) (total := 7)
      (bStart := 1) (bCount := 8) (data := cells) (cs := candidates)
      (by decide : 1 + 6 = 7) (by decide : 6 + 1 = 7)
      h6 rowA7_block_check
  have h8 : blockCoverCheck 5 7 Stage04.H Stage04.M 1 8 1 8 cells candidates = true :=
    append_rows_named
      (p := 5) (q := 7) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 7) (right := 1) (next := 8) (total := 8)
      (bStart := 1) (bCount := 8) (data := cells) (cs := candidates)
      (by decide : 1 + 7 = 8) (by decide : 7 + 1 = 8)
      h7 rowA8_block_check
  have h9 : blockCoverCheck 5 7 Stage04.H Stage04.M 1 9 1 8 cells candidates = true :=
    append_rows_named
      (p := 5) (q := 7) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 8) (right := 1) (next := 9) (total := 9)
      (bStart := 1) (bCount := 8) (data := cells) (cs := candidates)
      (by decide : 1 + 8 = 9) (by decide : 8 + 1 = 9)
      h8 rowA9_block_check
  have h10 : blockCoverCheck 5 7 Stage04.H Stage04.M 1 10 1 8 cells candidates = true :=
    append_rows_named
      (p := 5) (q := 7) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 9) (right := 1) (next := 10) (total := 10)
      (bStart := 1) (bCount := 8) (data := cells) (cs := candidates)
      (by decide : 1 + 9 = 10) (by decide : 9 + 1 = 10)
      h9 rowA10_block_check
  simpa only [rectangleCoverCheck] using h10

def pairData : PairGridData where
  amax := 10
  bmax := 8
  cells := cells

theorem cutoff_check : cutoffCheck 5 7 Stage04.H pairData = true := by
  have hp : Stage04.H ≤ (5 : ℕ) ^ (10 + 1) := by
    simpa only [Stage04.exponentMax5] using Stage04.cutoff_5
  have hq : Stage04.H ≤ (7 : ℕ) ^ (8 + 1) := by
    simpa only [Stage04.exponentMax7] using Stage04.cutoff_7
  have hprop : 1 < (5 : ℕ) ∧ 1 < (7 : ℕ) ∧
      Stage04.H ≤ (5 : ℕ) ^ (10 + 1) ∧ Stage04.H ≤ (7 : ℕ) ^ (8 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simp only [cutoffCheck, decide_eq_true_eq]
  exact hprop

theorem pair_check : pairGridCoverCheck 5 7 Stage04.H Stage04.M pairData candidates = true := by
  exact pairGridCoverCheck_of_parts cutoff_check
    (by simpa only [pairData] using rectangle_check)

end Math.B699.I11TerminalMembership.Pair57

#print axioms Math.B699.I11TerminalMembership.Pair57.rectangle_check
#print axioms Math.B699.I11TerminalMembership.Pair57.pairData
#print axioms Math.B699.I11TerminalMembership.Pair57.cutoff_check
#print axioms Math.B699.I11TerminalMembership.Pair57.pair_check
