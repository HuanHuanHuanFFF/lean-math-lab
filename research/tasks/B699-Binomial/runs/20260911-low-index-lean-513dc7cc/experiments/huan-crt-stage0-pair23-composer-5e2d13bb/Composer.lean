import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk007
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk009
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk010
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk011
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk013
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.Meta

/-! UNCOMPILED. Composition of exactly fourteen fixed stage0 pair23 checks.
No full rectangle or cell arithmetic is evaluated here. Counts are normalized
symbolically before appending; only tiny integer equalities use decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CRTStage0Pair23.Composer
open Math.B699.CRTGrid Math.B699.I11CRTSixPair
open B699LowIndex.I11CrtStageMetadata

/-- This is only a total value outside the covered exponent rectangle. -/
def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def globalData (a b : ℕ) : CellData :=
  if a < 1 ∨ 108 < a then outsideCell
  else if a < 9 then Chunk000.chunkData a b
  else if a < 17 then Chunk001.chunkData a b
  else if a < 25 then Chunk002.chunkData a b
  else if a < 33 then Chunk003.chunkData a b
  else if a < 41 then Chunk004.chunkData a b
  else if a < 49 then Chunk005.chunkData a b
  else if a < 57 then Chunk006.chunkData a b
  else if a < 65 then Chunk007.chunkData a b
  else if a < 73 then Chunk008.chunkData a b
  else if a < 81 then Chunk009.chunkData a b
  else if a < 89 then Chunk010.chunkData a b
  else if a < 97 then Chunk011.chunkData a b
  else if a < 105 then Chunk012.chunkData a b
  else Chunk013.chunkData a b

theorem globalData_eq_chunk000 (a b : ℕ) (ha0 : 1 ≤ a) (ha1 : a < 9) :
    globalData a b = Chunk000.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 108 < a) := by omega
  have hin : a < 9 := by omega
  simp only [globalData, if_neg hout, if_pos hin]

theorem globalData_eq_chunk001 (a b : ℕ) (ha0 : 9 ≤ a) (ha1 : a < 17) :
    globalData a b = Chunk001.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 108 < a) := by omega
  have h00 : ¬ a < 9 := by omega
  have hin : a < 17 := by omega
  simp only [globalData, if_neg hout, if_neg h00, if_pos hin]

theorem globalData_eq_chunk002 (a b : ℕ) (ha0 : 17 ≤ a) (ha1 : a < 25) :
    globalData a b = Chunk002.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 108 < a) := by omega
  have h00 : ¬ a < 9 := by omega
  have h01 : ¬ a < 17 := by omega
  have hin : a < 25 := by omega
  simp only [globalData, if_neg hout, if_neg h00, if_neg h01, if_pos hin]

theorem globalData_eq_chunk003 (a b : ℕ) (ha0 : 25 ≤ a) (ha1 : a < 33) :
    globalData a b = Chunk003.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 108 < a) := by omega
  have h00 : ¬ a < 9 := by omega
  have h01 : ¬ a < 17 := by omega
  have h02 : ¬ a < 25 := by omega
  have hin : a < 33 := by omega
  simp only [globalData, if_neg hout, if_neg h00, if_neg h01, if_neg h02, if_pos hin]

theorem globalData_eq_chunk004 (a b : ℕ) (ha0 : 33 ≤ a) (ha1 : a < 41) :
    globalData a b = Chunk004.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 108 < a) := by omega
  have h00 : ¬ a < 9 := by omega
  have h01 : ¬ a < 17 := by omega
  have h02 : ¬ a < 25 := by omega
  have h03 : ¬ a < 33 := by omega
  have hin : a < 41 := by omega
  simp only [globalData, if_neg hout, if_neg h00, if_neg h01, if_neg h02, if_neg h03, if_pos hin]

theorem globalData_eq_chunk005 (a b : ℕ) (ha0 : 41 ≤ a) (ha1 : a < 49) :
    globalData a b = Chunk005.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 108 < a) := by omega
  have h00 : ¬ a < 9 := by omega
  have h01 : ¬ a < 17 := by omega
  have h02 : ¬ a < 25 := by omega
  have h03 : ¬ a < 33 := by omega
  have h04 : ¬ a < 41 := by omega
  have hin : a < 49 := by omega
  simp only [globalData, if_neg hout, if_neg h00, if_neg h01, if_neg h02, if_neg h03, if_neg h04, if_pos hin]

theorem globalData_eq_chunk006 (a b : ℕ) (ha0 : 49 ≤ a) (ha1 : a < 57) :
    globalData a b = Chunk006.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 108 < a) := by omega
  have h00 : ¬ a < 9 := by omega
  have h01 : ¬ a < 17 := by omega
  have h02 : ¬ a < 25 := by omega
  have h03 : ¬ a < 33 := by omega
  have h04 : ¬ a < 41 := by omega
  have h05 : ¬ a < 49 := by omega
  have hin : a < 57 := by omega
  simp only [globalData, if_neg hout, if_neg h00, if_neg h01, if_neg h02, if_neg h03, if_neg h04, if_neg h05, if_pos hin]

theorem globalData_eq_chunk007 (a b : ℕ) (ha0 : 57 ≤ a) (ha1 : a < 65) :
    globalData a b = Chunk007.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 108 < a) := by omega
  have h00 : ¬ a < 9 := by omega
  have h01 : ¬ a < 17 := by omega
  have h02 : ¬ a < 25 := by omega
  have h03 : ¬ a < 33 := by omega
  have h04 : ¬ a < 41 := by omega
  have h05 : ¬ a < 49 := by omega
  have h06 : ¬ a < 57 := by omega
  have hin : a < 65 := by omega
  simp only [globalData, if_neg hout, if_neg h00, if_neg h01, if_neg h02, if_neg h03, if_neg h04, if_neg h05, if_neg h06, if_pos hin]

theorem globalData_eq_chunk008 (a b : ℕ) (ha0 : 65 ≤ a) (ha1 : a < 73) :
    globalData a b = Chunk008.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 108 < a) := by omega
  have h00 : ¬ a < 9 := by omega
  have h01 : ¬ a < 17 := by omega
  have h02 : ¬ a < 25 := by omega
  have h03 : ¬ a < 33 := by omega
  have h04 : ¬ a < 41 := by omega
  have h05 : ¬ a < 49 := by omega
  have h06 : ¬ a < 57 := by omega
  have h07 : ¬ a < 65 := by omega
  have hin : a < 73 := by omega
  simp only [globalData, if_neg hout, if_neg h00, if_neg h01, if_neg h02, if_neg h03, if_neg h04, if_neg h05, if_neg h06, if_neg h07, if_pos hin]

theorem globalData_eq_chunk009 (a b : ℕ) (ha0 : 73 ≤ a) (ha1 : a < 81) :
    globalData a b = Chunk009.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 108 < a) := by omega
  have h00 : ¬ a < 9 := by omega
  have h01 : ¬ a < 17 := by omega
  have h02 : ¬ a < 25 := by omega
  have h03 : ¬ a < 33 := by omega
  have h04 : ¬ a < 41 := by omega
  have h05 : ¬ a < 49 := by omega
  have h06 : ¬ a < 57 := by omega
  have h07 : ¬ a < 65 := by omega
  have h08 : ¬ a < 73 := by omega
  have hin : a < 81 := by omega
  simp only [globalData, if_neg hout, if_neg h00, if_neg h01, if_neg h02, if_neg h03, if_neg h04, if_neg h05, if_neg h06, if_neg h07, if_neg h08, if_pos hin]

theorem globalData_eq_chunk010 (a b : ℕ) (ha0 : 81 ≤ a) (ha1 : a < 89) :
    globalData a b = Chunk010.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 108 < a) := by omega
  have h00 : ¬ a < 9 := by omega
  have h01 : ¬ a < 17 := by omega
  have h02 : ¬ a < 25 := by omega
  have h03 : ¬ a < 33 := by omega
  have h04 : ¬ a < 41 := by omega
  have h05 : ¬ a < 49 := by omega
  have h06 : ¬ a < 57 := by omega
  have h07 : ¬ a < 65 := by omega
  have h08 : ¬ a < 73 := by omega
  have h09 : ¬ a < 81 := by omega
  have hin : a < 89 := by omega
  simp only [globalData, if_neg hout, if_neg h00, if_neg h01, if_neg h02, if_neg h03, if_neg h04, if_neg h05, if_neg h06, if_neg h07, if_neg h08, if_neg h09, if_pos hin]

theorem globalData_eq_chunk011 (a b : ℕ) (ha0 : 89 ≤ a) (ha1 : a < 97) :
    globalData a b = Chunk011.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 108 < a) := by omega
  have h00 : ¬ a < 9 := by omega
  have h01 : ¬ a < 17 := by omega
  have h02 : ¬ a < 25 := by omega
  have h03 : ¬ a < 33 := by omega
  have h04 : ¬ a < 41 := by omega
  have h05 : ¬ a < 49 := by omega
  have h06 : ¬ a < 57 := by omega
  have h07 : ¬ a < 65 := by omega
  have h08 : ¬ a < 73 := by omega
  have h09 : ¬ a < 81 := by omega
  have h10 : ¬ a < 89 := by omega
  have hin : a < 97 := by omega
  simp only [globalData, if_neg hout, if_neg h00, if_neg h01, if_neg h02, if_neg h03, if_neg h04, if_neg h05, if_neg h06, if_neg h07, if_neg h08, if_neg h09, if_neg h10, if_pos hin]

theorem globalData_eq_chunk012 (a b : ℕ) (ha0 : 97 ≤ a) (ha1 : a < 105) :
    globalData a b = Chunk012.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 108 < a) := by omega
  have h00 : ¬ a < 9 := by omega
  have h01 : ¬ a < 17 := by omega
  have h02 : ¬ a < 25 := by omega
  have h03 : ¬ a < 33 := by omega
  have h04 : ¬ a < 41 := by omega
  have h05 : ¬ a < 49 := by omega
  have h06 : ¬ a < 57 := by omega
  have h07 : ¬ a < 65 := by omega
  have h08 : ¬ a < 73 := by omega
  have h09 : ¬ a < 81 := by omega
  have h10 : ¬ a < 89 := by omega
  have h11 : ¬ a < 97 := by omega
  have hin : a < 105 := by omega
  simp only [globalData, if_neg hout, if_neg h00, if_neg h01, if_neg h02, if_neg h03, if_neg h04, if_neg h05, if_neg h06, if_neg h07, if_neg h08, if_neg h09, if_neg h10, if_neg h11, if_pos hin]

theorem globalData_eq_chunk013 (a b : ℕ) (ha0 : 105 ≤ a) (ha1 : a < 109) :
    globalData a b = Chunk013.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 108 < a) := by omega
  have h00 : ¬ a < 9 := by omega
  have h01 : ¬ a < 17 := by omega
  have h02 : ¬ a < 25 := by omega
  have h03 : ¬ a < 33 := by omega
  have h04 : ¬ a < 41 := by omega
  have h05 : ¬ a < 49 := by omega
  have h06 : ¬ a < 57 := by omega
  have h07 : ¬ a < 65 := by omega
  have h08 : ¬ a < 73 := by omega
  have h09 : ¬ a < 81 := by omega
  have h10 : ¬ a < 89 := by omega
  have h11 : ¬ a < 97 := by omega
  have h12 : ¬ a < 105 := by omega
  simp only [globalData, if_neg hout, if_neg h00, if_neg h01, if_neg h02, if_neg h03, if_neg h04, if_neg h05, if_neg h06, if_neg h07, if_neg h08, if_neg h09, if_neg h10, if_neg h11, if_neg h12]

/-- Exactly the fourteen consecutive row intervals cover every legal a. -/
theorem row_partition (a : ℕ) (ha0 : 1 ≤ a) (ha1 : a ≤ 108) :
    (1 ≤ a ∧ a < 9) ∨
      (9 ≤ a ∧ a < 17) ∨
      (17 ≤ a ∧ a < 25) ∨
      (25 ≤ a ∧ a < 33) ∨
      (33 ≤ a ∧ a < 41) ∨
      (41 ≤ a ∧ a < 49) ∨
      (49 ≤ a ∧ a < 57) ∨
      (57 ≤ a ∧ a < 65) ∨
      (65 ≤ a ∧ a < 73) ∨
      (73 ≤ a ∧ a < 81) ∨
      (81 ≤ a ∧ a < 89) ∨
      (89 ≤ a ∧ a < 97) ∨
      (97 ≤ a ∧ a < 105) ∨
      (105 ≤ a ∧ a < 109) := by
  omega

theorem global_check_000 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 8 1 68 globalData = true := by
  exact blockCheck_transfer_data
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (aStart := 1) (aCount := 8) (bStart := 1) (bCount := 68)
    (data := Chunk000.chunkData) (data' := globalData) Chunk000.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_chunk000 a b ha0 (by omega)).symm)

theorem global_check_001 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 9 8 1 68 globalData = true := by
  exact blockCheck_transfer_data
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (aStart := 9) (aCount := 8) (bStart := 1) (bCount := 68)
    (data := Chunk001.chunkData) (data' := globalData) Chunk001.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_chunk001 a b ha0 (by omega)).symm)

theorem global_check_002 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 17 8 1 68 globalData = true := by
  exact blockCheck_transfer_data
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (aStart := 17) (aCount := 8) (bStart := 1) (bCount := 68)
    (data := Chunk002.chunkData) (data' := globalData) Chunk002.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_chunk002 a b ha0 (by omega)).symm)

theorem global_check_003 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 25 8 1 68 globalData = true := by
  exact blockCheck_transfer_data
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (aStart := 25) (aCount := 8) (bStart := 1) (bCount := 68)
    (data := Chunk003.chunkData) (data' := globalData) Chunk003.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_chunk003 a b ha0 (by omega)).symm)

theorem global_check_004 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 33 8 1 68 globalData = true := by
  exact blockCheck_transfer_data
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (aStart := 33) (aCount := 8) (bStart := 1) (bCount := 68)
    (data := Chunk004.chunkData) (data' := globalData) Chunk004.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_chunk004 a b ha0 (by omega)).symm)

theorem global_check_005 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 41 8 1 68 globalData = true := by
  exact blockCheck_transfer_data
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (aStart := 41) (aCount := 8) (bStart := 1) (bCount := 68)
    (data := Chunk005.chunkData) (data' := globalData) Chunk005.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_chunk005 a b ha0 (by omega)).symm)

theorem global_check_006 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 49 8 1 68 globalData = true := by
  exact blockCheck_transfer_data
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (aStart := 49) (aCount := 8) (bStart := 1) (bCount := 68)
    (data := Chunk006.chunkData) (data' := globalData) Chunk006.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_chunk006 a b ha0 (by omega)).symm)

theorem global_check_007 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 57 8 1 68 globalData = true := by
  exact blockCheck_transfer_data
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (aStart := 57) (aCount := 8) (bStart := 1) (bCount := 68)
    (data := Chunk007.chunkData) (data' := globalData) Chunk007.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_chunk007 a b ha0 (by omega)).symm)

theorem global_check_008 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 65 8 1 68 globalData = true := by
  exact blockCheck_transfer_data
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (aStart := 65) (aCount := 8) (bStart := 1) (bCount := 68)
    (data := Chunk008.chunkData) (data' := globalData) Chunk008.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_chunk008 a b ha0 (by omega)).symm)

theorem global_check_009 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 73 8 1 68 globalData = true := by
  exact blockCheck_transfer_data
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (aStart := 73) (aCount := 8) (bStart := 1) (bCount := 68)
    (data := Chunk009.chunkData) (data' := globalData) Chunk009.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_chunk009 a b ha0 (by omega)).symm)

theorem global_check_010 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 81 8 1 68 globalData = true := by
  exact blockCheck_transfer_data
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (aStart := 81) (aCount := 8) (bStart := 1) (bCount := 68)
    (data := Chunk010.chunkData) (data' := globalData) Chunk010.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_chunk010 a b ha0 (by omega)).symm)

theorem global_check_011 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 89 8 1 68 globalData = true := by
  exact blockCheck_transfer_data
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (aStart := 89) (aCount := 8) (bStart := 1) (bCount := 68)
    (data := Chunk011.chunkData) (data' := globalData) Chunk011.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_chunk011 a b ha0 (by omega)).symm)

theorem global_check_012 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 97 8 1 68 globalData = true := by
  exact blockCheck_transfer_data
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (aStart := 97) (aCount := 8) (bStart := 1) (bCount := 68)
    (data := Chunk012.chunkData) (data' := globalData) Chunk012.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_chunk012 a b ha0 (by omega)).symm)

theorem global_check_013 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 105 4 1 68 globalData = true := by
  exact blockCheck_transfer_data
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (aStart := 105) (aCount := 4) (bStart := 1) (bCount := 68)
    (data := Chunk013.chunkData) (data' := globalData) Chunk013.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_chunk013 a b ha0 (by omega)).symm)

/-- Normalize the two index sums while all quantities and data are variables.
This prevents closed certificate lookup from being used to justify an append. -/
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
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 16 1 68 globalData = true := by
  exact append_rows_named
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (start := 1) (left := 8) (right := 8) (next := 9) (total := 16)
    (bStart := 1) (bCount := 68) (data := globalData)
    (by decide : 1 + 8 = 9) (by decide : 8 + 8 = 16)
    global_check_000 global_check_001

theorem prefix_024 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 24 1 68 globalData = true := by
  exact append_rows_named
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (start := 1) (left := 16) (right := 8) (next := 17) (total := 24)
    (bStart := 1) (bCount := 68) (data := globalData)
    (by decide : 1 + 16 = 17) (by decide : 16 + 8 = 24)
    prefix_016 global_check_002

theorem prefix_032 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 32 1 68 globalData = true := by
  exact append_rows_named
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (start := 1) (left := 24) (right := 8) (next := 25) (total := 32)
    (bStart := 1) (bCount := 68) (data := globalData)
    (by decide : 1 + 24 = 25) (by decide : 24 + 8 = 32)
    prefix_024 global_check_003

theorem prefix_040 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 40 1 68 globalData = true := by
  exact append_rows_named
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (start := 1) (left := 32) (right := 8) (next := 33) (total := 40)
    (bStart := 1) (bCount := 68) (data := globalData)
    (by decide : 1 + 32 = 33) (by decide : 32 + 8 = 40)
    prefix_032 global_check_004

theorem prefix_048 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 48 1 68 globalData = true := by
  exact append_rows_named
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (start := 1) (left := 40) (right := 8) (next := 41) (total := 48)
    (bStart := 1) (bCount := 68) (data := globalData)
    (by decide : 1 + 40 = 41) (by decide : 40 + 8 = 48)
    prefix_040 global_check_005

theorem prefix_056 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 56 1 68 globalData = true := by
  exact append_rows_named
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (start := 1) (left := 48) (right := 8) (next := 49) (total := 56)
    (bStart := 1) (bCount := 68) (data := globalData)
    (by decide : 1 + 48 = 49) (by decide : 48 + 8 = 56)
    prefix_048 global_check_006

theorem prefix_064 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 64 1 68 globalData = true := by
  exact append_rows_named
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (start := 1) (left := 56) (right := 8) (next := 57) (total := 64)
    (bStart := 1) (bCount := 68) (data := globalData)
    (by decide : 1 + 56 = 57) (by decide : 56 + 8 = 64)
    prefix_056 global_check_007

theorem prefix_072 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 72 1 68 globalData = true := by
  exact append_rows_named
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (start := 1) (left := 64) (right := 8) (next := 65) (total := 72)
    (bStart := 1) (bCount := 68) (data := globalData)
    (by decide : 1 + 64 = 65) (by decide : 64 + 8 = 72)
    prefix_064 global_check_008

theorem prefix_080 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 80 1 68 globalData = true := by
  exact append_rows_named
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (start := 1) (left := 72) (right := 8) (next := 73) (total := 80)
    (bStart := 1) (bCount := 68) (data := globalData)
    (by decide : 1 + 72 = 73) (by decide : 72 + 8 = 80)
    prefix_072 global_check_009

theorem prefix_088 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 88 1 68 globalData = true := by
  exact append_rows_named
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (start := 1) (left := 80) (right := 8) (next := 81) (total := 88)
    (bStart := 1) (bCount := 68) (data := globalData)
    (by decide : 1 + 80 = 81) (by decide : 80 + 8 = 88)
    prefix_080 global_check_010

theorem prefix_096 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 96 1 68 globalData = true := by
  exact append_rows_named
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (start := 1) (left := 88) (right := 8) (next := 89) (total := 96)
    (bStart := 1) (bCount := 68) (data := globalData)
    (by decide : 1 + 88 = 89) (by decide : 88 + 8 = 96)
    prefix_088 global_check_011

theorem prefix_104 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 104 1 68 globalData = true := by
  exact append_rows_named
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (start := 1) (left := 96) (right := 8) (next := 97) (total := 104)
    (bStart := 1) (bCount := 68) (data := globalData)
    (by decide : 1 + 96 = 97) (by decide : 96 + 8 = 104)
    prefix_096 global_check_012

theorem prefix_108 :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 108 1 68 globalData = true := by
  exact append_rows_named
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (start := 1) (left := 104) (right := 4) (next := 105) (total := 108)
    (bStart := 1) (bCount := 68) (data := globalData)
    (by decide : 1 + 104 = 105) (by decide : 104 + 4 = 108)
    prefix_104 global_check_013

theorem rectangle_check :
    rectangleCheck 2 3 Stage00.H Stage00.M Stage00.upper 108 68 globalData = true := by
  simpa only [rectangleCheck] using prefix_108

def pairData : PairGridData where
  amax := 108
  bmax := 68
  cells := globalData

theorem cutoff_check : cutoffCheck 2 3 Stage00.H pairData = true := by
  have h2 : Stage00.H ≤ (2 : ℕ) ^ (108 + 1) := by
    simpa only [Stage00.exponentMax2] using Stage00.cutoff_2
  have h3 : Stage00.H ≤ (3 : ℕ) ^ (68 + 1) := by
    simpa only [Stage00.exponentMax3] using Stage00.cutoff_3
  have hprop : 1 < (2 : ℕ) ∧ 1 < (3 : ℕ) ∧
      Stage00.H ≤ (2 : ℕ) ^ (108 + 1) ∧ Stage00.H ≤ (3 : ℕ) ^ (68 + 1) :=
    ⟨by decide, by decide, h2, h3⟩
  simpa only [cutoffCheck, pairData] using (decide_eq_true hprop)

theorem pair_check : pairGridCheck 2 3 Stage00.H Stage00.M Stage00.upper pairData = true := by
  exact pairGridCheck_of_parts cutoff_check
    (by simpa only [pairData] using rectangle_check)

end Math.B699.CRTStage0Pair23.Composer
