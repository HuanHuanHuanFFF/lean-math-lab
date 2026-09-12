import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair27.Chunk003
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA25B1 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, -1⟩

def cellA25B2 : CellData where
  inverse := 46
  bounds := fun _ => ⟨0, -1⟩

def cellA25B3 : CellData where
  inverse := 340
  bounds := fun _ => ⟨0, -1⟩

def cellA25B4 : CellData where
  inverse := 683
  bounds := fun _ => ⟨0, -1⟩

def cellA25B5 : CellData where
  inverse := 15089
  bounds := fun _ => ⟨0, -1⟩

def cellA25B6 : CellData where
  inverse := 15089
  bounds := fun _ => ⟨0, -1⟩

def cellA25B7 : CellData where
  inverse := 368036
  bounds := fun _ => ⟨0, -1⟩

def cellA25B8 : CellData where
  inverse := 4485751
  bounds := fun _ => ⟨0, -1⟩

def cellA25B9 : CellData where
  inverse := 39074557
  bounds := fun _ => ⟨0, -1⟩

def cellA26B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA26B2 : CellData where
  inverse := 23
  bounds := fun _ => ⟨0, -1⟩

def cellA26B3 : CellData where
  inverse := 170
  bounds := fun _ => ⟨0, -1⟩

def cellA26B4 : CellData where
  inverse := 1542
  bounds := fun _ => ⟨0, -1⟩

def cellA26B5 : CellData where
  inverse := 15948
  bounds := fun _ => ⟨0, -1⟩

def cellA26B6 : CellData where
  inverse := 66369
  bounds := fun _ => ⟨0, -1⟩

def cellA26B7 : CellData where
  inverse := 184018
  bounds := fun _ => ⟨0, -1⟩

def cellA26B8 : CellData where
  inverse := 5125276
  bounds := fun _ => ⟨0, -1⟩

def cellA26B9 : CellData where
  inverse := 39714082
  bounds := fun _ => ⟨0, -1⟩

def cellA27B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA27B2 : CellData where
  inverse := 36
  bounds := fun _ => ⟨0, -1⟩

def cellA27B3 : CellData where
  inverse := 85
  bounds := fun _ => ⟨0, -1⟩

def cellA27B4 : CellData where
  inverse := 771
  bounds := fun _ => ⟨0, -1⟩

def cellA27B5 : CellData where
  inverse := 7974
  bounds := fun _ => ⟨0, -1⟩

def cellA27B6 : CellData where
  inverse := 92009
  bounds := fun _ => ⟨0, -1⟩

def cellA27B7 : CellData where
  inverse := 92009
  bounds := fun _ => ⟨0, -1⟩

def cellA27B8 : CellData where
  inverse := 2562638
  bounds := fun _ => ⟨0, -1⟩

def cellA27B9 : CellData where
  inverse := 19857041
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
  else outsideCell

def chunkData (a b : ℕ) : CellData :=
  if a = 25 then rowA25 b
  else if a = 26 then rowA26 b
  else if a = 27 then rowA27 b
  else outsideCell

end Math.B699.CRTStage3Pair27.Chunk003
