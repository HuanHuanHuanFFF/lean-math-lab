import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage1Pair57.Chunk003
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA25B1 : CellData where
  inverse := 3
  bounds := fun _ => ⟨0, -1⟩

def cellA25B2 : CellData where
  inverse := 45
  bounds := fun _ => ⟨0, -1⟩

def cellA25B3 : CellData where
  inverse := 290
  bounds := fun _ => ⟨0, -1⟩

def cellA25B4 : CellData where
  inverse := 290
  bounds := fun _ => ⟨0, -1⟩

def cellA25B5 : CellData where
  inverse := 290
  bounds := fun _ => ⟨0, -1⟩

def cellA25B6 : CellData where
  inverse := 17097
  bounds := fun _ => ⟨0, -1⟩

def cellA25B7 : CellData where
  inverse := 252395
  bounds := fun _ => ⟨0, -1⟩

def cellA25B8 : CellData where
  inverse := 252395
  bounds := fun _ => ⟨0, -1⟩

def cellA25B9 : CellData where
  inverse := 17546798
  bounds := fun _ => ⟨0, -1⟩

def cellA25B10 : CellData where
  inverse := 259668440
  bounds := fun _ => ⟨0, -1⟩

def cellA25B11 : CellData where
  inverse := 824618938
  bounds := fun _ => ⟨0, -1⟩

def cellA25B12 : CellData where
  inverse := 10711252653
  bounds := fun _ => ⟨0, -1⟩

def cellA25B13 : CellData where
  inverse := 10711252653
  bounds := fun _ => ⟨0, -1⟩

def cellA25B14 : CellData where
  inverse := 301378283874
  bounds := fun _ => ⟨0, -1⟩

def cellA25B15 : CellData where
  inverse := 301378283874
  bounds := fun _ => ⟨0, -1⟩

def cellA25B16 : CellData where
  inverse := 14544062813703
  bounds := fun _ => ⟨0, -1⟩

def cellA25B17 : CellData where
  inverse := 213941646231309
  bounds := fun _ => ⟨0, -1⟩

def cellA25B18 : CellData where
  inverse := 213941646231309
  bounds := fun _ => ⟨0, -1⟩

def cellA25B19 : CellData where
  inverse := 6727596037873105
  bounds := fun _ => ⟨0, -1⟩

def cellA25B20 : CellData where
  inverse := 6727596037873105
  bounds := fun _ => ⟨0, -1⟩

def cellA25B21 : CellData where
  inverse := 166312128633097107
  bounds := fun _ => ⟨0, -1⟩

def rowA25 (b : ℕ) : CellData :=
  if b = 1 then cellA25B1
  else if b = 2 then cellA25B2
  else if b = 3 then cellA25B3
  else if b = 4 then cellA25B4
  else if b = 5 then cellA25B5
  else if b = 6 then cellA25B6
  else if b = 7 then cellA25B7
  else if b = 8 then cellA25B8
  else if b = 9 then cellA25B9
  else if b = 10 then cellA25B10
  else if b = 11 then cellA25B11
  else if b = 12 then cellA25B12
  else if b = 13 then cellA25B13
  else if b = 14 then cellA25B14
  else if b = 15 then cellA25B15
  else if b = 16 then cellA25B16
  else if b = 17 then cellA25B17
  else if b = 18 then cellA25B18
  else if b = 19 then cellA25B19
  else if b = 20 then cellA25B20
  else if b = 21 then cellA25B21
  else outsideCell

def chunkData (a b : ℕ) : CellData :=
  if a = 25 then rowA25 b
  else outsideCell

end Math.B699.CRTStage1Pair57.Chunk003
