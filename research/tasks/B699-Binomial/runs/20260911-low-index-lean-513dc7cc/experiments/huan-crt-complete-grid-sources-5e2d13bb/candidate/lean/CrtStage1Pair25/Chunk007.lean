import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair25.Chunk007RowA57
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair25.Chunk007RowA58
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair25.Chunk007RowA59
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair25.Chunk007RowA60

/-! UNCOMPILED symbolic chunk composition. It never decides the full rectangle; it appends proved rows. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage1Pair25.Chunk007
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
    blockCheck 2 5 Stage01.H Stage01.M Stage01.upper 57 4 1 25 chunkData = true := by
  have h2 : blockCheck 2 5 Stage01.H Stage01.M Stage01.upper 57 2 1 25 chunkData = true :=
    append_rows_named
      (p := 2) (q := 5) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 57) (left := 1) (right := 1) (next := 58) (total := 2)
      (bStart := 1) (bCount := 25) (data := chunkData)
      (by decide : 57 + 1 = 58) (by decide : 1 + 1 = 2)
      rowA57_block_check rowA58_block_check
  have h3 : blockCheck 2 5 Stage01.H Stage01.M Stage01.upper 57 3 1 25 chunkData = true :=
    append_rows_named
      (p := 2) (q := 5) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 57) (left := 2) (right := 1) (next := 59) (total := 3)
      (bStart := 1) (bCount := 25) (data := chunkData)
      (by decide : 57 + 2 = 59) (by decide : 2 + 1 = 3)
      h2 rowA59_block_check
  have h4 : blockCheck 2 5 Stage01.H Stage01.M Stage01.upper 57 4 1 25 chunkData = true :=
    append_rows_named
      (p := 2) (q := 5) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
      (start := 57) (left := 3) (right := 1) (next := 60) (total := 4)
      (bStart := 1) (bCount := 25) (data := chunkData)
      (by decide : 57 + 3 = 60) (by decide : 3 + 1 = 4)
      h3 rowA60_block_check
  exact h4

end Math.B699.CRTStage1Pair25.Chunk007

#print axioms Math.B699.CRTStage1Pair25.Chunk007.chunk_check
