import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair57.Chunk001
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
  inverse := 62
  bounds := fun _ => ⟨0, -1⟩

def cellA9B4 : CellData where
  inverse := 1777
  bounds := fun _ => ⟨0, -1⟩

def cellA9B5 : CellData where
  inverse := 8980
  bounds := fun _ => ⟨0, -1⟩

def cellA9B6 : CellData where
  inverse := 76208
  bounds := fun _ => ⟨0, -1⟩

def cellA9B7 : CellData where
  inverse := 782102
  bounds := fun _ => ⟨0, -1⟩

def cellA9B8 : CellData where
  inverse := 4076274
  bounds := fun _ => ⟨0, -1⟩

def cellA9B9 : CellData where
  inverse := 32900279
  bounds := fun _ => ⟨0, -1⟩

def cellA10B1 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, -1⟩

def cellA10B2 : CellData where
  inverse := 32
  bounds := fun _ => ⟨0, -1⟩

def cellA10B3 : CellData where
  inverse := 81
  bounds := fun _ => ⟨0, -1⟩

def cellA10B4 : CellData where
  inverse := 1796
  bounds := fun _ => ⟨0, -1⟩

def cellA10B5 : CellData where
  inverse := 1796
  bounds := fun _ => ⟨0, -1⟩

def cellA10B6 : CellData where
  inverse := 85831
  bounds := fun _ => ⟨0, -1⟩

def cellA10B7 : CellData where
  inverse := 321129
  bounds := fun _ => ⟨0, -1⟩

def cellA10B8 : CellData where
  inverse := 1968215
  bounds := fun _ => ⟨0, -1⟩

def cellA10B9 : CellData where
  inverse := 30792220
  bounds := fun _ => ⟨0, -1⟩

def cellA11B1 : CellData where
  inverse := 5
  bounds := fun _ => ⟨0, -1⟩

def cellA11B2 : CellData where
  inverse := 26
  bounds := fun _ => ⟨0, -1⟩

def cellA11B3 : CellData where
  inverse := 222
  bounds := fun _ => ⟨0, -1⟩

def cellA11B4 : CellData where
  inverse := 2280
  bounds := fun _ => ⟨0, -1⟩

def cellA11B5 : CellData where
  inverse := 7082
  bounds := fun _ => ⟨0, -1⟩

def cellA11B6 : CellData where
  inverse := 40696
  bounds := fun _ => ⟨0, -1⟩

def cellA11B7 : CellData where
  inverse := 393643
  bounds := fun _ => ⟨0, -1⟩

def cellA11B8 : CellData where
  inverse := 393643
  bounds := fun _ => ⟨0, -1⟩

def cellA11B9 : CellData where
  inverse := 6158444
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

def chunkData (a b : ℕ) : CellData :=
  if a = 9 then rowA9 b
  else if a = 10 then rowA10 b
  else if a = 11 then rowA11 b
  else outsideCell

end Math.B699.CRTStage3Pair57.Chunk001
