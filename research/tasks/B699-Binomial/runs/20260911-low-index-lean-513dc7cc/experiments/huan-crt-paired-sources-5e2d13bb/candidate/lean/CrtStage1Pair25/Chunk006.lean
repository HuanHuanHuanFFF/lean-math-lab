import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair25.Pack006P0
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair25.Pack006P1
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair25.Pack006P2
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair25.Pack006P3

/-! UNCOMPILED symbolic chunk composition. It never decides the full rectangle; it appends proved rows. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage1Pair25.Chunk006
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

private theorem append_rows_named
    {p q H M T start left right next total bStart bCount : ℕ}
    {data : ℕ → ℕ → CellData}
    (hnext : start + left = next) (htotal : left + right = total)
    (hl : blockCheck p q H M T start left bStart bCount data = true)
    (hr : blockCheck p q H M T next right bStart bCount data = true) :
    blockCheck p q H M T start total bStart bCount data = true := by
  have hr' : blockCheck p q H M T (start + left) right bStart bCount data = true := by
    rw [hnext]
    exact hr
  have h := blockCheck_append_rows hl hr'
  rw [htotal] at h
  exact h

theorem chunk_check :
    blockCheck 2 5 Stage01.H Stage01.M Stage01.upper 49 8 1 25 chunkData = true := by
  have h2 : blockCheck 2 5 Stage01.H Stage01.M Stage01.upper 49 2 1 25 chunkData = true :=
    append_rows_named
      (p := 2) (q := 5) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 49) (left := 1) (right := 1) (next := 50) (total := 2)
      (bStart := 1) (bCount := 25) (data := chunkData)
      (by decide : 49 + 1 = 50) (by decide : 1 + 1 = 2)
      rowA49_block_check rowA50_block_check
  have h3 : blockCheck 2 5 Stage01.H Stage01.M Stage01.upper 49 3 1 25 chunkData = true :=
    append_rows_named
      (p := 2) (q := 5) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 49) (left := 2) (right := 1) (next := 51) (total := 3)
      (bStart := 1) (bCount := 25) (data := chunkData)
      (by decide : 49 + 2 = 51) (by decide : 2 + 1 = 3)
      h2 rowA51_block_check
  have h4 : blockCheck 2 5 Stage01.H Stage01.M Stage01.upper 49 4 1 25 chunkData = true :=
    append_rows_named
      (p := 2) (q := 5) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 49) (left := 3) (right := 1) (next := 52) (total := 4)
      (bStart := 1) (bCount := 25) (data := chunkData)
      (by decide : 49 + 3 = 52) (by decide : 3 + 1 = 4)
      h3 rowA52_block_check
  have h5 : blockCheck 2 5 Stage01.H Stage01.M Stage01.upper 49 5 1 25 chunkData = true :=
    append_rows_named
      (p := 2) (q := 5) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 49) (left := 4) (right := 1) (next := 53) (total := 5)
      (bStart := 1) (bCount := 25) (data := chunkData)
      (by decide : 49 + 4 = 53) (by decide : 4 + 1 = 5)
      h4 rowA53_block_check
  have h6 : blockCheck 2 5 Stage01.H Stage01.M Stage01.upper 49 6 1 25 chunkData = true :=
    append_rows_named
      (p := 2) (q := 5) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 49) (left := 5) (right := 1) (next := 54) (total := 6)
      (bStart := 1) (bCount := 25) (data := chunkData)
      (by decide : 49 + 5 = 54) (by decide : 5 + 1 = 6)
      h5 rowA54_block_check
  have h7 : blockCheck 2 5 Stage01.H Stage01.M Stage01.upper 49 7 1 25 chunkData = true :=
    append_rows_named
      (p := 2) (q := 5) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 49) (left := 6) (right := 1) (next := 55) (total := 7)
      (bStart := 1) (bCount := 25) (data := chunkData)
      (by decide : 49 + 6 = 55) (by decide : 6 + 1 = 7)
      h6 rowA55_block_check
  have h8 : blockCheck 2 5 Stage01.H Stage01.M Stage01.upper 49 8 1 25 chunkData = true :=
    append_rows_named
      (p := 2) (q := 5) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 49) (left := 7) (right := 1) (next := 56) (total := 8)
      (bStart := 1) (bCount := 25) (data := chunkData)
      (by decide : 49 + 7 = 56) (by decide : 7 + 1 = 8)
      h7 rowA56_block_check
  exact h8

end Math.B699.CRTStage1Pair25.Chunk006

#print axioms Math.B699.CRTStage1Pair25.Chunk006.chunk_check
