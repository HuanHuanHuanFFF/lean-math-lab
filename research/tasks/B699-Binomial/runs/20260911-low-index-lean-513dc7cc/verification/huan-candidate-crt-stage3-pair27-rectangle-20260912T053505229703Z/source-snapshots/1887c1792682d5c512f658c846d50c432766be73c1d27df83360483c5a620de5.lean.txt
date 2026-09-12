import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair27.Cells001P0

/-! UNCOMPILED symbolic chunk composition. It never decides the full rectangle; it appends proved rows. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair27.Chunk001
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
    blockCheck 2 7 Stage03.H Stage03.M Stage03.upper 9 8 1 9 chunkData = true := by
  have h2 : blockCheck 2 7 Stage03.H Stage03.M Stage03.upper 9 2 1 9 chunkData = true :=
    append_rows_named
      (p := 2) (q := 7) (H := Stage03.H) (M := Stage03.M) (T := Stage03.upper)
      (start := 9) (left := 1) (right := 1) (next := 10) (total := 2)
      (bStart := 1) (bCount := 9) (data := chunkData)
      (by decide : 9 + 1 = 10) (by decide : 1 + 1 = 2)
      rowA9_block_check rowA10_block_check
  have h3 : blockCheck 2 7 Stage03.H Stage03.M Stage03.upper 9 3 1 9 chunkData = true :=
    append_rows_named
      (p := 2) (q := 7) (H := Stage03.H) (M := Stage03.M) (T := Stage03.upper)
      (start := 9) (left := 2) (right := 1) (next := 11) (total := 3)
      (bStart := 1) (bCount := 9) (data := chunkData)
      (by decide : 9 + 2 = 11) (by decide : 2 + 1 = 3)
      h2 rowA11_block_check
  have h4 : blockCheck 2 7 Stage03.H Stage03.M Stage03.upper 9 4 1 9 chunkData = true :=
    append_rows_named
      (p := 2) (q := 7) (H := Stage03.H) (M := Stage03.M) (T := Stage03.upper)
      (start := 9) (left := 3) (right := 1) (next := 12) (total := 4)
      (bStart := 1) (bCount := 9) (data := chunkData)
      (by decide : 9 + 3 = 12) (by decide : 3 + 1 = 4)
      h3 rowA12_block_check
  have h5 : blockCheck 2 7 Stage03.H Stage03.M Stage03.upper 9 5 1 9 chunkData = true :=
    append_rows_named
      (p := 2) (q := 7) (H := Stage03.H) (M := Stage03.M) (T := Stage03.upper)
      (start := 9) (left := 4) (right := 1) (next := 13) (total := 5)
      (bStart := 1) (bCount := 9) (data := chunkData)
      (by decide : 9 + 4 = 13) (by decide : 4 + 1 = 5)
      h4 rowA13_block_check
  have h6 : blockCheck 2 7 Stage03.H Stage03.M Stage03.upper 9 6 1 9 chunkData = true :=
    append_rows_named
      (p := 2) (q := 7) (H := Stage03.H) (M := Stage03.M) (T := Stage03.upper)
      (start := 9) (left := 5) (right := 1) (next := 14) (total := 6)
      (bStart := 1) (bCount := 9) (data := chunkData)
      (by decide : 9 + 5 = 14) (by decide : 5 + 1 = 6)
      h5 rowA14_block_check
  have h7 : blockCheck 2 7 Stage03.H Stage03.M Stage03.upper 9 7 1 9 chunkData = true :=
    append_rows_named
      (p := 2) (q := 7) (H := Stage03.H) (M := Stage03.M) (T := Stage03.upper)
      (start := 9) (left := 6) (right := 1) (next := 15) (total := 7)
      (bStart := 1) (bCount := 9) (data := chunkData)
      (by decide : 9 + 6 = 15) (by decide : 6 + 1 = 7)
      h6 rowA15_block_check
  have h8 : blockCheck 2 7 Stage03.H Stage03.M Stage03.upper 9 8 1 9 chunkData = true :=
    append_rows_named
      (p := 2) (q := 7) (H := Stage03.H) (M := Stage03.M) (T := Stage03.upper)
      (start := 9) (left := 7) (right := 1) (next := 16) (total := 8)
      (bStart := 1) (bCount := 9) (data := chunkData)
      (by decide : 9 + 7 = 16) (by decide : 7 + 1 = 8)
      h7 rowA16_block_check
  exact h8

end Math.B699.CRTStage3Pair27.Chunk001

#print axioms Math.B699.CRTStage3Pair27.Chunk001.chunk_check
