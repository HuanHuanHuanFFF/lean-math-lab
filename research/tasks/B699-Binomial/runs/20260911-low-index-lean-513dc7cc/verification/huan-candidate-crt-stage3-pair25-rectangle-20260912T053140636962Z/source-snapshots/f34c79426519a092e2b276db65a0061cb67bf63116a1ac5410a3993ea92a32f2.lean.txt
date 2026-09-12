import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair25.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA9B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (4 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA9B2 : CellData where
  inverse := 23
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA9B3 : CellData where
  inverse := 73
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (4 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA9B4 : CellData where
  inverse := 448
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA9B5 : CellData where
  inverse := 2948
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA9B6 : CellData where
  inverse := 6073
  bounds := fun _ => ⟨0, -1⟩

def cellA9B7 : CellData where
  inverse := 52948
  bounds := fun _ => ⟨0, -1⟩

def cellA9B8 : CellData where
  inverse := 365448
  bounds := fun _ => ⟨0, -1⟩

def cellA9B9 : CellData where
  inverse := 1537323
  bounds := fun _ => ⟨0, -1⟩

def cellA9B10 : CellData where
  inverse := 3490448
  bounds := fun _ => ⟨0, -1⟩

def cellA9B11 : CellData where
  inverse := 13256073
  bounds := fun _ => ⟨0, -1⟩

def cellA10B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (10 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA10B2 : CellData where
  inverse := 24
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (2 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA10B3 : CellData where
  inverse := 99
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (10 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA10B4 : CellData where
  inverse := 224
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (-3 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA10B5 : CellData where
  inverse := 1474
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA10B6 : CellData where
  inverse := 10849
  bounds := fun _ => ⟨0, -1⟩

def cellA10B7 : CellData where
  inverse := 26474
  bounds := fun _ => ⟨0, -1⟩

def cellA10B8 : CellData where
  inverse := 182724
  bounds := fun _ => ⟨0, -1⟩

def cellA10B9 : CellData where
  inverse := 1745224
  bounds := fun _ => ⟨0, -1⟩

def cellA10B10 : CellData where
  inverse := 1745224
  bounds := fun _ => ⟨0, -1⟩

def cellA10B11 : CellData where
  inverse := 31042099
  bounds := fun _ => ⟨0, -1⟩

def cellA11B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA11B2 : CellData where
  inverse := 12
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA11B3 : CellData where
  inverse := 112
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA11B4 : CellData where
  inverse := 112
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA11B5 : CellData where
  inverse := 737
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA11B6 : CellData where
  inverse := 13237
  bounds := fun _ => ⟨0, -1⟩

def cellA11B7 : CellData where
  inverse := 13237
  bounds := fun _ => ⟨0, -1⟩

def cellA11B8 : CellData where
  inverse := 91362
  bounds := fun _ => ⟨0, -1⟩

def cellA11B9 : CellData where
  inverse := 872612
  bounds := fun _ => ⟨0, -1⟩

def cellA11B10 : CellData where
  inverse := 872612
  bounds := fun _ => ⟨0, -1⟩

def cellA11B11 : CellData where
  inverse := 39935112
  bounds := fun _ => ⟨0, -1⟩

def cellA12B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA12B2 : CellData where
  inverse := 6
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA12B3 : CellData where
  inverse := 56
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA12B4 : CellData where
  inverse := 56
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA12B5 : CellData where
  inverse := 1931
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA12B6 : CellData where
  inverse := 14431
  bounds := fun _ => ⟨0, -1⟩

def cellA12B7 : CellData where
  inverse := 45681
  bounds := fun _ => ⟨0, -1⟩

def cellA12B8 : CellData where
  inverse := 45681
  bounds := fun _ => ⟨0, -1⟩

def cellA12B9 : CellData where
  inverse := 436306
  bounds := fun _ => ⟨0, -1⟩

def cellA12B10 : CellData where
  inverse := 436306
  bounds := fun _ => ⟨0, -1⟩

def cellA12B11 : CellData where
  inverse := 19967556
  bounds := fun _ => ⟨0, -1⟩

def cellA13B1 : CellData where
  inverse := 3
  bounds := fun _ => ⟨0, -1⟩

def cellA13B2 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B3 : CellData where
  inverse := 28
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B4 : CellData where
  inverse := 28
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B5 : CellData where
  inverse := 2528
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B6 : CellData where
  inverse := 15028
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B7 : CellData where
  inverse := 61903
  bounds := fun _ => ⟨0, -1⟩

def cellA13B8 : CellData where
  inverse := 218153
  bounds := fun _ => ⟨0, -1⟩

def cellA13B9 : CellData where
  inverse := 218153
  bounds := fun _ => ⟨0, -1⟩

def cellA13B10 : CellData where
  inverse := 218153
  bounds := fun _ => ⟨0, -1⟩

def cellA13B11 : CellData where
  inverse := 9983778
  bounds := fun _ => ⟨0, -1⟩

def cellA14B1 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, -1⟩

def cellA14B2 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B3 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B4 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B5 : CellData where
  inverse := 1264
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B6 : CellData where
  inverse := 7514
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B7 : CellData where
  inverse := 70014
  bounds := fun _ => ⟨0, -1⟩

def cellA14B8 : CellData where
  inverse := 304389
  bounds := fun _ => ⟨0, -1⟩

def cellA14B9 : CellData where
  inverse := 1085639
  bounds := fun _ => ⟨0, -1⟩

def cellA14B10 : CellData where
  inverse := 4991889
  bounds := fun _ => ⟨0, -1⟩

def cellA14B11 : CellData where
  inverse := 4991889
  bounds := fun _ => ⟨0, -1⟩

def cellA15B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA15B2 : CellData where
  inverse := 7
  bounds := fun _ => ⟨0, -1⟩

def cellA15B3 : CellData where
  inverse := 7
  bounds := fun _ => ⟨0, -1⟩

def cellA15B4 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B5 : CellData where
  inverse := 632
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B6 : CellData where
  inverse := 3757
  bounds := fun _ => ⟨0, -1⟩

def cellA15B7 : CellData where
  inverse := 35007
  bounds := fun _ => ⟨0, -1⟩

def cellA15B8 : CellData where
  inverse := 347507
  bounds := fun _ => ⟨0, -1⟩

def cellA15B9 : CellData where
  inverse := 1519382
  bounds := fun _ => ⟨0, -1⟩

def cellA15B10 : CellData where
  inverse := 7378757
  bounds := fun _ => ⟨0, -1⟩

def cellA15B11 : CellData where
  inverse := 26910007
  bounds := fun _ => ⟨0, -1⟩

def cellA16B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA16B2 : CellData where
  inverse := 16
  bounds := fun _ => ⟨0, -1⟩

def cellA16B3 : CellData where
  inverse := 66
  bounds := fun _ => ⟨0, -1⟩

def cellA16B4 : CellData where
  inverse := 316
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA16B5 : CellData where
  inverse := 316
  bounds := fun d =>
    if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA16B6 : CellData where
  inverse := 9691
  bounds := fun _ => ⟨0, -1⟩

def cellA16B7 : CellData where
  inverse := 56566
  bounds := fun _ => ⟨0, -1⟩

def cellA16B8 : CellData where
  inverse := 369066
  bounds := fun _ => ⟨0, -1⟩

def cellA16B9 : CellData where
  inverse := 759691
  bounds := fun _ => ⟨0, -1⟩

def cellA16B10 : CellData where
  inverse := 8572191
  bounds := fun _ => ⟨0, -1⟩

def cellA16B11 : CellData where
  inverse := 37869066
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

end Math.B699.CRTStage3Pair25.Chunk001
