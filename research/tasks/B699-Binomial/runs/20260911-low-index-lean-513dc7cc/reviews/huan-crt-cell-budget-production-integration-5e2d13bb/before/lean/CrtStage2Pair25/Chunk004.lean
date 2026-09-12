import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair25.Pack004P0
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair25.Pack004P1
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair25.Pack004P2

/-! UNCOMPILED symbolic chunk composition. It never decides the full rectangle; it appends proved rows. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk004
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
    blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 33 6 1 16 chunkData = true := by
  have h2 : blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 33 2 1 16 chunkData = true :=
    append_rows_named
      (p := 2) (q := 5) (H := Stage02.H) (M := Stage02.M) (T := Stage02.upper)
      (start := 33) (left := 1) (right := 1) (next := 34) (total := 2)
      (bStart := 1) (bCount := 16) (data := chunkData)
      (by decide : 33 + 1 = 34) (by decide : 1 + 1 = 2)
      rowA33_block_check rowA34_block_check
  have h3 : blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 33 3 1 16 chunkData = true :=
    append_rows_named
      (p := 2) (q := 5) (H := Stage02.H) (M := Stage02.M) (T := Stage02.upper)
      (start := 33) (left := 2) (right := 1) (next := 35) (total := 3)
      (bStart := 1) (bCount := 16) (data := chunkData)
      (by decide : 33 + 2 = 35) (by decide : 2 + 1 = 3)
      h2 rowA35_block_check
  have h4 : blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 33 4 1 16 chunkData = true :=
    append_rows_named
      (p := 2) (q := 5) (H := Stage02.H) (M := Stage02.M) (T := Stage02.upper)
      (start := 33) (left := 3) (right := 1) (next := 36) (total := 4)
      (bStart := 1) (bCount := 16) (data := chunkData)
      (by decide : 33 + 3 = 36) (by decide : 3 + 1 = 4)
      h3 rowA36_block_check
  have h5 : blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 33 5 1 16 chunkData = true :=
    append_rows_named
      (p := 2) (q := 5) (H := Stage02.H) (M := Stage02.M) (T := Stage02.upper)
      (start := 33) (left := 4) (right := 1) (next := 37) (total := 5)
      (bStart := 1) (bCount := 16) (data := chunkData)
      (by decide : 33 + 4 = 37) (by decide : 4 + 1 = 5)
      h4 rowA37_block_check
  have h6 : blockCheck 2 5 Stage02.H Stage02.M Stage02.upper 33 6 1 16 chunkData = true :=
    append_rows_named
      (p := 2) (q := 5) (H := Stage02.H) (M := Stage02.M) (T := Stage02.upper)
      (start := 33) (left := 5) (right := 1) (next := 38) (total := 6)
      (bStart := 1) (bCount := 16) (data := chunkData)
      (by decide : 33 + 5 = 38) (by decide : 5 + 1 = 6)
      h5 rowA38_block_check
  exact h6

end Math.B699.CRTStage2Pair25.Chunk004

#print axioms Math.B699.CRTStage2Pair25.Chunk004.chunk_check
