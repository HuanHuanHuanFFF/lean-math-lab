import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair35.Pack008P0
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair35.Pack008P1

/-! UNCOMPILED symbolic chunk composition. It never decides the full rectangle; it appends proved rows. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage0Pair35.Chunk008
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
    blockCheck 3 5 Stage00.H Stage00.M Stage00.upper 65 4 1 46 chunkData = true := by
  have h2 : blockCheck 3 5 Stage00.H Stage00.M Stage00.upper 65 2 1 46 chunkData = true :=
    append_rows_named
      (p := 3) (q := 5) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 65) (left := 1) (right := 1) (next := 66) (total := 2)
      (bStart := 1) (bCount := 46) (data := chunkData)
      (by decide : 65 + 1 = 66) (by decide : 1 + 1 = 2)
      rowA65_block_check rowA66_block_check
  have h3 : blockCheck 3 5 Stage00.H Stage00.M Stage00.upper 65 3 1 46 chunkData = true :=
    append_rows_named
      (p := 3) (q := 5) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 65) (left := 2) (right := 1) (next := 67) (total := 3)
      (bStart := 1) (bCount := 46) (data := chunkData)
      (by decide : 65 + 2 = 67) (by decide : 2 + 1 = 3)
      h2 rowA67_block_check
  have h4 : blockCheck 3 5 Stage00.H Stage00.M Stage00.upper 65 4 1 46 chunkData = true :=
    append_rows_named
      (p := 3) (q := 5) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 65) (left := 3) (right := 1) (next := 68) (total := 4)
      (bStart := 1) (bCount := 46) (data := chunkData)
      (by decide : 65 + 3 = 68) (by decide : 3 + 1 = 4)
      h3 rowA68_block_check
  exact h4

end Math.B699.CRTStage0Pair35.Chunk008

#print axioms Math.B699.CRTStage0Pair35.Chunk008.chunk_check
