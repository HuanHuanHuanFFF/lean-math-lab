import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA007
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA009
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA010
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA011
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA013
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA014
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA015
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA017
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA018
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA019
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA021
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA022
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA023
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.RowA024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCrt.Pair

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
    rectangleCoverCheck 2 3 Stage04.H Stage04.M 24 15 cells candidates = true := by
  have h2 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 2 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 1) (right := 1) (next := 2) (total := 2)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 1 = 2) (by decide : 1 + 1 = 2)
      rowA1_block_check rowA2_block_check
  have h3 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 3 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 2) (right := 1) (next := 3) (total := 3)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 2 = 3) (by decide : 2 + 1 = 3)
      h2 rowA3_block_check
  have h4 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 4 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 3) (right := 1) (next := 4) (total := 4)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 3 = 4) (by decide : 3 + 1 = 4)
      h3 rowA4_block_check
  have h5 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 5 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 4) (right := 1) (next := 5) (total := 5)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 4 = 5) (by decide : 4 + 1 = 5)
      h4 rowA5_block_check
  have h6 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 6 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 5) (right := 1) (next := 6) (total := 6)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 5 = 6) (by decide : 5 + 1 = 6)
      h5 rowA6_block_check
  have h7 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 7 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 6) (right := 1) (next := 7) (total := 7)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 6 = 7) (by decide : 6 + 1 = 7)
      h6 rowA7_block_check
  have h8 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 8 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 7) (right := 1) (next := 8) (total := 8)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 7 = 8) (by decide : 7 + 1 = 8)
      h7 rowA8_block_check
  have h9 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 9 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 8) (right := 1) (next := 9) (total := 9)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 8 = 9) (by decide : 8 + 1 = 9)
      h8 rowA9_block_check
  have h10 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 10 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 9) (right := 1) (next := 10) (total := 10)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 9 = 10) (by decide : 9 + 1 = 10)
      h9 rowA10_block_check
  have h11 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 11 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 10) (right := 1) (next := 11) (total := 11)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 10 = 11) (by decide : 10 + 1 = 11)
      h10 rowA11_block_check
  have h12 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 12 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 11) (right := 1) (next := 12) (total := 12)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 11 = 12) (by decide : 11 + 1 = 12)
      h11 rowA12_block_check
  have h13 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 13 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 12) (right := 1) (next := 13) (total := 13)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 12 = 13) (by decide : 12 + 1 = 13)
      h12 rowA13_block_check
  have h14 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 14 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 13) (right := 1) (next := 14) (total := 14)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 13 = 14) (by decide : 13 + 1 = 14)
      h13 rowA14_block_check
  have h15 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 15 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 14) (right := 1) (next := 15) (total := 15)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 14 = 15) (by decide : 14 + 1 = 15)
      h14 rowA15_block_check
  have h16 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 16 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 15) (right := 1) (next := 16) (total := 16)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 15 = 16) (by decide : 15 + 1 = 16)
      h15 rowA16_block_check
  have h17 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 17 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 16) (right := 1) (next := 17) (total := 17)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 16 = 17) (by decide : 16 + 1 = 17)
      h16 rowA17_block_check
  have h18 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 18 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 17) (right := 1) (next := 18) (total := 18)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 17 = 18) (by decide : 17 + 1 = 18)
      h17 rowA18_block_check
  have h19 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 19 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 18) (right := 1) (next := 19) (total := 19)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 18 = 19) (by decide : 18 + 1 = 19)
      h18 rowA19_block_check
  have h20 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 20 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 19) (right := 1) (next := 20) (total := 20)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 19 = 20) (by decide : 19 + 1 = 20)
      h19 rowA20_block_check
  have h21 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 21 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 20) (right := 1) (next := 21) (total := 21)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 20 = 21) (by decide : 20 + 1 = 21)
      h20 rowA21_block_check
  have h22 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 22 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 21) (right := 1) (next := 22) (total := 22)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 21 = 22) (by decide : 21 + 1 = 22)
      h21 rowA22_block_check
  have h23 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 23 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 22) (right := 1) (next := 23) (total := 23)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 22 = 23) (by decide : 22 + 1 = 23)
      h22 rowA23_block_check
  have h24 : blockCoverCheck 2 3 Stage04.H Stage04.M 1 24 1 15 cells candidates = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := 23) (right := 1) (next := 24) (total := 24)
      (bStart := 1) (bCount := 15) (data := cells) (cs := candidates)
      (by decide : 1 + 23 = 24) (by decide : 23 + 1 = 24)
      h23 rowA24_block_check
  simpa only [rectangleCoverCheck] using h24

def pairData : PairGridData where
  amax := 24
  bmax := 15
  cells := cells

theorem cutoff_check : cutoffCheck 2 3 Stage04.H pairData = true := by
  have hp : Stage04.H ≤ (2 : ℕ) ^ (24 + 1) := by
    simpa only [Stage04.exponentMax2] using Stage04.cutoff_2
  have hq : Stage04.H ≤ (3 : ℕ) ^ (15 + 1) := by
    simpa only [Stage04.exponentMax3] using Stage04.cutoff_3
  have hprop : 1 < (2 : ℕ) ∧ 1 < (3 : ℕ) ∧
      Stage04.H ≤ (2 : ℕ) ^ (24 + 1) ∧ Stage04.H ≤ (3 : ℕ) ^ (15 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simpa only [cutoffCheck, pairData] using (decide_eq_true hprop)

theorem pair_check : pairGridCoverCheck 2 3 Stage04.H Stage04.M pairData candidates = true := by
  exact pairGridCoverCheck_of_parts cutoff_check
    (by simpa only [pairData] using rectangle_check)

end Math.B699.I11TerminalMembership.Pair23

#print axioms Math.B699.I11TerminalMembership.Pair23.rectangle_check
#print axioms Math.B699.I11TerminalMembership.Pair23.pairData
#print axioms Math.B699.I11TerminalMembership.Pair23.cutoff_check
#print axioms Math.B699.I11TerminalMembership.Pair23.pair_check
