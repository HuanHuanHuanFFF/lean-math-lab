import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair27.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 108⟩
    else if d = (2 : ℤ) then ⟨1, 108⟩
    else if d = (4 : ℤ) then ⟨1, 107⟩
    else if d = (6 : ℤ) then ⟨1, 107⟩
    else if d = (8 : ℤ) then ⟨1, 107⟩
    else if d = (9 : ℤ) then ⟨1, 108⟩
    else if d = (10 : ℤ) then ⟨1, 107⟩
    else ⟨0, 107⟩

def cellA1B2 : CellData where
  inverse := 25
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 15⟩
    else if d = (-7 : ℤ) then ⟨0, 15⟩
    else if d = (-5 : ℤ) then ⟨0, 15⟩
    else if d = (2 : ℤ) then ⟨1, 15⟩
    else if d = (4 : ℤ) then ⟨1, 15⟩
    else if d = (6 : ℤ) then ⟨1, 15⟩
    else if d = (8 : ℤ) then ⟨1, 15⟩
    else if d = (10 : ℤ) then ⟨1, 15⟩
    else ⟨0, 14⟩

def cellA1B3 : CellData where
  inverse := 172
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 2⟩
    else if d = (4 : ℤ) then ⟨1, 2⟩
    else if d = (6 : ℤ) then ⟨1, 2⟩
    else if d = (8 : ℤ) then ⟨1, 2⟩
    else if d = (10 : ℤ) then ⟨1, 2⟩
    else ⟨0, 1⟩

def cellA1B4 : CellData where
  inverse := 1201
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B5 : CellData where
  inverse := 8404
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B6 : CellData where
  inverse := 58825
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B7 : CellData where
  inverse := 411772
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B8 : CellData where
  inverse := 2882401
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B9 : CellData where
  inverse := 20176804
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 108⟩
    else if d = (-3 : ℤ) then ⟨0, 108⟩
    else if d = (4 : ℤ) then ⟨1, 108⟩
    else if d = (8 : ℤ) then ⟨1, 107⟩
    else ⟨0, 107⟩

def cellA2B2 : CellData where
  inverse := 37
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 15⟩
    else if d = (-9 : ℤ) then ⟨0, 15⟩
    else if d = (-5 : ℤ) then ⟨0, 15⟩
    else if d = (-1 : ℤ) then ⟨0, 15⟩
    else if d = (3 : ℤ) then ⟨0, 15⟩
    else if d = (4 : ℤ) then ⟨1, 15⟩
    else if d = (7 : ℤ) then ⟨0, 15⟩
    else if d = (8 : ℤ) then ⟨1, 15⟩
    else ⟨0, 14⟩

def cellA2B3 : CellData where
  inverse := 86
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 2⟩
    else if d = (8 : ℤ) then ⟨1, 2⟩
    else ⟨0, 1⟩

def cellA2B4 : CellData where
  inverse := 1801
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B5 : CellData where
  inverse := 4202
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B6 : CellData where
  inverse := 88237
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B7 : CellData where
  inverse := 205886
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B8 : CellData where
  inverse := 4323601
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B9 : CellData where
  inverse := 10088402
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 93⟩
    else if d = (-9 : ℤ) then ⟨0, 93⟩
    else if d = (-8 : ℤ) then ⟨0, 93⟩
    else if d = (-7 : ℤ) then ⟨0, 93⟩
    else if d = (-2 : ℤ) then ⟨0, 93⟩
    else if d = (-1 : ℤ) then ⟨0, 93⟩
    else if d = (0 : ℤ) then ⟨0, 93⟩
    else if d = (6 : ℤ) then ⟨0, 93⟩
    else if d = (7 : ℤ) then ⟨0, 93⟩
    else if d = (8 : ℤ) then ⟨1, 94⟩
    else ⟨0, 94⟩

def cellA3B2 : CellData where
  inverse := 43
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 15⟩
    else if d = (-9 : ℤ) then ⟨0, 15⟩
    else if d = (-3 : ℤ) then ⟨0, 15⟩
    else if d = (-2 : ℤ) then ⟨0, 15⟩
    else if d = (-1 : ℤ) then ⟨0, 15⟩
    else if d = (5 : ℤ) then ⟨0, 15⟩
    else if d = (6 : ℤ) then ⟨0, 15⟩
    else if d = (7 : ℤ) then ⟨0, 15⟩
    else if d = (8 : ℤ) then ⟨1, 15⟩
    else ⟨0, 14⟩

def cellA3B3 : CellData where
  inverse := 43
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨1, 2⟩
    else if d = (9 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA3B4 : CellData where
  inverse := 2101
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B5 : CellData where
  inverse := 2101
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B6 : CellData where
  inverse := 102943
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B7 : CellData where
  inverse := 102943
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B8 : CellData where
  inverse := 5044201
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B9 : CellData where
  inverse := 5044201
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 47⟩
    else if d = (-3 : ℤ) then ⟨0, 47⟩
    else if d = (2 : ℤ) then ⟨0, 47⟩
    else if d = (4 : ℤ) then ⟨0, 47⟩
    else if d = (9 : ℤ) then ⟨0, 47⟩
    else ⟨0, 46⟩

def cellA4B2 : CellData where
  inverse := 46
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 15⟩
    else if d = (-6 : ℤ) then ⟨0, 15⟩
    else if d = (-5 : ℤ) then ⟨0, 15⟩
    else if d = (-4 : ℤ) then ⟨0, 15⟩
    else if d = (-3 : ℤ) then ⟨0, 15⟩
    else if d = (-2 : ℤ) then ⟨0, 15⟩
    else if d = (-1 : ℤ) then ⟨0, 15⟩
    else if d = (9 : ℤ) then ⟨0, 15⟩
    else if d = (10 : ℤ) then ⟨0, 15⟩
    else ⟨0, 14⟩

def cellA4B3 : CellData where
  inverse := 193
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (2 : ℤ) then ⟨0, 2⟩
    else if d = (9 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA4B4 : CellData where
  inverse := 2251
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B5 : CellData where
  inverse := 9454
  bounds := fun _ => ⟨0, -1⟩

def cellA4B6 : CellData where
  inverse := 110296
  bounds := fun _ => ⟨0, -1⟩

def cellA4B7 : CellData where
  inverse := 463243
  bounds := fun _ => ⟨0, -1⟩

def cellA4B8 : CellData where
  inverse := 5404501
  bounds := fun _ => ⟨0, -1⟩

def cellA4B9 : CellData where
  inverse := 22698904
  bounds := fun _ => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 22⟩
    else if d = (-7 : ℤ) then ⟨0, 22⟩
    else if d = (-4 : ℤ) then ⟨0, 22⟩
    else if d = (-1 : ℤ) then ⟨0, 22⟩
    else if d = (0 : ℤ) then ⟨0, 22⟩
    else if d = (3 : ℤ) then ⟨0, 22⟩
    else if d = (6 : ℤ) then ⟨0, 22⟩
    else if d = (7 : ℤ) then ⟨0, 22⟩
    else if d = (10 : ℤ) then ⟨0, 22⟩
    else ⟨0, 23⟩

def cellA5B2 : CellData where
  inverse := 23
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 15⟩
    else if d = (-8 : ℤ) then ⟨0, 15⟩
    else if d = (-6 : ℤ) then ⟨0, 15⟩
    else if d = (-4 : ℤ) then ⟨0, 15⟩
    else if d = (-2 : ℤ) then ⟨0, 15⟩
    else if d = (3 : ℤ) then ⟨0, 15⟩
    else if d = (5 : ℤ) then ⟨0, 15⟩
    else if d = (7 : ℤ) then ⟨0, 15⟩
    else if d = (9 : ℤ) then ⟨0, 15⟩
    else ⟨0, 14⟩

def cellA5B3 : CellData where
  inverse := 268
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (4 : ℤ) then ⟨0, 2⟩
    else if d = (9 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA5B4 : CellData where
  inverse := 2326
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B5 : CellData where
  inverse := 4727
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B6 : CellData where
  inverse := 55148
  bounds := fun _ => ⟨0, -1⟩

def cellA5B7 : CellData where
  inverse := 643393
  bounds := fun _ => ⟨0, -1⟩

def cellA5B8 : CellData where
  inverse := 5584651
  bounds := fun _ => ⟨0, -1⟩

def cellA5B9 : CellData where
  inverse := 11349452
  bounds := fun _ => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 10⟩
    else if d = (-7 : ℤ) then ⟨0, 10⟩
    else if d = (-1 : ℤ) then ⟨0, 10⟩
    else if d = (0 : ℤ) then ⟨0, 10⟩
    else if d = (6 : ℤ) then ⟨0, 10⟩
    else if d = (7 : ℤ) then ⟨0, 10⟩
    else ⟨0, 11⟩

def cellA6B2 : CellData where
  inverse := 36
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 10⟩
    else if d = (0 : ℤ) then ⟨0, 10⟩
    else if d = (4 : ℤ) then ⟨0, 10⟩
    else if d = (8 : ℤ) then ⟨0, 10⟩
    else ⟨0, 11⟩

def cellA6B3 : CellData where
  inverse := 134
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (3 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA6B4 : CellData where
  inverse := 1163
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B5 : CellData where
  inverse := 10767
  bounds := fun _ => ⟨0, -1⟩

def cellA6B6 : CellData where
  inverse := 27574
  bounds := fun _ => ⟨0, -1⟩

def cellA6B7 : CellData where
  inverse := 733468
  bounds := fun _ => ⟨0, -1⟩

def cellA6B8 : CellData where
  inverse := 5674726
  bounds := fun _ => ⟨0, -1⟩

def cellA6B9 : CellData where
  inverse := 5674726
  bounds := fun _ => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (7 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA7B2 : CellData where
  inverse := 18
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA7B3 : CellData where
  inverse := 67
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (6 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA7B4 : CellData where
  inverse := 1782
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B5 : CellData where
  inverse := 13787
  bounds := fun _ => ⟨0, -1⟩

def cellA7B6 : CellData where
  inverse := 13787
  bounds := fun _ => ⟨0, -1⟩

def cellA7B7 : CellData where
  inverse := 366734
  bounds := fun _ => ⟨0, -1⟩

def cellA7B8 : CellData where
  inverse := 2837363
  bounds := fun _ => ⟨0, -1⟩

def cellA7B9 : CellData where
  inverse := 2837363
  bounds := fun _ => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA8B2 : CellData where
  inverse := 9
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA8B3 : CellData where
  inverse := 205
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (-3 : ℤ) then ⟨0, 2⟩
    else if d = (2 : ℤ) then ⟨0, 2⟩
    else if d = (7 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA8B4 : CellData where
  inverse := 891
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B5 : CellData where
  inverse := 15297
  bounds := fun _ => ⟨0, -1⟩

def cellA8B6 : CellData where
  inverse := 65718
  bounds := fun _ => ⟨0, -1⟩

def cellA8B7 : CellData where
  inverse := 183367
  bounds := fun _ => ⟨0, -1⟩

def cellA8B8 : CellData where
  inverse := 4301082
  bounds := fun _ => ⟨0, -1⟩

def cellA8B9 : CellData where
  inverse := 21595485
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

end Math.B699.CRTStage3Pair27.Chunk000
