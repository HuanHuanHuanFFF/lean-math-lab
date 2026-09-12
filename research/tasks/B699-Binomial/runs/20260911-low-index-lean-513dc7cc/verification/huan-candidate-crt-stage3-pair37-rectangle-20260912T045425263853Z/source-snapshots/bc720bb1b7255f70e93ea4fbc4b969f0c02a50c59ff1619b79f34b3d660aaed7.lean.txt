import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair37.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA9B1 : CellData where
  inverse := 6
  bounds := fun _ => ⟨0, -1⟩

def cellA9B2 : CellData where
  inverse := 13
  bounds := fun _ => ⟨0, -1⟩

def cellA9B3 : CellData where
  inverse := 13
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA9B4 : CellData where
  inverse := 1385
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA9B5 : CellData where
  inverse := 1385
  bounds := fun _ => ⟨0, -1⟩

def cellA9B6 : CellData where
  inverse := 85420
  bounds := fun _ => ⟨0, -1⟩

def cellA9B7 : CellData where
  inverse := 556016
  bounds := fun _ => ⟨0, -1⟩

def cellA9B8 : CellData where
  inverse := 3026645
  bounds := fun _ => ⟨0, -1⟩

def cellA9B9 : CellData where
  inverse := 14556247
  bounds := fun _ => ⟨0, -1⟩

def cellA10B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA10B2 : CellData where
  inverse := 37
  bounds := fun _ => ⟨0, -1⟩

def cellA10B3 : CellData where
  inverse := 233
  bounds := fun _ => ⟨0, -1⟩

def cellA10B4 : CellData where
  inverse := 1262
  bounds := fun _ => ⟨0, -1⟩

def cellA10B5 : CellData where
  inverse := 6064
  bounds := fun _ => ⟨0, -1⟩

def cellA10B6 : CellData where
  inverse := 106906
  bounds := fun _ => ⟨0, -1⟩

def cellA10B7 : CellData where
  inverse := 459853
  bounds := fun _ => ⟨0, -1⟩

def cellA10B8 : CellData where
  inverse := 2930482
  bounds := fun _ => ⟨0, -1⟩

def cellA10B9 : CellData where
  inverse := 31754487
  bounds := fun _ => ⟨0, -1⟩

def cellA11B1 : CellData where
  inverse := 3
  bounds := fun _ => ⟨0, -1⟩

def cellA11B2 : CellData where
  inverse := 45
  bounds := fun _ => ⟨0, -1⟩

def cellA11B3 : CellData where
  inverse := 192
  bounds := fun _ => ⟨0, -1⟩

def cellA11B4 : CellData where
  inverse := 1221
  bounds := fun _ => ⟨0, -1⟩

def cellA11B5 : CellData where
  inverse := 13226
  bounds := fun _ => ⟨0, -1⟩

def cellA11B6 : CellData where
  inverse := 114068
  bounds := fun _ => ⟨0, -1⟩

def cellA11B7 : CellData where
  inverse := 702313
  bounds := fun _ => ⟨0, -1⟩

def cellA11B8 : CellData where
  inverse := 4820028
  bounds := fun _ => ⟨0, -1⟩

def cellA11B9 : CellData where
  inverse := 10584829
  bounds := fun _ => ⟨0, -1⟩

def cellA12B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA12B2 : CellData where
  inverse := 15
  bounds := fun _ => ⟨0, -1⟩

def cellA12B3 : CellData where
  inverse := 64
  bounds := fun _ => ⟨0, -1⟩

def cellA12B4 : CellData where
  inverse := 407
  bounds := fun _ => ⟨0, -1⟩

def cellA12B5 : CellData where
  inverse := 10011
  bounds := fun _ => ⟨0, -1⟩

def cellA12B6 : CellData where
  inverse := 77239
  bounds := fun _ => ⟨0, -1⟩

def cellA12B7 : CellData where
  inverse := 783133
  bounds := fun _ => ⟨0, -1⟩

def cellA12B8 : CellData where
  inverse := 1606676
  bounds := fun _ => ⟨0, -1⟩

def cellA12B9 : CellData where
  inverse := 30430681
  bounds := fun _ => ⟨0, -1⟩

def cellA13B1 : CellData where
  inverse := 5
  bounds := fun _ => ⟨0, -1⟩

def cellA13B2 : CellData where
  inverse := 5
  bounds := fun _ => ⟨0, -1⟩

def cellA13B3 : CellData where
  inverse := 250
  bounds := fun _ => ⟨0, -1⟩

def cellA13B4 : CellData where
  inverse := 936
  bounds := fun _ => ⟨0, -1⟩

def cellA13B5 : CellData where
  inverse := 3337
  bounds := fun _ => ⟨0, -1⟩

def cellA13B6 : CellData where
  inverse := 104179
  bounds := fun _ => ⟨0, -1⟩

def cellA13B7 : CellData where
  inverse := 810073
  bounds := fun _ => ⟨0, -1⟩

def cellA13B8 : CellData where
  inverse := 2457159
  bounds := fun _ => ⟨0, -1⟩

def cellA13B9 : CellData where
  inverse := 37045965
  bounds := fun _ => ⟨0, -1⟩

def cellA14B1 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, -1⟩

def cellA14B2 : CellData where
  inverse := 18
  bounds := fun _ => ⟨0, -1⟩

def cellA14B3 : CellData where
  inverse := 312
  bounds := fun _ => ⟨0, -1⟩

def cellA14B4 : CellData where
  inverse := 312
  bounds := fun _ => ⟨0, -1⟩

def cellA14B5 : CellData where
  inverse := 12317
  bounds := fun _ => ⟨0, -1⟩

def cellA14B6 : CellData where
  inverse := 113159
  bounds := fun _ => ⟨0, -1⟩

def cellA14B7 : CellData where
  inverse := 819053
  bounds := fun _ => ⟨0, -1⟩

def cellA14B8 : CellData where
  inverse := 819053
  bounds := fun _ => ⟨0, -1⟩

def cellA14B9 : CellData where
  inverse := 12348655
  bounds := fun _ => ⟨0, -1⟩

def cellA15B1 : CellData where
  inverse := 6
  bounds := fun _ => ⟨0, -1⟩

def cellA15B2 : CellData where
  inverse := 6
  bounds := fun _ => ⟨0, -1⟩

def cellA15B3 : CellData where
  inverse := 104
  bounds := fun _ => ⟨0, -1⟩

def cellA15B4 : CellData where
  inverse := 104
  bounds := fun _ => ⟨0, -1⟩

def cellA15B5 : CellData where
  inverse := 9708
  bounds := fun _ => ⟨0, -1⟩

def cellA15B6 : CellData where
  inverse := 76936
  bounds := fun _ => ⟨0, -1⟩

def cellA15B7 : CellData where
  inverse := 547532
  bounds := fun _ => ⟨0, -1⟩

def cellA15B8 : CellData where
  inverse := 2194618
  bounds := fun _ => ⟨0, -1⟩

def cellA15B9 : CellData where
  inverse := 31018623
  bounds := fun _ => ⟨0, -1⟩

def cellA16B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA16B2 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA16B3 : CellData where
  inverse := 149
  bounds := fun _ => ⟨0, -1⟩

def cellA16B4 : CellData where
  inverse := 835
  bounds := fun _ => ⟨0, -1⟩

def cellA16B5 : CellData where
  inverse := 3236
  bounds := fun _ => ⟨0, -1⟩

def cellA16B6 : CellData where
  inverse := 104078
  bounds := fun _ => ⟨0, -1⟩

def cellA16B7 : CellData where
  inverse := 457025
  bounds := fun _ => ⟨0, -1⟩

def cellA16B8 : CellData where
  inverse := 4574740
  bounds := fun _ => ⟨0, -1⟩

def cellA16B9 : CellData where
  inverse := 10339541
  bounds := fun _ => ⟨0, -1⟩

def rowA9 (b : ℕ) : CellData :=
  if b = 1 then cellA9B1
  else if b = 2 then cellA9B2
  else if b = 3 then cellA9B3
  else if b = 4 then cellA9B4
  else if b = 5 then cellA9B5
  else if b = 6 then cellA9B6
  else if b = 7 then cellA9B7
  else if b = 8 then cellA9B8
  else if b = 9 then cellA9B9
  else outsideCell

def rowA10 (b : ℕ) : CellData :=
  if b = 1 then cellA10B1
  else if b = 2 then cellA10B2
  else if b = 3 then cellA10B3
  else if b = 4 then cellA10B4
  else if b = 5 then cellA10B5
  else if b = 6 then cellA10B6
  else if b = 7 then cellA10B7
  else if b = 8 then cellA10B8
  else if b = 9 then cellA10B9
  else outsideCell

def rowA11 (b : ℕ) : CellData :=
  if b = 1 then cellA11B1
  else if b = 2 then cellA11B2
  else if b = 3 then cellA11B3
  else if b = 4 then cellA11B4
  else if b = 5 then cellA11B5
  else if b = 6 then cellA11B6
  else if b = 7 then cellA11B7
  else if b = 8 then cellA11B8
  else if b = 9 then cellA11B9
  else outsideCell

def rowA12 (b : ℕ) : CellData :=
  if b = 1 then cellA12B1
  else if b = 2 then cellA12B2
  else if b = 3 then cellA12B3
  else if b = 4 then cellA12B4
  else if b = 5 then cellA12B5
  else if b = 6 then cellA12B6
  else if b = 7 then cellA12B7
  else if b = 8 then cellA12B8
  else if b = 9 then cellA12B9
  else outsideCell

def rowA13 (b : ℕ) : CellData :=
  if b = 1 then cellA13B1
  else if b = 2 then cellA13B2
  else if b = 3 then cellA13B3
  else if b = 4 then cellA13B4
  else if b = 5 then cellA13B5
  else if b = 6 then cellA13B6
  else if b = 7 then cellA13B7
  else if b = 8 then cellA13B8
  else if b = 9 then cellA13B9
  else outsideCell

def rowA14 (b : ℕ) : CellData :=
  if b = 1 then cellA14B1
  else if b = 2 then cellA14B2
  else if b = 3 then cellA14B3
  else if b = 4 then cellA14B4
  else if b = 5 then cellA14B5
  else if b = 6 then cellA14B6
  else if b = 7 then cellA14B7
  else if b = 8 then cellA14B8
  else if b = 9 then cellA14B9
  else outsideCell

def rowA15 (b : ℕ) : CellData :=
  if b = 1 then cellA15B1
  else if b = 2 then cellA15B2
  else if b = 3 then cellA15B3
  else if b = 4 then cellA15B4
  else if b = 5 then cellA15B5
  else if b = 6 then cellA15B6
  else if b = 7 then cellA15B7
  else if b = 8 then cellA15B8
  else if b = 9 then cellA15B9
  else outsideCell

def rowA16 (b : ℕ) : CellData :=
  if b = 1 then cellA16B1
  else if b = 2 then cellA16B2
  else if b = 3 then cellA16B3
  else if b = 4 then cellA16B4
  else if b = 5 then cellA16B5
  else if b = 6 then cellA16B6
  else if b = 7 then cellA16B7
  else if b = 8 then cellA16B8
  else if b = 9 then cellA16B9
  else outsideCell

def chunkData (a b : ℕ) : CellData :=
  if a = 9 then rowA9 b
  else if a = 10 then rowA10 b
  else if a = 11 then rowA11 b
  else if a = 12 then rowA12 b
  else if a = 13 then rowA13 b
  else if a = 14 then rowA14 b
  else if a = 15 then rowA15 b
  else if a = 16 then rowA16 b
  else outsideCell

end Math.B699.CRTStage3Pair37.Chunk001
