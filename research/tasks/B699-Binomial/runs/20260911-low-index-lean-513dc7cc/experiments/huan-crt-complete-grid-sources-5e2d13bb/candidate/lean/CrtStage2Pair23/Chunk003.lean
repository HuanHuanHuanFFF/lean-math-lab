import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair23.Chunk003RowA25
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair23.Chunk003RowA26
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair23.Chunk003RowA27
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair23.Chunk003RowA28
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair23.Chunk003RowA29
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair23.Chunk003RowA30
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair23.Chunk003RowA31
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair23.Chunk003RowA32

/-! UNCOMPILED symbolic chunk composition. It never decides the full rectangle; it appends proved rows. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair23.Chunk003
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
    blockCheck 2 3 Stage02.H Stage02.M Stage02.upper 25 8 1 24 chunkData = true := by
  have h2 : blockCheck 2 3 Stage02.H Stage02.M Stage02.upper 25 2 1 24 chunkData = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage02.H) (M := Stage02.M) (T := Stage02.upper)
      (start := 25) (left := 1) (right := 1) (next := 26) (total := 2)
      (bStart := 1) (bCount := 24) (data := chunkData)
      (by decide : 25 + 1 = 26) (by decide : 1 + 1 = 2)
      rowA25_block_check rowA26_block_check
  have h3 : blockCheck 2 3 Stage02.H Stage02.M Stage02.upper 25 3 1 24 chunkData = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage02.H) (M := Stage02.M) (T := Stage02.upper)
      (start := 25) (left := 2) (right := 1) (next := 27) (total := 3)
      (bStart := 1) (bCount := 24) (data := chunkData)
      (by decide : 25 + 2 = 27) (by decide : 2 + 1 = 3)
      h2 rowA27_block_check
  have h4 : blockCheck 2 3 Stage02.H Stage02.M Stage02.upper 25 4 1 24 chunkData = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage02.H) (M := Stage02.M) (T := Stage02.upper)
      (start := 25) (left := 3) (right := 1) (next := 28) (total := 4)
      (bStart := 1) (bCount := 24) (data := chunkData)
      (by decide : 25 + 3 = 28) (by decide : 3 + 1 = 4)
      h3 rowA28_block_check
  have h5 : blockCheck 2 3 Stage02.H Stage02.M Stage02.upper 25 5 1 24 chunkData = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage02.H) (M := Stage02.M) (T := Stage02.upper)
      (start := 25) (left := 4) (right := 1) (next := 29) (total := 5)
      (bStart := 1) (bCount := 24) (data := chunkData)
      (by decide : 25 + 4 = 29) (by decide : 4 + 1 = 5)
      h4 rowA29_block_check
  have h6 : blockCheck 2 3 Stage02.H Stage02.M Stage02.upper 25 6 1 24 chunkData = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage02.H) (M := Stage02.M) (T := Stage02.upper)
      (start := 25) (left := 5) (right := 1) (next := 30) (total := 6)
      (bStart := 1) (bCount := 24) (data := chunkData)
      (by decide : 25 + 5 = 30) (by decide : 5 + 1 = 6)
      h5 rowA30_block_check
  have h7 : blockCheck 2 3 Stage02.H Stage02.M Stage02.upper 25 7 1 24 chunkData = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage02.H) (M := Stage02.M) (T := Stage02.upper)
      (start := 25) (left := 6) (right := 1) (next := 31) (total := 7)
      (bStart := 1) (bCount := 24) (data := chunkData)
      (by decide : 25 + 6 = 31) (by decide : 6 + 1 = 7)
      h6 rowA31_block_check
  have h8 : blockCheck 2 3 Stage02.H Stage02.M Stage02.upper 25 8 1 24 chunkData = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage02.H) (M := Stage02.M) (T := Stage02.upper)
      (start := 25) (left := 7) (right := 1) (next := 32) (total := 8)
      (bStart := 1) (bCount := 24) (data := chunkData)
      (by decide : 25 + 7 = 32) (by decide : 7 + 1 = 8)
      h7 rowA32_block_check
  exact h8

end Math.B699.CRTStage2Pair23.Chunk003

#print axioms Math.B699.CRTStage2Pair23.Chunk003.chunk_check
