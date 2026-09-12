import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair57.Chunk000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair57.Chunk001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair57.Chunk002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair57.Chunk003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.Meta
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED composer candidate. Every chunk proof is transferred to one total function and appended symbolically. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage1Pair57.CompleteComposer
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def globalData (a b : ℕ) : CellData :=
  if a < 1 ∨ 25 < a then outsideCell
  else if a < 9 then Chunk000.chunkData a b
  else if a < 17 then Chunk001.chunkData a b
  else if a < 25 then Chunk002.chunkData a b
  else Chunk003.chunkData a b

theorem globalData_eq_000 (a b : ℕ) (ha0 : 1 ≤ a) (ha1 : a < 9) :
    globalData a b = Chunk000.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 25 < a) := by omega
  have hin : a < 9 := by omega
  simp only [globalData, if_neg hout, if_pos hin]

theorem globalData_eq_001 (a b : ℕ) (ha0 : 9 ≤ a) (ha1 : a < 17) :
    globalData a b = Chunk001.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 25 < a) := by omega
  have h000 : ¬ a < 9 := by omega
  have hin : a < 17 := by omega
  simp only [globalData, if_neg hout, if_neg h000, if_pos hin]

theorem globalData_eq_002 (a b : ℕ) (ha0 : 17 ≤ a) (ha1 : a < 25) :
    globalData a b = Chunk002.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 25 < a) := by omega
  have h000 : ¬ a < 9 := by omega
  have h001 : ¬ a < 17 := by omega
  have hin : a < 25 := by omega
  simp only [globalData, if_neg hout, if_neg h000, if_neg h001, if_pos hin]

theorem globalData_eq_003 (a b : ℕ) (ha0 : 25 ≤ a) (ha1 : a < 26) :
    globalData a b = Chunk003.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 25 < a) := by omega
  have h000 : ¬ a < 9 := by omega
  have h001 : ¬ a < 17 := by omega
  have h002 : ¬ a < 25 := by omega
  simp only [globalData, if_neg hout, if_neg h000, if_neg h001, if_neg h002]

theorem global_check_000 :
    blockCheck 5 7 Stage01.H Stage01.M Stage01.upper 1 8 1 21 globalData = true := by
  exact blockCheck_transfer_data
    (p := 5) (q := 7) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
    (aStart := 1) (aCount := 8) (bStart := 1) (bCount := 21)
    (data := Chunk000.chunkData) (data' := globalData) Chunk000.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_000 a b ha0 (by omega)).symm)

theorem global_check_001 :
    blockCheck 5 7 Stage01.H Stage01.M Stage01.upper 9 8 1 21 globalData = true := by
  exact blockCheck_transfer_data
    (p := 5) (q := 7) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
    (aStart := 9) (aCount := 8) (bStart := 1) (bCount := 21)
    (data := Chunk001.chunkData) (data' := globalData) Chunk001.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_001 a b ha0 (by omega)).symm)

theorem global_check_002 :
    blockCheck 5 7 Stage01.H Stage01.M Stage01.upper 17 8 1 21 globalData = true := by
  exact blockCheck_transfer_data
    (p := 5) (q := 7) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
    (aStart := 17) (aCount := 8) (bStart := 1) (bCount := 21)
    (data := Chunk002.chunkData) (data' := globalData) Chunk002.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_002 a b ha0 (by omega)).symm)

theorem global_check_003 :
    blockCheck 5 7 Stage01.H Stage01.M Stage01.upper 25 1 1 21 globalData = true := by
  exact blockCheck_transfer_data
    (p := 5) (q := 7) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
    (aStart := 25) (aCount := 1) (bStart := 1) (bCount := 21)
    (data := Chunk003.chunkData) (data' := globalData) Chunk003.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_003 a b ha0 (by omega)).symm)

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

theorem prefix_016 :
    blockCheck 5 7 Stage01.H Stage01.M Stage01.upper 1 16 1 21 globalData = true := by
  exact append_rows_named
    (p := 5) (q := 7) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
    (start := 1) (left := 8) (right := 8) (next := 9) (total := 16)
    (bStart := 1) (bCount := 21) (data := globalData)
    (by decide : 1 + 8 = 9) (by decide : 8 + 8 = 16)
    global_check_000 global_check_001

theorem prefix_024 :
    blockCheck 5 7 Stage01.H Stage01.M Stage01.upper 1 24 1 21 globalData = true := by
  exact append_rows_named
    (p := 5) (q := 7) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
    (start := 1) (left := 16) (right := 8) (next := 17) (total := 24)
    (bStart := 1) (bCount := 21) (data := globalData)
    (by decide : 1 + 16 = 17) (by decide : 16 + 8 = 24)
    prefix_016 global_check_002

theorem prefix_025 :
    blockCheck 5 7 Stage01.H Stage01.M Stage01.upper 1 25 1 21 globalData = true := by
  exact append_rows_named
    (p := 5) (q := 7) (H := Stage01.H) (M := Stage01.M) (T := Stage01.upper)
    (start := 1) (left := 24) (right := 1) (next := 25) (total := 25)
    (bStart := 1) (bCount := 21) (data := globalData)
    (by decide : 1 + 24 = 25) (by decide : 24 + 1 = 25)
    prefix_024 global_check_003

theorem rectangle_check :
    rectangleCheck 5 7 Stage01.H Stage01.M Stage01.upper 25 21 globalData = true := by
  unfold rectangleCheck
  exact prefix_025

end Math.B699.CRTStage1Pair57.CompleteComposer

#print axioms Math.B699.CRTStage1Pair57.CompleteComposer.rectangle_check
