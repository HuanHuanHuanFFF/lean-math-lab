import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair23.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA9B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 5⟩
    else if d = (-6 : ℤ) then ⟨0, 5⟩
    else if d = (-3 : ℤ) then ⟨0, 5⟩
    else if d = (0 : ℤ) then ⟨0, 5⟩
    else if d = (3 : ℤ) then ⟨0, 5⟩
    else if d = (6 : ℤ) then ⟨0, 5⟩
    else if d = (9 : ℤ) then ⟨0, 5⟩
    else ⟨0, 6⟩

def cellA9B2 : CellData where
  inverse := 8
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 5⟩
    else if d = (0 : ℤ) then ⟨0, 5⟩
    else if d = (9 : ℤ) then ⟨0, 5⟩
    else ⟨0, 6⟩

def cellA9B3 : CellData where
  inverse := 26
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 5⟩
    else if d = (1 : ℤ) then ⟨0, 5⟩
    else ⟨0, 6⟩

def cellA9B4 : CellData where
  inverse := 53
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 5⟩
    else if d = (3 : ℤ) then ⟨0, 5⟩
    else ⟨0, 6⟩

def cellA9B5 : CellData where
  inverse := 215
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 5⟩
    else if d = (9 : ℤ) then ⟨0, 5⟩
    else ⟨0, 6⟩

def cellA9B6 : CellData where
  inverse := 215
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (3 : ℤ) then ⟨0, 3⟩
    else if d = (10 : ℤ) then ⟨0, 3⟩
    else ⟨0, 4⟩

def cellA9B7 : CellData where
  inverse := 944
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA9B8 : CellData where
  inverse := 5318
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (-3 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (2 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (7 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA9B9 : CellData where
  inverse := 11879
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA9B10 : CellData where
  inverse := 11879
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA9B11 : CellData where
  inverse := 70928
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA9B12 : CellData where
  inverse := 248075
  bounds := fun _ => ⟨0, -1⟩

def cellA9B13 : CellData where
  inverse := 1310957
  bounds := fun _ => ⟨0, -1⟩

def cellA9B14 : CellData where
  inverse := 2905280
  bounds := fun _ => ⟨0, -1⟩

def cellA9B15 : CellData where
  inverse := 12471218
  bounds := fun _ => ⟨0, -1⟩

def cellA9B16 : CellData where
  inverse := 26820125
  bounds := fun _ => ⟨0, -1⟩

def cellA9B17 : CellData where
  inverse := 69866846
  bounds := fun _ => ⟨0, -1⟩

def cellA9B18 : CellData where
  inverse := 199007009
  bounds := fun _ => ⟨0, -1⟩

def cellA9B19 : CellData where
  inverse := 973847987
  bounds := fun _ => ⟨0, -1⟩

def cellA9B20 : CellData where
  inverse := 973847987
  bounds := fun _ => ⟨0, -1⟩

def cellA9B21 : CellData where
  inverse := 7947416789
  bounds := fun _ => ⟨0, -1⟩

def cellA9B22 : CellData where
  inverse := 28868123195
  bounds := fun _ => ⟨0, -1⟩

def cellA9B23 : CellData where
  inverse := 28868123195
  bounds := fun _ => ⟨0, -1⟩

def cellA9B24 : CellData where
  inverse := 123011302022
  bounds := fun _ => ⟨0, -1⟩

def cellA10B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 3⟩
    else if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (-2 : ℤ) then ⟨0, 3⟩
    else if d = (1 : ℤ) then ⟨0, 3⟩
    else if d = (4 : ℤ) then ⟨0, 3⟩
    else if d = (7 : ℤ) then ⟨0, 3⟩
    else if d = (10 : ℤ) then ⟨0, 3⟩
    else ⟨0, 2⟩

def cellA10B2 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 3⟩
    else if d = (-6 : ℤ) then ⟨0, 3⟩
    else if d = (-4 : ℤ) then ⟨0, 3⟩
    else if d = (-2 : ℤ) then ⟨0, 3⟩
    else if d = (1 : ℤ) then ⟨0, 3⟩
    else if d = (3 : ℤ) then ⟨0, 3⟩
    else if d = (5 : ℤ) then ⟨0, 3⟩
    else if d = (7 : ℤ) then ⟨0, 3⟩
    else if d = (10 : ℤ) then ⟨0, 3⟩
    else ⟨0, 2⟩

def cellA10B3 : CellData where
  inverse := 13
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3⟩
    else if d = (-8 : ℤ) then ⟨0, 3⟩
    else if d = (-6 : ℤ) then ⟨0, 3⟩
    else if d = (-4 : ℤ) then ⟨0, 3⟩
    else if d = (-2 : ℤ) then ⟨0, 3⟩
    else if d = (3 : ℤ) then ⟨0, 3⟩
    else if d = (5 : ℤ) then ⟨0, 3⟩
    else if d = (7 : ℤ) then ⟨0, 3⟩
    else if d = (9 : ℤ) then ⟨0, 3⟩
    else ⟨0, 2⟩

def cellA10B4 : CellData where
  inverse := 67
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 3⟩
    else if d = (-7 : ℤ) then ⟨0, 3⟩
    else if d = (-6 : ℤ) then ⟨0, 3⟩
    else if d = (-2 : ℤ) then ⟨0, 3⟩
    else if d = (-1 : ℤ) then ⟨0, 3⟩
    else if d = (4 : ℤ) then ⟨0, 3⟩
    else if d = (5 : ℤ) then ⟨0, 3⟩
    else if d = (9 : ℤ) then ⟨0, 3⟩
    else if d = (10 : ℤ) then ⟨0, 3⟩
    else ⟨0, 2⟩

def cellA10B5 : CellData where
  inverse := 229
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 3⟩
    else if d = (-7 : ℤ) then ⟨0, 3⟩
    else if d = (-6 : ℤ) then ⟨0, 3⟩
    else if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (-4 : ℤ) then ⟨0, 3⟩
    else if d = (-3 : ℤ) then ⟨0, 3⟩
    else if d = (-2 : ℤ) then ⟨0, 3⟩
    else if d = (-1 : ℤ) then ⟨0, 3⟩
    else if d = (10 : ℤ) then ⟨0, 3⟩
    else ⟨0, 2⟩

def cellA10B6 : CellData where
  inverse := 472
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 3⟩
    else if d = (-6 : ℤ) then ⟨0, 3⟩
    else if d = (-4 : ℤ) then ⟨0, 3⟩
    else if d = (-3 : ℤ) then ⟨0, 3⟩
    else if d = (-1 : ℤ) then ⟨0, 3⟩
    else if d = (2 : ℤ) then ⟨0, 3⟩
    else if d = (5 : ℤ) then ⟨0, 3⟩
    else if d = (8 : ℤ) then ⟨0, 3⟩
    else ⟨0, 2⟩

def cellA10B7 : CellData where
  inverse := 472
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA10B8 : CellData where
  inverse := 2659
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA10B9 : CellData where
  inverse := 15781
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA10B10 : CellData where
  inverse := 35464
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA10B11 : CellData where
  inverse := 35464
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA10B12 : CellData where
  inverse := 389758
  bounds := fun _ => ⟨0, -1⟩

def cellA10B13 : CellData where
  inverse := 1452640
  bounds := fun _ => ⟨0, -1⟩

def cellA10B14 : CellData where
  inverse := 1452640
  bounds := fun _ => ⟨0, -1⟩

def cellA10B15 : CellData where
  inverse := 6235609
  bounds := fun _ => ⟨0, -1⟩

def cellA10B16 : CellData where
  inverse := 34933423
  bounds := fun _ => ⟨0, -1⟩

def cellA10B17 : CellData where
  inverse := 34933423
  bounds := fun _ => ⟨0, -1⟩

def cellA10B18 : CellData where
  inverse := 293213749
  bounds := fun _ => ⟨0, -1⟩

def cellA10B19 : CellData where
  inverse := 1068054727
  bounds := fun _ => ⟨0, -1⟩

def cellA10B20 : CellData where
  inverse := 2230316194
  bounds := fun _ => ⟨0, -1⟩

def cellA10B21 : CellData where
  inverse := 9203884996
  bounds := fun _ => ⟨0, -1⟩

def cellA10B22 : CellData where
  inverse := 30124591402
  bounds := fun _ => ⟨0, -1⟩

def cellA10B23 : CellData where
  inverse := 61505651011
  bounds := fun _ => ⟨0, -1⟩

def cellA10B24 : CellData where
  inverse := 61505651011
  bounds := fun _ => ⟨0, -1⟩

def cellA11B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA11B2 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA11B3 : CellData where
  inverse := 20
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA11B4 : CellData where
  inverse := 74
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA11B5 : CellData where
  inverse := 236
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA11B6 : CellData where
  inverse := 236
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA11B7 : CellData where
  inverse := 236
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA11B8 : CellData where
  inverse := 4610
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (-3 : ℤ) then ⟨0, -1⟩
    else if d = (-2 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else if d = (7 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA11B9 : CellData where
  inverse := 17732
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA11B10 : CellData where
  inverse := 17732
  bounds := fun d =>
    if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA11B11 : CellData where
  inverse := 17732
  bounds := fun d =>
    if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA11B12 : CellData where
  inverse := 194879
  bounds := fun _ => ⟨0, -1⟩

def cellA11B13 : CellData where
  inverse := 726320
  bounds := fun _ => ⟨0, -1⟩

def cellA11B14 : CellData where
  inverse := 726320
  bounds := fun _ => ⟨0, -1⟩

def cellA11B15 : CellData where
  inverse := 10292258
  bounds := fun _ => ⟨0, -1⟩

def cellA11B16 : CellData where
  inverse := 38990072
  bounds := fun _ => ⟨0, -1⟩

def cellA11B17 : CellData where
  inverse := 82036793
  bounds := fun _ => ⟨0, -1⟩

def cellA11B18 : CellData where
  inverse := 340317119
  bounds := fun _ => ⟨0, -1⟩

def cellA11B19 : CellData where
  inverse := 1115158097
  bounds := fun _ => ⟨0, -1⟩

def cellA11B20 : CellData where
  inverse := 1115158097
  bounds := fun _ => ⟨0, -1⟩

def cellA11B21 : CellData where
  inverse := 4601942498
  bounds := fun _ => ⟨0, -1⟩

def cellA11B22 : CellData where
  inverse := 15062295701
  bounds := fun _ => ⟨0, -1⟩

def cellA11B23 : CellData where
  inverse := 77824414919
  bounds := fun _ => ⟨0, -1⟩

def cellA11B24 : CellData where
  inverse := 171967593746
  bounds := fun _ => ⟨0, -1⟩

def cellA12B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (-3 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA12B2 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-1 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA12B3 : CellData where
  inverse := 10
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA12B4 : CellData where
  inverse := 37
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (2 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA12B5 : CellData where
  inverse := 118
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (2 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA12B6 : CellData where
  inverse := 118
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA12B7 : CellData where
  inverse := 118
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, -1⟩
    else if d = (-1 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA12B8 : CellData where
  inverse := 2305
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (-3 : ℤ) then ⟨0, -1⟩
    else if d = (-1 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (2 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA12B9 : CellData where
  inverse := 8866
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA12B10 : CellData where
  inverse := 8866
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA12B11 : CellData where
  inverse := 8866
  bounds := fun _ => ⟨0, -1⟩

def cellA12B12 : CellData where
  inverse := 363160
  bounds := fun _ => ⟨0, -1⟩

def cellA12B13 : CellData where
  inverse := 363160
  bounds := fun _ => ⟨0, -1⟩

def cellA12B14 : CellData where
  inverse := 363160
  bounds := fun _ => ⟨0, -1⟩

def cellA12B15 : CellData where
  inverse := 5146129
  bounds := fun _ => ⟨0, -1⟩

def cellA12B16 : CellData where
  inverse := 19495036
  bounds := fun _ => ⟨0, -1⟩

def cellA12B17 : CellData where
  inverse := 105588478
  bounds := fun _ => ⟨0, -1⟩

def cellA12B18 : CellData where
  inverse := 363868804
  bounds := fun _ => ⟨0, -1⟩

def cellA12B19 : CellData where
  inverse := 1138709782
  bounds := fun _ => ⟨0, -1⟩

def cellA12B20 : CellData where
  inverse := 2300971249
  bounds := fun _ => ⟨0, -1⟩

def cellA12B21 : CellData where
  inverse := 2300971249
  bounds := fun _ => ⟨0, -1⟩

def cellA12B22 : CellData where
  inverse := 23221677655
  bounds := fun _ => ⟨0, -1⟩

def cellA12B23 : CellData where
  inverse := 85983796873
  bounds := fun _ => ⟨0, -1⟩

def cellA12B24 : CellData where
  inverse := 85983796873
  bounds := fun _ => ⟨0, -1⟩

def cellA13B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B2 : CellData where
  inverse := 5
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B3 : CellData where
  inverse := 5
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B4 : CellData where
  inverse := 59
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B5 : CellData where
  inverse := 59
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B6 : CellData where
  inverse := 59
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B7 : CellData where
  inverse := 59
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B8 : CellData where
  inverse := 4433
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B9 : CellData where
  inverse := 4433
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B10 : CellData where
  inverse := 4433
  bounds := fun _ => ⟨0, -1⟩

def cellA13B11 : CellData where
  inverse := 4433
  bounds := fun _ => ⟨0, -1⟩

def cellA13B12 : CellData where
  inverse := 181580
  bounds := fun _ => ⟨0, -1⟩

def cellA13B13 : CellData where
  inverse := 181580
  bounds := fun _ => ⟨0, -1⟩

def cellA13B14 : CellData where
  inverse := 181580
  bounds := fun _ => ⟨0, -1⟩

def cellA13B15 : CellData where
  inverse := 9747518
  bounds := fun _ => ⟨0, -1⟩

def cellA13B16 : CellData where
  inverse := 9747518
  bounds := fun _ => ⟨0, -1⟩

def cellA13B17 : CellData where
  inverse := 52794239
  bounds := fun _ => ⟨0, -1⟩

def cellA13B18 : CellData where
  inverse := 181934402
  bounds := fun _ => ⟨0, -1⟩

def cellA13B19 : CellData where
  inverse := 569354891
  bounds := fun _ => ⟨0, -1⟩

def cellA13B20 : CellData where
  inverse := 2893877825
  bounds := fun _ => ⟨0, -1⟩

def cellA13B21 : CellData where
  inverse := 6380662226
  bounds := fun _ => ⟨0, -1⟩

def cellA13B22 : CellData where
  inverse := 27301368632
  bounds := fun _ => ⟨0, -1⟩

def cellA13B23 : CellData where
  inverse := 90063487850
  bounds := fun _ => ⟨0, -1⟩

def cellA13B24 : CellData where
  inverse := 184206666677
  bounds := fun _ => ⟨0, -1⟩

def cellA14B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA14B2 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B3 : CellData where
  inverse := 16
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B4 : CellData where
  inverse := 70
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B5 : CellData where
  inverse := 151
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B6 : CellData where
  inverse := 394
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B7 : CellData where
  inverse := 1123
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B8 : CellData where
  inverse := 5497
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B9 : CellData where
  inverse := 12058
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B10 : CellData where
  inverse := 31741
  bounds := fun _ => ⟨0, -1⟩

def cellA14B11 : CellData where
  inverse := 90790
  bounds := fun _ => ⟨0, -1⟩

def cellA14B12 : CellData where
  inverse := 90790
  bounds := fun _ => ⟨0, -1⟩

def cellA14B13 : CellData where
  inverse := 90790
  bounds := fun _ => ⟨0, -1⟩

def cellA14B14 : CellData where
  inverse := 90790
  bounds := fun _ => ⟨0, -1⟩

def cellA14B15 : CellData where
  inverse := 4873759
  bounds := fun _ => ⟨0, -1⟩

def cellA14B16 : CellData where
  inverse := 4873759
  bounds := fun _ => ⟨0, -1⟩

def cellA14B17 : CellData where
  inverse := 90967201
  bounds := fun _ => ⟨0, -1⟩

def cellA14B18 : CellData where
  inverse := 90967201
  bounds := fun _ => ⟨0, -1⟩

def cellA14B19 : CellData where
  inverse := 865808179
  bounds := fun _ => ⟨0, -1⟩

def cellA14B20 : CellData where
  inverse := 3190331113
  bounds := fun _ => ⟨0, -1⟩

def cellA14B21 : CellData where
  inverse := 3190331113
  bounds := fun _ => ⟨0, -1⟩

def cellA14B22 : CellData where
  inverse := 13650684316
  bounds := fun _ => ⟨0, -1⟩

def cellA14B23 : CellData where
  inverse := 45031743925
  bounds := fun _ => ⟨0, -1⟩

def cellA14B24 : CellData where
  inverse := 233318101579
  bounds := fun _ => ⟨0, -1⟩

def cellA15B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA15B2 : CellData where
  inverse := 8
  bounds := fun _ => ⟨0, -1⟩

def cellA15B3 : CellData where
  inverse := 8
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B4 : CellData where
  inverse := 35
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B5 : CellData where
  inverse := 197
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B6 : CellData where
  inverse := 197
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B7 : CellData where
  inverse := 1655
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B8 : CellData where
  inverse := 6029
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B9 : CellData where
  inverse := 6029
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B10 : CellData where
  inverse := 45395
  bounds := fun _ => ⟨0, -1⟩

def cellA15B11 : CellData where
  inverse := 45395
  bounds := fun _ => ⟨0, -1⟩

def cellA15B12 : CellData where
  inverse := 45395
  bounds := fun _ => ⟨0, -1⟩

def cellA15B13 : CellData where
  inverse := 45395
  bounds := fun _ => ⟨0, -1⟩

def cellA15B14 : CellData where
  inverse := 45395
  bounds := fun _ => ⟨0, -1⟩

def cellA15B15 : CellData where
  inverse := 9611333
  bounds := fun _ => ⟨0, -1⟩

def cellA15B16 : CellData where
  inverse := 23960240
  bounds := fun _ => ⟨0, -1⟩

def cellA15B17 : CellData where
  inverse := 110053682
  bounds := fun _ => ⟨0, -1⟩

def cellA15B18 : CellData where
  inverse := 239193845
  bounds := fun _ => ⟨0, -1⟩

def cellA15B19 : CellData where
  inverse := 1014034823
  bounds := fun _ => ⟨0, -1⟩

def cellA15B20 : CellData where
  inverse := 3338557757
  bounds := fun _ => ⟨0, -1⟩

def cellA15B21 : CellData where
  inverse := 6825342158
  bounds := fun _ => ⟨0, -1⟩

def cellA15B22 : CellData where
  inverse := 6825342158
  bounds := fun _ => ⟨0, -1⟩

def cellA15B23 : CellData where
  inverse := 69587461376
  bounds := fun _ => ⟨0, -1⟩

def cellA15B24 : CellData where
  inverse := 257873819030
  bounds := fun _ => ⟨0, -1⟩

def cellA16B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA16B2 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, -1⟩

def cellA16B3 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA16B4 : CellData where
  inverse := 58
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA16B5 : CellData where
  inverse := 220
  bounds := fun d =>
    if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA16B6 : CellData where
  inverse := 463
  bounds := fun _ => ⟨0, -1⟩

def cellA16B7 : CellData where
  inverse := 1921
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA16B8 : CellData where
  inverse := 6295
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA16B9 : CellData where
  inverse := 12856
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA16B10 : CellData where
  inverse := 52222
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA16B11 : CellData where
  inverse := 111271
  bounds := fun _ => ⟨0, -1⟩

def cellA16B12 : CellData where
  inverse := 288418
  bounds := fun _ => ⟨0, -1⟩

def cellA16B13 : CellData where
  inverse := 819859
  bounds := fun _ => ⟨0, -1⟩

def cellA16B14 : CellData where
  inverse := 2414182
  bounds := fun _ => ⟨0, -1⟩

def cellA16B15 : CellData where
  inverse := 11980120
  bounds := fun _ => ⟨0, -1⟩

def cellA16B16 : CellData where
  inverse := 11980120
  bounds := fun _ => ⟨0, -1⟩

def cellA16B17 : CellData where
  inverse := 55026841
  bounds := fun _ => ⟨0, -1⟩

def cellA16B18 : CellData where
  inverse := 313307167
  bounds := fun _ => ⟨0, -1⟩

def cellA16B19 : CellData where
  inverse := 1088148145
  bounds := fun _ => ⟨0, -1⟩

def cellA16B20 : CellData where
  inverse := 3412671079
  bounds := fun _ => ⟨0, -1⟩

def cellA16B21 : CellData where
  inverse := 3412671079
  bounds := fun _ => ⟨0, -1⟩

def cellA16B22 : CellData where
  inverse := 3412671079
  bounds := fun _ => ⟨0, -1⟩

def cellA16B23 : CellData where
  inverse := 34793730688
  bounds := fun _ => ⟨0, -1⟩

def cellA16B24 : CellData where
  inverse := 128936909515
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
  else if b = 10 then cellA9B10
  else if b = 11 then cellA9B11
  else if b = 12 then cellA9B12
  else if b = 13 then cellA9B13
  else if b = 14 then cellA9B14
  else if b = 15 then cellA9B15
  else if b = 16 then cellA9B16
  else if b = 17 then cellA9B17
  else if b = 18 then cellA9B18
  else if b = 19 then cellA9B19
  else if b = 20 then cellA9B20
  else if b = 21 then cellA9B21
  else if b = 22 then cellA9B22
  else if b = 23 then cellA9B23
  else if b = 24 then cellA9B24
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
  else if b = 10 then cellA10B10
  else if b = 11 then cellA10B11
  else if b = 12 then cellA10B12
  else if b = 13 then cellA10B13
  else if b = 14 then cellA10B14
  else if b = 15 then cellA10B15
  else if b = 16 then cellA10B16
  else if b = 17 then cellA10B17
  else if b = 18 then cellA10B18
  else if b = 19 then cellA10B19
  else if b = 20 then cellA10B20
  else if b = 21 then cellA10B21
  else if b = 22 then cellA10B22
  else if b = 23 then cellA10B23
  else if b = 24 then cellA10B24
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
  else if b = 10 then cellA11B10
  else if b = 11 then cellA11B11
  else if b = 12 then cellA11B12
  else if b = 13 then cellA11B13
  else if b = 14 then cellA11B14
  else if b = 15 then cellA11B15
  else if b = 16 then cellA11B16
  else if b = 17 then cellA11B17
  else if b = 18 then cellA11B18
  else if b = 19 then cellA11B19
  else if b = 20 then cellA11B20
  else if b = 21 then cellA11B21
  else if b = 22 then cellA11B22
  else if b = 23 then cellA11B23
  else if b = 24 then cellA11B24
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
  else if b = 10 then cellA12B10
  else if b = 11 then cellA12B11
  else if b = 12 then cellA12B12
  else if b = 13 then cellA12B13
  else if b = 14 then cellA12B14
  else if b = 15 then cellA12B15
  else if b = 16 then cellA12B16
  else if b = 17 then cellA12B17
  else if b = 18 then cellA12B18
  else if b = 19 then cellA12B19
  else if b = 20 then cellA12B20
  else if b = 21 then cellA12B21
  else if b = 22 then cellA12B22
  else if b = 23 then cellA12B23
  else if b = 24 then cellA12B24
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
  else if b = 10 then cellA13B10
  else if b = 11 then cellA13B11
  else if b = 12 then cellA13B12
  else if b = 13 then cellA13B13
  else if b = 14 then cellA13B14
  else if b = 15 then cellA13B15
  else if b = 16 then cellA13B16
  else if b = 17 then cellA13B17
  else if b = 18 then cellA13B18
  else if b = 19 then cellA13B19
  else if b = 20 then cellA13B20
  else if b = 21 then cellA13B21
  else if b = 22 then cellA13B22
  else if b = 23 then cellA13B23
  else if b = 24 then cellA13B24
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
  else if b = 10 then cellA14B10
  else if b = 11 then cellA14B11
  else if b = 12 then cellA14B12
  else if b = 13 then cellA14B13
  else if b = 14 then cellA14B14
  else if b = 15 then cellA14B15
  else if b = 16 then cellA14B16
  else if b = 17 then cellA14B17
  else if b = 18 then cellA14B18
  else if b = 19 then cellA14B19
  else if b = 20 then cellA14B20
  else if b = 21 then cellA14B21
  else if b = 22 then cellA14B22
  else if b = 23 then cellA14B23
  else if b = 24 then cellA14B24
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
  else if b = 10 then cellA15B10
  else if b = 11 then cellA15B11
  else if b = 12 then cellA15B12
  else if b = 13 then cellA15B13
  else if b = 14 then cellA15B14
  else if b = 15 then cellA15B15
  else if b = 16 then cellA15B16
  else if b = 17 then cellA15B17
  else if b = 18 then cellA15B18
  else if b = 19 then cellA15B19
  else if b = 20 then cellA15B20
  else if b = 21 then cellA15B21
  else if b = 22 then cellA15B22
  else if b = 23 then cellA15B23
  else if b = 24 then cellA15B24
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
  else if b = 10 then cellA16B10
  else if b = 11 then cellA16B11
  else if b = 12 then cellA16B12
  else if b = 13 then cellA16B13
  else if b = 14 then cellA16B14
  else if b = 15 then cellA16B15
  else if b = 16 then cellA16B16
  else if b = 17 then cellA16B17
  else if b = 18 then cellA16B18
  else if b = 19 then cellA16B19
  else if b = 20 then cellA16B20
  else if b = 21 then cellA16B21
  else if b = 22 then cellA16B22
  else if b = 23 then cellA16B23
  else if b = 24 then cellA16B24
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

end Math.B699.CRTStage2Pair23.Chunk001
