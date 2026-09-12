import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage1Pair27.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 13247⟩
    else if d = (-5 : ℤ) then ⟨0, 13247⟩
    else if d = (-3 : ℤ) then ⟨0, 13247⟩
    else if d = (2 : ℤ) then ⟨1, 13247⟩
    else if d = (4 : ℤ) then ⟨1, 13247⟩
    else if d = (6 : ℤ) then ⟨1, 13246⟩
    else if d = (8 : ℤ) then ⟨1, 13246⟩
    else if d = (9 : ℤ) then ⟨1, 13247⟩
    else if d = (10 : ℤ) then ⟨1, 13246⟩
    else ⟨0, 13246⟩

def cellA1B2 : CellData where
  inverse := 25
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1892⟩
    else if d = (-7 : ℤ) then ⟨0, 1892⟩
    else if d = (-5 : ℤ) then ⟨0, 1892⟩
    else if d = (-3 : ℤ) then ⟨0, 1892⟩
    else if d = (2 : ℤ) then ⟨1, 1892⟩
    else if d = (4 : ℤ) then ⟨1, 1892⟩
    else if d = (6 : ℤ) then ⟨1, 1892⟩
    else if d = (8 : ℤ) then ⟨1, 1892⟩
    else if d = (10 : ℤ) then ⟨1, 1892⟩
    else ⟨0, 1891⟩

def cellA1B3 : CellData where
  inverse := 172
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 270⟩
    else if d = (4 : ℤ) then ⟨1, 270⟩
    else if d = (6 : ℤ) then ⟨1, 270⟩
    else if d = (8 : ℤ) then ⟨1, 270⟩
    else if d = (10 : ℤ) then ⟨1, 270⟩
    else ⟨0, 269⟩

def cellA1B4 : CellData where
  inverse := 1201
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 37⟩
    else if d = (-8 : ℤ) then ⟨0, 37⟩
    else if d = (-6 : ℤ) then ⟨0, 37⟩
    else if d = (-4 : ℤ) then ⟨0, 37⟩
    else if d = (-2 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (2 : ℤ) then ⟨1, 38⟩
    else if d = (4 : ℤ) then ⟨1, 38⟩
    else if d = (6 : ℤ) then ⟨1, 38⟩
    else if d = (8 : ℤ) then ⟨1, 38⟩
    else if d = (10 : ℤ) then ⟨1, 38⟩
    else ⟨0, 38⟩

def cellA1B5 : CellData where
  inverse := 8404
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4⟩
    else if d = (-8 : ℤ) then ⟨0, 4⟩
    else if d = (-6 : ℤ) then ⟨0, 4⟩
    else if d = (-4 : ℤ) then ⟨0, 4⟩
    else if d = (-2 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (2 : ℤ) then ⟨1, 5⟩
    else if d = (4 : ℤ) then ⟨1, 5⟩
    else if d = (6 : ℤ) then ⟨1, 5⟩
    else if d = (8 : ℤ) then ⟨1, 5⟩
    else if d = (10 : ℤ) then ⟨1, 5⟩
    else ⟨0, 5⟩

def cellA1B6 : CellData where
  inverse := 58825
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-8 : ℤ) then ⟨0, -1⟩
    else if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (-2 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, 0⟩

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

def cellA1B10 : CellData where
  inverse := 141237625
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B11 : CellData where
  inverse := 988663372
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B12 : CellData where
  inverse := 6920643601
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B13 : CellData where
  inverse := 48444505204
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B14 : CellData where
  inverse := 339111536425
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B15 : CellData where
  inverse := 2373780754972
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B16 : CellData where
  inverse := 16616465284801
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B17 : CellData where
  inverse := 116315256993604
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B18 : CellData where
  inverse := 814206798955225
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B19 : CellData where
  inverse := 5699447592686572
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B20 : CellData where
  inverse := 39896133148806001
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B21 : CellData where
  inverse := 279272932041642004
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
    if d = (-10 : ℤ) then ⟨0, 13247⟩
    else if d = (-6 : ℤ) then ⟨0, 13247⟩
    else if d = (-3 : ℤ) then ⟨0, 13247⟩
    else if d = (1 : ℤ) then ⟨0, 13247⟩
    else if d = (4 : ℤ) then ⟨1, 13247⟩
    else if d = (8 : ℤ) then ⟨1, 13247⟩
    else ⟨0, 13246⟩

def cellA2B2 : CellData where
  inverse := 37
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1892⟩
    else if d = (-9 : ℤ) then ⟨0, 1892⟩
    else if d = (-6 : ℤ) then ⟨0, 1892⟩
    else if d = (-5 : ℤ) then ⟨0, 1892⟩
    else if d = (-1 : ℤ) then ⟨0, 1892⟩
    else if d = (3 : ℤ) then ⟨0, 1892⟩
    else if d = (4 : ℤ) then ⟨1, 1892⟩
    else if d = (7 : ℤ) then ⟨0, 1892⟩
    else if d = (8 : ℤ) then ⟨1, 1892⟩
    else ⟨0, 1891⟩

def cellA2B3 : CellData where
  inverse := 86
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 270⟩
    else if d = (-3 : ℤ) then ⟨0, 270⟩
    else if d = (1 : ℤ) then ⟨0, 270⟩
    else if d = (4 : ℤ) then ⟨1, 270⟩
    else if d = (5 : ℤ) then ⟨0, 270⟩
    else if d = (8 : ℤ) then ⟨1, 270⟩
    else if d = (9 : ℤ) then ⟨0, 270⟩
    else ⟨0, 269⟩

def cellA2B4 : CellData where
  inverse := 1801
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 37⟩
    else if d = (-7 : ℤ) then ⟨0, 37⟩
    else if d = (-4 : ℤ) then ⟨0, 37⟩
    else if d = (-3 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (1 : ℤ) then ⟨0, 37⟩
    else if d = (4 : ℤ) then ⟨1, 38⟩
    else if d = (5 : ℤ) then ⟨0, 37⟩
    else if d = (8 : ℤ) then ⟨1, 38⟩
    else if d = (9 : ℤ) then ⟨0, 37⟩
    else ⟨0, 38⟩

def cellA2B5 : CellData where
  inverse := 4202
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-8 : ℤ) then ⟨0, 4⟩
    else if d = (-5 : ℤ) then ⟨0, 4⟩
    else if d = (-4 : ℤ) then ⟨0, 4⟩
    else if d = (-1 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨0, 4⟩
    else if d = (4 : ℤ) then ⟨1, 5⟩
    else if d = (7 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨1, 5⟩
    else ⟨0, 5⟩

def cellA2B6 : CellData where
  inverse := 88237
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, -1⟩
    else if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, 0⟩

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

def cellA2B10 : CellData where
  inverse := 211856437
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B11 : CellData where
  inverse := 494331686
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B12 : CellData where
  inverse := 10380965401
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B13 : CellData where
  inverse := 24222252602
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B14 : CellData where
  inverse := 508667304637
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B15 : CellData where
  inverse := 1186890377486
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B16 : CellData where
  inverse := 24924697927201
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B17 : CellData where
  inverse := 58157628496802
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B18 : CellData where
  inverse := 1221310198432837
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B19 : CellData where
  inverse := 2849723796343286
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B20 : CellData where
  inverse := 59844199723209001
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B21 : CellData where
  inverse := 139636466020821002
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 11591⟩
    else if d = (-5 : ℤ) then ⟨0, 11591⟩
    else if d = (1 : ℤ) then ⟨0, 11591⟩
    else if d = (2 : ℤ) then ⟨0, 11591⟩
    else if d = (3 : ℤ) then ⟨0, 11591⟩
    else if d = (8 : ℤ) then ⟨1, 11591⟩
    else if d = (9 : ℤ) then ⟨0, 11591⟩
    else if d = (10 : ℤ) then ⟨0, 11591⟩
    else ⟨0, 11590⟩

def cellA3B2 : CellData where
  inverse := 43
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1892⟩
    else if d = (-9 : ℤ) then ⟨0, 1892⟩
    else if d = (-3 : ℤ) then ⟨0, 1892⟩
    else if d = (-2 : ℤ) then ⟨0, 1892⟩
    else if d = (-1 : ℤ) then ⟨0, 1892⟩
    else if d = (5 : ℤ) then ⟨0, 1892⟩
    else if d = (6 : ℤ) then ⟨0, 1892⟩
    else if d = (7 : ℤ) then ⟨0, 1892⟩
    else if d = (8 : ℤ) then ⟨1, 1892⟩
    else ⟨0, 1891⟩

def cellA3B3 : CellData where
  inverse := 43
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 270⟩
    else if d = (-6 : ℤ) then ⟨0, 270⟩
    else if d = (1 : ℤ) then ⟨0, 270⟩
    else if d = (2 : ℤ) then ⟨0, 270⟩
    else if d = (8 : ℤ) then ⟨1, 270⟩
    else if d = (9 : ℤ) then ⟨0, 270⟩
    else if d = (10 : ℤ) then ⟨0, 270⟩
    else ⟨0, 269⟩

def cellA3B4 : CellData where
  inverse := 2101
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 37⟩
    else if d = (-7 : ℤ) then ⟨0, 37⟩
    else if d = (-6 : ℤ) then ⟨0, 37⟩
    else if d = (-5 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (1 : ℤ) then ⟨0, 37⟩
    else if d = (2 : ℤ) then ⟨0, 37⟩
    else if d = (3 : ℤ) then ⟨0, 37⟩
    else if d = (8 : ℤ) then ⟨1, 38⟩
    else if d = (9 : ℤ) then ⟨0, 37⟩
    else if d = (10 : ℤ) then ⟨0, 37⟩
    else ⟨0, 38⟩

def cellA3B5 : CellData where
  inverse := 2101
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 5⟩
    else if d = (-6 : ℤ) then ⟨0, 5⟩
    else if d = (-5 : ℤ) then ⟨0, 5⟩
    else if d = (-4 : ℤ) then ⟨0, 5⟩
    else if d = (1 : ℤ) then ⟨0, 5⟩
    else if d = (2 : ℤ) then ⟨0, 5⟩
    else if d = (3 : ℤ) then ⟨0, 5⟩
    else if d = (4 : ℤ) then ⟨0, 5⟩
    else if d = (8 : ℤ) then ⟨1, 5⟩
    else if d = (9 : ℤ) then ⟨0, 5⟩
    else if d = (10 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA3B6 : CellData where
  inverse := 102943
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, -1⟩
    else if d = (-7 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

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

def cellA3B10 : CellData where
  inverse := 247165843
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B11 : CellData where
  inverse := 247165843
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B12 : CellData where
  inverse := 12111126301
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B13 : CellData where
  inverse := 12111126301
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B14 : CellData where
  inverse := 593445188743
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B15 : CellData where
  inverse := 593445188743
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B16 : CellData where
  inverse := 29078814248401
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B17 : CellData where
  inverse := 29078814248401
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B18 : CellData where
  inverse := 1424861898171643
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B19 : CellData where
  inverse := 1424861898171643
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B20 : CellData where
  inverse := 69818233010410501
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B21 : CellData where
  inverse := 69818233010410501
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 5794⟩
    else if d = (-7 : ℤ) then ⟨0, 5794⟩
    else if d = (-4 : ℤ) then ⟨0, 5794⟩
    else if d = (-2 : ℤ) then ⟨0, 5794⟩
    else if d = (0 : ℤ) then ⟨0, 5794⟩
    else if d = (5 : ℤ) then ⟨0, 5794⟩
    else if d = (7 : ℤ) then ⟨0, 5794⟩
    else ⟨0, 5795⟩

def cellA4B2 : CellData where
  inverse := 46
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 1892⟩
    else if d = (-6 : ℤ) then ⟨0, 1892⟩
    else if d = (-5 : ℤ) then ⟨0, 1892⟩
    else if d = (-4 : ℤ) then ⟨0, 1892⟩
    else if d = (-3 : ℤ) then ⟨0, 1892⟩
    else if d = (-2 : ℤ) then ⟨0, 1892⟩
    else if d = (-1 : ℤ) then ⟨0, 1892⟩
    else if d = (9 : ℤ) then ⟨0, 1892⟩
    else if d = (10 : ℤ) then ⟨0, 1892⟩
    else ⟨0, 1891⟩

def cellA4B3 : CellData where
  inverse := 193
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 270⟩
    else if d = (-5 : ℤ) then ⟨0, 270⟩
    else if d = (-3 : ℤ) then ⟨0, 270⟩
    else if d = (2 : ℤ) then ⟨0, 270⟩
    else if d = (4 : ℤ) then ⟨0, 270⟩
    else if d = (9 : ℤ) then ⟨0, 270⟩
    else ⟨0, 269⟩

def cellA4B4 : CellData where
  inverse := 2251
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (1 : ℤ) then ⟨0, 37⟩
    else if d = (2 : ℤ) then ⟨0, 37⟩
    else if d = (3 : ℤ) then ⟨0, 37⟩
    else if d = (4 : ℤ) then ⟨0, 37⟩
    else if d = (5 : ℤ) then ⟨0, 37⟩
    else if d = (6 : ℤ) then ⟨0, 37⟩
    else ⟨0, 38⟩

def cellA4B5 : CellData where
  inverse := 9454
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-6 : ℤ) then ⟨0, 4⟩
    else if d = (-4 : ℤ) then ⟨0, 4⟩
    else if d = (-2 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (1 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨0, 4⟩
    else if d = (5 : ℤ) then ⟨0, 4⟩
    else if d = (7 : ℤ) then ⟨0, 4⟩
    else if d = (10 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA4B6 : CellData where
  inverse := 110296
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (2 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA4B7 : CellData where
  inverse := 463243
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B8 : CellData where
  inverse := 5404501
  bounds := fun _ => ⟨0, -1⟩

def cellA4B9 : CellData where
  inverse := 22698904
  bounds := fun _ => ⟨0, -1⟩

def cellA4B10 : CellData where
  inverse := 264820546
  bounds := fun _ => ⟨0, -1⟩

def cellA4B11 : CellData where
  inverse := 1112246293
  bounds := fun _ => ⟨0, -1⟩

def cellA4B12 : CellData where
  inverse := 12976206751
  bounds := fun _ => ⟨0, -1⟩

def cellA4B13 : CellData where
  inverse := 54500068354
  bounds := fun _ => ⟨0, -1⟩

def cellA4B14 : CellData where
  inverse := 635834130796
  bounds := fun _ => ⟨0, -1⟩

def cellA4B15 : CellData where
  inverse := 2670503349343
  bounds := fun _ => ⟨0, -1⟩

def cellA4B16 : CellData where
  inverse := 31155872409001
  bounds := fun _ => ⟨0, -1⟩

def cellA4B17 : CellData where
  inverse := 130854664117804
  bounds := fun _ => ⟨0, -1⟩

def cellA4B18 : CellData where
  inverse := 1526637748041046
  bounds := fun _ => ⟨0, -1⟩

def cellA4B19 : CellData where
  inverse := 6411878541772393
  bounds := fun _ => ⟨0, -1⟩

def cellA4B20 : CellData where
  inverse := 74805249654011251
  bounds := fun _ => ⟨0, -1⟩

def cellA4B21 : CellData where
  inverse := 314182048546847254
  bounds := fun _ => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 2896⟩
    else if d = (-4 : ℤ) then ⟨0, 2896⟩
    else if d = (0 : ℤ) then ⟨0, 2896⟩
    else if d = (7 : ℤ) then ⟨0, 2896⟩
    else ⟨0, 2897⟩

def cellA5B2 : CellData where
  inverse := 23
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1892⟩
    else if d = (-8 : ℤ) then ⟨0, 1892⟩
    else if d = (-6 : ℤ) then ⟨0, 1892⟩
    else if d = (-4 : ℤ) then ⟨0, 1892⟩
    else if d = (-2 : ℤ) then ⟨0, 1892⟩
    else if d = (1 : ℤ) then ⟨0, 1892⟩
    else if d = (3 : ℤ) then ⟨0, 1892⟩
    else if d = (5 : ℤ) then ⟨0, 1892⟩
    else if d = (7 : ℤ) then ⟨0, 1892⟩
    else if d = (9 : ℤ) then ⟨0, 1892⟩
    else ⟨0, 1891⟩

def cellA5B3 : CellData where
  inverse := 268
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 270⟩
    else if d = (-6 : ℤ) then ⟨0, 270⟩
    else if d = (-5 : ℤ) then ⟨0, 270⟩
    else if d = (-1 : ℤ) then ⟨0, 270⟩
    else if d = (3 : ℤ) then ⟨0, 270⟩
    else if d = (4 : ℤ) then ⟨0, 270⟩
    else if d = (8 : ℤ) then ⟨0, 270⟩
    else if d = (9 : ℤ) then ⟨0, 270⟩
    else ⟨0, 269⟩

def cellA5B4 : CellData where
  inverse := 2326
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 38⟩
    else if d = (-9 : ℤ) then ⟨0, 38⟩
    else if d = (-8 : ℤ) then ⟨0, 38⟩
    else if d = (-7 : ℤ) then ⟨0, 38⟩
    else if d = (-6 : ℤ) then ⟨0, 38⟩
    else if d = (-5 : ℤ) then ⟨0, 38⟩
    else if d = (-4 : ℤ) then ⟨0, 38⟩
    else if d = (-3 : ℤ) then ⟨0, 38⟩
    else if d = (-2 : ℤ) then ⟨0, 38⟩
    else if d = (-1 : ℤ) then ⟨0, 38⟩
    else ⟨0, 37⟩

def cellA5B5 : CellData where
  inverse := 4727
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 5⟩
    else if d = (-9 : ℤ) then ⟨0, 5⟩
    else if d = (-7 : ℤ) then ⟨0, 5⟩
    else if d = (-6 : ℤ) then ⟨0, 5⟩
    else if d = (-3 : ℤ) then ⟨0, 5⟩
    else if d = (-2 : ℤ) then ⟨0, 5⟩
    else if d = (1 : ℤ) then ⟨0, 5⟩
    else if d = (4 : ℤ) then ⟨0, 5⟩
    else if d = (5 : ℤ) then ⟨0, 5⟩
    else if d = (8 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA5B6 : CellData where
  inverse := 55148
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (2 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA5B7 : CellData where
  inverse := 643393
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B8 : CellData where
  inverse := 5584651
  bounds := fun _ => ⟨0, -1⟩

def cellA5B9 : CellData where
  inverse := 11349452
  bounds := fun _ => ⟨0, -1⟩

def cellA5B10 : CellData where
  inverse := 132410273
  bounds := fun _ => ⟨0, -1⟩

def cellA5B11 : CellData where
  inverse := 1544786518
  bounds := fun _ => ⟨0, -1⟩

def cellA5B12 : CellData where
  inverse := 13408746976
  bounds := fun _ => ⟨0, -1⟩

def cellA5B13 : CellData where
  inverse := 27250034177
  bounds := fun _ => ⟨0, -1⟩

def cellA5B14 : CellData where
  inverse := 317917065398
  bounds := fun _ => ⟨0, -1⟩

def cellA5B15 : CellData where
  inverse := 3709032429643
  bounds := fun _ => ⟨0, -1⟩

def cellA5B16 : CellData where
  inverse := 32194401489301
  bounds := fun _ => ⟨0, -1⟩

def cellA5B17 : CellData where
  inverse := 65427332058902
  bounds := fun _ => ⟨0, -1⟩

def cellA5B18 : CellData where
  inverse := 763318874020523
  bounds := fun _ => ⟨0, -1⟩

def cellA5B19 : CellData where
  inverse := 8905386863572768
  bounds := fun _ => ⟨0, -1⟩

def cellA5B20 : CellData where
  inverse := 77298757975811626
  bounds := fun _ => ⟨0, -1⟩

def cellA5B21 : CellData where
  inverse := 157091024273423627
  bounds := fun _ => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 1447⟩
    else if d = (0 : ℤ) then ⟨0, 1447⟩
    else if d = (7 : ℤ) then ⟨0, 1447⟩
    else ⟨0, 1448⟩

def cellA6B2 : CellData where
  inverse := 36
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1447⟩
    else if d = (4 : ℤ) then ⟨0, 1447⟩
    else ⟨0, 1448⟩

def cellA6B3 : CellData where
  inverse := 134
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 270⟩
    else if d = (-7 : ℤ) then ⟨0, 270⟩
    else if d = (-5 : ℤ) then ⟨0, 270⟩
    else if d = (-2 : ℤ) then ⟨0, 270⟩
    else if d = (3 : ℤ) then ⟨0, 270⟩
    else if d = (6 : ℤ) then ⟨0, 270⟩
    else if d = (8 : ℤ) then ⟨0, 270⟩
    else ⟨0, 269⟩

def cellA6B4 : CellData where
  inverse := 1163
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (2 : ℤ) then ⟨0, 37⟩
    else if d = (4 : ℤ) then ⟨0, 37⟩
    else if d = (6 : ℤ) then ⟨0, 37⟩
    else if d = (8 : ℤ) then ⟨0, 37⟩
    else if d = (10 : ℤ) then ⟨0, 37⟩
    else ⟨0, 38⟩

def cellA6B5 : CellData where
  inverse := 10767
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4⟩
    else if d = (-8 : ℤ) then ⟨0, 4⟩
    else if d = (-5 : ℤ) then ⟨0, 4⟩
    else if d = (-2 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (1 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨0, 4⟩
    else if d = (4 : ℤ) then ⟨0, 4⟩
    else if d = (6 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA6B6 : CellData where
  inverse := 27574
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA6B7 : CellData where
  inverse := 733468
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B8 : CellData where
  inverse := 5674726
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B9 : CellData where
  inverse := 5674726
  bounds := fun _ => ⟨0, -1⟩

def cellA6B10 : CellData where
  inverse := 207442761
  bounds := fun _ => ⟨0, -1⟩

def cellA6B11 : CellData where
  inverse := 772393259
  bounds := fun _ => ⟨0, -1⟩

def cellA6B12 : CellData where
  inverse := 6704373488
  bounds := fun _ => ⟨0, -1⟩

def cellA6B13 : CellData where
  inverse := 62069522292
  bounds := fun _ => ⟨0, -1⟩

def cellA6B14 : CellData where
  inverse := 158958532699
  bounds := fun _ => ⟨0, -1⟩

def cellA6B15 : CellData where
  inverse := 4228296969793
  bounds := fun _ => ⟨0, -1⟩

def cellA6B16 : CellData where
  inverse := 32713666029451
  bounds := fun _ => ⟨0, -1⟩

def cellA6B17 : CellData where
  inverse := 32713666029451
  bounds := fun _ => ⟨0, -1⟩

def cellA6B18 : CellData where
  inverse := 1195866235965486
  bounds := fun _ => ⟨0, -1⟩

def cellA6B19 : CellData where
  inverse := 4452693431786384
  bounds := fun _ => ⟨0, -1⟩

def cellA6B20 : CellData where
  inverse := 38649378987905813
  bounds := fun _ => ⟨0, -1⟩

def cellA6B21 : CellData where
  inverse := 357818444178353817
  bounds := fun _ => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 724⟩
    else if d = (-8 : ℤ) then ⟨0, 724⟩
    else if d = (-5 : ℤ) then ⟨0, 724⟩
    else if d = (-3 : ℤ) then ⟨0, 724⟩
    else if d = (-1 : ℤ) then ⟨0, 724⟩
    else if d = (2 : ℤ) then ⟨0, 724⟩
    else if d = (4 : ℤ) then ⟨0, 724⟩
    else if d = (6 : ℤ) then ⟨0, 724⟩
    else if d = (9 : ℤ) then ⟨0, 724⟩
    else ⟨0, 723⟩

def cellA7B2 : CellData where
  inverse := 18
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 724⟩
    else if d = (-8 : ℤ) then ⟨0, 724⟩
    else if d = (-7 : ℤ) then ⟨0, 724⟩
    else if d = (-5 : ℤ) then ⟨0, 724⟩
    else if d = (-2 : ℤ) then ⟨0, 724⟩
    else if d = (1 : ℤ) then ⟨0, 724⟩
    else if d = (3 : ℤ) then ⟨0, 724⟩
    else if d = (6 : ℤ) then ⟨0, 724⟩
    else if d = (9 : ℤ) then ⟨0, 724⟩
    else ⟨0, 723⟩

def cellA7B3 : CellData where
  inverse := 67
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 270⟩
    else if d = (-9 : ℤ) then ⟨0, 270⟩
    else if d = (-5 : ℤ) then ⟨0, 270⟩
    else if d = (-4 : ℤ) then ⟨0, 270⟩
    else if d = (1 : ℤ) then ⟨0, 270⟩
    else if d = (6 : ℤ) then ⟨0, 270⟩
    else ⟨0, 269⟩

def cellA7B4 : CellData where
  inverse := 1782
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 37⟩
    else if d = (-3 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (1 : ℤ) then ⟨0, 37⟩
    else if d = (4 : ℤ) then ⟨0, 37⟩
    else if d = (5 : ℤ) then ⟨0, 37⟩
    else if d = (8 : ℤ) then ⟨0, 37⟩
    else if d = (9 : ℤ) then ⟨0, 37⟩
    else ⟨0, 38⟩

def cellA7B5 : CellData where
  inverse := 13787
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 5⟩
    else if d = (-7 : ℤ) then ⟨0, 5⟩
    else if d = (-6 : ℤ) then ⟨0, 5⟩
    else if d = (-2 : ℤ) then ⟨0, 5⟩
    else if d = (-1 : ℤ) then ⟨0, 5⟩
    else if d = (3 : ℤ) then ⟨0, 5⟩
    else if d = (4 : ℤ) then ⟨0, 5⟩
    else if d = (5 : ℤ) then ⟨0, 5⟩
    else if d = (9 : ℤ) then ⟨0, 5⟩
    else if d = (10 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA7B6 : CellData where
  inverse := 13787
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-1 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (7 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA7B7 : CellData where
  inverse := 366734
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B8 : CellData where
  inverse := 2837363
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B9 : CellData where
  inverse := 2837363
  bounds := fun _ => ⟨0, -1⟩

def cellA7B10 : CellData where
  inverse := 244959005
  bounds := fun _ => ⟨0, -1⟩

def cellA7B11 : CellData where
  inverse := 1374860001
  bounds := fun _ => ⟨0, -1⟩

def cellA7B12 : CellData where
  inverse := 3352186744
  bounds := fun _ => ⟨0, -1⟩

def cellA7B13 : CellData where
  inverse := 31034761146
  bounds := fun _ => ⟨0, -1⟩

def cellA7B14 : CellData where
  inverse := 418590802774
  bounds := fun _ => ⟨0, -1⟩

def cellA7B15 : CellData where
  inverse := 4487929239868
  bounds := fun _ => ⟨0, -1⟩

def cellA7B16 : CellData where
  inverse := 32973298299526
  bounds := fun _ => ⟨0, -1⟩

def cellA7B17 : CellData where
  inverse := 132672090008329
  bounds := fun _ => ⟨0, -1⟩

def cellA7B18 : CellData where
  inverse := 597933117982743
  bounds := fun _ => ⟨0, -1⟩

def cellA7B19 : CellData where
  inverse := 2226346715893192
  bounds := fun _ => ⟨0, -1⟩

def cellA7B20 : CellData where
  inverse := 59220822642758907
  bounds := fun _ => ⟨0, -1⟩

def cellA7B21 : CellData where
  inverse := 458182154130818912
  bounds := fun _ => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 362⟩
    else if d = (-3 : ℤ) then ⟨0, 362⟩
    else if d = (4 : ℤ) then ⟨0, 362⟩
    else ⟨0, 361⟩

def cellA8B2 : CellData where
  inverse := 9
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 362⟩
    else if d = (-5 : ℤ) then ⟨0, 362⟩
    else if d = (1 : ℤ) then ⟨0, 362⟩
    else if d = (6 : ℤ) then ⟨0, 362⟩
    else ⟨0, 361⟩

def cellA8B3 : CellData where
  inverse := 205
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 270⟩
    else if d = (-8 : ℤ) then ⟨0, 270⟩
    else if d = (-5 : ℤ) then ⟨0, 270⟩
    else if d = (-3 : ℤ) then ⟨0, 270⟩
    else if d = (2 : ℤ) then ⟨0, 270⟩
    else if d = (7 : ℤ) then ⟨0, 270⟩
    else ⟨0, 269⟩

def cellA8B4 : CellData where
  inverse := 891
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 37⟩
    else if d = (-6 : ℤ) then ⟨0, 37⟩
    else if d = (-3 : ℤ) then ⟨0, 37⟩
    else if d = (-1 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (2 : ℤ) then ⟨0, 37⟩
    else if d = (5 : ℤ) then ⟨0, 37⟩
    else if d = (8 : ℤ) then ⟨0, 37⟩
    else if d = (10 : ℤ) then ⟨0, 37⟩
    else ⟨0, 38⟩

def cellA8B5 : CellData where
  inverse := 15297
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 5⟩
    else if d = (-4 : ℤ) then ⟨0, 5⟩
    else if d = (-3 : ℤ) then ⟨0, 5⟩
    else if d = (-2 : ℤ) then ⟨0, 5⟩
    else if d = (-1 : ℤ) then ⟨0, 5⟩
    else if d = (6 : ℤ) then ⟨0, 5⟩
    else if d = (7 : ℤ) then ⟨0, 5⟩
    else if d = (8 : ℤ) then ⟨0, 5⟩
    else if d = (9 : ℤ) then ⟨0, 5⟩
    else if d = (10 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA8B6 : CellData where
  inverse := 65718
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-2 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨0, -1⟩
    else if d = (7 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA8B7 : CellData where
  inverse := 183367
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B8 : CellData where
  inverse := 4301082
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B9 : CellData where
  inverse := 21595485
  bounds := fun _ => ⟨0, -1⟩

def cellA8B10 : CellData where
  inverse := 263717127
  bounds := fun _ => ⟨0, -1⟩

def cellA8B11 : CellData where
  inverse := 1676093372
  bounds := fun _ => ⟨0, -1⟩

def cellA8B12 : CellData where
  inverse := 1676093372
  bounds := fun _ => ⟨0, -1⟩

def cellA8B13 : CellData where
  inverse := 15517380573
  bounds := fun _ => ⟨0, -1⟩

def cellA8B14 : CellData where
  inverse := 209295401387
  bounds := fun _ => ⟨0, -1⟩

def cellA8B15 : CellData where
  inverse := 2243964619934
  bounds := fun _ => ⟨0, -1⟩

def cellA8B16 : CellData where
  inverse := 16486649149763
  bounds := fun _ => ⟨0, -1⟩

def cellA8B17 : CellData where
  inverse := 182651301997768
  bounds := fun _ => ⟨0, -1⟩

def cellA8B18 : CellData where
  inverse := 1113173357946596
  bounds := fun _ => ⟨0, -1⟩

def cellA8B19 : CellData where
  inverse := 1113173357946596
  bounds := fun _ => ⟨0, -1⟩

def cellA8B20 : CellData where
  inverse := 69506544470185454
  bounds := fun _ => ⟨0, -1⟩

def cellA8B21 : CellData where
  inverse := 229091077065409456
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
  else if b = 18 then cellA1B18
  else if b = 19 then cellA1B19
  else if b = 20 then cellA1B20
  else if b = 21 then cellA1B21
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
  else if b = 18 then cellA2B18
  else if b = 19 then cellA2B19
  else if b = 20 then cellA2B20
  else if b = 21 then cellA2B21
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
  else if b = 18 then cellA3B18
  else if b = 19 then cellA3B19
  else if b = 20 then cellA3B20
  else if b = 21 then cellA3B21
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
  else if b = 18 then cellA4B18
  else if b = 19 then cellA4B19
  else if b = 20 then cellA4B20
  else if b = 21 then cellA4B21
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
  else if b = 18 then cellA5B18
  else if b = 19 then cellA5B19
  else if b = 20 then cellA5B20
  else if b = 21 then cellA5B21
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
  else if b = 18 then cellA6B18
  else if b = 19 then cellA6B19
  else if b = 20 then cellA6B20
  else if b = 21 then cellA6B21
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
  else if b = 18 then cellA7B18
  else if b = 19 then cellA7B19
  else if b = 20 then cellA7B20
  else if b = 21 then cellA7B21
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
  else if b = 18 then cellA8B18
  else if b = 19 then cellA8B19
  else if b = 20 then cellA8B20
  else if b = 21 then cellA8B21
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

end Math.B699.CRTStage1Pair27.Chunk000
