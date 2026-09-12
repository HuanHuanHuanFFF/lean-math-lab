import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk005RowA41
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk005RowA42
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk005RowA43
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk005RowA44
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk005RowA45
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk005RowA46
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk005RowA47
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk005RowA48

/-! UNCOMPILED symbolic chunk composition. It never decides the full rectangle; it appends proved rows. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage0Pair23.Chunk005
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
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 41 8 1 68 chunkData = true := by
  have h2 : blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 41 2 1 68 chunkData = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 41) (left := 1) (right := 1) (next := 42) (total := 2)
      (bStart := 1) (bCount := 68) (data := chunkData)
      (by decide : 41 + 1 = 42) (by decide : 1 + 1 = 2)
      rowA41_block_check rowA42_block_check
  have h3 : blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 41 3 1 68 chunkData = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 41) (left := 2) (right := 1) (next := 43) (total := 3)
      (bStart := 1) (bCount := 68) (data := chunkData)
      (by decide : 41 + 2 = 43) (by decide : 2 + 1 = 3)
      h2 rowA43_block_check
  have h4 : blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 41 4 1 68 chunkData = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 41) (left := 3) (right := 1) (next := 44) (total := 4)
      (bStart := 1) (bCount := 68) (data := chunkData)
      (by decide : 41 + 3 = 44) (by decide : 3 + 1 = 4)
      h3 rowA44_block_check
  have h5 : blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 41 5 1 68 chunkData = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 41) (left := 4) (right := 1) (next := 45) (total := 5)
      (bStart := 1) (bCount := 68) (data := chunkData)
      (by decide : 41 + 4 = 45) (by decide : 4 + 1 = 5)
      h4 rowA45_block_check
  have h6 : blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 41 6 1 68 chunkData = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 41) (left := 5) (right := 1) (next := 46) (total := 6)
      (bStart := 1) (bCount := 68) (data := chunkData)
      (by decide : 41 + 5 = 46) (by decide : 5 + 1 = 6)
      h5 rowA46_block_check
  have h7 : blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 41 7 1 68 chunkData = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 41) (left := 6) (right := 1) (next := 47) (total := 7)
      (bStart := 1) (bCount := 68) (data := chunkData)
      (by decide : 41 + 6 = 47) (by decide : 6 + 1 = 7)
      h6 rowA47_block_check
  have h8 : blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 41 8 1 68 chunkData = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 41) (left := 7) (right := 1) (next := 48) (total := 8)
      (bStart := 1) (bCount := 68) (data := chunkData)
      (by decide : 41 + 7 = 48) (by decide : 7 + 1 = 8)
      h7 rowA48_block_check
  exact h8

end Math.B699.CRTStage0Pair23.Chunk005

#print axioms Math.B699.CRTStage0Pair23.Chunk005.chunk_check
