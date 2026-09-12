import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair25.Chunk003
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA25B1 : CellData where
  inverse := 3
  bounds := fun _ => ⟨0, -1⟩

def cellA25B2 : CellData where
  inverse := 18
  bounds := fun _ => ⟨0, -1⟩

def cellA25B3 : CellData where
  inverse := 68
  bounds := fun _ => ⟨0, -1⟩

def cellA25B4 : CellData where
  inverse := 318
  bounds := fun _ => ⟨0, -1⟩

def cellA25B5 : CellData where
  inverse := 318
  bounds := fun _ => ⟨0, -1⟩

def cellA25B6 : CellData where
  inverse := 9693
  bounds := fun _ => ⟨0, -1⟩

def cellA25B7 : CellData where
  inverse := 56568
  bounds := fun _ => ⟨0, -1⟩

def cellA25B8 : CellData where
  inverse := 212818
  bounds := fun _ => ⟨0, -1⟩

def cellA25B9 : CellData where
  inverse := 1775318
  bounds := fun _ => ⟨0, -1⟩

def cellA25B10 : CellData where
  inverse := 5681568
  bounds := fun _ => ⟨0, -1⟩

def cellA25B11 : CellData where
  inverse := 34978443
  bounds := fun _ => ⟨0, -1⟩

def cellA26B1 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, -1⟩

def cellA26B2 : CellData where
  inverse := 9
  bounds := fun _ => ⟨0, -1⟩

def cellA26B3 : CellData where
  inverse := 34
  bounds := fun _ => ⟨0, -1⟩

def cellA26B4 : CellData where
  inverse := 159
  bounds := fun _ => ⟨0, -1⟩

def cellA26B5 : CellData where
  inverse := 159
  bounds := fun _ => ⟨0, -1⟩

def cellA26B6 : CellData where
  inverse := 12659
  bounds := fun _ => ⟨0, -1⟩

def cellA26B7 : CellData where
  inverse := 28284
  bounds := fun _ => ⟨0, -1⟩

def cellA26B8 : CellData where
  inverse := 106409
  bounds := fun _ => ⟨0, -1⟩

def cellA26B9 : CellData where
  inverse := 887659
  bounds := fun _ => ⟨0, -1⟩

def cellA26B10 : CellData where
  inverse := 2840784
  bounds := fun _ => ⟨0, -1⟩

def cellA26B11 : CellData where
  inverse := 41903284
  bounds := fun _ => ⟨0, -1⟩

def cellA27B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA27B2 : CellData where
  inverse := 17
  bounds := fun _ => ⟨0, -1⟩

def cellA27B3 : CellData where
  inverse := 17
  bounds := fun _ => ⟨0, -1⟩

def cellA27B4 : CellData where
  inverse := 392
  bounds := fun _ => ⟨0, -1⟩

def cellA27B5 : CellData where
  inverse := 1642
  bounds := fun _ => ⟨0, -1⟩

def cellA27B6 : CellData where
  inverse := 14142
  bounds := fun _ => ⟨0, -1⟩

def cellA27B7 : CellData where
  inverse := 14142
  bounds := fun _ => ⟨0, -1⟩

def cellA27B8 : CellData where
  inverse := 248517
  bounds := fun _ => ⟨0, -1⟩

def cellA27B9 : CellData where
  inverse := 1420392
  bounds := fun _ => ⟨0, -1⟩

def cellA27B10 : CellData where
  inverse := 1420392
  bounds := fun _ => ⟨0, -1⟩

def cellA27B11 : CellData where
  inverse := 20951642
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
  else outsideCell

def rowA26 (b : ℕ) : CellData :=
  if b = 1 then cellA26B1
  else if b = 2 then cellA26B2
  else if b = 3 then cellA26B3
  else if b = 4 then cellA26B4
  else if b = 5 then cellA26B5
  else if b = 6 then cellA26B6
  else if b = 7 then cellA26B7
  else if b = 8 then cellA26B8
  else if b = 9 then cellA26B9
  else if b = 10 then cellA26B10
  else if b = 11 then cellA26B11
  else outsideCell

def rowA27 (b : ℕ) : CellData :=
  if b = 1 then cellA27B1
  else if b = 2 then cellA27B2
  else if b = 3 then cellA27B3
  else if b = 4 then cellA27B4
  else if b = 5 then cellA27B5
  else if b = 6 then cellA27B6
  else if b = 7 then cellA27B7
  else if b = 8 then cellA27B8
  else if b = 9 then cellA27B9
  else if b = 10 then cellA27B10
  else if b = 11 then cellA27B11
  else outsideCell

def chunkData (a b : ℕ) : CellData :=
  if a = 25 then rowA25 b
  else if a = 26 then rowA26 b
  else if a = 27 then rowA27 b
  else outsideCell

end Math.B699.CRTStage3Pair25.Chunk003
