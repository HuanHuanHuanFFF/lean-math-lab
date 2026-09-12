import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage1Pair35.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 18546⟩
    else if d = (-2 : ℤ) then ⟨0, 18546⟩
    else if d = (3 : ℤ) then ⟨1, 18546⟩
    else if d = (6 : ℤ) then ⟨1, 18545⟩
    else if d = (8 : ℤ) then ⟨1, 18546⟩
    else if d = (9 : ℤ) then ⟨1, 18545⟩
    else ⟨0, 18545⟩

def cellA1B2 : CellData where
  inverse := 17
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3709⟩
    else if d = (-7 : ℤ) then ⟨0, 3709⟩
    else if d = (3 : ℤ) then ⟨1, 3709⟩
    else if d = (6 : ℤ) then ⟨1, 3709⟩
    else if d = (9 : ℤ) then ⟨1, 3709⟩
    else ⟨0, 3708⟩

def cellA1B3 : CellData where
  inverse := 42
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 740⟩
    else if d = (-6 : ℤ) then ⟨0, 740⟩
    else if d = (-3 : ℤ) then ⟨0, 740⟩
    else if d = (0 : ℤ) then ⟨0, 740⟩
    else if d = (3 : ℤ) then ⟨1, 741⟩
    else if d = (6 : ℤ) then ⟨1, 741⟩
    else if d = (9 : ℤ) then ⟨1, 741⟩
    else ⟨0, 741⟩

def cellA1B4 : CellData where
  inverse := 417
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 148⟩
    else if d = (-7 : ℤ) then ⟨0, 148⟩
    else if d = (-4 : ℤ) then ⟨0, 148⟩
    else if d = (-1 : ℤ) then ⟨0, 148⟩
    else if d = (2 : ℤ) then ⟨0, 148⟩
    else if d = (3 : ℤ) then ⟨1, 148⟩
    else if d = (5 : ℤ) then ⟨0, 148⟩
    else if d = (6 : ℤ) then ⟨1, 148⟩
    else if d = (8 : ℤ) then ⟨0, 148⟩
    else if d = (9 : ℤ) then ⟨1, 148⟩
    else ⟨0, 147⟩

def cellA1B5 : CellData where
  inverse := 1042
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 28⟩
    else if d = (-6 : ℤ) then ⟨0, 28⟩
    else if d = (-3 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (3 : ℤ) then ⟨1, 29⟩
    else if d = (6 : ℤ) then ⟨1, 29⟩
    else if d = (9 : ℤ) then ⟨1, 29⟩
    else ⟨0, 29⟩

def cellA1B6 : CellData where
  inverse := 10417
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-6 : ℤ) then ⟨0, 4⟩
    else if d = (-3 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨1, 5⟩
    else if d = (6 : ℤ) then ⟨1, 5⟩
    else if d = (9 : ℤ) then ⟨1, 5⟩
    else ⟨0, 5⟩

def cellA1B7 : CellData where
  inverse := 26042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 1⟩
    else if d = (6 : ℤ) then ⟨1, 1⟩
    else if d = (9 : ℤ) then ⟨1, 1⟩
    else ⟨0, 0⟩

def cellA1B8 : CellData where
  inverse := 260417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B9 : CellData where
  inverse := 651042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B10 : CellData where
  inverse := 6510417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B11 : CellData where
  inverse := 16276042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B12 : CellData where
  inverse := 162760417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B13 : CellData where
  inverse := 406901042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B14 : CellData where
  inverse := 4069010417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B15 : CellData where
  inverse := 10172526042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B16 : CellData where
  inverse := 101725260417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B17 : CellData where
  inverse := 254313151042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B18 : CellData where
  inverse := 2543131510417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B19 : CellData where
  inverse := 6357828776042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B20 : CellData where
  inverse := 63578287760417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B21 : CellData where
  inverse := 158945719401042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B22 : CellData where
  inverse := 1589457194010417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B23 : CellData where
  inverse := 3973642985026042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B24 : CellData where
  inverse := 39736429850260417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B25 : CellData where
  inverse := 99341074625651042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 10303⟩
    else if d = (-2 : ℤ) then ⟨0, 10303⟩
    else if d = (-1 : ℤ) then ⟨0, 10303⟩
    else if d = (3 : ℤ) then ⟨0, 10303⟩
    else if d = (4 : ℤ) then ⟨0, 10303⟩
    else if d = (7 : ℤ) then ⟨0, 10303⟩
    else if d = (8 : ℤ) then ⟨0, 10303⟩
    else if d = (9 : ℤ) then ⟨1, 10303⟩
    else ⟨0, 10302⟩

def cellA2B2 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 3709⟩
    else if d = (-5 : ℤ) then ⟨0, 3709⟩
    else if d = (2 : ℤ) then ⟨0, 3709⟩
    else if d = (4 : ℤ) then ⟨0, 3709⟩
    else if d = (9 : ℤ) then ⟨1, 3709⟩
    else ⟨0, 3708⟩

def cellA2B3 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 740⟩
    else if d = (-9 : ℤ) then ⟨0, 740⟩
    else if d = (-1 : ℤ) then ⟨0, 740⟩
    else if d = (0 : ℤ) then ⟨0, 740⟩
    else if d = (8 : ℤ) then ⟨0, 740⟩
    else if d = (9 : ℤ) then ⟨1, 741⟩
    else ⟨0, 741⟩

def cellA2B4 : CellData where
  inverse := 139
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 148⟩
    else if d = (-4 : ℤ) then ⟨0, 148⟩
    else if d = (-3 : ℤ) then ⟨0, 148⟩
    else if d = (1 : ℤ) then ⟨0, 148⟩
    else if d = (5 : ℤ) then ⟨0, 148⟩
    else if d = (6 : ℤ) then ⟨0, 148⟩
    else if d = (9 : ℤ) then ⟨1, 148⟩
    else if d = (10 : ℤ) then ⟨0, 148⟩
    else ⟨0, 147⟩

def cellA2B5 : CellData where
  inverse := 1389
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 28⟩
    else if d = (-7 : ℤ) then ⟨0, 28⟩
    else if d = (-5 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (2 : ℤ) then ⟨0, 28⟩
    else if d = (4 : ℤ) then ⟨0, 28⟩
    else if d = (9 : ℤ) then ⟨1, 29⟩
    else ⟨0, 29⟩

def cellA2B6 : CellData where
  inverse := 13889
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨1, 5⟩
    else ⟨0, 5⟩

def cellA2B7 : CellData where
  inverse := 60764
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (4 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨1, 1⟩
    else ⟨0, 0⟩

def cellA2B8 : CellData where
  inverse := 217014
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B9 : CellData where
  inverse := 217014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B10 : CellData where
  inverse := 2170139
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B11 : CellData where
  inverse := 21701389
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B12 : CellData where
  inverse := 217013889
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B13 : CellData where
  inverse := 949435764
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B14 : CellData where
  inverse := 3390842014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B15 : CellData where
  inverse := 3390842014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B16 : CellData where
  inverse := 33908420139
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B17 : CellData where
  inverse := 339084201389
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B18 : CellData where
  inverse := 3390842013889
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B19 : CellData where
  inverse := 14834933810764
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B20 : CellData where
  inverse := 52981906467014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B21 : CellData where
  inverse := 52981906467014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B22 : CellData where
  inverse := 529819064670139
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B23 : CellData where
  inverse := 5298190646701389
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B24 : CellData where
  inverse := 52981906467013889
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B25 : CellData where
  inverse := 231795840793185764
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 3434⟩
    else if d = (-6 : ℤ) then ⟨0, 3434⟩
    else if d = (-3 : ℤ) then ⟨0, 3434⟩
    else if d = (-1 : ℤ) then ⟨0, 3434⟩
    else if d = (2 : ℤ) then ⟨0, 3434⟩
    else if d = (4 : ℤ) then ⟨0, 3434⟩
    else if d = (7 : ℤ) then ⟨0, 3434⟩
    else if d = (9 : ℤ) then ⟨0, 3434⟩
    else ⟨0, 3433⟩

def cellA3B2 : CellData where
  inverse := 13
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 3434⟩
    else if d = (-7 : ℤ) then ⟨0, 3434⟩
    else if d = (-5 : ℤ) then ⟨0, 3434⟩
    else if d = (-3 : ℤ) then ⟨0, 3434⟩
    else if d = (-1 : ℤ) then ⟨0, 3434⟩
    else if d = (2 : ℤ) then ⟨0, 3434⟩
    else if d = (4 : ℤ) then ⟨0, 3434⟩
    else if d = (6 : ℤ) then ⟨0, 3434⟩
    else if d = (8 : ℤ) then ⟨0, 3434⟩
    else if d = (10 : ℤ) then ⟨0, 3434⟩
    else ⟨0, 3433⟩

def cellA3B3 : CellData where
  inverse := 88
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 740⟩
    else if d = (-3 : ℤ) then ⟨0, 740⟩
    else if d = (0 : ℤ) then ⟨0, 740⟩
    else if d = (7 : ℤ) then ⟨0, 740⟩
    else ⟨0, 741⟩

def cellA3B4 : CellData where
  inverse := 463
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 148⟩
    else if d = (-8 : ℤ) then ⟨0, 148⟩
    else if d = (-5 : ℤ) then ⟨0, 148⟩
    else if d = (-4 : ℤ) then ⟨0, 148⟩
    else if d = (-1 : ℤ) then ⟨0, 148⟩
    else if d = (3 : ℤ) then ⟨0, 148⟩
    else if d = (7 : ℤ) then ⟨0, 148⟩
    else ⟨0, 147⟩

def cellA3B5 : CellData where
  inverse := 463
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 28⟩
    else if d = (-7 : ℤ) then ⟨0, 28⟩
    else if d = (-2 : ℤ) then ⟨0, 28⟩
    else if d = (-1 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (5 : ℤ) then ⟨0, 28⟩
    else if d = (6 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA3B6 : CellData where
  inverse := 9838
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA3B7 : CellData where
  inverse := 72338
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA3B8 : CellData where
  inverse := 72338
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA3B9 : CellData where
  inverse := 72338
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA3B10 : CellData where
  inverse := 3978588
  bounds := fun _ => ⟨0, -1⟩

def cellA3B11 : CellData where
  inverse := 23509838
  bounds := fun _ => ⟨0, -1⟩

def cellA3B12 : CellData where
  inverse := 72337963
  bounds := fun _ => ⟨0, -1⟩

def cellA3B13 : CellData where
  inverse := 316478588
  bounds := fun _ => ⟨0, -1⟩

def cellA3B14 : CellData where
  inverse := 5199291088
  bounds := fun _ => ⟨0, -1⟩

def cellA3B15 : CellData where
  inverse := 11302806713
  bounds := fun _ => ⟨0, -1⟩

def cellA3B16 : CellData where
  inverse := 11302806713
  bounds := fun _ => ⟨0, -1⟩

def cellA3B17 : CellData where
  inverse := 621654369213
  bounds := fun _ => ⟨0, -1⟩

def cellA3B18 : CellData where
  inverse := 3673412181713
  bounds := fun _ => ⟨0, -1⟩

def cellA3B19 : CellData where
  inverse := 11302806712963
  bounds := fun _ => ⟨0, -1⟩

def cellA3B20 : CellData where
  inverse := 49449779369213
  bounds := fun _ => ⟨0, -1⟩

def cellA3B21 : CellData where
  inverse := 335552074291088
  bounds := fun _ => ⟨0, -1⟩

def cellA3B22 : CellData where
  inverse := 1766063548900463
  bounds := fun _ => ⟨0, -1⟩

def cellA3B23 : CellData where
  inverse := 1766063548900463
  bounds := fun _ => ⟨0, -1⟩

def cellA3B24 : CellData where
  inverse := 37528850414134838
  bounds := fun _ => ⟨0, -1⟩

def cellA3B25 : CellData where
  inverse := 275947429515697338
  bounds := fun _ => ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1143⟩
    else if d = (-5 : ℤ) then ⟨0, 1143⟩
    else if d = (0 : ℤ) then ⟨0, 1143⟩
    else if d = (5 : ℤ) then ⟨0, 1143⟩
    else if d = (10 : ℤ) then ⟨0, 1143⟩
    else ⟨0, 1144⟩

def cellA4B2 : CellData where
  inverse := 21
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 1143⟩
    else if d = (0 : ℤ) then ⟨0, 1143⟩
    else if d = (1 : ℤ) then ⟨0, 1143⟩
    else if d = (7 : ℤ) then ⟨0, 1143⟩
    else ⟨0, 1144⟩

def cellA4B3 : CellData where
  inverse := 71
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 740⟩
    else if d = (-2 : ℤ) then ⟨0, 740⟩
    else if d = (0 : ℤ) then ⟨0, 740⟩
    else if d = (7 : ℤ) then ⟨0, 740⟩
    else ⟨0, 741⟩

def cellA4B4 : CellData where
  inverse := 571
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 148⟩
    else if d = (-3 : ℤ) then ⟨0, 148⟩
    else if d = (-2 : ℤ) then ⟨0, 148⟩
    else if d = (-1 : ℤ) then ⟨0, 148⟩
    else if d = (8 : ℤ) then ⟨0, 148⟩
    else if d = (9 : ℤ) then ⟨0, 148⟩
    else if d = (10 : ℤ) then ⟨0, 148⟩
    else ⟨0, 147⟩

def cellA4B5 : CellData where
  inverse := 1196
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 28⟩
    else if d = (-6 : ℤ) then ⟨0, 28⟩
    else if d = (-3 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (2 : ℤ) then ⟨0, 28⟩
    else if d = (5 : ℤ) then ⟨0, 28⟩
    else if d = (7 : ℤ) then ⟨0, 28⟩
    else if d = (10 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA4B6 : CellData where
  inverse := 13696
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA4B7 : CellData where
  inverse := 76196
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA4B8 : CellData where
  inverse := 154321
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B9 : CellData where
  inverse := 1326196
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B10 : CellData where
  inverse := 1326196
  bounds := fun _ => ⟨0, -1⟩

def cellA4B11 : CellData where
  inverse := 40388696
  bounds := fun _ => ⟨0, -1⟩

def cellA4B12 : CellData where
  inverse := 186873071
  bounds := fun _ => ⟨0, -1⟩

def cellA4B13 : CellData where
  inverse := 919294946
  bounds := fun _ => ⟨0, -1⟩

def cellA4B14 : CellData where
  inverse := 5802107446
  bounds := fun _ => ⟨0, -1⟩

def cellA4B15 : CellData where
  inverse := 24112654321
  bounds := fun _ => ⟨0, -1⟩

def cellA4B16 : CellData where
  inverse := 54630232446
  bounds := fun _ => ⟨0, -1⟩

def cellA4B17 : CellData where
  inverse := 207218123071
  bounds := fun _ => ⟨0, -1⟩

def cellA4B18 : CellData where
  inverse := 2496036482446
  bounds := fun _ => ⟨0, -1⟩

def cellA4B19 : CellData where
  inverse := 10125431013696
  bounds := fun _ => ⟨0, -1⟩

def cellA4B20 : CellData where
  inverse := 48272403669946
  bounds := fun _ => ⟨0, -1⟩

def cellA4B21 : CellData where
  inverse := 429742130232446
  bounds := fun _ => ⟨0, -1⟩

def cellA4B22 : CellData where
  inverse := 1383416446638696
  bounds := fun _ => ⟨0, -1⟩

def cellA4B23 : CellData where
  inverse := 8535973819685571
  bounds := fun _ => ⟨0, -1⟩

def cellA4B24 : CellData where
  inverse := 32377831729841821
  bounds := fun _ => ⟨0, -1⟩

def cellA4B25 : CellData where
  inverse := 91982476505232446
  bounds := fun _ => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 380⟩
    else if d = (-8 : ℤ) then ⟨0, 380⟩
    else if d = (-5 : ℤ) then ⟨0, 380⟩
    else if d = (-3 : ℤ) then ⟨0, 380⟩
    else if d = (0 : ℤ) then ⟨0, 380⟩
    else if d = (2 : ℤ) then ⟨0, 380⟩
    else if d = (5 : ℤ) then ⟨0, 380⟩
    else if d = (7 : ℤ) then ⟨0, 380⟩
    else if d = (10 : ℤ) then ⟨0, 380⟩
    else ⟨0, 381⟩

def cellA5B2 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 380⟩
    else if d = (-4 : ℤ) then ⟨0, 380⟩
    else if d = (-1 : ℤ) then ⟨0, 380⟩
    else if d = (0 : ℤ) then ⟨0, 380⟩
    else if d = (3 : ℤ) then ⟨0, 380⟩
    else if d = (6 : ℤ) then ⟨0, 380⟩
    else if d = (7 : ℤ) then ⟨0, 380⟩
    else if d = (10 : ℤ) then ⟨0, 380⟩
    else ⟨0, 381⟩

def cellA5B3 : CellData where
  inverse := 107
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 380⟩
    else if d = (-5 : ℤ) then ⟨0, 380⟩
    else if d = (0 : ℤ) then ⟨0, 380⟩
    else if d = (1 : ℤ) then ⟨0, 380⟩
    else if d = (2 : ℤ) then ⟨0, 380⟩
    else if d = (7 : ℤ) then ⟨0, 380⟩
    else if d = (8 : ℤ) then ⟨0, 380⟩
    else if d = (9 : ℤ) then ⟨0, 380⟩
    else ⟨0, 381⟩

def cellA5B4 : CellData where
  inverse := 607
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 148⟩
    else if d = (-9 : ℤ) then ⟨0, 148⟩
    else if d = (-8 : ℤ) then ⟨0, 148⟩
    else if d = (-7 : ℤ) then ⟨0, 148⟩
    else if d = (-6 : ℤ) then ⟨0, 148⟩
    else if d = (-5 : ℤ) then ⟨0, 148⟩
    else if d = (-4 : ℤ) then ⟨0, 148⟩
    else if d = (-3 : ℤ) then ⟨0, 148⟩
    else if d = (-2 : ℤ) then ⟨0, 148⟩
    else if d = (-1 : ℤ) then ⟨0, 148⟩
    else ⟨0, 147⟩

def cellA5B5 : CellData where
  inverse := 2482
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 28⟩
    else if d = (-4 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (1 : ℤ) then ⟨0, 28⟩
    else if d = (5 : ℤ) then ⟨0, 28⟩
    else if d = (6 : ℤ) then ⟨0, 28⟩
    else if d = (10 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA5B6 : CellData where
  inverse := 14982
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (1 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA5B7 : CellData where
  inverse := 77482
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA5B8 : CellData where
  inverse := 311857
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B9 : CellData where
  inverse := 1093107
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B10 : CellData where
  inverse := 6952482
  bounds := fun _ => ⟨0, -1⟩

def cellA5B11 : CellData where
  inverse := 46014982
  bounds := fun _ => ⟨0, -1⟩

def cellA5B12 : CellData where
  inverse := 143671232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B13 : CellData where
  inverse := 1120233732
  bounds := fun _ => ⟨0, -1⟩

def cellA5B14 : CellData where
  inverse := 6003046232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B15 : CellData where
  inverse := 18210077482
  bounds := fun _ => ⟨0, -1⟩

def cellA5B16 : CellData where
  inverse := 18210077482
  bounds := fun _ => ⟨0, -1⟩

def cellA5B17 : CellData where
  inverse := 323385858732
  bounds := fun _ => ⟨0, -1⟩

def cellA5B18 : CellData where
  inverse := 3375143671232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B19 : CellData where
  inverse := 3375143671232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B20 : CellData where
  inverse := 79669088983732
  bounds := fun _ => ⟨0, -1⟩

def cellA5B21 : CellData where
  inverse := 461138815546232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B22 : CellData where
  inverse := 461138815546232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B23 : CellData where
  inverse := 2845324606561857
  bounds := fun _ => ⟨0, -1⟩

def cellA5B24 : CellData where
  inverse := 50529040426874357
  bounds := fun _ => ⟨0, -1⟩

def cellA5B25 : CellData where
  inverse := 229342974753046232
  bounds := fun _ => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 127⟩
    else if d = (-1 : ℤ) then ⟨0, 127⟩
    else if d = (4 : ℤ) then ⟨0, 127⟩
    else if d = (9 : ℤ) then ⟨0, 127⟩
    else ⟨0, 126⟩

def cellA6B2 : CellData where
  inverse := 19
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 127⟩
    else if d = (-5 : ℤ) then ⟨0, 127⟩
    else if d = (4 : ℤ) then ⟨0, 127⟩
    else if d = (8 : ℤ) then ⟨0, 127⟩
    else ⟨0, 126⟩

def cellA6B3 : CellData where
  inverse := 119
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 127⟩
    else if d = (-3 : ℤ) then ⟨0, 127⟩
    else if d = (-2 : ℤ) then ⟨0, 127⟩
    else if d = (-1 : ℤ) then ⟨0, 127⟩
    else ⟨0, 126⟩

def cellA6B4 : CellData where
  inverse := 619
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 127⟩
    else if d = (-9 : ℤ) then ⟨0, 127⟩
    else if d = (-8 : ℤ) then ⟨0, 127⟩
    else if d = (-7 : ℤ) then ⟨0, 127⟩
    else if d = (-6 : ℤ) then ⟨0, 127⟩
    else if d = (-5 : ℤ) then ⟨0, 127⟩
    else if d = (-4 : ℤ) then ⟨0, 127⟩
    else if d = (-3 : ℤ) then ⟨0, 127⟩
    else if d = (-2 : ℤ) then ⟨0, 127⟩
    else if d = (-1 : ℤ) then ⟨0, 127⟩
    else ⟨0, 126⟩

def cellA6B5 : CellData where
  inverse := 1869
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 28⟩
    else if d = (-2 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (3 : ℤ) then ⟨0, 28⟩
    else if d = (5 : ℤ) then ⟨0, 28⟩
    else if d = (8 : ℤ) then ⟨0, 28⟩
    else if d = (10 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA6B6 : CellData where
  inverse := 4994
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA6B7 : CellData where
  inverse := 51869
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA6B8 : CellData where
  inverse := 364369
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B9 : CellData where
  inverse := 364369
  bounds := fun _ => ⟨0, -1⟩

def cellA6B10 : CellData where
  inverse := 2317494
  bounds := fun _ => ⟨0, -1⟩

def cellA6B11 : CellData where
  inverse := 31614369
  bounds := fun _ => ⟨0, -1⟩

def cellA6B12 : CellData where
  inverse := 129270619
  bounds := fun _ => ⟨0, -1⟩

def cellA6B13 : CellData where
  inverse := 373411244
  bounds := fun _ => ⟨0, -1⟩

def cellA6B14 : CellData where
  inverse := 4035520619
  bounds := fun _ => ⟨0, -1⟩

def cellA6B15 : CellData where
  inverse := 16242551869
  bounds := fun _ => ⟨0, -1⟩

def cellA6B16 : CellData where
  inverse := 107795286244
  bounds := fun _ => ⟨0, -1⟩

def cellA6B17 : CellData where
  inverse := 107795286244
  bounds := fun _ => ⟨0, -1⟩

def cellA6B18 : CellData where
  inverse := 2396613645619
  bounds := fun _ => ⟨0, -1⟩

def cellA6B19 : CellData where
  inverse := 13840705442494
  bounds := fun _ => ⟨0, -1⟩

def cellA6B20 : CellData where
  inverse := 90134650754994
  bounds := fun _ => ⟨0, -1⟩

def cellA6B21 : CellData where
  inverse := 471604377317494
  bounds := fun _ => ⟨0, -1⟩

def cellA6B22 : CellData where
  inverse := 948441535520619
  bounds := fun _ => ⟨0, -1⟩

def cellA6B23 : CellData where
  inverse := 948441535520619
  bounds := fun _ => ⟨0, -1⟩

def cellA6B24 : CellData where
  inverse := 36711228400754994
  bounds := fun _ => ⟨0, -1⟩

def cellA6B25 : CellData where
  inverse := 275129807502317494
  bounds := fun _ => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 42⟩
    else if d = (-6 : ℤ) then ⟨0, 42⟩
    else if d = (-3 : ℤ) then ⟨0, 42⟩
    else if d = (-1 : ℤ) then ⟨0, 42⟩
    else if d = (2 : ℤ) then ⟨0, 42⟩
    else if d = (4 : ℤ) then ⟨0, 42⟩
    else if d = (7 : ℤ) then ⟨0, 42⟩
    else if d = (9 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA7B2 : CellData where
  inverse := 23
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 42⟩
    else if d = (-4 : ℤ) then ⟨0, 42⟩
    else if d = (-3 : ℤ) then ⟨0, 42⟩
    else if d = (-2 : ℤ) then ⟨0, 42⟩
    else if d = (-1 : ℤ) then ⟨0, 42⟩
    else if d = (8 : ℤ) then ⟨0, 42⟩
    else if d = (9 : ℤ) then ⟨0, 42⟩
    else if d = (10 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA7B3 : CellData where
  inverse := 123
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 42⟩
    else if d = (-9 : ℤ) then ⟨0, 42⟩
    else if d = (-8 : ℤ) then ⟨0, 42⟩
    else if d = (-7 : ℤ) then ⟨0, 42⟩
    else if d = (-6 : ℤ) then ⟨0, 42⟩
    else if d = (-5 : ℤ) then ⟨0, 42⟩
    else if d = (-4 : ℤ) then ⟨0, 42⟩
    else if d = (-3 : ℤ) then ⟨0, 42⟩
    else if d = (-2 : ℤ) then ⟨0, 42⟩
    else if d = (-1 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA7B4 : CellData where
  inverse := 623
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 42⟩
    else if d = (-9 : ℤ) then ⟨0, 42⟩
    else if d = (-8 : ℤ) then ⟨0, 42⟩
    else if d = (-7 : ℤ) then ⟨0, 42⟩
    else if d = (-6 : ℤ) then ⟨0, 42⟩
    else if d = (-5 : ℤ) then ⟨0, 42⟩
    else if d = (-4 : ℤ) then ⟨0, 42⟩
    else if d = (-3 : ℤ) then ⟨0, 42⟩
    else if d = (-2 : ℤ) then ⟨0, 42⟩
    else if d = (-1 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA7B5 : CellData where
  inverse := 623
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 28⟩
    else if d = (-1 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (4 : ℤ) then ⟨0, 28⟩
    else if d = (5 : ℤ) then ⟨0, 28⟩
    else if d = (9 : ℤ) then ⟨0, 28⟩
    else if d = (10 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA7B6 : CellData where
  inverse := 6873
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA7B7 : CellData where
  inverse := 69373
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA7B8 : CellData where
  inverse := 381873
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

def cellA7B9 : CellData where
  inverse := 772498
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B10 : CellData where
  inverse := 772498
  bounds := fun _ => ⟨0, -1⟩

def cellA7B11 : CellData where
  inverse := 10538123
  bounds := fun _ => ⟨0, -1⟩

def cellA7B12 : CellData where
  inverse := 205850623
  bounds := fun _ => ⟨0, -1⟩

def cellA7B13 : CellData where
  inverse := 938272498
  bounds := fun _ => ⟨0, -1⟩

def cellA7B14 : CellData where
  inverse := 3379678748
  bounds := fun _ => ⟨0, -1⟩

def cellA7B15 : CellData where
  inverse := 15586709998
  bounds := fun _ => ⟨0, -1⟩

def cellA7B16 : CellData where
  inverse := 137657022498
  bounds := fun _ => ⟨0, -1⟩

def cellA7B17 : CellData where
  inverse := 290244913123
  bounds := fun _ => ⟨0, -1⟩

def cellA7B18 : CellData where
  inverse := 3342002725623
  bounds := fun _ => ⟨0, -1⟩

def cellA7B19 : CellData where
  inverse := 10971397256873
  bounds := fun _ => ⟨0, -1⟩

def cellA7B20 : CellData where
  inverse := 30044883584998
  bounds := fun _ => ⟨0, -1⟩

def cellA7B21 : CellData where
  inverse := 316147178506873
  bounds := fun _ => ⟨0, -1⟩

def cellA7B22 : CellData where
  inverse := 316147178506873
  bounds := fun _ => ⟨0, -1⟩

def cellA7B23 : CellData where
  inverse := 316147178506873
  bounds := fun _ => ⟨0, -1⟩

def cellA7B24 : CellData where
  inverse := 12237076133584998
  bounds := fun _ => ⟨0, -1⟩

def cellA7B25 : CellData where
  inverse := 191051010459756873
  bounds := fun _ => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, 13⟩

def cellA8B2 : CellData where
  inverse := 16
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 14⟩
    else if d = (8 : ℤ) then ⟨0, 14⟩
    else ⟨0, 13⟩

def cellA8B3 : CellData where
  inverse := 41
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 14⟩
    else if d = (-6 : ℤ) then ⟨0, 14⟩
    else if d = (-3 : ℤ) then ⟨0, 14⟩
    else ⟨0, 13⟩

def cellA8B4 : CellData where
  inverse := 416
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 14⟩
    else if d = (-6 : ℤ) then ⟨0, 14⟩
    else if d = (-3 : ℤ) then ⟨0, 14⟩
    else ⟨0, 13⟩

def cellA8B5 : CellData where
  inverse := 2291
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 14⟩
    else if d = (7 : ℤ) then ⟨0, 14⟩
    else ⟨0, 13⟩

def cellA8B6 : CellData where
  inverse := 2291
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA8B7 : CellData where
  inverse := 49166
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA8B8 : CellData where
  inverse := 127291
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B9 : CellData where
  inverse := 908541
  bounds := fun _ => ⟨0, -1⟩

def cellA8B10 : CellData where
  inverse := 6767916
  bounds := fun _ => ⟨0, -1⟩

def cellA8B11 : CellData where
  inverse := 36064791
  bounds := fun _ => ⟨0, -1⟩

def cellA8B12 : CellData where
  inverse := 231377291
  bounds := fun _ => ⟨0, -1⟩

def cellA8B13 : CellData where
  inverse := 719658541
  bounds := fun _ => ⟨0, -1⟩

def cellA8B14 : CellData where
  inverse := 3161064791
  bounds := fun _ => ⟨0, -1⟩

def cellA8B15 : CellData where
  inverse := 15368096041
  bounds := fun _ => ⟨0, -1⟩

def cellA8B16 : CellData where
  inverse := 45885674166
  bounds := fun _ => ⟨0, -1⟩

def cellA8B17 : CellData where
  inverse := 351061455416
  bounds := fun _ => ⟨0, -1⟩

def cellA8B18 : CellData where
  inverse := 1114000908541
  bounds := fun _ => ⟨0, -1⟩

def cellA8B19 : CellData where
  inverse := 16372789971041
  bounds := fun _ => ⟨0, -1⟩

def cellA8B20 : CellData where
  inverse := 73593248955416
  bounds := fun _ => ⟨0, -1⟩

def cellA8B21 : CellData where
  inverse := 264328112236666
  bounds := fun _ => ⟨0, -1⟩

def cellA8B22 : CellData where
  inverse := 1694839586846041
  bounds := fun _ => ⟨0, -1⟩

def cellA8B23 : CellData where
  inverse := 4079025377861666
  bounds := fun _ => ⟨0, -1⟩

def cellA8B24 : CellData where
  inverse := 4079025377861666
  bounds := fun _ => ⟨0, -1⟩

def cellA8B25 : CellData where
  inverse := 63683670153252291
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

end Math.B699.CRTStage1Pair35.Chunk000
