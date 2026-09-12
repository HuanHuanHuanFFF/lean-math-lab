import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair35.Chunk007RowA57
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair35.Chunk007RowA58
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair35.Chunk007RowA59
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair35.Chunk007RowA60
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair35.Chunk007RowA61
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair35.Chunk007RowA62
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair35.Chunk007RowA63
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair35.Chunk007RowA64

/-! UNCOMPILED symbolic chunk composition. It never decides the full rectangle; it appends proved rows. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage0Pair35.Chunk007
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
    blockCheck 3 5 Stage00.H Stage00.M Stage00.upper 57 8 1 46 chunkData = true := by
  have h2 : blockCheck 3 5 Stage00.H Stage00.M Stage00.upper 57 2 1 46 chunkData = true :=
    append_rows_named
      (p := 3) (q := 5) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 57) (left := 1) (right := 1) (next := 58) (total := 2)
      (bStart := 1) (bCount := 46) (data := chunkData)
      (by decide : 57 + 1 = 58) (by decide : 1 + 1 = 2)
      rowA57_block_check rowA58_block_check
  have h3 : blockCheck 3 5 Stage00.H Stage00.M Stage00.upper 57 3 1 46 chunkData = true :=
    append_rows_named
      (p := 3) (q := 5) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 57) (left := 2) (right := 1) (next := 59) (total := 3)
      (bStart := 1) (bCount := 46) (data := chunkData)
      (by decide : 57 + 2 = 59) (by decide : 2 + 1 = 3)
      h2 rowA59_block_check
  have h4 : blockCheck 3 5 Stage00.H Stage00.M Stage00.upper 57 4 1 46 chunkData = true :=
    append_rows_named
      (p := 3) (q := 5) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 57) (left := 3) (right := 1) (next := 60) (total := 4)
      (bStart := 1) (bCount := 46) (data := chunkData)
      (by decide : 57 + 3 = 60) (by decide : 3 + 1 = 4)
      h3 rowA60_block_check
  have h5 : blockCheck 3 5 Stage00.H Stage00.M Stage00.upper 57 5 1 46 chunkData = true :=
    append_rows_named
      (p := 3) (q := 5) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 57) (left := 4) (right := 1) (next := 61) (total := 5)
      (bStart := 1) (bCount := 46) (data := chunkData)
      (by decide : 57 + 4 = 61) (by decide : 4 + 1 = 5)
      h4 rowA61_block_check
  have h6 : blockCheck 3 5 Stage00.H Stage00.M Stage00.upper 57 6 1 46 chunkData = true :=
    append_rows_named
      (p := 3) (q := 5) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 57) (left := 5) (right := 1) (next := 62) (total := 6)
      (bStart := 1) (bCount := 46) (data := chunkData)
      (by decide : 57 + 5 = 62) (by decide : 5 + 1 = 6)
      h5 rowA62_block_check
  have h7 : blockCheck 3 5 Stage00.H Stage00.M Stage00.upper 57 7 1 46 chunkData = true :=
    append_rows_named
      (p := 3) (q := 5) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 57) (left := 6) (right := 1) (next := 63) (total := 7)
      (bStart := 1) (bCount := 46) (data := chunkData)
      (by decide : 57 + 6 = 63) (by decide : 6 + 1 = 7)
      h6 rowA63_block_check
  have h8 : blockCheck 3 5 Stage00.H Stage00.M Stage00.upper 57 8 1 46 chunkData = true :=
    append_rows_named
      (p := 3) (q := 5) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 57) (left := 7) (right := 1) (next := 64) (total := 8)
      (bStart := 1) (bCount := 46) (data := chunkData)
      (by decide : 57 + 7 = 64) (by decide : 7 + 1 = 8)
      h7 rowA64_block_check
  exact h8

end Math.B699.CRTStage0Pair35.Chunk007

#print axioms Math.B699.CRTStage0Pair35.Chunk007.chunk_check
