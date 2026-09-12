import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair57.Chunk000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage3Pair57.Chunk001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.Meta
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED composer candidate. Every chunk proof is transferred to one total function and appended symbolically. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair57.CompleteComposer
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def globalData (a b : ℕ) : CellData :=
  if a < 1 ∨ 11 < a then outsideCell
  else if a < 9 then Chunk000.chunkData a b
  else Chunk001.chunkData a b

theorem globalData_eq_000 (a b : ℕ) (ha0 : 1 ≤ a) (ha1 : a < 9) :
    globalData a b = Chunk000.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 11 < a) := by omega
  have hin : a < 9 := by omega
  simp only [globalData, if_neg hout, if_pos hin]

theorem globalData_eq_001 (a b : ℕ) (ha0 : 9 ≤ a) (ha1 : a < 12) :
    globalData a b = Chunk001.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 11 < a) := by omega
  have h000 : ¬ a < 9 := by omega
  simp only [globalData, if_neg hout, if_neg h000]

theorem global_check_000 :
    blockCheck 5 7 Stage03.H Stage03.M Stage03.upper 1 8 1 9 globalData = true := by
  exact blockCheck_transfer_data
    (p := 5) (q := 7) (H := Stage03.H) (M := Stage03.M) (T := Stage03.upper)
    (aStart := 1) (aCount := 8) (bStart := 1) (bCount := 9)
    (data := Chunk000.chunkData) (data' := globalData) Chunk000.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_000 a b ha0 (by omega)).symm)

theorem global_check_001 :
    blockCheck 5 7 Stage03.H Stage03.M Stage03.upper 9 3 1 9 globalData = true := by
  exact blockCheck_transfer_data
    (p := 5) (q := 7) (H := Stage03.H) (M := Stage03.M) (T := Stage03.upper)
    (aStart := 9) (aCount := 3) (bStart := 1) (bCount := 9)
    (data := Chunk001.chunkData) (data' := globalData) Chunk001.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_001 a b ha0 (by omega)).symm)

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

theorem prefix_011 :
    blockCheck 5 7 Stage03.H Stage03.M Stage03.upper 1 11 1 9 globalData = true := by
  exact append_rows_named
    (p := 5) (q := 7) (H := Stage03.H) (M := Stage03.M) (T := Stage03.upper)
    (start := 1) (left := 8) (right := 3) (next := 9) (total := 11)
    (bStart := 1) (bCount := 9) (data := globalData)
    (by decide : 1 + 8 = 9) (by decide : 8 + 3 = 11)
    global_check_000 global_check_001

theorem rectangle_check :
    rectangleCheck 5 7 Stage03.H Stage03.M Stage03.upper 11 9 globalData = true := by
  unfold rectangleCheck
  exact prefix_011

end Math.B699.CRTStage3Pair57.CompleteComposer

#print axioms Math.B699.CRTStage3Pair57.CompleteComposer.rectangle_check
