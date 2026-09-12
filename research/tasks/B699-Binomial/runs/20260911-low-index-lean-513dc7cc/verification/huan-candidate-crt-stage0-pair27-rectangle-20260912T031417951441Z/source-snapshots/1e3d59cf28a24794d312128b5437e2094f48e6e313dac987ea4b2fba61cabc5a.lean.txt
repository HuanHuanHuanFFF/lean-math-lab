import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair27.Cells011P0
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair27.Cells011P1
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair27.Cells011P2

/-! UNCOMPILED symbolic chunk composition. It never decides the full rectangle; it appends proved rows. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage0Pair27.Chunk011
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
    blockCheck 2 7 Stage00.H Stage00.M Stage00.upper 89 8 1 38 chunkData = true := by
  have h2 : blockCheck 2 7 Stage00.H Stage00.M Stage00.upper 89 2 1 38 chunkData = true :=
    append_rows_named
      (p := 2) (q := 7) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 89) (left := 1) (right := 1) (next := 90) (total := 2)
      (bStart := 1) (bCount := 38) (data := chunkData)
      (by decide : 89 + 1 = 90) (by decide : 1 + 1 = 2)
      rowA89_block_check rowA90_block_check
  have h3 : blockCheck 2 7 Stage00.H Stage00.M Stage00.upper 89 3 1 38 chunkData = true :=
    append_rows_named
      (p := 2) (q := 7) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 89) (left := 2) (right := 1) (next := 91) (total := 3)
      (bStart := 1) (bCount := 38) (data := chunkData)
      (by decide : 89 + 2 = 91) (by decide : 2 + 1 = 3)
      h2 rowA91_block_check
  have h4 : blockCheck 2 7 Stage00.H Stage00.M Stage00.upper 89 4 1 38 chunkData = true :=
    append_rows_named
      (p := 2) (q := 7) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 89) (left := 3) (right := 1) (next := 92) (total := 4)
      (bStart := 1) (bCount := 38) (data := chunkData)
      (by decide : 89 + 3 = 92) (by decide : 3 + 1 = 4)
      h3 rowA92_block_check
  have h5 : blockCheck 2 7 Stage00.H Stage00.M Stage00.upper 89 5 1 38 chunkData = true :=
    append_rows_named
      (p := 2) (q := 7) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 89) (left := 4) (right := 1) (next := 93) (total := 5)
      (bStart := 1) (bCount := 38) (data := chunkData)
      (by decide : 89 + 4 = 93) (by decide : 4 + 1 = 5)
      h4 rowA93_block_check
  have h6 : blockCheck 2 7 Stage00.H Stage00.M Stage00.upper 89 6 1 38 chunkData = true :=
    append_rows_named
      (p := 2) (q := 7) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 89) (left := 5) (right := 1) (next := 94) (total := 6)
      (bStart := 1) (bCount := 38) (data := chunkData)
      (by decide : 89 + 5 = 94) (by decide : 5 + 1 = 6)
      h5 rowA94_block_check
  have h7 : blockCheck 2 7 Stage00.H Stage00.M Stage00.upper 89 7 1 38 chunkData = true :=
    append_rows_named
      (p := 2) (q := 7) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 89) (left := 6) (right := 1) (next := 95) (total := 7)
      (bStart := 1) (bCount := 38) (data := chunkData)
      (by decide : 89 + 6 = 95) (by decide : 6 + 1 = 7)
      h6 rowA95_block_check
  have h8 : blockCheck 2 7 Stage00.H Stage00.M Stage00.upper 89 8 1 38 chunkData = true :=
    append_rows_named
      (p := 2) (q := 7) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 89) (left := 7) (right := 1) (next := 96) (total := 8)
      (bStart := 1) (bCount := 38) (data := chunkData)
      (by decide : 89 + 7 = 96) (by decide : 7 + 1 = 8)
      h7 rowA96_block_check
  exact h8

end Math.B699.CRTStage0Pair27.Chunk011

#print axioms Math.B699.CRTStage0Pair27.Chunk011.chunk_check
