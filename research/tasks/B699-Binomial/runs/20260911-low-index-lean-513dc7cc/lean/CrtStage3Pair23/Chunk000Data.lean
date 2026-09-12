import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair23.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 252⟩
    else if d = (-7 : ℤ) then ⟨0, 252⟩
    else if d = (-4 : ℤ) then ⟨0, 252⟩
    else if d = (-1 : ℤ) then ⟨0, 252⟩
    else if d = (2 : ℤ) then ⟨1, 252⟩
    else if d = (4 : ℤ) then ⟨1, 251⟩
    else if d = (5 : ℤ) then ⟨1, 252⟩
    else if d = (6 : ℤ) then ⟨1, 251⟩
    else if d = (7 : ℤ) then ⟨1, 251⟩
    else if d = (8 : ℤ) then ⟨2, 252⟩
    else if d = (9 : ℤ) then ⟨1, 251⟩
    else if d = (10 : ℤ) then ⟨2, 251⟩
    else ⟨0, 251⟩

def cellA1B2 : CellData where
  inverse := 5
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 84⟩
    else if d = (2 : ℤ) then ⟨1, 84⟩
    else if d = (4 : ℤ) then ⟨1, 83⟩
    else if d = (6 : ℤ) then ⟨1, 83⟩
    else if d = (8 : ℤ) then ⟨1, 83⟩
    else if d = (10 : ℤ) then ⟨1, 83⟩
    else ⟨0, 83⟩

def cellA1B3 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 28⟩
    else if d = (4 : ℤ) then ⟨1, 27⟩
    else if d = (6 : ℤ) then ⟨1, 27⟩
    else if d = (8 : ℤ) then ⟨1, 27⟩
    else if d = (10 : ℤ) then ⟨1, 27⟩
    else ⟨0, 27⟩

def cellA1B4 : CellData where
  inverse := 41
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 9⟩
    else if d = (4 : ℤ) then ⟨1, 9⟩
    else if d = (6 : ℤ) then ⟨1, 9⟩
    else if d = (8 : ℤ) then ⟨1, 9⟩
    else if d = (10 : ℤ) then ⟨1, 9⟩
    else ⟨0, 8⟩

def cellA1B5 : CellData where
  inverse := 122
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 3⟩
    else if d = (4 : ℤ) then ⟨1, 3⟩
    else if d = (6 : ℤ) then ⟨1, 3⟩
    else if d = (8 : ℤ) then ⟨1, 3⟩
    else if d = (10 : ℤ) then ⟨1, 3⟩
    else ⟨0, 2⟩

def cellA1B6 : CellData where
  inverse := 365
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 1⟩
    else if d = (4 : ℤ) then ⟨1, 1⟩
    else if d = (6 : ℤ) then ⟨1, 1⟩
    else if d = (8 : ℤ) then ⟨1, 1⟩
    else if d = (10 : ℤ) then ⟨1, 1⟩
    else ⟨0, 0⟩

def cellA1B7 : CellData where
  inverse := 1094
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B8 : CellData where
  inverse := 3281
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B9 : CellData where
  inverse := 9842
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B10 : CellData where
  inverse := 29525
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B11 : CellData where
  inverse := 88574
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B12 : CellData where
  inverse := 265721
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B13 : CellData where
  inverse := 797162
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B14 : CellData where
  inverse := 2391485
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B15 : CellData where
  inverse := 7174454
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B16 : CellData where
  inverse := 21523361
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B17 : CellData where
  inverse := 64570082
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 187⟩
    else if d = (-9 : ℤ) then ⟨0, 187⟩
    else if d = (-6 : ℤ) then ⟨0, 187⟩
    else if d = (1 : ℤ) then ⟨0, 189⟩
    else if d = (4 : ℤ) then ⟨1, 189⟩
    else if d = (5 : ℤ) then ⟨0, 189⟩
    else if d = (7 : ℤ) then ⟨1, 189⟩
    else if d = (8 : ℤ) then ⟨1, 189⟩
    else if d = (9 : ℤ) then ⟨0, 189⟩
    else if d = (10 : ℤ) then ⟨1, 189⟩
    else ⟨0, 188⟩

def cellA2B2 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 84⟩
    else if d = (4 : ℤ) then ⟨1, 84⟩
    else if d = (8 : ℤ) then ⟨1, 83⟩
    else ⟨0, 83⟩

def cellA2B3 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 28⟩
    else if d = (8 : ℤ) then ⟨1, 27⟩
    else ⟨0, 27⟩

def cellA2B4 : CellData where
  inverse := 61
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 9⟩
    else if d = (-5 : ℤ) then ⟨0, 9⟩
    else if d = (-1 : ℤ) then ⟨0, 9⟩
    else if d = (3 : ℤ) then ⟨0, 9⟩
    else if d = (4 : ℤ) then ⟨1, 9⟩
    else if d = (7 : ℤ) then ⟨0, 9⟩
    else if d = (8 : ℤ) then ⟨1, 9⟩
    else ⟨0, 8⟩

def cellA2B5 : CellData where
  inverse := 61
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 3⟩
    else if d = (8 : ℤ) then ⟨1, 3⟩
    else ⟨0, 2⟩

def cellA2B6 : CellData where
  inverse := 547
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 1⟩
    else if d = (8 : ℤ) then ⟨1, 1⟩
    else ⟨0, 0⟩

def cellA2B7 : CellData where
  inverse := 547
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA2B8 : CellData where
  inverse := 4921
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B9 : CellData where
  inverse := 4921
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B10 : CellData where
  inverse := 44287
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B11 : CellData where
  inverse := 44287
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B12 : CellData where
  inverse := 398581
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B13 : CellData where
  inverse := 398581
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B14 : CellData where
  inverse := 3587227
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B15 : CellData where
  inverse := 3587227
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B16 : CellData where
  inverse := 32285041
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B17 : CellData where
  inverse := 32285041
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 94⟩
    else if d = (-4 : ℤ) then ⟨0, 94⟩
    else if d = (-1 : ℤ) then ⟨0, 94⟩
    else if d = (1 : ℤ) then ⟨0, 94⟩
    else if d = (2 : ℤ) then ⟨0, 94⟩
    else if d = (4 : ℤ) then ⟨0, 94⟩
    else if d = (5 : ℤ) then ⟨0, 94⟩
    else if d = (7 : ℤ) then ⟨0, 94⟩
    else if d = (8 : ℤ) then ⟨1, 94⟩
    else if d = (9 : ℤ) then ⟨0, 94⟩
    else if d = (10 : ℤ) then ⟨0, 94⟩
    else ⟨0, 93⟩

def cellA3B2 : CellData where
  inverse := 8
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 84⟩
    else if d = (-1 : ℤ) then ⟨0, 84⟩
    else if d = (8 : ℤ) then ⟨1, 84⟩
    else ⟨0, 83⟩

def cellA3B3 : CellData where
  inverse := 17
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 28⟩
    else ⟨0, 27⟩

def cellA3B4 : CellData where
  inverse := 71
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 9⟩
    else if d = (-9 : ℤ) then ⟨0, 9⟩
    else if d = (-2 : ℤ) then ⟨0, 9⟩
    else if d = (-1 : ℤ) then ⟨0, 9⟩
    else if d = (6 : ℤ) then ⟨0, 9⟩
    else if d = (7 : ℤ) then ⟨0, 9⟩
    else if d = (8 : ℤ) then ⟨1, 9⟩
    else ⟨0, 8⟩

def cellA3B5 : CellData where
  inverse := 152
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 3⟩
    else ⟨0, 2⟩

def cellA3B6 : CellData where
  inverse := 638
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 1⟩
    else ⟨0, 0⟩

def cellA3B7 : CellData where
  inverse := 1367
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA3B8 : CellData where
  inverse := 5741
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B9 : CellData where
  inverse := 12302
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B10 : CellData where
  inverse := 51668
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B11 : CellData where
  inverse := 110717
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B12 : CellData where
  inverse := 465011
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B13 : CellData where
  inverse := 996452
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B14 : CellData where
  inverse := 4185098
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B15 : CellData where
  inverse := 8968067
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B16 : CellData where
  inverse := 37665881
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B17 : CellData where
  inverse := 80712602
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 47⟩
    else if d = (4 : ℤ) then ⟨0, 47⟩
    else if d = (7 : ℤ) then ⟨0, 47⟩
    else if d = (10 : ℤ) then ⟨0, 47⟩
    else ⟨0, 46⟩

def cellA4B2 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 47⟩
    else if d = (-2 : ℤ) then ⟨0, 47⟩
    else if d = (3 : ℤ) then ⟨0, 47⟩
    else if d = (5 : ℤ) then ⟨0, 47⟩
    else if d = (7 : ℤ) then ⟨0, 47⟩
    else ⟨0, 46⟩

def cellA4B3 : CellData where
  inverse := 22
  bounds := fun _ => ⟨0, 27⟩

def cellA4B4 : CellData where
  inverse := 76
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 9⟩
    else if d = (-4 : ℤ) then ⟨0, 9⟩
    else if d = (-3 : ℤ) then ⟨0, 9⟩
    else if d = (-2 : ℤ) then ⟨0, 9⟩
    else if d = (-1 : ℤ) then ⟨0, 9⟩
    else ⟨0, 8⟩

def cellA4B5 : CellData where
  inverse := 76
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 3⟩
    else ⟨0, 2⟩

def cellA4B6 : CellData where
  inverse := 319
  bounds := fun _ => ⟨0, 0⟩

def cellA4B7 : CellData where
  inverse := 1777
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B8 : CellData where
  inverse := 6151
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B9 : CellData where
  inverse := 6151
  bounds := fun _ => ⟨0, -1⟩

def cellA4B10 : CellData where
  inverse := 25834
  bounds := fun _ => ⟨0, -1⟩

def cellA4B11 : CellData where
  inverse := 143932
  bounds := fun _ => ⟨0, -1⟩

def cellA4B12 : CellData where
  inverse := 498226
  bounds := fun _ => ⟨0, -1⟩

def cellA4B13 : CellData where
  inverse := 498226
  bounds := fun _ => ⟨0, -1⟩

def cellA4B14 : CellData where
  inverse := 2092549
  bounds := fun _ => ⟨0, -1⟩

def cellA4B15 : CellData where
  inverse := 11658487
  bounds := fun _ => ⟨0, -1⟩

def cellA4B16 : CellData where
  inverse := 40356301
  bounds := fun _ => ⟨0, -1⟩

def cellA4B17 : CellData where
  inverse := 40356301
  bounds := fun _ => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 22⟩
    else if d = (-8 : ℤ) then ⟨0, 22⟩
    else if d = (-6 : ℤ) then ⟨0, 22⟩
    else if d = (-5 : ℤ) then ⟨0, 22⟩
    else if d = (-3 : ℤ) then ⟨0, 22⟩
    else if d = (-2 : ℤ) then ⟨0, 22⟩
    else if d = (0 : ℤ) then ⟨0, 22⟩
    else if d = (3 : ℤ) then ⟨0, 22⟩
    else if d = (6 : ℤ) then ⟨0, 22⟩
    else if d = (9 : ℤ) then ⟨0, 22⟩
    else ⟨0, 23⟩

def cellA5B2 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 22⟩
    else if d = (-9 : ℤ) then ⟨0, 22⟩
    else if d = (-6 : ℤ) then ⟨0, 22⟩
    else if d = (-5 : ℤ) then ⟨0, 22⟩
    else if d = (-1 : ℤ) then ⟨0, 22⟩
    else if d = (0 : ℤ) then ⟨0, 22⟩
    else if d = (4 : ℤ) then ⟨0, 22⟩
    else if d = (8 : ℤ) then ⟨0, 22⟩
    else if d = (9 : ℤ) then ⟨0, 22⟩
    else ⟨0, 23⟩

def cellA5B3 : CellData where
  inverse := 11
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 22⟩
    else if d = (-8 : ℤ) then ⟨0, 22⟩
    else if d = (-5 : ℤ) then ⟨0, 22⟩
    else if d = (-3 : ℤ) then ⟨0, 22⟩
    else if d = (0 : ℤ) then ⟨0, 22⟩
    else if d = (2 : ℤ) then ⟨0, 22⟩
    else if d = (7 : ℤ) then ⟨0, 22⟩
    else ⟨0, 23⟩

def cellA5B4 : CellData where
  inverse := 38
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 9⟩
    else if d = (-8 : ℤ) then ⟨0, 9⟩
    else if d = (-6 : ℤ) then ⟨0, 9⟩
    else if d = (-4 : ℤ) then ⟨0, 9⟩
    else if d = (-2 : ℤ) then ⟨0, 9⟩
    else if d = (5 : ℤ) then ⟨0, 9⟩
    else if d = (7 : ℤ) then ⟨0, 9⟩
    else if d = (9 : ℤ) then ⟨0, 9⟩
    else ⟨0, 8⟩

def cellA5B5 : CellData where
  inverse := 38
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 3⟩
    else if d = (7 : ℤ) then ⟨0, 3⟩
    else ⟨0, 2⟩

def cellA5B6 : CellData where
  inverse := 524
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA5B7 : CellData where
  inverse := 1982
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B8 : CellData where
  inverse := 6356
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B9 : CellData where
  inverse := 12917
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B10 : CellData where
  inverse := 12917
  bounds := fun _ => ⟨0, -1⟩

def cellA5B11 : CellData where
  inverse := 71966
  bounds := fun _ => ⟨0, -1⟩

def cellA5B12 : CellData where
  inverse := 249113
  bounds := fun _ => ⟨0, -1⟩

def cellA5B13 : CellData where
  inverse := 249113
  bounds := fun _ => ⟨0, -1⟩

def cellA5B14 : CellData where
  inverse := 3437759
  bounds := fun _ => ⟨0, -1⟩

def cellA5B15 : CellData where
  inverse := 13003697
  bounds := fun _ => ⟨0, -1⟩

def cellA5B16 : CellData where
  inverse := 41701511
  bounds := fun _ => ⟨0, -1⟩

def cellA5B17 : CellData where
  inverse := 84748232
  bounds := fun _ => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 10⟩
    else if d = (-6 : ℤ) then ⟨0, 10⟩
    else if d = (-3 : ℤ) then ⟨0, 10⟩
    else if d = (0 : ℤ) then ⟨0, 10⟩
    else if d = (3 : ℤ) then ⟨0, 10⟩
    else if d = (6 : ℤ) then ⟨0, 10⟩
    else if d = (9 : ℤ) then ⟨0, 10⟩
    else ⟨0, 11⟩

def cellA6B2 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 10⟩
    else if d = (-9 : ℤ) then ⟨0, 10⟩
    else if d = (-1 : ℤ) then ⟨0, 10⟩
    else if d = (0 : ℤ) then ⟨0, 10⟩
    else if d = (8 : ℤ) then ⟨0, 10⟩
    else if d = (9 : ℤ) then ⟨0, 10⟩
    else ⟨0, 11⟩

def cellA6B3 : CellData where
  inverse := 19
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 10⟩
    else if d = (-3 : ℤ) then ⟨0, 10⟩
    else if d = (0 : ℤ) then ⟨0, 10⟩
    else if d = (7 : ℤ) then ⟨0, 10⟩
    else ⟨0, 11⟩

def cellA6B4 : CellData where
  inverse := 19
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 9⟩
    else if d = (-4 : ℤ) then ⟨0, 9⟩
    else if d = (-3 : ℤ) then ⟨0, 9⟩
    else if d = (1 : ℤ) then ⟨0, 9⟩
    else if d = (5 : ℤ) then ⟨0, 9⟩
    else if d = (9 : ℤ) then ⟨0, 9⟩
    else if d = (10 : ℤ) then ⟨0, 9⟩
    else ⟨0, 8⟩

def cellA6B5 : CellData where
  inverse := 19
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 3⟩
    else ⟨0, 2⟩

def cellA6B6 : CellData where
  inverse := 262
  bounds := fun _ => ⟨0, 0⟩

def cellA6B7 : CellData where
  inverse := 991
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B8 : CellData where
  inverse := 3178
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B9 : CellData where
  inverse := 16300
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B10 : CellData where
  inverse := 35983
  bounds := fun _ => ⟨0, -1⟩

def cellA6B11 : CellData where
  inverse := 35983
  bounds := fun _ => ⟨0, -1⟩

def cellA6B12 : CellData where
  inverse := 390277
  bounds := fun _ => ⟨0, -1⟩

def cellA6B13 : CellData where
  inverse := 921718
  bounds := fun _ => ⟨0, -1⟩

def cellA6B14 : CellData where
  inverse := 4110364
  bounds := fun _ => ⟨0, -1⟩

def cellA6B15 : CellData where
  inverse := 13676302
  bounds := fun _ => ⟨0, -1⟩

def cellA6B16 : CellData where
  inverse := 42374116
  bounds := fun _ => ⟨0, -1⟩

def cellA6B17 : CellData where
  inverse := 42374116
  bounds := fun _ => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-6 : ℤ) then ⟨0, 4⟩
    else if d = (-3 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨0, 4⟩
    else if d = (6 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA7B2 : CellData where
  inverse := 5
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA7B3 : CellData where
  inverse := 23
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (7 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA7B4 : CellData where
  inverse := 50
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA7B5 : CellData where
  inverse := 131
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 3⟩
    else ⟨0, 2⟩

def cellA7B6 : CellData where
  inverse := 131
  bounds := fun _ => ⟨0, 0⟩

def cellA7B7 : CellData where
  inverse := 1589
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B8 : CellData where
  inverse := 1589
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B9 : CellData where
  inverse := 8150
  bounds := fun _ => ⟨0, -1⟩

def cellA7B10 : CellData where
  inverse := 47516
  bounds := fun _ => ⟨0, -1⟩

def cellA7B11 : CellData where
  inverse := 106565
  bounds := fun _ => ⟨0, -1⟩

def cellA7B12 : CellData where
  inverse := 460859
  bounds := fun _ => ⟨0, -1⟩

def cellA7B13 : CellData where
  inverse := 460859
  bounds := fun _ => ⟨0, -1⟩

def cellA7B14 : CellData where
  inverse := 2055182
  bounds := fun _ => ⟨0, -1⟩

def cellA7B15 : CellData where
  inverse := 6838151
  bounds := fun _ => ⟨0, -1⟩

def cellA7B16 : CellData where
  inverse := 21187058
  bounds := fun _ => ⟨0, -1⟩

def cellA7B17 : CellData where
  inverse := 21187058
  bounds := fun _ => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA8B2 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA8B3 : CellData where
  inverse := 25
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA8B4 : CellData where
  inverse := 25
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA8B5 : CellData where
  inverse := 187
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA8B6 : CellData where
  inverse := 430
  bounds := fun _ => ⟨0, 0⟩

def cellA8B7 : CellData where
  inverse := 1888
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B8 : CellData where
  inverse := 4075
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B9 : CellData where
  inverse := 4075
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B10 : CellData where
  inverse := 23758
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B11 : CellData where
  inverse := 141856
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B12 : CellData where
  inverse := 496150
  bounds := fun _ => ⟨0, -1⟩

def cellA8B13 : CellData where
  inverse := 1027591
  bounds := fun _ => ⟨0, -1⟩

def cellA8B14 : CellData where
  inverse := 1027591
  bounds := fun _ => ⟨0, -1⟩

def cellA8B15 : CellData where
  inverse := 10593529
  bounds := fun _ => ⟨0, -1⟩

def cellA8B16 : CellData where
  inverse := 10593529
  bounds := fun _ => ⟨0, -1⟩

def cellA8B17 : CellData where
  inverse := 10593529
  bounds := fun _ => ⟨0, -1⟩

def rowA1 (b : ℕ) : CellData :=
  if b = 1 then cellA1B1
  else if b = 2 then cellA1B2
  else if b = 3 then cellA1B3
  else if b = 4 then cellA1B4
  else if b = 5 then cellA1B5
  else if b = 6 then cellA1B6
  else if b = 7 then cellA1B7
  else if b = 8 then cellA1B8
  else if b = 9 then cellA1B9
  else if b = 10 then cellA1B10
  else if b = 11 then cellA1B11
  else if b = 12 then cellA1B12
  else if b = 13 then cellA1B13
  else if b = 14 then cellA1B14
  else if b = 15 then cellA1B15
  else if b = 16 then cellA1B16
  else if b = 17 then cellA1B17
  else outsideCell

def rowA2 (b : ℕ) : CellData :=
  if b = 1 then cellA2B1
  else if b = 2 then cellA2B2
  else if b = 3 then cellA2B3
  else if b = 4 then cellA2B4
  else if b = 5 then cellA2B5
  else if b = 6 then cellA2B6
  else if b = 7 then cellA2B7
  else if b = 8 then cellA2B8
  else if b = 9 then cellA2B9
  else if b = 10 then cellA2B10
  else if b = 11 then cellA2B11
  else if b = 12 then cellA2B12
  else if b = 13 then cellA2B13
  else if b = 14 then cellA2B14
  else if b = 15 then cellA2B15
  else if b = 16 then cellA2B16
  else if b = 17 then cellA2B17
  else outsideCell

def rowA3 (b : ℕ) : CellData :=
  if b = 1 then cellA3B1
  else if b = 2 then cellA3B2
  else if b = 3 then cellA3B3
  else if b = 4 then cellA3B4
  else if b = 5 then cellA3B5
  else if b = 6 then cellA3B6
  else if b = 7 then cellA3B7
  else if b = 8 then cellA3B8
  else if b = 9 then cellA3B9
  else if b = 10 then cellA3B10
  else if b = 11 then cellA3B11
  else if b = 12 then cellA3B12
  else if b = 13 then cellA3B13
  else if b = 14 then cellA3B14
  else if b = 15 then cellA3B15
  else if b = 16 then cellA3B16
  else if b = 17 then cellA3B17
  else outsideCell

def rowA4 (b : ℕ) : CellData :=
  if b = 1 then cellA4B1
  else if b = 2 then cellA4B2
  else if b = 3 then cellA4B3
  else if b = 4 then cellA4B4
  else if b = 5 then cellA4B5
  else if b = 6 then cellA4B6
  else if b = 7 then cellA4B7
  else if b = 8 then cellA4B8
  else if b = 9 then cellA4B9
  else if b = 10 then cellA4B10
  else if b = 11 then cellA4B11
  else if b = 12 then cellA4B12
  else if b = 13 then cellA4B13
  else if b = 14 then cellA4B14
  else if b = 15 then cellA4B15
  else if b = 16 then cellA4B16
  else if b = 17 then cellA4B17
  else outsideCell

def rowA5 (b : ℕ) : CellData :=
  if b = 1 then cellA5B1
  else if b = 2 then cellA5B2
  else if b = 3 then cellA5B3
  else if b = 4 then cellA5B4
  else if b = 5 then cellA5B5
  else if b = 6 then cellA5B6
  else if b = 7 then cellA5B7
  else if b = 8 then cellA5B8
  else if b = 9 then cellA5B9
  else if b = 10 then cellA5B10
  else if b = 11 then cellA5B11
  else if b = 12 then cellA5B12
  else if b = 13 then cellA5B13
  else if b = 14 then cellA5B14
  else if b = 15 then cellA5B15
  else if b = 16 then cellA5B16
  else if b = 17 then cellA5B17
  else outsideCell

def rowA6 (b : ℕ) : CellData :=
  if b = 1 then cellA6B1
  else if b = 2 then cellA6B2
  else if b = 3 then cellA6B3
  else if b = 4 then cellA6B4
  else if b = 5 then cellA6B5
  else if b = 6 then cellA6B6
  else if b = 7 then cellA6B7
  else if b = 8 then cellA6B8
  else if b = 9 then cellA6B9
  else if b = 10 then cellA6B10
  else if b = 11 then cellA6B11
  else if b = 12 then cellA6B12
  else if b = 13 then cellA6B13
  else if b = 14 then cellA6B14
  else if b = 15 then cellA6B15
  else if b = 16 then cellA6B16
  else if b = 17 then cellA6B17
  else outsideCell

def rowA7 (b : ℕ) : CellData :=
  if b = 1 then cellA7B1
  else if b = 2 then cellA7B2
  else if b = 3 then cellA7B3
  else if b = 4 then cellA7B4
  else if b = 5 then cellA7B5
  else if b = 6 then cellA7B6
  else if b = 7 then cellA7B7
  else if b = 8 then cellA7B8
  else if b = 9 then cellA7B9
  else if b = 10 then cellA7B10
  else if b = 11 then cellA7B11
  else if b = 12 then cellA7B12
  else if b = 13 then cellA7B13
  else if b = 14 then cellA7B14
  else if b = 15 then cellA7B15
  else if b = 16 then cellA7B16
  else if b = 17 then cellA7B17
  else outsideCell

def rowA8 (b : ℕ) : CellData :=
  if b = 1 then cellA8B1
  else if b = 2 then cellA8B2
  else if b = 3 then cellA8B3
  else if b = 4 then cellA8B4
  else if b = 5 then cellA8B5
  else if b = 6 then cellA8B6
  else if b = 7 then cellA8B7
  else if b = 8 then cellA8B8
  else if b = 9 then cellA8B9
  else if b = 10 then cellA8B10
  else if b = 11 then cellA8B11
  else if b = 12 then cellA8B12
  else if b = 13 then cellA8B13
  else if b = 14 then cellA8B14
  else if b = 15 then cellA8B15
  else if b = 16 then cellA8B16
  else if b = 17 then cellA8B17
  else outsideCell

def chunkData (a b : ℕ) : CellData :=
  if a = 1 then rowA1 b
  else if a = 2 then rowA2 b
  else if a = 3 then rowA3 b
  else if a = 4 then rowA4 b
  else if a = 5 then rowA5 b
  else if a = 6 then rowA6 b
  else if a = 7 then rowA7 b
  else if a = 8 then rowA8 b
  else outsideCell

end Math.B699.CRTStage3Pair23.Chunk000
