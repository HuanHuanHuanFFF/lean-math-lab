import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage1Pair23.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 30910⟩
    else if d = (-7 : ℤ) then ⟨0, 30910⟩
    else if d = (-4 : ℤ) then ⟨0, 30910⟩
    else if d = (-1 : ℤ) then ⟨0, 30910⟩
    else if d = (2 : ℤ) then ⟨1, 30910⟩
    else if d = (4 : ℤ) then ⟨1, 30909⟩
    else if d = (5 : ℤ) then ⟨1, 30910⟩
    else if d = (6 : ℤ) then ⟨1, 30909⟩
    else if d = (7 : ℤ) then ⟨1, 30909⟩
    else if d = (8 : ℤ) then ⟨2, 30910⟩
    else if d = (9 : ℤ) then ⟨1, 30909⟩
    else if d = (10 : ℤ) then ⟨2, 30909⟩
    else ⟨0, 30909⟩

def cellA1B2 : CellData where
  inverse := 5
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 10303⟩
    else if d = (-7 : ℤ) then ⟨0, 10303⟩
    else if d = (-5 : ℤ) then ⟨0, 10303⟩
    else if d = (-3 : ℤ) then ⟨0, 10303⟩
    else if d = (-1 : ℤ) then ⟨0, 10303⟩
    else if d = (2 : ℤ) then ⟨1, 10303⟩
    else if d = (4 : ℤ) then ⟨1, 10303⟩
    else if d = (6 : ℤ) then ⟨1, 10303⟩
    else if d = (8 : ℤ) then ⟨1, 10303⟩
    else if d = (10 : ℤ) then ⟨1, 10302⟩
    else ⟨0, 10302⟩

def cellA1B3 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 3434⟩
    else if d = (-7 : ℤ) then ⟨0, 3434⟩
    else if d = (-5 : ℤ) then ⟨0, 3434⟩
    else if d = (-3 : ℤ) then ⟨0, 3434⟩
    else if d = (-1 : ℤ) then ⟨0, 3434⟩
    else if d = (2 : ℤ) then ⟨1, 3434⟩
    else if d = (4 : ℤ) then ⟨1, 3434⟩
    else if d = (6 : ℤ) then ⟨1, 3434⟩
    else if d = (8 : ℤ) then ⟨1, 3434⟩
    else if d = (10 : ℤ) then ⟨1, 3434⟩
    else ⟨0, 3433⟩

def cellA1B4 : CellData where
  inverse := 41
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1143⟩
    else if d = (-8 : ℤ) then ⟨0, 1143⟩
    else if d = (-6 : ℤ) then ⟨0, 1143⟩
    else if d = (-4 : ℤ) then ⟨0, 1143⟩
    else if d = (-2 : ℤ) then ⟨0, 1143⟩
    else if d = (0 : ℤ) then ⟨0, 1143⟩
    else if d = (2 : ℤ) then ⟨1, 1144⟩
    else if d = (4 : ℤ) then ⟨1, 1144⟩
    else if d = (6 : ℤ) then ⟨1, 1144⟩
    else if d = (8 : ℤ) then ⟨1, 1144⟩
    else if d = (10 : ℤ) then ⟨1, 1144⟩
    else ⟨0, 1144⟩

def cellA1B5 : CellData where
  inverse := 122
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 380⟩
    else if d = (-8 : ℤ) then ⟨0, 380⟩
    else if d = (-6 : ℤ) then ⟨0, 380⟩
    else if d = (-4 : ℤ) then ⟨0, 380⟩
    else if d = (-2 : ℤ) then ⟨0, 380⟩
    else if d = (0 : ℤ) then ⟨0, 380⟩
    else if d = (2 : ℤ) then ⟨1, 381⟩
    else if d = (4 : ℤ) then ⟨1, 381⟩
    else if d = (6 : ℤ) then ⟨1, 381⟩
    else if d = (8 : ℤ) then ⟨1, 381⟩
    else if d = (10 : ℤ) then ⟨1, 381⟩
    else ⟨0, 381⟩

def cellA1B6 : CellData where
  inverse := 365
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 127⟩
    else if d = (4 : ℤ) then ⟨1, 127⟩
    else if d = (6 : ℤ) then ⟨1, 127⟩
    else if d = (8 : ℤ) then ⟨1, 127⟩
    else if d = (10 : ℤ) then ⟨1, 127⟩
    else ⟨0, 126⟩

def cellA1B7 : CellData where
  inverse := 1094
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 42⟩
    else if d = (4 : ℤ) then ⟨1, 42⟩
    else if d = (6 : ℤ) then ⟨1, 42⟩
    else if d = (8 : ℤ) then ⟨1, 42⟩
    else if d = (10 : ℤ) then ⟨1, 42⟩
    else ⟨0, 41⟩

def cellA1B8 : CellData where
  inverse := 3281
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 14⟩
    else if d = (4 : ℤ) then ⟨1, 14⟩
    else if d = (6 : ℤ) then ⟨1, 14⟩
    else if d = (8 : ℤ) then ⟨1, 14⟩
    else if d = (10 : ℤ) then ⟨1, 14⟩
    else ⟨0, 13⟩

def cellA1B9 : CellData where
  inverse := 9842
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3⟩
    else if d = (-8 : ℤ) then ⟨0, 3⟩
    else if d = (-6 : ℤ) then ⟨0, 3⟩
    else if d = (-4 : ℤ) then ⟨0, 3⟩
    else if d = (-2 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (2 : ℤ) then ⟨1, 4⟩
    else if d = (4 : ℤ) then ⟨1, 4⟩
    else if d = (6 : ℤ) then ⟨1, 4⟩
    else if d = (8 : ℤ) then ⟨1, 4⟩
    else if d = (10 : ℤ) then ⟨1, 4⟩
    else ⟨0, 4⟩

def cellA1B10 : CellData where
  inverse := 29525
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨1, 1⟩
    else if d = (4 : ℤ) then ⟨1, 1⟩
    else if d = (6 : ℤ) then ⟨1, 1⟩
    else if d = (8 : ℤ) then ⟨1, 1⟩
    else if d = (10 : ℤ) then ⟨1, 1⟩
    else ⟨0, 1⟩

def cellA1B11 : CellData where
  inverse := 88574
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

def cellA1B18 : CellData where
  inverse := 193710245
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B19 : CellData where
  inverse := 581130734
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B20 : CellData where
  inverse := 1743392201
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B21 : CellData where
  inverse := 5230176602
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B22 : CellData where
  inverse := 15690529805
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B23 : CellData where
  inverse := 47071589414
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B24 : CellData where
  inverse := 141214768241
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B25 : CellData where
  inverse := 423644304722
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B26 : CellData where
  inverse := 1270932914165
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B27 : CellData where
  inverse := 3812798742494
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B28 : CellData where
  inverse := 11438396227481
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B29 : CellData where
  inverse := 34315188682442
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B30 : CellData where
  inverse := 102945566047325
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B31 : CellData where
  inverse := 308836698141974
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B32 : CellData where
  inverse := 926510094425921
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B33 : CellData where
  inverse := 2779530283277762
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B34 : CellData where
  inverse := 8338590849833285
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B35 : CellData where
  inverse := 25015772549499854
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B36 : CellData where
  inverse := 75047317648499561
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B37 : CellData where
  inverse := 225141952945498682
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B38 : CellData where
  inverse := 675425858836496045
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
    if d = (-10 : ℤ) then ⟨0, 23181⟩
    else if d = (-9 : ℤ) then ⟨0, 23181⟩
    else if d = (-8 : ℤ) then ⟨0, 23181⟩
    else if d = (-7 : ℤ) then ⟨0, 23181⟩
    else if d = (-6 : ℤ) then ⟨0, 23181⟩
    else if d = (-4 : ℤ) then ⟨0, 23181⟩
    else if d = (-3 : ℤ) then ⟨0, 23181⟩
    else if d = (0 : ℤ) then ⟨0, 23181⟩
    else if d = (4 : ℤ) then ⟨1, 23182⟩
    else if d = (7 : ℤ) then ⟨1, 23183⟩
    else if d = (8 : ℤ) then ⟨1, 23182⟩
    else if d = (10 : ℤ) then ⟨1, 23183⟩
    else ⟨0, 23182⟩

def cellA2B2 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 10303⟩
    else if d = (-6 : ℤ) then ⟨0, 10303⟩
    else if d = (-5 : ℤ) then ⟨0, 10303⟩
    else if d = (-2 : ℤ) then ⟨0, 10303⟩
    else if d = (-1 : ℤ) then ⟨0, 10303⟩
    else if d = (3 : ℤ) then ⟨0, 10303⟩
    else if d = (4 : ℤ) then ⟨1, 10303⟩
    else if d = (7 : ℤ) then ⟨0, 10303⟩
    else if d = (8 : ℤ) then ⟨1, 10303⟩
    else ⟨0, 10302⟩

def cellA2B3 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3434⟩
    else if d = (-7 : ℤ) then ⟨0, 3434⟩
    else if d = (-6 : ℤ) then ⟨0, 3434⟩
    else if d = (-3 : ℤ) then ⟨0, 3434⟩
    else if d = (-2 : ℤ) then ⟨0, 3434⟩
    else if d = (1 : ℤ) then ⟨0, 3434⟩
    else if d = (4 : ℤ) then ⟨1, 3434⟩
    else if d = (5 : ℤ) then ⟨0, 3434⟩
    else if d = (8 : ℤ) then ⟨1, 3434⟩
    else if d = (9 : ℤ) then ⟨0, 3434⟩
    else ⟨0, 3433⟩

def cellA2B4 : CellData where
  inverse := 61
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1143⟩
    else if d = (-4 : ℤ) then ⟨0, 1143⟩
    else if d = (0 : ℤ) then ⟨0, 1143⟩
    else if d = (4 : ℤ) then ⟨1, 1144⟩
    else if d = (8 : ℤ) then ⟨1, 1144⟩
    else ⟨0, 1144⟩

def cellA2B5 : CellData where
  inverse := 61
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 380⟩
    else if d = (-8 : ℤ) then ⟨0, 380⟩
    else if d = (-5 : ℤ) then ⟨0, 380⟩
    else if d = (-4 : ℤ) then ⟨0, 380⟩
    else if d = (-1 : ℤ) then ⟨0, 380⟩
    else if d = (0 : ℤ) then ⟨0, 380⟩
    else if d = (3 : ℤ) then ⟨0, 380⟩
    else if d = (4 : ℤ) then ⟨1, 381⟩
    else if d = (7 : ℤ) then ⟨0, 380⟩
    else if d = (8 : ℤ) then ⟨1, 381⟩
    else ⟨0, 381⟩

def cellA2B6 : CellData where
  inverse := 547
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 127⟩
    else if d = (8 : ℤ) then ⟨1, 127⟩
    else ⟨0, 126⟩

def cellA2B7 : CellData where
  inverse := 547
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 42⟩
    else if d = (-3 : ℤ) then ⟨0, 42⟩
    else if d = (1 : ℤ) then ⟨0, 42⟩
    else if d = (4 : ℤ) then ⟨1, 42⟩
    else if d = (5 : ℤ) then ⟨0, 42⟩
    else if d = (8 : ℤ) then ⟨1, 42⟩
    else if d = (9 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA2B8 : CellData where
  inverse := 4921
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 14⟩
    else if d = (8 : ℤ) then ⟨1, 14⟩
    else ⟨0, 13⟩

def cellA2B9 : CellData where
  inverse := 4921
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 3⟩
    else if d = (-8 : ℤ) then ⟨0, 3⟩
    else if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (-4 : ℤ) then ⟨0, 3⟩
    else if d = (-1 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (3 : ℤ) then ⟨0, 3⟩
    else if d = (4 : ℤ) then ⟨1, 4⟩
    else if d = (7 : ℤ) then ⟨0, 3⟩
    else if d = (8 : ℤ) then ⟨1, 4⟩
    else ⟨0, 4⟩

def cellA2B10 : CellData where
  inverse := 44287
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨1, 1⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨1, 1⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA2B11 : CellData where
  inverse := 44287
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-8 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (-1 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (7 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, 0⟩

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

def cellA2B18 : CellData where
  inverse := 290565367
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B19 : CellData where
  inverse := 290565367
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B20 : CellData where
  inverse := 2615088301
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B21 : CellData where
  inverse := 2615088301
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B22 : CellData where
  inverse := 23535794707
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B23 : CellData where
  inverse := 23535794707
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B24 : CellData where
  inverse := 211822152361
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B25 : CellData where
  inverse := 211822152361
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B26 : CellData where
  inverse := 1906399371247
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B27 : CellData where
  inverse := 1906399371247
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B28 : CellData where
  inverse := 17157594341221
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B29 : CellData where
  inverse := 17157594341221
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B30 : CellData where
  inverse := 154418349070987
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B31 : CellData where
  inverse := 154418349070987
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B32 : CellData where
  inverse := 1389765141638881
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B33 : CellData where
  inverse := 1389765141638881
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B34 : CellData where
  inverse := 12507886274749927
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B35 : CellData where
  inverse := 12507886274749927
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B36 : CellData where
  inverse := 112570976472749341
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B37 : CellData where
  inverse := 112570976472749341
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B38 : CellData where
  inverse := 1013138788254744067
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 11591⟩
    else if d = (2 : ℤ) then ⟨0, 11591⟩
    else if d = (5 : ℤ) then ⟨0, 11591⟩
    else if d = (7 : ℤ) then ⟨0, 11591⟩
    else if d = (8 : ℤ) then ⟨1, 11591⟩
    else if d = (10 : ℤ) then ⟨0, 11591⟩
    else ⟨0, 11590⟩

def cellA3B2 : CellData where
  inverse := 8
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 10303⟩
    else if d = (-4 : ℤ) then ⟨0, 10303⟩
    else if d = (-3 : ℤ) then ⟨0, 10303⟩
    else if d = (-2 : ℤ) then ⟨0, 10303⟩
    else if d = (-1 : ℤ) then ⟨0, 10303⟩
    else if d = (5 : ℤ) then ⟨0, 10303⟩
    else if d = (6 : ℤ) then ⟨0, 10303⟩
    else if d = (7 : ℤ) then ⟨0, 10303⟩
    else if d = (8 : ℤ) then ⟨1, 10303⟩
    else ⟨0, 10302⟩

def cellA3B3 : CellData where
  inverse := 17
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 3434⟩
    else if d = (-6 : ℤ) then ⟨0, 3434⟩
    else if d = (-4 : ℤ) then ⟨0, 3434⟩
    else if d = (-3 : ℤ) then ⟨0, 3434⟩
    else if d = (-1 : ℤ) then ⟨0, 3434⟩
    else if d = (2 : ℤ) then ⟨0, 3434⟩
    else if d = (5 : ℤ) then ⟨0, 3434⟩
    else if d = (7 : ℤ) then ⟨0, 3434⟩
    else if d = (8 : ℤ) then ⟨1, 3434⟩
    else if d = (10 : ℤ) then ⟨0, 3434⟩
    else ⟨0, 3433⟩

def cellA3B4 : CellData where
  inverse := 71
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1143⟩
    else if d = (-7 : ℤ) then ⟨0, 1143⟩
    else if d = (0 : ℤ) then ⟨0, 1143⟩
    else if d = (1 : ℤ) then ⟨0, 1143⟩
    else if d = (8 : ℤ) then ⟨1, 1144⟩
    else if d = (9 : ℤ) then ⟨0, 1143⟩
    else ⟨0, 1144⟩

def cellA3B5 : CellData where
  inverse := 152
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 381⟩
    else if d = (-6 : ℤ) then ⟨0, 381⟩
    else if d = (-4 : ℤ) then ⟨0, 381⟩
    else if d = (-3 : ℤ) then ⟨0, 381⟩
    else if d = (-1 : ℤ) then ⟨0, 381⟩
    else if d = (2 : ℤ) then ⟨0, 381⟩
    else if d = (4 : ℤ) then ⟨0, 381⟩
    else if d = (5 : ℤ) then ⟨0, 381⟩
    else if d = (7 : ℤ) then ⟨0, 381⟩
    else if d = (8 : ℤ) then ⟨1, 381⟩
    else if d = (10 : ℤ) then ⟨0, 381⟩
    else ⟨0, 380⟩

def cellA3B6 : CellData where
  inverse := 638
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 127⟩
    else if d = (-1 : ℤ) then ⟨0, 127⟩
    else if d = (7 : ℤ) then ⟨0, 127⟩
    else if d = (8 : ℤ) then ⟨1, 127⟩
    else ⟨0, 126⟩

def cellA3B7 : CellData where
  inverse := 1367
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 42⟩
    else if d = (-6 : ℤ) then ⟨0, 42⟩
    else if d = (-3 : ℤ) then ⟨0, 42⟩
    else if d = (-1 : ℤ) then ⟨0, 42⟩
    else if d = (2 : ℤ) then ⟨0, 42⟩
    else if d = (5 : ℤ) then ⟨0, 42⟩
    else if d = (7 : ℤ) then ⟨0, 42⟩
    else if d = (8 : ℤ) then ⟨1, 42⟩
    else if d = (10 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA3B8 : CellData where
  inverse := 5741
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 14⟩
    else if d = (-1 : ℤ) then ⟨0, 14⟩
    else if d = (7 : ℤ) then ⟨0, 14⟩
    else if d = (8 : ℤ) then ⟨1, 14⟩
    else ⟨0, 13⟩

def cellA3B9 : CellData where
  inverse := 12302
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3⟩
    else if d = (-8 : ℤ) then ⟨0, 3⟩
    else if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (-2 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (3 : ℤ) then ⟨0, 3⟩
    else if d = (6 : ℤ) then ⟨0, 3⟩
    else if d = (8 : ℤ) then ⟨1, 4⟩
    else ⟨0, 4⟩

def cellA3B10 : CellData where
  inverse := 51668
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨1, 1⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA3B11 : CellData where
  inverse := 110717
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA3B12 : CellData where
  inverse := 465011
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
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

def cellA3B18 : CellData where
  inverse := 338992928
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B19 : CellData where
  inverse := 726413417
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B20 : CellData where
  inverse := 3050936351
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B21 : CellData where
  inverse := 6537720752
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B22 : CellData where
  inverse := 27458427158
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B23 : CellData where
  inverse := 58839486767
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B24 : CellData where
  inverse := 247125844421
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B25 : CellData where
  inverse := 529555380902
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B26 : CellData where
  inverse := 2224132599788
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B27 : CellData where
  inverse := 4765998428117
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B28 : CellData where
  inverse := 20017193398091
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B29 : CellData where
  inverse := 42893985853052
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B30 : CellData where
  inverse := 180154740582818
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B31 : CellData where
  inverse := 386045872677467
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B32 : CellData where
  inverse := 1621392665245361
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B33 : CellData where
  inverse := 3474412854097202
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B34 : CellData where
  inverse := 14592533987208248
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B35 : CellData where
  inverse := 31269715686874817
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B36 : CellData where
  inverse := 131332805884874231
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B37 : CellData where
  inverse := 281427441181873352
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B38 : CellData where
  inverse := 1181995252963868078
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 5794⟩
    else if d = (-9 : ℤ) then ⟨0, 5794⟩
    else if d = (-7 : ℤ) then ⟨0, 5794⟩
    else if d = (-6 : ℤ) then ⟨0, 5794⟩
    else if d = (-4 : ℤ) then ⟨0, 5794⟩
    else if d = (-3 : ℤ) then ⟨0, 5794⟩
    else if d = (0 : ℤ) then ⟨0, 5794⟩
    else if d = (3 : ℤ) then ⟨0, 5794⟩
    else if d = (6 : ℤ) then ⟨0, 5794⟩
    else if d = (9 : ℤ) then ⟨0, 5794⟩
    else ⟨0, 5795⟩

def cellA4B2 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 5794⟩
    else if d = (-7 : ℤ) then ⟨0, 5794⟩
    else if d = (-5 : ℤ) then ⟨0, 5794⟩
    else if d = (0 : ℤ) then ⟨0, 5794⟩
    else if d = (2 : ℤ) then ⟨0, 5794⟩
    else if d = (4 : ℤ) then ⟨0, 5794⟩
    else if d = (9 : ℤ) then ⟨0, 5794⟩
    else ⟨0, 5795⟩

def cellA4B3 : CellData where
  inverse := 22
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 3434⟩
    else if d = (-7 : ℤ) then ⟨0, 3434⟩
    else if d = (-6 : ℤ) then ⟨0, 3434⟩
    else if d = (-2 : ℤ) then ⟨0, 3434⟩
    else if d = (-1 : ℤ) then ⟨0, 3434⟩
    else if d = (3 : ℤ) then ⟨0, 3434⟩
    else if d = (4 : ℤ) then ⟨0, 3434⟩
    else if d = (5 : ℤ) then ⟨0, 3434⟩
    else if d = (9 : ℤ) then ⟨0, 3434⟩
    else if d = (10 : ℤ) then ⟨0, 3434⟩
    else ⟨0, 3433⟩

def cellA4B4 : CellData where
  inverse := 76
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1143⟩
    else if d = (1 : ℤ) then ⟨0, 1143⟩
    else if d = (2 : ℤ) then ⟨0, 1143⟩
    else ⟨0, 1144⟩

def cellA4B5 : CellData where
  inverse := 76
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 380⟩
    else if d = (-7 : ℤ) then ⟨0, 380⟩
    else if d = (-4 : ℤ) then ⟨0, 380⟩
    else if d = (-1 : ℤ) then ⟨0, 380⟩
    else if d = (0 : ℤ) then ⟨0, 380⟩
    else if d = (2 : ℤ) then ⟨0, 380⟩
    else if d = (3 : ℤ) then ⟨0, 380⟩
    else if d = (6 : ℤ) then ⟨0, 380⟩
    else if d = (9 : ℤ) then ⟨0, 380⟩
    else ⟨0, 381⟩

def cellA4B6 : CellData where
  inverse := 319
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 127⟩
    else if d = (-2 : ℤ) then ⟨0, 127⟩
    else if d = (5 : ℤ) then ⟨0, 127⟩
    else if d = (7 : ℤ) then ⟨0, 127⟩
    else ⟨0, 126⟩

def cellA4B7 : CellData where
  inverse := 1777
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 42⟩
    else if d = (-6 : ℤ) then ⟨0, 42⟩
    else if d = (-2 : ℤ) then ⟨0, 42⟩
    else if d = (-1 : ℤ) then ⟨0, 42⟩
    else if d = (4 : ℤ) then ⟨0, 42⟩
    else if d = (5 : ℤ) then ⟨0, 42⟩
    else if d = (9 : ℤ) then ⟨0, 42⟩
    else if d = (10 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA4B8 : CellData where
  inverse := 6151
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 14⟩
    else if d = (-1 : ℤ) then ⟨0, 14⟩
    else ⟨0, 13⟩

def cellA4B9 : CellData where
  inverse := 6151
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3⟩
    else if d = (-7 : ℤ) then ⟨0, 3⟩
    else if d = (-4 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (3 : ℤ) then ⟨0, 3⟩
    else if d = (6 : ℤ) then ⟨0, 3⟩
    else if d = (9 : ℤ) then ⟨0, 3⟩
    else ⟨0, 4⟩

def cellA4B10 : CellData where
  inverse := 25834
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA4B11 : CellData where
  inverse := 143932
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

def cellA4B12 : CellData where
  inverse := 498226
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA4B18 : CellData where
  inverse := 169496464
  bounds := fun _ => ⟨0, -1⟩

def cellA4B19 : CellData where
  inverse := 944337442
  bounds := fun _ => ⟨0, -1⟩

def cellA4B20 : CellData where
  inverse := 3268860376
  bounds := fun _ => ⟨0, -1⟩

def cellA4B21 : CellData where
  inverse := 3268860376
  bounds := fun _ => ⟨0, -1⟩

def cellA4B22 : CellData where
  inverse := 13729213579
  bounds := fun _ => ⟨0, -1⟩

def cellA4B23 : CellData where
  inverse := 76491332797
  bounds := fun _ => ⟨0, -1⟩

def cellA4B24 : CellData where
  inverse := 264777690451
  bounds := fun _ => ⟨0, -1⟩

def cellA4B25 : CellData where
  inverse := 264777690451
  bounds := fun _ => ⟨0, -1⟩

def cellA4B26 : CellData where
  inverse := 1112066299894
  bounds := fun _ => ⟨0, -1⟩

def cellA4B27 : CellData where
  inverse := 6195797956552
  bounds := fun _ => ⟨0, -1⟩

def cellA4B28 : CellData where
  inverse := 21446992926526
  bounds := fun _ => ⟨0, -1⟩

def cellA4B29 : CellData where
  inverse := 21446992926526
  bounds := fun _ => ⟨0, -1⟩

def cellA4B30 : CellData where
  inverse := 90077370291409
  bounds := fun _ => ⟨0, -1⟩

def cellA4B31 : CellData where
  inverse := 501859634480707
  bounds := fun _ => ⟨0, -1⟩

def cellA4B32 : CellData where
  inverse := 1737206427048601
  bounds := fun _ => ⟨0, -1⟩

def cellA4B33 : CellData where
  inverse := 1737206427048601
  bounds := fun _ => ⟨0, -1⟩

def cellA4B34 : CellData where
  inverse := 7296266993604124
  bounds := fun _ => ⟨0, -1⟩

def cellA4B35 : CellData where
  inverse := 40650630392937262
  bounds := fun _ => ⟨0, -1⟩

def cellA4B36 : CellData where
  inverse := 140713720590936676
  bounds := fun _ => ⟨0, -1⟩

def cellA4B37 : CellData where
  inverse := 140713720590936676
  bounds := fun _ => ⟨0, -1⟩

def cellA4B38 : CellData where
  inverse := 590997626481934039
  bounds := fun _ => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 2896⟩
    else if d = (-6 : ℤ) then ⟨0, 2896⟩
    else if d = (-3 : ℤ) then ⟨0, 2896⟩
    else if d = (0 : ℤ) then ⟨0, 2896⟩
    else if d = (3 : ℤ) then ⟨0, 2896⟩
    else if d = (6 : ℤ) then ⟨0, 2896⟩
    else if d = (9 : ℤ) then ⟨0, 2896⟩
    else ⟨0, 2897⟩

def cellA5B2 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 2896⟩
    else if d = (-5 : ℤ) then ⟨0, 2896⟩
    else if d = (0 : ℤ) then ⟨0, 2896⟩
    else if d = (4 : ℤ) then ⟨0, 2896⟩
    else if d = (9 : ℤ) then ⟨0, 2896⟩
    else ⟨0, 2897⟩

def cellA5B3 : CellData where
  inverse := 11
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2896⟩
    else if d = (-5 : ℤ) then ⟨0, 2896⟩
    else if d = (0 : ℤ) then ⟨0, 2896⟩
    else ⟨0, 2897⟩

def cellA5B4 : CellData where
  inverse := 38
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1143⟩
    else if d = (2 : ℤ) then ⟨0, 1143⟩
    else if d = (4 : ℤ) then ⟨0, 1143⟩
    else ⟨0, 1144⟩

def cellA5B5 : CellData where
  inverse := 38
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 380⟩
    else if d = (-7 : ℤ) then ⟨0, 380⟩
    else if d = (-2 : ℤ) then ⟨0, 380⟩
    else if d = (-1 : ℤ) then ⟨0, 380⟩
    else if d = (0 : ℤ) then ⟨0, 380⟩
    else if d = (4 : ℤ) then ⟨0, 380⟩
    else if d = (5 : ℤ) then ⟨0, 380⟩
    else if d = (6 : ℤ) then ⟨0, 380⟩
    else ⟨0, 381⟩

def cellA5B6 : CellData where
  inverse := 524
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 127⟩
    else if d = (3 : ℤ) then ⟨0, 127⟩
    else if d = (7 : ℤ) then ⟨0, 127⟩
    else if d = (10 : ℤ) then ⟨0, 127⟩
    else ⟨0, 126⟩

def cellA5B7 : CellData where
  inverse := 1982
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 42⟩
    else if d = (-3 : ℤ) then ⟨0, 42⟩
    else if d = (-2 : ℤ) then ⟨0, 42⟩
    else if d = (-1 : ℤ) then ⟨0, 42⟩
    else if d = (7 : ℤ) then ⟨0, 42⟩
    else if d = (8 : ℤ) then ⟨0, 42⟩
    else if d = (9 : ℤ) then ⟨0, 42⟩
    else if d = (10 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA5B8 : CellData where
  inverse := 6356
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 14⟩
    else if d = (-3 : ℤ) then ⟨0, 14⟩
    else if d = (-2 : ℤ) then ⟨0, 14⟩
    else if d = (-1 : ℤ) then ⟨0, 14⟩
    else ⟨0, 13⟩

def cellA5B9 : CellData where
  inverse := 12917
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 3⟩
    else if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (3 : ℤ) then ⟨0, 3⟩
    else if d = (6 : ℤ) then ⟨0, 3⟩
    else if d = (9 : ℤ) then ⟨0, 3⟩
    else ⟨0, 4⟩

def cellA5B10 : CellData where
  inverse := 12917
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

def cellA5B11 : CellData where
  inverse := 71966
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

def cellA5B12 : CellData where
  inverse := 249113
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA5B18 : CellData where
  inverse := 84748232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B19 : CellData where
  inverse := 472168721
  bounds := fun _ => ⟨0, -1⟩

def cellA5B20 : CellData where
  inverse := 1634430188
  bounds := fun _ => ⟨0, -1⟩

def cellA5B21 : CellData where
  inverse := 1634430188
  bounds := fun _ => ⟨0, -1⟩

def cellA5B22 : CellData where
  inverse := 22555136594
  bounds := fun _ => ⟨0, -1⟩

def cellA5B23 : CellData where
  inverse := 85317255812
  bounds := fun _ => ⟨0, -1⟩

def cellA5B24 : CellData where
  inverse := 273603613466
  bounds := fun _ => ⟨0, -1⟩

def cellA5B25 : CellData where
  inverse := 556033149947
  bounds := fun _ => ⟨0, -1⟩

def cellA5B26 : CellData where
  inverse := 556033149947
  bounds := fun _ => ⟨0, -1⟩

def cellA5B27 : CellData where
  inverse := 3097898978276
  bounds := fun _ => ⟨0, -1⟩

def cellA5B28 : CellData where
  inverse := 10723496463263
  bounds := fun _ => ⟨0, -1⟩

def cellA5B29 : CellData where
  inverse := 10723496463263
  bounds := fun _ => ⟨0, -1⟩

def cellA5B30 : CellData where
  inverse := 147984251193029
  bounds := fun _ => ⟨0, -1⟩

def cellA5B31 : CellData where
  inverse := 559766515382327
  bounds := fun _ => ⟨0, -1⟩

def cellA5B32 : CellData where
  inverse := 1795113307950221
  bounds := fun _ => ⟨0, -1⟩

def cellA5B33 : CellData where
  inverse := 3648133496802062
  bounds := fun _ => ⟨0, -1⟩

def cellA5B34 : CellData where
  inverse := 3648133496802062
  bounds := fun _ => ⟨0, -1⟩

def cellA5B35 : CellData where
  inverse := 20325315196468631
  bounds := fun _ => ⟨0, -1⟩

def cellA5B36 : CellData where
  inverse := 70356860295468338
  bounds := fun _ => ⟨0, -1⟩

def cellA5B37 : CellData where
  inverse := 70356860295468338
  bounds := fun _ => ⟨0, -1⟩

def cellA5B38 : CellData where
  inverse := 970924672077463064
  bounds := fun _ => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1447⟩
    else if d = (-6 : ℤ) then ⟨0, 1447⟩
    else if d = (-3 : ℤ) then ⟨0, 1447⟩
    else if d = (0 : ℤ) then ⟨0, 1447⟩
    else if d = (3 : ℤ) then ⟨0, 1447⟩
    else if d = (6 : ℤ) then ⟨0, 1447⟩
    else if d = (9 : ℤ) then ⟨0, 1447⟩
    else ⟨0, 1448⟩

def cellA6B2 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1447⟩
    else if d = (0 : ℤ) then ⟨0, 1447⟩
    else if d = (9 : ℤ) then ⟨0, 1447⟩
    else ⟨0, 1448⟩

def cellA6B3 : CellData where
  inverse := 19
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1447⟩
    else if d = (0 : ℤ) then ⟨0, 1447⟩
    else ⟨0, 1448⟩

def cellA6B4 : CellData where
  inverse := 19
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1143⟩
    else if d = (0 : ℤ) then ⟨0, 1143⟩
    else if d = (4 : ℤ) then ⟨0, 1143⟩
    else if d = (8 : ℤ) then ⟨0, 1143⟩
    else ⟨0, 1144⟩

def cellA6B5 : CellData where
  inverse := 19
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 380⟩
    else if d = (-3 : ℤ) then ⟨0, 380⟩
    else if d = (-2 : ℤ) then ⟨0, 380⟩
    else if d = (-1 : ℤ) then ⟨0, 380⟩
    else if d = (0 : ℤ) then ⟨0, 380⟩
    else if d = (8 : ℤ) then ⟨0, 380⟩
    else if d = (9 : ℤ) then ⟨0, 380⟩
    else if d = (10 : ℤ) then ⟨0, 380⟩
    else ⟨0, 381⟩

def cellA6B6 : CellData where
  inverse := 262
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 127⟩
    else if d = (-5 : ℤ) then ⟨0, 127⟩
    else if d = (3 : ℤ) then ⟨0, 127⟩
    else if d = (6 : ℤ) then ⟨0, 127⟩
    else ⟨0, 126⟩

def cellA6B7 : CellData where
  inverse := 991
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 42⟩
    else if d = (-6 : ℤ) then ⟨0, 42⟩
    else if d = (-4 : ℤ) then ⟨0, 42⟩
    else if d = (-2 : ℤ) then ⟨0, 42⟩
    else if d = (3 : ℤ) then ⟨0, 42⟩
    else if d = (5 : ℤ) then ⟨0, 42⟩
    else if d = (7 : ℤ) then ⟨0, 42⟩
    else if d = (9 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA6B8 : CellData where
  inverse := 3178
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 14⟩
    else if d = (-6 : ℤ) then ⟨0, 14⟩
    else if d = (-4 : ℤ) then ⟨0, 14⟩
    else if d = (-2 : ℤ) then ⟨0, 14⟩
    else ⟨0, 13⟩

def cellA6B9 : CellData where
  inverse := 16300
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3⟩
    else if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (1 : ℤ) then ⟨0, 3⟩
    else if d = (6 : ℤ) then ⟨0, 3⟩
    else if d = (7 : ℤ) then ⟨0, 3⟩
    else ⟨0, 4⟩

def cellA6B10 : CellData where
  inverse := 35983
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA6B11 : CellData where
  inverse := 35983
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B12 : CellData where
  inverse := 390277
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B13 : CellData where
  inverse := 921718
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B14 : CellData where
  inverse := 4110364
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B15 : CellData where
  inverse := 13676302
  bounds := fun _ => ⟨0, -1⟩

def cellA6B16 : CellData where
  inverse := 42374116
  bounds := fun _ => ⟨0, -1⟩

def cellA6B17 : CellData where
  inverse := 42374116
  bounds := fun _ => ⟨0, -1⟩

def cellA6B18 : CellData where
  inverse := 42374116
  bounds := fun _ => ⟨0, -1⟩

def cellA6B19 : CellData where
  inverse := 817215094
  bounds := fun _ => ⟨0, -1⟩

def cellA6B20 : CellData where
  inverse := 817215094
  bounds := fun _ => ⟨0, -1⟩

def cellA6B21 : CellData where
  inverse := 817215094
  bounds := fun _ => ⟨0, -1⟩

def cellA6B22 : CellData where
  inverse := 11277568297
  bounds := fun _ => ⟨0, -1⟩

def cellA6B23 : CellData where
  inverse := 42658627906
  bounds := fun _ => ⟨0, -1⟩

def cellA6B24 : CellData where
  inverse := 136801806733
  bounds := fun _ => ⟨0, -1⟩

def cellA6B25 : CellData where
  inverse := 701660879695
  bounds := fun _ => ⟨0, -1⟩

def cellA6B26 : CellData where
  inverse := 1548949489138
  bounds := fun _ => ⟨0, -1⟩

def cellA6B27 : CellData where
  inverse := 1548949489138
  bounds := fun _ => ⟨0, -1⟩

def cellA6B28 : CellData where
  inverse := 16800144459112
  bounds := fun _ => ⟨0, -1⟩

def cellA6B29 : CellData where
  inverse := 39676936914073
  bounds := fun _ => ⟨0, -1⟩

def cellA6B30 : CellData where
  inverse := 176937691643839
  bounds := fun _ => ⟨0, -1⟩

def cellA6B31 : CellData where
  inverse := 588719955833137
  bounds := fun _ => ⟨0, -1⟩

def cellA6B32 : CellData where
  inverse := 1824066748401031
  bounds := fun _ => ⟨0, -1⟩

def cellA6B33 : CellData where
  inverse := 1824066748401031
  bounds := fun _ => ⟨0, -1⟩

def cellA6B34 : CellData where
  inverse := 1824066748401031
  bounds := fun _ => ⟨0, -1⟩

def cellA6B35 : CellData where
  inverse := 35178430147734169
  bounds := fun _ => ⟨0, -1⟩

def cellA6B36 : CellData where
  inverse := 35178430147734169
  bounds := fun _ => ⟨0, -1⟩

def cellA6B37 : CellData where
  inverse := 35178430147734169
  bounds := fun _ => ⟨0, -1⟩

def cellA6B38 : CellData where
  inverse := 485462336038731532
  bounds := fun _ => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 724⟩
    else if d = (-7 : ℤ) then ⟨0, 724⟩
    else if d = (-4 : ℤ) then ⟨0, 724⟩
    else if d = (-1 : ℤ) then ⟨0, 724⟩
    else if d = (2 : ℤ) then ⟨0, 724⟩
    else if d = (5 : ℤ) then ⟨0, 724⟩
    else if d = (8 : ℤ) then ⟨0, 724⟩
    else ⟨0, 723⟩

def cellA7B2 : CellData where
  inverse := 5
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 724⟩
    else if d = (-7 : ℤ) then ⟨0, 724⟩
    else if d = (-5 : ℤ) then ⟨0, 724⟩
    else if d = (-3 : ℤ) then ⟨0, 724⟩
    else if d = (-1 : ℤ) then ⟨0, 724⟩
    else if d = (2 : ℤ) then ⟨0, 724⟩
    else if d = (4 : ℤ) then ⟨0, 724⟩
    else if d = (6 : ℤ) then ⟨0, 724⟩
    else if d = (8 : ℤ) then ⟨0, 724⟩
    else ⟨0, 723⟩

def cellA7B3 : CellData where
  inverse := 23
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 724⟩
    else if d = (-8 : ℤ) then ⟨0, 724⟩
    else if d = (-7 : ℤ) then ⟨0, 724⟩
    else if d = (-3 : ℤ) then ⟨0, 724⟩
    else if d = (-2 : ℤ) then ⟨0, 724⟩
    else if d = (-1 : ℤ) then ⟨0, 724⟩
    else if d = (4 : ℤ) then ⟨0, 724⟩
    else if d = (5 : ℤ) then ⟨0, 724⟩
    else if d = (6 : ℤ) then ⟨0, 724⟩
    else ⟨0, 723⟩

def cellA7B4 : CellData where
  inverse := 50
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 724⟩
    else if d = (-8 : ℤ) then ⟨0, 724⟩
    else if d = (-6 : ℤ) then ⟨0, 724⟩
    else if d = (-3 : ℤ) then ⟨0, 724⟩
    else if d = (-1 : ℤ) then ⟨0, 724⟩
    else if d = (2 : ℤ) then ⟨0, 724⟩
    else if d = (5 : ℤ) then ⟨0, 724⟩
    else if d = (7 : ℤ) then ⟨0, 724⟩
    else if d = (10 : ℤ) then ⟨0, 724⟩
    else ⟨0, 723⟩

def cellA7B5 : CellData where
  inverse := 131
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 380⟩
    else if d = (-6 : ℤ) then ⟨0, 380⟩
    else if d = (-4 : ℤ) then ⟨0, 380⟩
    else if d = (-2 : ℤ) then ⟨0, 380⟩
    else if d = (0 : ℤ) then ⟨0, 380⟩
    else if d = (3 : ℤ) then ⟨0, 380⟩
    else if d = (5 : ℤ) then ⟨0, 380⟩
    else if d = (7 : ℤ) then ⟨0, 380⟩
    else if d = (9 : ℤ) then ⟨0, 380⟩
    else ⟨0, 381⟩

def cellA7B6 : CellData where
  inverse := 131
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 127⟩
    else if d = (-5 : ℤ) then ⟨0, 127⟩
    else if d = (1 : ℤ) then ⟨0, 127⟩
    else if d = (6 : ℤ) then ⟨0, 127⟩
    else ⟨0, 126⟩

def cellA7B7 : CellData where
  inverse := 1589
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 42⟩
    else if d = (-5 : ℤ) then ⟨0, 42⟩
    else if d = (-4 : ℤ) then ⟨0, 42⟩
    else if d = (-1 : ℤ) then ⟨0, 42⟩
    else if d = (3 : ℤ) then ⟨0, 42⟩
    else if d = (6 : ℤ) then ⟨0, 42⟩
    else if d = (7 : ℤ) then ⟨0, 42⟩
    else if d = (10 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA7B8 : CellData where
  inverse := 1589
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 14⟩
    else if d = (-4 : ℤ) then ⟨0, 14⟩
    else ⟨0, 13⟩

def cellA7B9 : CellData where
  inverse := 8150
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3⟩
    else if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (-3 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (2 : ℤ) then ⟨0, 3⟩
    else if d = (7 : ℤ) then ⟨0, 3⟩
    else if d = (9 : ℤ) then ⟨0, 3⟩
    else ⟨0, 4⟩

def cellA7B10 : CellData where
  inverse := 47516
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA7B11 : CellData where
  inverse := 106565
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B12 : CellData where
  inverse := 460859
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B13 : CellData where
  inverse := 460859
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B14 : CellData where
  inverse := 2055182
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B15 : CellData where
  inverse := 6838151
  bounds := fun _ => ⟨0, -1⟩

def cellA7B16 : CellData where
  inverse := 21187058
  bounds := fun _ => ⟨0, -1⟩

def cellA7B17 : CellData where
  inverse := 21187058
  bounds := fun _ => ⟨0, -1⟩

def cellA7B18 : CellData where
  inverse := 21187058
  bounds := fun _ => ⟨0, -1⟩

def cellA7B19 : CellData where
  inverse := 408607547
  bounds := fun _ => ⟨0, -1⟩

def cellA7B20 : CellData where
  inverse := 408607547
  bounds := fun _ => ⟨0, -1⟩

def cellA7B21 : CellData where
  inverse := 408607547
  bounds := fun _ => ⟨0, -1⟩

def cellA7B22 : CellData where
  inverse := 21329313953
  bounds := fun _ => ⟨0, -1⟩

def cellA7B23 : CellData where
  inverse := 21329313953
  bounds := fun _ => ⟨0, -1⟩

def cellA7B24 : CellData where
  inverse := 209615671607
  bounds := fun _ => ⟨0, -1⟩

def cellA7B25 : CellData where
  inverse := 774474744569
  bounds := fun _ => ⟨0, -1⟩

def cellA7B26 : CellData where
  inverse := 774474744569
  bounds := fun _ => ⟨0, -1⟩

def cellA7B27 : CellData where
  inverse := 774474744569
  bounds := fun _ => ⟨0, -1⟩

def cellA7B28 : CellData where
  inverse := 8400072229556
  bounds := fun _ => ⟨0, -1⟩

def cellA7B29 : CellData where
  inverse := 54153657139478
  bounds := fun _ => ⟨0, -1⟩

def cellA7B30 : CellData where
  inverse := 191414411869244
  bounds := fun _ => ⟨0, -1⟩

def cellA7B31 : CellData where
  inverse := 603196676058542
  bounds := fun _ => ⟨0, -1⟩

def cellA7B32 : CellData where
  inverse := 1838543468626436
  bounds := fun _ => ⟨0, -1⟩

def cellA7B33 : CellData where
  inverse := 3691563657478277
  bounds := fun _ => ⟨0, -1⟩

def cellA7B34 : CellData where
  inverse := 9250624224033800
  bounds := fun _ => ⟨0, -1⟩

def cellA7B35 : CellData where
  inverse := 42604987623366938
  bounds := fun _ => ⟨0, -1⟩

def cellA7B36 : CellData where
  inverse := 92636532722366645
  bounds := fun _ => ⟨0, -1⟩

def cellA7B37 : CellData where
  inverse := 242731168019365766
  bounds := fun _ => ⟨0, -1⟩

def cellA7B38 : CellData where
  inverse := 242731168019365766
  bounds := fun _ => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, 361⟩

def cellA8B2 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 362⟩
    else if d = (-5 : ℤ) then ⟨0, 362⟩
    else if d = (-1 : ℤ) then ⟨0, 362⟩
    else if d = (4 : ℤ) then ⟨0, 362⟩
    else if d = (8 : ℤ) then ⟨0, 362⟩
    else ⟨0, 361⟩

def cellA8B3 : CellData where
  inverse := 25
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 362⟩
    else if d = (-2 : ℤ) then ⟨0, 362⟩
    else if d = (-1 : ℤ) then ⟨0, 362⟩
    else ⟨0, 361⟩

def cellA8B4 : CellData where
  inverse := 25
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 362⟩
    else if d = (-6 : ℤ) then ⟨0, 362⟩
    else if d = (-3 : ℤ) then ⟨0, 362⟩
    else if d = (7 : ℤ) then ⟨0, 362⟩
    else if d = (10 : ℤ) then ⟨0, 362⟩
    else ⟨0, 361⟩

def cellA8B5 : CellData where
  inverse := 187
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 362⟩
    else if d = (-5 : ℤ) then ⟨0, 362⟩
    else if d = (-1 : ℤ) then ⟨0, 362⟩
    else if d = (4 : ℤ) then ⟨0, 362⟩
    else if d = (8 : ℤ) then ⟨0, 362⟩
    else ⟨0, 361⟩

def cellA8B6 : CellData where
  inverse := 430
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 127⟩
    else if d = (-5 : ℤ) then ⟨0, 127⟩
    else if d = (2 : ℤ) then ⟨0, 127⟩
    else if d = (7 : ℤ) then ⟨0, 127⟩
    else ⟨0, 126⟩

def cellA8B7 : CellData where
  inverse := 1888
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 42⟩
    else if d = (-9 : ℤ) then ⟨0, 42⟩
    else if d = (-8 : ℤ) then ⟨0, 42⟩
    else if d = (-2 : ℤ) then ⟨0, 42⟩
    else if d = (-1 : ℤ) then ⟨0, 42⟩
    else if d = (5 : ℤ) then ⟨0, 42⟩
    else if d = (6 : ℤ) then ⟨0, 42⟩
    else if d = (7 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA8B8 : CellData where
  inverse := 4075
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 14⟩
    else if d = (5 : ℤ) then ⟨0, 14⟩
    else ⟨0, 13⟩

def cellA8B9 : CellData where
  inverse := 4075
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3⟩
    else if d = (-6 : ℤ) then ⟨0, 3⟩
    else if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (-1 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (4 : ℤ) then ⟨0, 3⟩
    else if d = (9 : ℤ) then ⟨0, 3⟩
    else ⟨0, 4⟩

def cellA8B10 : CellData where
  inverse := 23758
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (1 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA8B11 : CellData where
  inverse := 141856
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B12 : CellData where
  inverse := 496150
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA8B18 : CellData where
  inverse := 10593529
  bounds := fun _ => ⟨0, -1⟩

def cellA8B19 : CellData where
  inverse := 785434507
  bounds := fun _ => ⟨0, -1⟩

def cellA8B20 : CellData where
  inverse := 1947695974
  bounds := fun _ => ⟨0, -1⟩

def cellA8B21 : CellData where
  inverse := 5434480375
  bounds := fun _ => ⟨0, -1⟩

def cellA8B22 : CellData where
  inverse := 26355186781
  bounds := fun _ => ⟨0, -1⟩

def cellA8B23 : CellData where
  inverse := 57736246390
  bounds := fun _ => ⟨0, -1⟩

def cellA8B24 : CellData where
  inverse := 246022604044
  bounds := fun _ => ⟨0, -1⟩

def cellA8B25 : CellData where
  inverse := 810881677006
  bounds := fun _ => ⟨0, -1⟩

def cellA8B26 : CellData where
  inverse := 1658170286449
  bounds := fun _ => ⟨0, -1⟩

def cellA8B27 : CellData where
  inverse := 4200036114778
  bounds := fun _ => ⟨0, -1⟩

def cellA8B28 : CellData where
  inverse := 4200036114778
  bounds := fun _ => ⟨0, -1⟩

def cellA8B29 : CellData where
  inverse := 27076828569739
  bounds := fun _ => ⟨0, -1⟩

def cellA8B30 : CellData where
  inverse := 95707205934622
  bounds := fun _ => ⟨0, -1⟩

def cellA8B31 : CellData where
  inverse := 301598338029271
  bounds := fun _ => ⟨0, -1⟩

def cellA8B32 : CellData where
  inverse := 919271734313218
  bounds := fun _ => ⟨0, -1⟩

def cellA8B33 : CellData where
  inverse := 4625312112016900
  bounds := fun _ => ⟨0, -1⟩

def cellA8B34 : CellData where
  inverse := 4625312112016900
  bounds := fun _ => ⟨0, -1⟩

def cellA8B35 : CellData where
  inverse := 21302493811683469
  bounds := fun _ => ⟨0, -1⟩

def cellA8B36 : CellData where
  inverse := 121365584009682883
  bounds := fun _ => ⟨0, -1⟩

def cellA8B37 : CellData where
  inverse := 121365584009682883
  bounds := fun _ => ⟨0, -1⟩

def cellA8B38 : CellData where
  inverse := 121365584009682883
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
  else if b = 26 then cellA1B26
  else if b = 27 then cellA1B27
  else if b = 28 then cellA1B28
  else if b = 29 then cellA1B29
  else if b = 30 then cellA1B30
  else if b = 31 then cellA1B31
  else if b = 32 then cellA1B32
  else if b = 33 then cellA1B33
  else if b = 34 then cellA1B34
  else if b = 35 then cellA1B35
  else if b = 36 then cellA1B36
  else if b = 37 then cellA1B37
  else if b = 38 then cellA1B38
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
  else if b = 26 then cellA2B26
  else if b = 27 then cellA2B27
  else if b = 28 then cellA2B28
  else if b = 29 then cellA2B29
  else if b = 30 then cellA2B30
  else if b = 31 then cellA2B31
  else if b = 32 then cellA2B32
  else if b = 33 then cellA2B33
  else if b = 34 then cellA2B34
  else if b = 35 then cellA2B35
  else if b = 36 then cellA2B36
  else if b = 37 then cellA2B37
  else if b = 38 then cellA2B38
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
  else if b = 26 then cellA3B26
  else if b = 27 then cellA3B27
  else if b = 28 then cellA3B28
  else if b = 29 then cellA3B29
  else if b = 30 then cellA3B30
  else if b = 31 then cellA3B31
  else if b = 32 then cellA3B32
  else if b = 33 then cellA3B33
  else if b = 34 then cellA3B34
  else if b = 35 then cellA3B35
  else if b = 36 then cellA3B36
  else if b = 37 then cellA3B37
  else if b = 38 then cellA3B38
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
  else if b = 26 then cellA4B26
  else if b = 27 then cellA4B27
  else if b = 28 then cellA4B28
  else if b = 29 then cellA4B29
  else if b = 30 then cellA4B30
  else if b = 31 then cellA4B31
  else if b = 32 then cellA4B32
  else if b = 33 then cellA4B33
  else if b = 34 then cellA4B34
  else if b = 35 then cellA4B35
  else if b = 36 then cellA4B36
  else if b = 37 then cellA4B37
  else if b = 38 then cellA4B38
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
  else if b = 26 then cellA5B26
  else if b = 27 then cellA5B27
  else if b = 28 then cellA5B28
  else if b = 29 then cellA5B29
  else if b = 30 then cellA5B30
  else if b = 31 then cellA5B31
  else if b = 32 then cellA5B32
  else if b = 33 then cellA5B33
  else if b = 34 then cellA5B34
  else if b = 35 then cellA5B35
  else if b = 36 then cellA5B36
  else if b = 37 then cellA5B37
  else if b = 38 then cellA5B38
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
  else if b = 26 then cellA6B26
  else if b = 27 then cellA6B27
  else if b = 28 then cellA6B28
  else if b = 29 then cellA6B29
  else if b = 30 then cellA6B30
  else if b = 31 then cellA6B31
  else if b = 32 then cellA6B32
  else if b = 33 then cellA6B33
  else if b = 34 then cellA6B34
  else if b = 35 then cellA6B35
  else if b = 36 then cellA6B36
  else if b = 37 then cellA6B37
  else if b = 38 then cellA6B38
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
  else if b = 26 then cellA7B26
  else if b = 27 then cellA7B27
  else if b = 28 then cellA7B28
  else if b = 29 then cellA7B29
  else if b = 30 then cellA7B30
  else if b = 31 then cellA7B31
  else if b = 32 then cellA7B32
  else if b = 33 then cellA7B33
  else if b = 34 then cellA7B34
  else if b = 35 then cellA7B35
  else if b = 36 then cellA7B36
  else if b = 37 then cellA7B37
  else if b = 38 then cellA7B38
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
  else if b = 26 then cellA8B26
  else if b = 27 then cellA8B27
  else if b = 28 then cellA8B28
  else if b = 29 then cellA8B29
  else if b = 30 then cellA8B30
  else if b = 31 then cellA8B31
  else if b = 32 then cellA8B32
  else if b = 33 then cellA8B33
  else if b = 34 then cellA8B34
  else if b = 35 then cellA8B35
  else if b = 36 then cellA8B36
  else if b = 37 then cellA8B37
  else if b = 38 then cellA8B38
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

end Math.B699.CRTStage1Pair23.Chunk000
