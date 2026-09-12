import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair57.Cells002P0
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair57.Cells002P1

/-! UNCOMPILED symbolic chunk composition. It never decides the full rectangle; it appends proved rows. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage1Pair57.Chunk002
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
    blockCheck 5 7 Stage01.H Stage01.M Stage01.upper 17 8 1 21 chunkData = true := by
  have h2 : blockCheck 5 7 Stage01.H Stage01.M Stage01.upper 17 2 1 21 chunkData = true :=
    append_rows_named
      (p := 5) (q := 7) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 17) (left := 1) (right := 1) (next := 18) (total := 2)
      (bStart := 1) (bCount := 21) (data := chunkData)
      (by decide : 17 + 1 = 18) (by decide : 1 + 1 = 2)
      rowA17_block_check rowA18_block_check
  have h3 : blockCheck 5 7 Stage01.H Stage01.M Stage01.upper 17 3 1 21 chunkData = true :=
    append_rows_named
      (p := 5) (q := 7) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 17) (left := 2) (right := 1) (next := 19) (total := 3)
      (bStart := 1) (bCount := 21) (data := chunkData)
      (by decide : 17 + 2 = 19) (by decide : 2 + 1 = 3)
      h2 rowA19_block_check
  have h4 : blockCheck 5 7 Stage01.H Stage01.M Stage01.upper 17 4 1 21 chunkData = true :=
    append_rows_named
      (p := 5) (q := 7) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 17) (left := 3) (right := 1) (next := 20) (total := 4)
      (bStart := 1) (bCount := 21) (data := chunkData)
      (by decide : 17 + 3 = 20) (by decide : 3 + 1 = 4)
      h3 rowA20_block_check
  have h5 : blockCheck 5 7 Stage01.H Stage01.M Stage01.upper 17 5 1 21 chunkData = true :=
    append_rows_named
      (p := 5) (q := 7) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 17) (left := 4) (right := 1) (next := 21) (total := 5)
      (bStart := 1) (bCount := 21) (data := chunkData)
      (by decide : 17 + 4 = 21) (by decide : 4 + 1 = 5)
      h4 rowA21_block_check
  have h6 : blockCheck 5 7 Stage01.H Stage01.M Stage01.upper 17 6 1 21 chunkData = true :=
    append_rows_named
      (p := 5) (q := 7) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 17) (left := 5) (right := 1) (next := 22) (total := 6)
      (bStart := 1) (bCount := 21) (data := chunkData)
      (by decide : 17 + 5 = 22) (by decide : 5 + 1 = 6)
      h5 rowA22_block_check
  have h7 : blockCheck 5 7 Stage01.H Stage01.M Stage01.upper 17 7 1 21 chunkData = true :=
    append_rows_named
      (p := 5) (q := 7) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 17) (left := 6) (right := 1) (next := 23) (total := 7)
      (bStart := 1) (bCount := 21) (data := chunkData)
      (by decide : 17 + 6 = 23) (by decide : 6 + 1 = 7)
      h6 rowA23_block_check
  have h8 : blockCheck 5 7 Stage01.H Stage01.M Stage01.upper 17 8 1 21 chunkData = true :=
    append_rows_named
      (p := 5) (q := 7) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 17) (left := 7) (right := 1) (next := 24) (total := 8)
      (bStart := 1) (bCount := 21) (data := chunkData)
      (by decide : 17 + 7 = 24) (by decide : 7 + 1 = 8)
      h7 rowA24_block_check
  exact h8

end Math.B699.CRTStage1Pair57.Chunk002

#print axioms Math.B699.CRTStage1Pair57.Chunk002.chunk_check
