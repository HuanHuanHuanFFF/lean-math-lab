import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair35.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA17B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA17B2 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA17B3 : CellData where
  inverse := 102
  bounds := fun _ => ⟨0, -1⟩

def cellA17B4 : CellData where
  inverse := 602
  bounds := fun _ => ⟨0, -1⟩

def cellA17B5 : CellData where
  inverse := 602
  bounds := fun _ => ⟨0, -1⟩

def cellA17B6 : CellData where
  inverse := 9977
  bounds := fun _ => ⟨0, -1⟩

def cellA17B7 : CellData where
  inverse := 9977
  bounds := fun _ => ⟨0, -1⟩

def cellA17B8 : CellData where
  inverse := 88102
  bounds := fun _ => ⟨0, -1⟩

def cellA17B9 : CellData where
  inverse := 478727
  bounds := fun _ => ⟨0, -1⟩

def cellA17B10 : CellData where
  inverse := 6338102
  bounds := fun _ => ⟨0, -1⟩

def cellA17B11 : CellData where
  inverse := 35634977
  bounds := fun _ => ⟨0, -1⟩

def rowA17 (b : ℕ) : CellData :=
  if b = 1 then cellA17B1
  else if b = 2 then cellA17B2
  else if b = 3 then cellA17B3
  else if b = 4 then cellA17B4
  else if b = 5 then cellA17B5
  else if b = 6 then cellA17B6
  else if b = 7 then cellA17B7
  else if b = 8 then cellA17B8
  else if b = 9 then cellA17B9
  else if b = 10 then cellA17B10
  else if b = 11 then cellA17B11
  else outsideCell

def chunkData (a b : ℕ) : CellData :=
  if a = 17 then rowA17 b
  else outsideCell

end Math.B699.CRTStage3Pair35.Chunk002
