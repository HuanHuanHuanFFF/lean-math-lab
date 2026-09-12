import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage1Pair25.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 18546⟩
    else if d = (-3 : ℤ) then ⟨0, 18546⟩
    else if d = (2 : ℤ) then ⟨1, 18546⟩
    else if d = (4 : ℤ) then ⟨1, 18545⟩
    else if d = (6 : ℤ) then ⟨1, 18545⟩
    else if d = (7 : ℤ) then ⟨1, 18546⟩
    else if d = (8 : ℤ) then ⟨1, 18545⟩
    else if d = (9 : ℤ) then ⟨1, 18545⟩
    else if d = (10 : ℤ) then ⟨1, 18545⟩
    else ⟨0, 18545⟩

def cellA1B2 : CellData where
  inverse := 13
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 3709⟩
    else if d = (4 : ℤ) then ⟨1, 3709⟩
    else if d = (6 : ℤ) then ⟨1, 3709⟩
    else if d = (8 : ℤ) then ⟨1, 3709⟩
    else if d = (10 : ℤ) then ⟨1, 3709⟩
    else ⟨0, 3708⟩

def cellA1B3 : CellData where
  inverse := 63
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 740⟩
    else if d = (-8 : ℤ) then ⟨0, 740⟩
    else if d = (-6 : ℤ) then ⟨0, 740⟩
    else if d = (-4 : ℤ) then ⟨0, 740⟩
    else if d = (-2 : ℤ) then ⟨0, 740⟩
    else if d = (0 : ℤ) then ⟨0, 740⟩
    else if d = (2 : ℤ) then ⟨1, 741⟩
    else if d = (4 : ℤ) then ⟨1, 741⟩
    else if d = (6 : ℤ) then ⟨1, 741⟩
    else if d = (8 : ℤ) then ⟨1, 741⟩
    else if d = (10 : ℤ) then ⟨1, 741⟩
    else ⟨0, 741⟩

def cellA1B4 : CellData where
  inverse := 313
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 148⟩
    else if d = (4 : ℤ) then ⟨1, 148⟩
    else if d = (6 : ℤ) then ⟨1, 148⟩
    else if d = (8 : ℤ) then ⟨1, 148⟩
    else if d = (10 : ℤ) then ⟨1, 148⟩
    else ⟨0, 147⟩

def cellA1B5 : CellData where
  inverse := 1563
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 28⟩
    else if d = (-8 : ℤ) then ⟨0, 28⟩
    else if d = (-6 : ℤ) then ⟨0, 28⟩
    else if d = (-4 : ℤ) then ⟨0, 28⟩
    else if d = (-2 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (2 : ℤ) then ⟨1, 29⟩
    else if d = (4 : ℤ) then ⟨1, 29⟩
    else if d = (6 : ℤ) then ⟨1, 29⟩
    else if d = (8 : ℤ) then ⟨1, 29⟩
    else if d = (10 : ℤ) then ⟨1, 29⟩
    else ⟨0, 29⟩

def cellA1B6 : CellData where
  inverse := 7813
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

def cellA1B7 : CellData where
  inverse := 39063
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 1⟩
    else if d = (4 : ℤ) then ⟨1, 1⟩
    else if d = (6 : ℤ) then ⟨1, 1⟩
    else if d = (8 : ℤ) then ⟨1, 1⟩
    else if d = (10 : ℤ) then ⟨1, 1⟩
    else ⟨0, 0⟩

def cellA1B8 : CellData where
  inverse := 195313
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B9 : CellData where
  inverse := 976563
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B10 : CellData where
  inverse := 4882813
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B11 : CellData where
  inverse := 24414063
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B12 : CellData where
  inverse := 122070313
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B13 : CellData where
  inverse := 610351563
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B14 : CellData where
  inverse := 3051757813
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B15 : CellData where
  inverse := 15258789063
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B16 : CellData where
  inverse := 76293945313
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B17 : CellData where
  inverse := 381469726563
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B18 : CellData where
  inverse := 1907348632813
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B19 : CellData where
  inverse := 9536743164063
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B20 : CellData where
  inverse := 47683715820313
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B21 : CellData where
  inverse := 238418579101563
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B22 : CellData where
  inverse := 1192092895507813
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B23 : CellData where
  inverse := 5960464477539063
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B24 : CellData where
  inverse := 29802322387695313
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B25 : CellData where
  inverse := 149011611938476563
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 18546⟩
    else if d = (-1 : ℤ) then ⟨0, 18546⟩
    else if d = (4 : ℤ) then ⟨1, 18546⟩
    else if d = (8 : ℤ) then ⟨1, 18545⟩
    else if d = (9 : ℤ) then ⟨1, 18546⟩
    else ⟨0, 18545⟩

def cellA2B2 : CellData where
  inverse := 19
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 3709⟩
    else if d = (-5 : ℤ) then ⟨0, 3709⟩
    else if d = (-1 : ℤ) then ⟨0, 3709⟩
    else if d = (4 : ℤ) then ⟨1, 3709⟩
    else if d = (8 : ℤ) then ⟨1, 3709⟩
    else ⟨0, 3708⟩

def cellA2B3 : CellData where
  inverse := 94
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 740⟩
    else if d = (-4 : ℤ) then ⟨0, 740⟩
    else if d = (0 : ℤ) then ⟨0, 740⟩
    else if d = (4 : ℤ) then ⟨1, 741⟩
    else if d = (8 : ℤ) then ⟨1, 741⟩
    else ⟨0, 741⟩

def cellA2B4 : CellData where
  inverse := 469
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 148⟩
    else if d = (-5 : ℤ) then ⟨0, 148⟩
    else if d = (-1 : ℤ) then ⟨0, 148⟩
    else if d = (3 : ℤ) then ⟨0, 148⟩
    else if d = (4 : ℤ) then ⟨1, 148⟩
    else if d = (7 : ℤ) then ⟨0, 148⟩
    else if d = (8 : ℤ) then ⟨1, 148⟩
    else ⟨0, 147⟩

def cellA2B5 : CellData where
  inverse := 2344
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 28⟩
    else if d = (-7 : ℤ) then ⟨0, 28⟩
    else if d = (-4 : ℤ) then ⟨0, 28⟩
    else if d = (-3 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (1 : ℤ) then ⟨0, 28⟩
    else if d = (4 : ℤ) then ⟨1, 29⟩
    else if d = (5 : ℤ) then ⟨0, 28⟩
    else if d = (8 : ℤ) then ⟨1, 29⟩
    else if d = (9 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA2B6 : CellData where
  inverse := 11719
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 4⟩
    else if d = (-4 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (4 : ℤ) then ⟨1, 5⟩
    else if d = (8 : ℤ) then ⟨1, 5⟩
    else ⟨0, 5⟩

def cellA2B7 : CellData where
  inverse := 58594
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 1⟩
    else if d = (8 : ℤ) then ⟨1, 1⟩
    else ⟨0, 0⟩

def cellA2B8 : CellData where
  inverse := 292969
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B9 : CellData where
  inverse := 1464844
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B10 : CellData where
  inverse := 7324219
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B11 : CellData where
  inverse := 36621094
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B12 : CellData where
  inverse := 183105469
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B13 : CellData where
  inverse := 915527344
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B14 : CellData where
  inverse := 4577636719
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B15 : CellData where
  inverse := 22888183594
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B16 : CellData where
  inverse := 114440917969
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B17 : CellData where
  inverse := 572204589844
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B18 : CellData where
  inverse := 2861022949219
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B19 : CellData where
  inverse := 14305114746094
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B20 : CellData where
  inverse := 71525573730469
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B21 : CellData where
  inverse := 357627868652344
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B22 : CellData where
  inverse := 1788139343261719
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B23 : CellData where
  inverse := 8940696716308594
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B24 : CellData where
  inverse := 44703483581542969
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B25 : CellData where
  inverse := 223517417907714844
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 11591⟩
    else if d = (-2 : ℤ) then ⟨0, 11591⟩
    else if d = (1 : ℤ) then ⟨0, 11591⟩
    else if d = (3 : ℤ) then ⟨0, 11591⟩
    else if d = (6 : ℤ) then ⟨0, 11591⟩
    else if d = (8 : ℤ) then ⟨1, 11591⟩
    else if d = (9 : ℤ) then ⟨0, 11591⟩
    else ⟨0, 11590⟩

def cellA3B2 : CellData where
  inverse := 22
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3709⟩
    else if d = (-9 : ℤ) then ⟨0, 3709⟩
    else if d = (-2 : ℤ) then ⟨0, 3709⟩
    else if d = (-1 : ℤ) then ⟨0, 3709⟩
    else if d = (7 : ℤ) then ⟨0, 3709⟩
    else if d = (8 : ℤ) then ⟨1, 3709⟩
    else ⟨0, 3708⟩

def cellA3B3 : CellData where
  inverse := 47
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 740⟩
    else if d = (-3 : ℤ) then ⟨0, 740⟩
    else if d = (0 : ℤ) then ⟨0, 740⟩
    else if d = (5 : ℤ) then ⟨0, 740⟩
    else if d = (8 : ℤ) then ⟨1, 741⟩
    else ⟨0, 741⟩

def cellA3B4 : CellData where
  inverse := 547
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 148⟩
    else if d = (-9 : ℤ) then ⟨0, 148⟩
    else if d = (-2 : ℤ) then ⟨0, 148⟩
    else if d = (-1 : ℤ) then ⟨0, 148⟩
    else if d = (6 : ℤ) then ⟨0, 148⟩
    else if d = (7 : ℤ) then ⟨0, 148⟩
    else if d = (8 : ℤ) then ⟨1, 148⟩
    else ⟨0, 147⟩

def cellA3B5 : CellData where
  inverse := 1172
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 28⟩
    else if d = (-6 : ℤ) then ⟨0, 28⟩
    else if d = (-3 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (2 : ℤ) then ⟨0, 28⟩
    else if d = (5 : ℤ) then ⟨0, 28⟩
    else if d = (8 : ℤ) then ⟨1, 29⟩
    else if d = (10 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA3B6 : CellData where
  inverse := 13672
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨1, 5⟩
    else ⟨0, 5⟩

def cellA3B7 : CellData where
  inverse := 29297
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨1, 1⟩
    else ⟨0, 0⟩

def cellA3B8 : CellData where
  inverse := 341797
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B9 : CellData where
  inverse := 732422
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B10 : CellData where
  inverse := 8544922
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B11 : CellData where
  inverse := 18310547
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B12 : CellData where
  inverse := 213623047
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B13 : CellData where
  inverse := 457763672
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B14 : CellData where
  inverse := 5340576172
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B15 : CellData where
  inverse := 11444091797
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B16 : CellData where
  inverse := 133514404297
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B17 : CellData where
  inverse := 286102294922
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B18 : CellData where
  inverse := 3337860107422
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B19 : CellData where
  inverse := 7152557373047
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B20 : CellData where
  inverse := 83446502685547
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B21 : CellData where
  inverse := 178813934326172
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B22 : CellData where
  inverse := 2086162567138672
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B23 : CellData where
  inverse := 4470348358154297
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B24 : CellData where
  inverse := 52154064178466797
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B25 : CellData where
  inverse := 111758708953857422
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 5794⟩
    else if d = (-6 : ℤ) then ⟨0, 5794⟩
    else if d = (-5 : ℤ) then ⟨0, 5794⟩
    else if d = (-1 : ℤ) then ⟨0, 5794⟩
    else if d = (0 : ℤ) then ⟨0, 5794⟩
    else if d = (4 : ℤ) then ⟨0, 5794⟩
    else if d = (5 : ℤ) then ⟨0, 5794⟩
    else if d = (10 : ℤ) then ⟨0, 5794⟩
    else ⟨0, 5795⟩

def cellA4B2 : CellData where
  inverse := 11
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 3709⟩
    else if d = (-4 : ℤ) then ⟨0, 3709⟩
    else if d = (-2 : ℤ) then ⟨0, 3709⟩
    else if d = (5 : ℤ) then ⟨0, 3709⟩
    else if d = (7 : ℤ) then ⟨0, 3709⟩
    else ⟨0, 3708⟩

def cellA4B3 : CellData where
  inverse := 86
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 740⟩
    else if d = (-3 : ℤ) then ⟨0, 740⟩
    else if d = (0 : ℤ) then ⟨0, 740⟩
    else if d = (10 : ℤ) then ⟨0, 740⟩
    else ⟨0, 741⟩

def cellA4B4 : CellData where
  inverse := 586
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 148⟩
    else if d = (-4 : ℤ) then ⟨0, 148⟩
    else if d = (-3 : ℤ) then ⟨0, 148⟩
    else if d = (-2 : ℤ) then ⟨0, 148⟩
    else if d = (-1 : ℤ) then ⟨0, 148⟩
    else ⟨0, 147⟩

def cellA4B5 : CellData where
  inverse := 586
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 28⟩
    else if d = (-6 : ℤ) then ⟨0, 28⟩
    else if d = (-1 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (4 : ℤ) then ⟨0, 28⟩
    else if d = (5 : ℤ) then ⟨0, 28⟩
    else if d = (9 : ℤ) then ⟨0, 28⟩
    else if d = (10 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA4B6 : CellData where
  inverse := 6836
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA4B7 : CellData where
  inverse := 53711
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA4B8 : CellData where
  inverse := 366211
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B9 : CellData where
  inverse := 366211
  bounds := fun _ => ⟨0, -1⟩

def cellA4B10 : CellData where
  inverse := 4272461
  bounds := fun _ => ⟨0, -1⟩

def cellA4B11 : CellData where
  inverse := 33569336
  bounds := fun _ => ⟨0, -1⟩

def cellA4B12 : CellData where
  inverse := 228881836
  bounds := fun _ => ⟨0, -1⟩

def cellA4B13 : CellData where
  inverse := 228881836
  bounds := fun _ => ⟨0, -1⟩

def cellA4B14 : CellData where
  inverse := 2670288086
  bounds := fun _ => ⟨0, -1⟩

def cellA4B15 : CellData where
  inverse := 20980834961
  bounds := fun _ => ⟨0, -1⟩

def cellA4B16 : CellData where
  inverse := 143051147461
  bounds := fun _ => ⟨0, -1⟩

def cellA4B17 : CellData where
  inverse := 143051147461
  bounds := fun _ => ⟨0, -1⟩

def cellA4B18 : CellData where
  inverse := 1668930053711
  bounds := fun _ => ⟨0, -1⟩

def cellA4B19 : CellData where
  inverse := 13113021850586
  bounds := fun _ => ⟨0, -1⟩

def cellA4B20 : CellData where
  inverse := 89406967163086
  bounds := fun _ => ⟨0, -1⟩

def cellA4B21 : CellData where
  inverse := 89406967163086
  bounds := fun _ => ⟨0, -1⟩

def cellA4B22 : CellData where
  inverse := 1043081283569336
  bounds := fun _ => ⟨0, -1⟩

def cellA4B23 : CellData where
  inverse := 8195638656616211
  bounds := fun _ => ⟨0, -1⟩

def cellA4B24 : CellData where
  inverse := 55879354476928711
  bounds := fun _ => ⟨0, -1⟩

def cellA4B25 : CellData where
  inverse := 55879354476928711
  bounds := fun _ => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2896⟩
    else if d = (-5 : ℤ) then ⟨0, 2896⟩
    else if d = (0 : ℤ) then ⟨0, 2896⟩
    else if d = (5 : ℤ) then ⟨0, 2896⟩
    else if d = (10 : ℤ) then ⟨0, 2896⟩
    else ⟨0, 2897⟩

def cellA5B2 : CellData where
  inverse := 18
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 2896⟩
    else if d = (0 : ℤ) then ⟨0, 2896⟩
    else if d = (4 : ℤ) then ⟨0, 2896⟩
    else ⟨0, 2897⟩

def cellA5B3 : CellData where
  inverse := 43
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 740⟩
    else if d = (-6 : ℤ) then ⟨0, 740⟩
    else if d = (-3 : ℤ) then ⟨0, 740⟩
    else if d = (0 : ℤ) then ⟨0, 740⟩
    else ⟨0, 741⟩

def cellA5B4 : CellData where
  inverse := 293
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 148⟩
    else if d = (-8 : ℤ) then ⟨0, 148⟩
    else if d = (-6 : ℤ) then ⟨0, 148⟩
    else if d = (-4 : ℤ) then ⟨0, 148⟩
    else if d = (-2 : ℤ) then ⟨0, 148⟩
    else if d = (5 : ℤ) then ⟨0, 148⟩
    else if d = (7 : ℤ) then ⟨0, 148⟩
    else if d = (9 : ℤ) then ⟨0, 148⟩
    else ⟨0, 147⟩

def cellA5B5 : CellData where
  inverse := 293
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 28⟩
    else if d = (-2 : ℤ) then ⟨0, 28⟩
    else if d = (-1 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (8 : ℤ) then ⟨0, 28⟩
    else if d = (9 : ℤ) then ⟨0, 28⟩
    else if d = (10 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA5B6 : CellData where
  inverse := 3418
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA5B7 : CellData where
  inverse := 65918
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA5B8 : CellData where
  inverse := 378418
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B9 : CellData where
  inverse := 1159668
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B10 : CellData where
  inverse := 7019043
  bounds := fun _ => ⟨0, -1⟩

def cellA5B11 : CellData where
  inverse := 16784668
  bounds := fun _ => ⟨0, -1⟩

def cellA5B12 : CellData where
  inverse := 114440918
  bounds := fun _ => ⟨0, -1⟩

def cellA5B13 : CellData where
  inverse := 114440918
  bounds := fun _ => ⟨0, -1⟩

def cellA5B14 : CellData where
  inverse := 1335144043
  bounds := fun _ => ⟨0, -1⟩

def cellA5B15 : CellData where
  inverse := 25749206543
  bounds := fun _ => ⟨0, -1⟩

def cellA5B16 : CellData where
  inverse := 147819519043
  bounds := fun _ => ⟨0, -1⟩

def cellA5B17 : CellData where
  inverse := 452995300293
  bounds := fun _ => ⟨0, -1⟩

def cellA5B18 : CellData where
  inverse := 2741813659668
  bounds := fun _ => ⟨0, -1⟩

def cellA5B19 : CellData where
  inverse := 6556510925293
  bounds := fun _ => ⟨0, -1⟩

def cellA5B20 : CellData where
  inverse := 44703483581543
  bounds := fun _ => ⟨0, -1⟩

def cellA5B21 : CellData where
  inverse := 44703483581543
  bounds := fun _ => ⟨0, -1⟩

def cellA5B22 : CellData where
  inverse := 521540641784668
  bounds := fun _ => ⟨0, -1⟩

def cellA5B23 : CellData where
  inverse := 10058283805847168
  bounds := fun _ => ⟨0, -1⟩

def cellA5B24 : CellData where
  inverse := 57741999626159668
  bounds := fun _ => ⟨0, -1⟩

def cellA5B25 : CellData where
  inverse := 176951289176940918
  bounds := fun _ => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1447⟩
    else if d = (-5 : ℤ) then ⟨0, 1447⟩
    else if d = (0 : ℤ) then ⟨0, 1447⟩
    else if d = (5 : ℤ) then ⟨0, 1447⟩
    else if d = (10 : ℤ) then ⟨0, 1447⟩
    else ⟨0, 1448⟩

def cellA6B2 : CellData where
  inverse := 9
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1447⟩
    else ⟨0, 1448⟩

def cellA6B3 : CellData where
  inverse := 84
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 740⟩
    else if d = (-6 : ℤ) then ⟨0, 740⟩
    else if d = (-3 : ℤ) then ⟨0, 740⟩
    else if d = (0 : ℤ) then ⟨0, 740⟩
    else ⟨0, 741⟩

def cellA6B4 : CellData where
  inverse := 459
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 148⟩
    else if d = (-5 : ℤ) then ⟨0, 148⟩
    else if d = (-4 : ℤ) then ⟨0, 148⟩
    else if d = (-1 : ℤ) then ⟨0, 148⟩
    else if d = (3 : ℤ) then ⟨0, 148⟩
    else if d = (7 : ℤ) then ⟨0, 148⟩
    else if d = (10 : ℤ) then ⟨0, 148⟩
    else ⟨0, 147⟩

def cellA6B5 : CellData where
  inverse := 1709
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 28⟩
    else if d = (-4 : ℤ) then ⟨0, 28⟩
    else if d = (-2 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (5 : ℤ) then ⟨0, 28⟩
    else if d = (7 : ℤ) then ⟨0, 28⟩
    else if d = (9 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA6B6 : CellData where
  inverse := 1709
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA6B7 : CellData where
  inverse := 32959
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA6B8 : CellData where
  inverse := 189209
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B9 : CellData where
  inverse := 579834
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B10 : CellData where
  inverse := 8392334
  bounds := fun _ => ⟨0, -1⟩

def cellA6B11 : CellData where
  inverse := 8392334
  bounds := fun _ => ⟨0, -1⟩

def cellA6B12 : CellData where
  inverse := 57220459
  bounds := fun _ => ⟨0, -1⟩

def cellA6B13 : CellData where
  inverse := 57220459
  bounds := fun _ => ⟨0, -1⟩

def cellA6B14 : CellData where
  inverse := 3719329834
  bounds := fun _ => ⟨0, -1⟩

def cellA6B15 : CellData where
  inverse := 28133392334
  bounds := fun _ => ⟨0, -1⟩

def cellA6B16 : CellData where
  inverse := 150203704834
  bounds := fun _ => ⟨0, -1⟩

def cellA6B17 : CellData where
  inverse := 607967376709
  bounds := fun _ => ⟨0, -1⟩

def cellA6B18 : CellData where
  inverse := 1370906829834
  bounds := fun _ => ⟨0, -1⟩

def cellA6B19 : CellData where
  inverse := 12814998626709
  bounds := fun _ => ⟨0, -1⟩

def cellA6B20 : CellData where
  inverse := 70035457611084
  bounds := fun _ => ⟨0, -1⟩

def cellA6B21 : CellData where
  inverse := 260770320892334
  bounds := fun _ => ⟨0, -1⟩

def cellA6B22 : CellData where
  inverse := 260770320892334
  bounds := fun _ => ⟨0, -1⟩

def cellA6B23 : CellData where
  inverse := 5029141902923584
  bounds := fun _ => ⟨0, -1⟩

def cellA6B24 : CellData where
  inverse := 28870999813079834
  bounds := fun _ => ⟨0, -1⟩

def cellA6B25 : CellData where
  inverse := 88475644588470459
  bounds := fun _ => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 724⟩
    else if d = (-7 : ℤ) then ⟨0, 724⟩
    else if d = (-4 : ℤ) then ⟨0, 724⟩
    else if d = (-2 : ℤ) then ⟨0, 724⟩
    else if d = (1 : ℤ) then ⟨0, 724⟩
    else if d = (3 : ℤ) then ⟨0, 724⟩
    else if d = (6 : ℤ) then ⟨0, 724⟩
    else if d = (8 : ℤ) then ⟨0, 724⟩
    else ⟨0, 723⟩

def cellA7B2 : CellData where
  inverse := 17
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 724⟩
    else if d = (-7 : ℤ) then ⟨0, 724⟩
    else if d = (-4 : ℤ) then ⟨0, 724⟩
    else if d = (-1 : ℤ) then ⟨0, 724⟩
    else if d = (2 : ℤ) then ⟨0, 724⟩
    else if d = (3 : ℤ) then ⟨0, 724⟩
    else if d = (5 : ℤ) then ⟨0, 724⟩
    else if d = (6 : ℤ) then ⟨0, 724⟩
    else if d = (8 : ℤ) then ⟨0, 724⟩
    else if d = (9 : ℤ) then ⟨0, 724⟩
    else ⟨0, 723⟩

def cellA7B3 : CellData where
  inverse := 42
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 724⟩
    else if d = (-5 : ℤ) then ⟨0, 724⟩
    else if d = (-2 : ℤ) then ⟨0, 724⟩
    else if d = (1 : ℤ) then ⟨0, 724⟩
    else if d = (3 : ℤ) then ⟨0, 724⟩
    else if d = (4 : ℤ) then ⟨0, 724⟩
    else if d = (6 : ℤ) then ⟨0, 724⟩
    else if d = (7 : ℤ) then ⟨0, 724⟩
    else if d = (9 : ℤ) then ⟨0, 724⟩
    else if d = (10 : ℤ) then ⟨0, 724⟩
    else ⟨0, 723⟩

def cellA7B4 : CellData where
  inverse := 542
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 148⟩
    else if d = (-9 : ℤ) then ⟨0, 148⟩
    else if d = (-8 : ℤ) then ⟨0, 148⟩
    else if d = (-2 : ℤ) then ⟨0, 148⟩
    else if d = (-1 : ℤ) then ⟨0, 148⟩
    else if d = (5 : ℤ) then ⟨0, 148⟩
    else if d = (6 : ℤ) then ⟨0, 148⟩
    else if d = (7 : ℤ) then ⟨0, 148⟩
    else ⟨0, 147⟩

def cellA7B5 : CellData where
  inverse := 2417
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 28⟩
    else if d = (-4 : ℤ) then ⟨0, 28⟩
    else if d = (-3 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (1 : ℤ) then ⟨0, 28⟩
    else if d = (5 : ℤ) then ⟨0, 28⟩
    else if d = (9 : ℤ) then ⟨0, 28⟩
    else if d = (10 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA7B6 : CellData where
  inverse := 8667
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA7B7 : CellData where
  inverse := 55542
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA7B8 : CellData where
  inverse := 289917
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B9 : CellData where
  inverse := 289917
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B10 : CellData where
  inverse := 4196167
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B11 : CellData where
  inverse := 4196167
  bounds := fun _ => ⟨0, -1⟩

def cellA7B12 : CellData where
  inverse := 150680542
  bounds := fun _ => ⟨0, -1⟩

def cellA7B13 : CellData where
  inverse := 638961792
  bounds := fun _ => ⟨0, -1⟩

def cellA7B14 : CellData where
  inverse := 1859664917
  bounds := fun _ => ⟨0, -1⟩

def cellA7B15 : CellData where
  inverse := 14066696167
  bounds := fun _ => ⟨0, -1⟩

def cellA7B16 : CellData where
  inverse := 75101852417
  bounds := fun _ => ⟨0, -1⟩

def cellA7B17 : CellData where
  inverse := 685453414917
  bounds := fun _ => ⟨0, -1⟩

def cellA7B18 : CellData where
  inverse := 685453414917
  bounds := fun _ => ⟨0, -1⟩

def cellA7B19 : CellData where
  inverse := 15944242477417
  bounds := fun _ => ⟨0, -1⟩

def cellA7B20 : CellData where
  inverse := 35017728805542
  bounds := fun _ => ⟨0, -1⟩

def cellA7B21 : CellData where
  inverse := 130385160446167
  bounds := fun _ => ⟨0, -1⟩

def cellA7B22 : CellData where
  inverse := 130385160446167
  bounds := fun _ => ⟨0, -1⟩

def cellA7B23 : CellData where
  inverse := 2514570951461792
  bounds := fun _ => ⟨0, -1⟩

def cellA7B24 : CellData where
  inverse := 14435499906539917
  bounds := fun _ => ⟨0, -1⟩

def cellA7B25 : CellData where
  inverse := 193249434232711792
  bounds := fun _ => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 362⟩
    else if d = (-4 : ℤ) then ⟨0, 362⟩
    else if d = (1 : ℤ) then ⟨0, 362⟩
    else if d = (6 : ℤ) then ⟨0, 362⟩
    else ⟨0, 361⟩

def cellA8B2 : CellData where
  inverse := 21
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 362⟩
    else if d = (-1 : ℤ) then ⟨0, 362⟩
    else if d = (5 : ℤ) then ⟨0, 362⟩
    else if d = (6 : ℤ) then ⟨0, 362⟩
    else ⟨0, 361⟩

def cellA8B3 : CellData where
  inverse := 21
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 362⟩
    else if d = (1 : ℤ) then ⟨0, 362⟩
    else if d = (6 : ℤ) then ⟨0, 362⟩
    else if d = (7 : ℤ) then ⟨0, 362⟩
    else ⟨0, 361⟩

def cellA8B4 : CellData where
  inverse := 271
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 148⟩
    else if d = (-4 : ℤ) then ⟨0, 148⟩
    else if d = (-2 : ℤ) then ⟨0, 148⟩
    else if d = (3 : ℤ) then ⟨0, 148⟩
    else if d = (5 : ℤ) then ⟨0, 148⟩
    else if d = (7 : ℤ) then ⟨0, 148⟩
    else if d = (10 : ℤ) then ⟨0, 148⟩
    else ⟨0, 147⟩

def cellA8B5 : CellData where
  inverse := 2771
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 28⟩
    else if d = (-7 : ℤ) then ⟨0, 28⟩
    else if d = (-6 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (1 : ℤ) then ⟨0, 28⟩
    else if d = (2 : ℤ) then ⟨0, 28⟩
    else if d = (9 : ℤ) then ⟨0, 28⟩
    else if d = (10 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA8B6 : CellData where
  inverse := 12146
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA8B7 : CellData where
  inverse := 27771
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA8B8 : CellData where
  inverse := 340271
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B9 : CellData where
  inverse := 1121521
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B10 : CellData where
  inverse := 6980896
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B11 : CellData where
  inverse := 26512146
  bounds := fun _ => ⟨0, -1⟩

def cellA8B12 : CellData where
  inverse := 75340271
  bounds := fun _ => ⟨0, -1⟩

def cellA8B13 : CellData where
  inverse := 319480896
  bounds := fun _ => ⟨0, -1⟩

def cellA8B14 : CellData where
  inverse := 3981590271
  bounds := fun _ => ⟨0, -1⟩

def cellA8B15 : CellData where
  inverse := 22292137146
  bounds := fun _ => ⟨0, -1⟩

def cellA8B16 : CellData where
  inverse := 113844871521
  bounds := fun _ => ⟨0, -1⟩

def cellA8B17 : CellData where
  inverse := 724196434021
  bounds := fun _ => ⟨0, -1⟩

def cellA8B18 : CellData where
  inverse := 2250075340271
  bounds := fun _ => ⟨0, -1⟩

def cellA8B19 : CellData where
  inverse := 17508864402771
  bounds := fun _ => ⟨0, -1⟩

def cellA8B20 : CellData where
  inverse := 17508864402771
  bounds := fun _ => ⟨0, -1⟩

def cellA8B21 : CellData where
  inverse := 303611159324646
  bounds := fun _ => ⟨0, -1⟩

def cellA8B22 : CellData where
  inverse := 1257285475730896
  bounds := fun _ => ⟨0, -1⟩

def cellA8B23 : CellData where
  inverse := 1257285475730896
  bounds := fun _ => ⟨0, -1⟩

def cellA8B24 : CellData where
  inverse := 37020072340965271
  bounds := fun _ => ⟨0, -1⟩

def cellA8B25 : CellData where
  inverse := 96624717116355896
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
  else if b = 22 then cellA1B22
  else if b = 23 then cellA1B23
  else if b = 24 then cellA1B24
  else if b = 25 then cellA1B25
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
  else if b = 22 then cellA2B22
  else if b = 23 then cellA2B23
  else if b = 24 then cellA2B24
  else if b = 25 then cellA2B25
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
  else if b = 22 then cellA3B22
  else if b = 23 then cellA3B23
  else if b = 24 then cellA3B24
  else if b = 25 then cellA3B25
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
  else if b = 22 then cellA4B22
  else if b = 23 then cellA4B23
  else if b = 24 then cellA4B24
  else if b = 25 then cellA4B25
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
  else if b = 22 then cellA5B22
  else if b = 23 then cellA5B23
  else if b = 24 then cellA5B24
  else if b = 25 then cellA5B25
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
  else if b = 22 then cellA6B22
  else if b = 23 then cellA6B23
  else if b = 24 then cellA6B24
  else if b = 25 then cellA6B25
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
  else if b = 22 then cellA7B22
  else if b = 23 then cellA7B23
  else if b = 24 then cellA7B24
  else if b = 25 then cellA7B25
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
  else if b = 22 then cellA8B22
  else if b = 23 then cellA8B23
  else if b = 24 then cellA8B24
  else if b = 25 then cellA8B25
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

end Math.B699.CRTStage1Pair25.Chunk000
