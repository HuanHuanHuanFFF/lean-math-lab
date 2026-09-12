import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage0Pair23.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 39567675⟩ else if d = (-6 : ℤ) then ⟨0, 39567675⟩ else if d = (-3 : ℤ) then ⟨0, 39567675⟩ else if d = (0 : ℤ) then ⟨0, 39567675⟩ else if d = (2 : ℤ) then ⟨1, 39567676⟩ else if d = (3 : ℤ) then ⟨0, 39567675⟩ else if d = (4 : ℤ) then ⟨1, 39567676⟩ else if d = (5 : ℤ) then ⟨1, 39567676⟩ else if d = (6 : ℤ) then ⟨1, 39567675⟩ else if d = (7 : ℤ) then ⟨1, 39567676⟩ else if d = (8 : ℤ) then ⟨2, 39567676⟩ else if d = (9 : ℤ) then ⟨1, 39567675⟩ else if d = (10 : ℤ) then ⟨2, 39567676⟩ else ⟨0, 39567676⟩

def cellA1B2 : CellData where
  inverse := 5
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 13189225⟩ else if d = (-8 : ℤ) then ⟨0, 13189225⟩ else if d = (-7 : ℤ) then ⟨0, 13189225⟩ else if d = (-5 : ℤ) then ⟨0, 13189225⟩ else if d = (-3 : ℤ) then ⟨0, 13189225⟩ else if d = (-1 : ℤ) then ⟨0, 13189225⟩ else if d = (1 : ℤ) then ⟨0, 13189225⟩ else if d = (2 : ℤ) then ⟨1, 13189225⟩ else if d = (4 : ℤ) then ⟨1, 13189225⟩ else if d = (6 : ℤ) then ⟨1, 13189225⟩ else if d = (8 : ℤ) then ⟨1, 13189225⟩ else if d = (10 : ℤ) then ⟨1, 13189225⟩ else ⟨0, 13189224⟩

def cellA1B3 : CellData where
  inverse := 14
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 4396408⟩ else if d = (-7 : ℤ) then ⟨0, 4396408⟩ else if d = (-5 : ℤ) then ⟨0, 4396408⟩ else if d = (-3 : ℤ) then ⟨0, 4396408⟩ else if d = (-1 : ℤ) then ⟨0, 4396408⟩ else if d = (1 : ℤ) then ⟨0, 4396408⟩ else if d = (2 : ℤ) then ⟨1, 4396408⟩ else if d = (4 : ℤ) then ⟨1, 4396408⟩ else if d = (6 : ℤ) then ⟨1, 4396408⟩ else if d = (8 : ℤ) then ⟨1, 4396408⟩ else if d = (10 : ℤ) then ⟨1, 4396408⟩ else ⟨0, 4396407⟩

def cellA1B4 : CellData where
  inverse := 41
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 1465469⟩ else if d = (-7 : ℤ) then ⟨0, 1465469⟩ else if d = (-5 : ℤ) then ⟨0, 1465469⟩ else if d = (-3 : ℤ) then ⟨0, 1465469⟩ else if d = (-1 : ℤ) then ⟨0, 1465469⟩ else if d = (1 : ℤ) then ⟨0, 1465469⟩ else if d = (2 : ℤ) then ⟨1, 1465469⟩ else if d = (4 : ℤ) then ⟨1, 1465469⟩ else if d = (6 : ℤ) then ⟨1, 1465469⟩ else if d = (8 : ℤ) then ⟨1, 1465469⟩ else if d = (10 : ℤ) then ⟨1, 1465469⟩ else ⟨0, 1465468⟩

def cellA1B5 : CellData where
  inverse := 122
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 488488⟩ else if d = (-8 : ℤ) then ⟨0, 488488⟩ else if d = (-6 : ℤ) then ⟨0, 488488⟩ else if d = (-4 : ℤ) then ⟨0, 488488⟩ else if d = (-2 : ℤ) then ⟨0, 488488⟩ else if d = (0 : ℤ) then ⟨0, 488488⟩ else if d = (2 : ℤ) then ⟨1, 488489⟩ else if d = (4 : ℤ) then ⟨1, 488489⟩ else if d = (6 : ℤ) then ⟨1, 488489⟩ else if d = (8 : ℤ) then ⟨1, 488489⟩ else if d = (10 : ℤ) then ⟨1, 488489⟩ else ⟨0, 488489⟩

def cellA1B6 : CellData where
  inverse := 365
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 162828⟩ else if d = (-8 : ℤ) then ⟨0, 162828⟩ else if d = (-6 : ℤ) then ⟨0, 162828⟩ else if d = (-4 : ℤ) then ⟨0, 162828⟩ else if d = (-2 : ℤ) then ⟨0, 162828⟩ else if d = (0 : ℤ) then ⟨0, 162828⟩ else if d = (2 : ℤ) then ⟨1, 162829⟩ else if d = (4 : ℤ) then ⟨1, 162829⟩ else if d = (6 : ℤ) then ⟨1, 162829⟩ else if d = (8 : ℤ) then ⟨1, 162829⟩ else if d = (10 : ℤ) then ⟨1, 162829⟩ else ⟨0, 162829⟩

def cellA1B7 : CellData where
  inverse := 1094
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 54275⟩ else if d = (-8 : ℤ) then ⟨0, 54275⟩ else if d = (-6 : ℤ) then ⟨0, 54275⟩ else if d = (-4 : ℤ) then ⟨0, 54275⟩ else if d = (-2 : ℤ) then ⟨0, 54275⟩ else if d = (0 : ℤ) then ⟨0, 54275⟩ else if d = (2 : ℤ) then ⟨1, 54276⟩ else if d = (4 : ℤ) then ⟨1, 54276⟩ else if d = (6 : ℤ) then ⟨1, 54276⟩ else if d = (8 : ℤ) then ⟨1, 54276⟩ else if d = (10 : ℤ) then ⟨1, 54276⟩ else ⟨0, 54276⟩

def cellA1B8 : CellData where
  inverse := 3281
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 18092⟩ else if d = (4 : ℤ) then ⟨1, 18092⟩ else if d = (6 : ℤ) then ⟨1, 18092⟩ else if d = (8 : ℤ) then ⟨1, 18092⟩ else if d = (10 : ℤ) then ⟨1, 18092⟩ else ⟨0, 18091⟩

def cellA1B9 : CellData where
  inverse := 9842
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 6029⟩ else if d = (-8 : ℤ) then ⟨0, 6029⟩ else if d = (-6 : ℤ) then ⟨0, 6029⟩ else if d = (-4 : ℤ) then ⟨0, 6029⟩ else if d = (-2 : ℤ) then ⟨0, 6029⟩ else if d = (0 : ℤ) then ⟨0, 6029⟩ else if d = (2 : ℤ) then ⟨1, 6030⟩ else if d = (4 : ℤ) then ⟨1, 6030⟩ else if d = (6 : ℤ) then ⟨1, 6030⟩ else if d = (8 : ℤ) then ⟨1, 6030⟩ else if d = (10 : ℤ) then ⟨1, 6030⟩ else ⟨0, 6030⟩

def cellA1B10 : CellData where
  inverse := 29525
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 2010⟩ else if d = (4 : ℤ) then ⟨1, 2010⟩ else if d = (6 : ℤ) then ⟨1, 2010⟩ else if d = (8 : ℤ) then ⟨1, 2010⟩ else if d = (10 : ℤ) then ⟨1, 2010⟩ else ⟨0, 2009⟩

def cellA1B11 : CellData where
  inverse := 88574
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 670⟩ else if d = (4 : ℤ) then ⟨1, 670⟩ else if d = (6 : ℤ) then ⟨1, 670⟩ else if d = (8 : ℤ) then ⟨1, 670⟩ else if d = (10 : ℤ) then ⟨1, 670⟩ else ⟨0, 669⟩

def cellA1B12 : CellData where
  inverse := 265721
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 223⟩ else if d = (4 : ℤ) then ⟨1, 223⟩ else if d = (6 : ℤ) then ⟨1, 223⟩ else if d = (8 : ℤ) then ⟨1, 223⟩ else if d = (10 : ℤ) then ⟨1, 223⟩ else ⟨0, 222⟩

def cellA1B13 : CellData where
  inverse := 797162
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 74⟩ else if d = (4 : ℤ) then ⟨1, 74⟩ else if d = (6 : ℤ) then ⟨1, 74⟩ else if d = (8 : ℤ) then ⟨1, 74⟩ else if d = (10 : ℤ) then ⟨1, 74⟩ else ⟨0, 73⟩

def cellA1B14 : CellData where
  inverse := 2391485
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 23⟩ else if d = (-8 : ℤ) then ⟨0, 23⟩ else if d = (-6 : ℤ) then ⟨0, 23⟩ else if d = (-4 : ℤ) then ⟨0, 23⟩ else if d = (-2 : ℤ) then ⟨0, 23⟩ else if d = (0 : ℤ) then ⟨0, 23⟩ else if d = (2 : ℤ) then ⟨1, 24⟩ else if d = (4 : ℤ) then ⟨1, 24⟩ else if d = (6 : ℤ) then ⟨1, 24⟩ else if d = (8 : ℤ) then ⟨1, 24⟩ else if d = (10 : ℤ) then ⟨1, 24⟩ else ⟨0, 24⟩

def cellA1B15 : CellData where
  inverse := 7174454
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 8⟩ else if d = (4 : ℤ) then ⟨1, 8⟩ else if d = (6 : ℤ) then ⟨1, 8⟩ else if d = (8 : ℤ) then ⟨1, 8⟩ else if d = (10 : ℤ) then ⟨1, 8⟩ else ⟨0, 7⟩

def cellA1B16 : CellData where
  inverse := 21523361
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1⟩ else if d = (-8 : ℤ) then ⟨0, 1⟩ else if d = (-6 : ℤ) then ⟨0, 1⟩ else if d = (-4 : ℤ) then ⟨0, 1⟩ else if d = (-2 : ℤ) then ⟨0, 1⟩ else if d = (0 : ℤ) then ⟨0, 1⟩ else if d = (2 : ℤ) then ⟨1, 2⟩ else if d = (4 : ℤ) then ⟨1, 2⟩ else if d = (6 : ℤ) then ⟨1, 2⟩ else if d = (8 : ℤ) then ⟨1, 2⟩ else if d = (10 : ℤ) then ⟨1, 2⟩ else ⟨0, 2⟩

def cellA1B17 : CellData where
  inverse := 64570082
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, -1⟩ else if d = (-8 : ℤ) then ⟨0, -1⟩ else if d = (-6 : ℤ) then ⟨0, -1⟩ else if d = (-4 : ℤ) then ⟨0, -1⟩ else if d = (-2 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, 0⟩

def cellA1B18 : CellData where
  inverse := 193710245
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B19 : CellData where
  inverse := 581130734
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B20 : CellData where
  inverse := 1743392201
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B21 : CellData where
  inverse := 5230176602
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B22 : CellData where
  inverse := 15690529805
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B23 : CellData where
  inverse := 47071589414
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B24 : CellData where
  inverse := 141214768241
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B25 : CellData where
  inverse := 423644304722
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B26 : CellData where
  inverse := 1270932914165
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B27 : CellData where
  inverse := 3812798742494
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B28 : CellData where
  inverse := 11438396227481
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B29 : CellData where
  inverse := 34315188682442
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B30 : CellData where
  inverse := 102945566047325
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B31 : CellData where
  inverse := 308836698141974
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B32 : CellData where
  inverse := 926510094425921
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B33 : CellData where
  inverse := 2779530283277762
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B34 : CellData where
  inverse := 8338590849833285
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B35 : CellData where
  inverse := 25015772549499854
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B36 : CellData where
  inverse := 75047317648499561
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B37 : CellData where
  inverse := 225141952945498682
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B38 : CellData where
  inverse := 675425858836496045
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B39 : CellData where
  inverse := 2026277576509488134
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B40 : CellData where
  inverse := 6078832729528464401
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B41 : CellData where
  inverse := 18236498188585393202
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B42 : CellData where
  inverse := 54709494565756179605
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B43 : CellData where
  inverse := 164128483697268538814
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B44 : CellData where
  inverse := 492385451091805616441
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B45 : CellData where
  inverse := 1477156353275416849322
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B46 : CellData where
  inverse := 4431469059826250547965
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B47 : CellData where
  inverse := 13294407179478751643894
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B48 : CellData where
  inverse := 39883221538436254931681
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B49 : CellData where
  inverse := 119649664615308764795042
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B50 : CellData where
  inverse := 358948993845926294385125
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B51 : CellData where
  inverse := 1076846981537778883155374
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B52 : CellData where
  inverse := 3230540944613336649466121
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B53 : CellData where
  inverse := 9691622833840009948398362
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B54 : CellData where
  inverse := 29074868501520029845195085
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B55 : CellData where
  inverse := 87224605504560089535585254
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B56 : CellData where
  inverse := 261673816513680268606755761
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B57 : CellData where
  inverse := 785021449541040805820267282
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B58 : CellData where
  inverse := 2355064348623122417460801845
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B59 : CellData where
  inverse := 7065193045869367252382405534
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B60 : CellData where
  inverse := 21195579137608101757147216601
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B61 : CellData where
  inverse := 63586737412824305271441649802
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B62 : CellData where
  inverse := 190760212238472915814324949405
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B63 : CellData where
  inverse := 572280636715418747442974848214
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B64 : CellData where
  inverse := 1716841910146256242328924544641
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B65 : CellData where
  inverse := 5150525730438768726986773633922
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B66 : CellData where
  inverse := 15451577191316306180960320901765
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B67 : CellData where
  inverse := 46354731573948918542880962705294
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B68 : CellData where
  inverse := 139064194721846755628642888115881
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 29675755⟩ else if d = (-2 : ℤ) then ⟨0, 29675757⟩ else if d = (1 : ℤ) then ⟨0, 29675757⟩ else if d = (2 : ℤ) then ⟨0, 29675757⟩ else if d = (4 : ℤ) then ⟨1, 29675757⟩ else if d = (5 : ℤ) then ⟨0, 29675757⟩ else if d = (6 : ℤ) then ⟨0, 29675757⟩ else if d = (7 : ℤ) then ⟨1, 29675757⟩ else if d = (8 : ℤ) then ⟨1, 29675757⟩ else if d = (9 : ℤ) then ⟨0, 29675757⟩ else if d = (10 : ℤ) then ⟨1, 29675758⟩ else ⟨0, 29675756⟩

def cellA2B2 : CellData where
  inverse := 7
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 13189225⟩ else if d = (-7 : ℤ) then ⟨0, 13189225⟩ else if d = (-6 : ℤ) then ⟨0, 13189225⟩ else if d = (-5 : ℤ) then ⟨0, 13189225⟩ else if d = (-2 : ℤ) then ⟨0, 13189225⟩ else if d = (-1 : ℤ) then ⟨0, 13189225⟩ else if d = (2 : ℤ) then ⟨0, 13189225⟩ else if d = (3 : ℤ) then ⟨0, 13189225⟩ else if d = (4 : ℤ) then ⟨1, 13189225⟩ else if d = (7 : ℤ) then ⟨0, 13189225⟩ else if d = (8 : ℤ) then ⟨1, 13189225⟩ else ⟨0, 13189224⟩

def cellA2B3 : CellData where
  inverse := 7
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 4396408⟩ else if d = (-7 : ℤ) then ⟨0, 4396408⟩ else if d = (-6 : ℤ) then ⟨0, 4396408⟩ else if d = (-3 : ℤ) then ⟨0, 4396408⟩ else if d = (-2 : ℤ) then ⟨0, 4396408⟩ else if d = (1 : ℤ) then ⟨0, 4396408⟩ else if d = (2 : ℤ) then ⟨0, 4396408⟩ else if d = (4 : ℤ) then ⟨1, 4396408⟩ else if d = (5 : ℤ) then ⟨0, 4396408⟩ else if d = (8 : ℤ) then ⟨1, 4396408⟩ else if d = (9 : ℤ) then ⟨0, 4396408⟩ else ⟨0, 4396407⟩

def cellA2B4 : CellData where
  inverse := 61
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1465469⟩ else if d = (-9 : ℤ) then ⟨0, 1465469⟩ else if d = (-6 : ℤ) then ⟨0, 1465469⟩ else if d = (-5 : ℤ) then ⟨0, 1465469⟩ else if d = (-2 : ℤ) then ⟨0, 1465469⟩ else if d = (-1 : ℤ) then ⟨0, 1465469⟩ else if d = (2 : ℤ) then ⟨0, 1465469⟩ else if d = (3 : ℤ) then ⟨0, 1465469⟩ else if d = (4 : ℤ) then ⟨1, 1465469⟩ else if d = (7 : ℤ) then ⟨0, 1465469⟩ else if d = (8 : ℤ) then ⟨1, 1465469⟩ else ⟨0, 1465468⟩

def cellA2B5 : CellData where
  inverse := 61
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 488488⟩ else if d = (-4 : ℤ) then ⟨0, 488488⟩ else if d = (0 : ℤ) then ⟨0, 488488⟩ else if d = (4 : ℤ) then ⟨1, 488489⟩ else if d = (8 : ℤ) then ⟨1, 488489⟩ else ⟨0, 488489⟩

def cellA2B6 : CellData where
  inverse := 547
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 162828⟩ else if d = (-4 : ℤ) then ⟨0, 162828⟩ else if d = (0 : ℤ) then ⟨0, 162828⟩ else if d = (4 : ℤ) then ⟨1, 162829⟩ else if d = (8 : ℤ) then ⟨1, 162829⟩ else ⟨0, 162829⟩

def cellA2B7 : CellData where
  inverse := 547
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 54275⟩ else if d = (-8 : ℤ) then ⟨0, 54275⟩ else if d = (-5 : ℤ) then ⟨0, 54275⟩ else if d = (-4 : ℤ) then ⟨0, 54275⟩ else if d = (-1 : ℤ) then ⟨0, 54275⟩ else if d = (0 : ℤ) then ⟨0, 54275⟩ else if d = (3 : ℤ) then ⟨0, 54275⟩ else if d = (4 : ℤ) then ⟨1, 54276⟩ else if d = (7 : ℤ) then ⟨0, 54275⟩ else if d = (8 : ℤ) then ⟨1, 54276⟩ else ⟨0, 54276⟩

def cellA2B8 : CellData where
  inverse := 4921
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 18092⟩ else if d = (8 : ℤ) then ⟨1, 18092⟩ else ⟨0, 18091⟩

def cellA2B9 : CellData where
  inverse := 4921
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 6029⟩ else if d = (-8 : ℤ) then ⟨0, 6029⟩ else if d = (-5 : ℤ) then ⟨0, 6029⟩ else if d = (-4 : ℤ) then ⟨0, 6029⟩ else if d = (-1 : ℤ) then ⟨0, 6029⟩ else if d = (0 : ℤ) then ⟨0, 6029⟩ else if d = (3 : ℤ) then ⟨0, 6029⟩ else if d = (4 : ℤ) then ⟨1, 6030⟩ else if d = (7 : ℤ) then ⟨0, 6029⟩ else if d = (8 : ℤ) then ⟨1, 6030⟩ else ⟨0, 6030⟩

def cellA2B10 : CellData where
  inverse := 44287
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 2010⟩ else if d = (8 : ℤ) then ⟨1, 2010⟩ else ⟨0, 2009⟩

def cellA2B11 : CellData where
  inverse := 44287
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 670⟩ else if d = (8 : ℤ) then ⟨1, 670⟩ else ⟨0, 669⟩

def cellA2B12 : CellData where
  inverse := 398581
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 223⟩ else if d = (-5 : ℤ) then ⟨0, 223⟩ else if d = (-1 : ℤ) then ⟨0, 223⟩ else if d = (3 : ℤ) then ⟨0, 223⟩ else if d = (4 : ℤ) then ⟨1, 223⟩ else if d = (7 : ℤ) then ⟨0, 223⟩ else if d = (8 : ℤ) then ⟨1, 223⟩ else ⟨0, 222⟩

def cellA2B13 : CellData where
  inverse := 398581
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 74⟩ else if d = (-3 : ℤ) then ⟨0, 74⟩ else if d = (1 : ℤ) then ⟨0, 74⟩ else if d = (4 : ℤ) then ⟨1, 74⟩ else if d = (5 : ℤ) then ⟨0, 74⟩ else if d = (8 : ℤ) then ⟨1, 74⟩ else if d = (9 : ℤ) then ⟨0, 74⟩ else ⟨0, 73⟩

def cellA2B14 : CellData where
  inverse := 3587227
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 23⟩ else if d = (-4 : ℤ) then ⟨0, 23⟩ else if d = (0 : ℤ) then ⟨0, 23⟩ else if d = (4 : ℤ) then ⟨1, 24⟩ else if d = (8 : ℤ) then ⟨1, 24⟩ else ⟨0, 24⟩

def cellA2B15 : CellData where
  inverse := 3587227
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 8⟩ else if d = (-3 : ℤ) then ⟨0, 8⟩ else if d = (1 : ℤ) then ⟨0, 8⟩ else if d = (4 : ℤ) then ⟨1, 8⟩ else if d = (5 : ℤ) then ⟨0, 8⟩ else if d = (8 : ℤ) then ⟨1, 8⟩ else if d = (9 : ℤ) then ⟨0, 8⟩ else ⟨0, 7⟩

def cellA2B16 : CellData where
  inverse := 32285041
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 1⟩ else if d = (-4 : ℤ) then ⟨0, 1⟩ else if d = (0 : ℤ) then ⟨0, 1⟩ else if d = (4 : ℤ) then ⟨1, 2⟩ else if d = (8 : ℤ) then ⟨1, 2⟩ else ⟨0, 2⟩

def cellA2B17 : CellData where
  inverse := 32285041
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, -1⟩ else if d = (-4 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, 0⟩

def cellA2B18 : CellData where
  inverse := 290565367
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B19 : CellData where
  inverse := 290565367
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B20 : CellData where
  inverse := 2615088301
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B21 : CellData where
  inverse := 2615088301
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B22 : CellData where
  inverse := 23535794707
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B23 : CellData where
  inverse := 23535794707
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B24 : CellData where
  inverse := 211822152361
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B25 : CellData where
  inverse := 211822152361
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B26 : CellData where
  inverse := 1906399371247
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B27 : CellData where
  inverse := 1906399371247
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B28 : CellData where
  inverse := 17157594341221
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B29 : CellData where
  inverse := 17157594341221
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B30 : CellData where
  inverse := 154418349070987
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B31 : CellData where
  inverse := 154418349070987
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B32 : CellData where
  inverse := 1389765141638881
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B33 : CellData where
  inverse := 1389765141638881
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B34 : CellData where
  inverse := 12507886274749927
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B35 : CellData where
  inverse := 12507886274749927
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B36 : CellData where
  inverse := 112570976472749341
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B37 : CellData where
  inverse := 112570976472749341
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B38 : CellData where
  inverse := 1013138788254744067
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B39 : CellData where
  inverse := 1013138788254744067
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B40 : CellData where
  inverse := 9118249094292696601
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B41 : CellData where
  inverse := 9118249094292696601
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B42 : CellData where
  inverse := 82064241848634269407
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B43 : CellData where
  inverse := 82064241848634269407
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B44 : CellData where
  inverse := 738578176637708424661
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B45 : CellData where
  inverse := 738578176637708424661
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B46 : CellData where
  inverse := 6647203589739375821947
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B47 : CellData where
  inverse := 6647203589739375821947
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B48 : CellData where
  inverse := 59824832307654382397521
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B49 : CellData where
  inverse := 59824832307654382397521
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B50 : CellData where
  inverse := 538423490768889441577687
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B51 : CellData where
  inverse := 538423490768889441577687
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B52 : CellData where
  inverse := 4845811416920004974199181
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B53 : CellData where
  inverse := 4845811416920004974199181
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B54 : CellData where
  inverse := 43612302752280044767792627
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B55 : CellData where
  inverse := 43612302752280044767792627
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B56 : CellData where
  inverse := 392510724770520402910133641
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B57 : CellData where
  inverse := 392510724770520402910133641
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B58 : CellData where
  inverse := 3532596522934683626191202767
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B59 : CellData where
  inverse := 3532596522934683626191202767
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B60 : CellData where
  inverse := 31793368706412152635720824901
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B61 : CellData where
  inverse := 31793368706412152635720824901
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B62 : CellData where
  inverse := 286140318357709373721487424107
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B63 : CellData where
  inverse := 286140318357709373721487424107
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B64 : CellData where
  inverse := 2575262865219384363493386816961
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B65 : CellData where
  inverse := 2575262865219384363493386816961
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B66 : CellData where
  inverse := 23177365786974459271440481352647
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B67 : CellData where
  inverse := 23177365786974459271440481352647
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B68 : CellData where
  inverse := 208596292082770133442964332173821
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 14837877⟩ else if d = (-8 : ℤ) then ⟨0, 14837877⟩ else if d = (-6 : ℤ) then ⟨0, 14837877⟩ else if d = (-5 : ℤ) then ⟨0, 14837877⟩ else if d = (-3 : ℤ) then ⟨0, 14837877⟩ else if d = (0 : ℤ) then ⟨0, 14837877⟩ else if d = (3 : ℤ) then ⟨0, 14837877⟩ else if d = (8 : ℤ) then ⟨1, 14837878⟩ else ⟨0, 14837878⟩

def cellA3B2 : CellData where
  inverse := 8
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 13189224⟩ else if d = (-8 : ℤ) then ⟨0, 13189224⟩ else if d = (-7 : ℤ) then ⟨0, 13189224⟩ else if d = (-6 : ℤ) then ⟨0, 13189224⟩ else if d = (0 : ℤ) then ⟨0, 13189224⟩ else if d = (1 : ℤ) then ⟨0, 13189224⟩ else if d = (2 : ℤ) then ⟨0, 13189224⟩ else if d = (3 : ℤ) then ⟨0, 13189224⟩ else if d = (8 : ℤ) then ⟨1, 13189225⟩ else if d = (9 : ℤ) then ⟨0, 13189224⟩ else if d = (10 : ℤ) then ⟨0, 13189224⟩ else ⟨0, 13189225⟩

def cellA3B3 : CellData where
  inverse := 17
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 4396408⟩ else if d = (-6 : ℤ) then ⟨0, 4396408⟩ else if d = (-4 : ℤ) then ⟨0, 4396408⟩ else if d = (-3 : ℤ) then ⟨0, 4396408⟩ else if d = (-1 : ℤ) then ⟨0, 4396408⟩ else if d = (2 : ℤ) then ⟨0, 4396408⟩ else if d = (4 : ℤ) then ⟨0, 4396408⟩ else if d = (5 : ℤ) then ⟨0, 4396408⟩ else if d = (7 : ℤ) then ⟨0, 4396408⟩ else if d = (8 : ℤ) then ⟨1, 4396408⟩ else if d = (10 : ℤ) then ⟨0, 4396408⟩ else ⟨0, 4396407⟩

def cellA3B4 : CellData where
  inverse := 71
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 1465468⟩ else if d = (-7 : ℤ) then ⟨0, 1465468⟩ else if d = (-6 : ℤ) then ⟨0, 1465468⟩ else if d = (-5 : ℤ) then ⟨0, 1465468⟩ else if d = (0 : ℤ) then ⟨0, 1465468⟩ else if d = (1 : ℤ) then ⟨0, 1465468⟩ else if d = (2 : ℤ) then ⟨0, 1465468⟩ else if d = (3 : ℤ) then ⟨0, 1465468⟩ else if d = (8 : ℤ) then ⟨1, 1465469⟩ else if d = (9 : ℤ) then ⟨0, 1465468⟩ else if d = (10 : ℤ) then ⟨0, 1465468⟩ else ⟨0, 1465469⟩

def cellA3B5 : CellData where
  inverse := 152
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 488488⟩ else if d = (-5 : ℤ) then ⟨0, 488488⟩ else if d = (0 : ℤ) then ⟨0, 488488⟩ else if d = (3 : ℤ) then ⟨0, 488488⟩ else if d = (8 : ℤ) then ⟨1, 488489⟩ else ⟨0, 488489⟩

def cellA3B6 : CellData where
  inverse := 638
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 162828⟩ else if d = (0 : ℤ) then ⟨0, 162828⟩ else if d = (8 : ℤ) then ⟨1, 162829⟩ else ⟨0, 162829⟩

def cellA3B7 : CellData where
  inverse := 1367
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 54275⟩ else if d = (-8 : ℤ) then ⟨0, 54275⟩ else if d = (-5 : ℤ) then ⟨0, 54275⟩ else if d = (-2 : ℤ) then ⟨0, 54275⟩ else if d = (0 : ℤ) then ⟨0, 54275⟩ else if d = (3 : ℤ) then ⟨0, 54275⟩ else if d = (6 : ℤ) then ⟨0, 54275⟩ else if d = (8 : ℤ) then ⟨1, 54276⟩ else ⟨0, 54276⟩

def cellA3B8 : CellData where
  inverse := 5741
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 18092⟩ else if d = (-1 : ℤ) then ⟨0, 18092⟩ else if d = (7 : ℤ) then ⟨0, 18092⟩ else if d = (8 : ℤ) then ⟨1, 18092⟩ else ⟨0, 18091⟩

def cellA3B9 : CellData where
  inverse := 12302
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 6029⟩ else if d = (-8 : ℤ) then ⟨0, 6029⟩ else if d = (-5 : ℤ) then ⟨0, 6029⟩ else if d = (-2 : ℤ) then ⟨0, 6029⟩ else if d = (0 : ℤ) then ⟨0, 6029⟩ else if d = (3 : ℤ) then ⟨0, 6029⟩ else if d = (6 : ℤ) then ⟨0, 6029⟩ else if d = (8 : ℤ) then ⟨1, 6030⟩ else ⟨0, 6030⟩

def cellA3B10 : CellData where
  inverse := 51668
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 2010⟩ else if d = (-1 : ℤ) then ⟨0, 2010⟩ else if d = (7 : ℤ) then ⟨0, 2010⟩ else if d = (8 : ℤ) then ⟨1, 2010⟩ else ⟨0, 2009⟩

def cellA3B11 : CellData where
  inverse := 110717
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 670⟩ else ⟨0, 669⟩

def cellA3B12 : CellData where
  inverse := 465011
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 223⟩ else if d = (-9 : ℤ) then ⟨0, 223⟩ else if d = (-2 : ℤ) then ⟨0, 223⟩ else if d = (-1 : ℤ) then ⟨0, 223⟩ else if d = (6 : ℤ) then ⟨0, 223⟩ else if d = (7 : ℤ) then ⟨0, 223⟩ else if d = (8 : ℤ) then ⟨1, 223⟩ else ⟨0, 222⟩

def cellA3B13 : CellData where
  inverse := 996452
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 74⟩ else if d = (-6 : ℤ) then ⟨0, 74⟩ else if d = (-3 : ℤ) then ⟨0, 74⟩ else if d = (-1 : ℤ) then ⟨0, 74⟩ else if d = (2 : ℤ) then ⟨0, 74⟩ else if d = (5 : ℤ) then ⟨0, 74⟩ else if d = (7 : ℤ) then ⟨0, 74⟩ else if d = (8 : ℤ) then ⟨1, 74⟩ else if d = (10 : ℤ) then ⟨0, 74⟩ else ⟨0, 73⟩

def cellA3B14 : CellData where
  inverse := 4185098
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 23⟩ else if d = (-7 : ℤ) then ⟨0, 23⟩ else if d = (0 : ℤ) then ⟨0, 23⟩ else if d = (1 : ℤ) then ⟨0, 23⟩ else if d = (8 : ℤ) then ⟨1, 24⟩ else if d = (9 : ℤ) then ⟨0, 23⟩ else ⟨0, 24⟩

def cellA3B15 : CellData where
  inverse := 8968067
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 8⟩ else if d = (-3 : ℤ) then ⟨0, 8⟩ else if d = (2 : ℤ) then ⟨0, 8⟩ else if d = (5 : ℤ) then ⟨0, 8⟩ else if d = (8 : ℤ) then ⟨1, 8⟩ else if d = (10 : ℤ) then ⟨0, 8⟩ else ⟨0, 7⟩

def cellA3B16 : CellData where
  inverse := 37665881
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 1⟩ else if d = (-7 : ℤ) then ⟨0, 1⟩ else if d = (0 : ℤ) then ⟨0, 1⟩ else if d = (1 : ℤ) then ⟨0, 1⟩ else if d = (8 : ℤ) then ⟨1, 2⟩ else if d = (9 : ℤ) then ⟨0, 1⟩ else ⟨0, 2⟩

def cellA3B17 : CellData where
  inverse := 80712602
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, 0⟩

def cellA3B18 : CellData where
  inverse := 338992928
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B19 : CellData where
  inverse := 726413417
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B20 : CellData where
  inverse := 3050936351
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B21 : CellData where
  inverse := 6537720752
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B22 : CellData where
  inverse := 27458427158
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B23 : CellData where
  inverse := 58839486767
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B24 : CellData where
  inverse := 247125844421
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B25 : CellData where
  inverse := 529555380902
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B26 : CellData where
  inverse := 2224132599788
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B27 : CellData where
  inverse := 4765998428117
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B28 : CellData where
  inverse := 20017193398091
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B29 : CellData where
  inverse := 42893985853052
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B30 : CellData where
  inverse := 180154740582818
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B31 : CellData where
  inverse := 386045872677467
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B32 : CellData where
  inverse := 1621392665245361
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B33 : CellData where
  inverse := 3474412854097202
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B34 : CellData where
  inverse := 14592533987208248
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B35 : CellData where
  inverse := 31269715686874817
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B36 : CellData where
  inverse := 131332805884874231
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B37 : CellData where
  inverse := 281427441181873352
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B38 : CellData where
  inverse := 1181995252963868078
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B39 : CellData where
  inverse := 2532846970636860167
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B40 : CellData where
  inverse := 10637957276674812701
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B41 : CellData where
  inverse := 22795622735731741502
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B42 : CellData where
  inverse := 95741615490073314308
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B43 : CellData where
  inverse := 205160604621585673517
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B44 : CellData where
  inverse := 861674539410659828771
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B45 : CellData where
  inverse := 1846445441594271061652
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B46 : CellData where
  inverse := 7755070854695938458938
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B47 : CellData where
  inverse := 16618008974348439554867
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B48 : CellData where
  inverse := 69795637692263446130441
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B49 : CellData where
  inverse := 149562080769135955993802
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B50 : CellData where
  inverse := 628160739230371015173968
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B51 : CellData where
  inverse := 1346058726922223603944217
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B52 : CellData where
  inverse := 5653446653073339136565711
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B53 : CellData where
  inverse := 12114528542300012435497952
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B54 : CellData where
  inverse := 50881019877660052229091398
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B55 : CellData where
  inverse := 109030756880700111919481567
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B56 : CellData where
  inverse := 457929178898940470061822581
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B57 : CellData where
  inverse := 981276811926301007275334102
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B58 : CellData where
  inverse := 4121362610090464230556403228
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B59 : CellData where
  inverse := 8831491307336709065478006917
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B60 : CellData where
  inverse := 37092263490814178075007629051
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B61 : CellData where
  inverse := 79483421766030381589302062252
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B62 : CellData where
  inverse := 333830371417327602675068661458
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B63 : CellData where
  inverse := 715350795894273434303718560267
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B64 : CellData where
  inverse := 3004473342755948424075617953121
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B65 : CellData where
  inverse := 6438157163048460908733467042402
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B66 : CellData where
  inverse := 27040260084803535816680561578088
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B67 : CellData where
  inverse := 57943414467436148178601203381617
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B68 : CellData where
  inverse := 243362340763231822350125054202791
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-2 : ℤ) then ⟨0, 7418939⟩ else if d = (1 : ℤ) then ⟨0, 7418939⟩ else if d = (4 : ℤ) then ⟨0, 7418939⟩ else if d = (7 : ℤ) then ⟨0, 7418939⟩ else if d = (10 : ℤ) then ⟨0, 7418939⟩ else ⟨0, 7418938⟩

def cellA4B2 : CellData where
  inverse := 4
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 7418939⟩ else if d = (-4 : ℤ) then ⟨0, 7418939⟩ else if d = (-2 : ℤ) then ⟨0, 7418939⟩ else if d = (3 : ℤ) then ⟨0, 7418939⟩ else if d = (5 : ℤ) then ⟨0, 7418939⟩ else if d = (7 : ℤ) then ⟨0, 7418939⟩ else if d = (10 : ℤ) then ⟨0, 7418939⟩ else ⟨0, 7418938⟩

def cellA4B3 : CellData where
  inverse := 22
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 4396407⟩ else if d = (-9 : ℤ) then ⟨0, 4396407⟩ else if d = (-5 : ℤ) then ⟨0, 4396407⟩ else if d = (-4 : ℤ) then ⟨0, 4396407⟩ else if d = (-3 : ℤ) then ⟨0, 4396407⟩ else if d = (0 : ℤ) then ⟨0, 4396407⟩ else if d = (1 : ℤ) then ⟨0, 4396407⟩ else if d = (2 : ℤ) then ⟨0, 4396407⟩ else if d = (6 : ℤ) then ⟨0, 4396407⟩ else if d = (7 : ℤ) then ⟨0, 4396407⟩ else ⟨0, 4396408⟩

def cellA4B4 : CellData where
  inverse := 76
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1465468⟩ else if d = (-9 : ℤ) then ⟨0, 1465468⟩ else if d = (0 : ℤ) then ⟨0, 1465468⟩ else if d = (1 : ℤ) then ⟨0, 1465468⟩ else if d = (2 : ℤ) then ⟨0, 1465468⟩ else if d = (3 : ℤ) then ⟨0, 1465468⟩ else if d = (4 : ℤ) then ⟨0, 1465468⟩ else if d = (5 : ℤ) then ⟨0, 1465468⟩ else if d = (6 : ℤ) then ⟨0, 1465468⟩ else if d = (7 : ℤ) then ⟨0, 1465468⟩ else ⟨0, 1465469⟩

def cellA4B5 : CellData where
  inverse := 76
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 488488⟩ else if d = (0 : ℤ) then ⟨0, 488488⟩ else if d = (3 : ℤ) then ⟨0, 488488⟩ else if d = (6 : ℤ) then ⟨0, 488488⟩ else ⟨0, 488489⟩

def cellA4B6 : CellData where
  inverse := 319
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 162828⟩ else ⟨0, 162829⟩

def cellA4B7 : CellData where
  inverse := 1777
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 54275⟩ else if d = (-9 : ℤ) then ⟨0, 54275⟩ else if d = (-5 : ℤ) then ⟨0, 54275⟩ else if d = (-4 : ℤ) then ⟨0, 54275⟩ else if d = (0 : ℤ) then ⟨0, 54275⟩ else if d = (1 : ℤ) then ⟨0, 54275⟩ else if d = (6 : ℤ) then ⟨0, 54275⟩ else if d = (7 : ℤ) then ⟨0, 54275⟩ else ⟨0, 54276⟩

def cellA4B8 : CellData where
  inverse := 6151
  bounds := fun d => if d = (-3 : ℤ) then ⟨0, 18092⟩ else if d = (-2 : ℤ) then ⟨0, 18092⟩ else if d = (-1 : ℤ) then ⟨0, 18092⟩ else ⟨0, 18091⟩

def cellA4B9 : CellData where
  inverse := 6151
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 6029⟩ else if d = (-7 : ℤ) then ⟨0, 6029⟩ else if d = (-4 : ℤ) then ⟨0, 6029⟩ else if d = (0 : ℤ) then ⟨0, 6029⟩ else if d = (3 : ℤ) then ⟨0, 6029⟩ else if d = (6 : ℤ) then ⟨0, 6029⟩ else if d = (9 : ℤ) then ⟨0, 6029⟩ else ⟨0, 6030⟩

def cellA4B10 : CellData where
  inverse := 25834
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 2010⟩ else if d = (-2 : ℤ) then ⟨0, 2010⟩ else if d = (5 : ℤ) then ⟨0, 2010⟩ else if d = (7 : ℤ) then ⟨0, 2010⟩ else ⟨0, 2009⟩

def cellA4B11 : CellData where
  inverse := 143932
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 670⟩ else ⟨0, 669⟩

def cellA4B12 : CellData where
  inverse := 498226
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 223⟩ else if d = (-4 : ℤ) then ⟨0, 223⟩ else if d = (-3 : ℤ) then ⟨0, 223⟩ else if d = (-2 : ℤ) then ⟨0, 223⟩ else if d = (-1 : ℤ) then ⟨0, 223⟩ else ⟨0, 222⟩

def cellA4B13 : CellData where
  inverse := 498226
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 74⟩ else if d = (-6 : ℤ) then ⟨0, 74⟩ else if d = (-5 : ℤ) then ⟨0, 74⟩ else if d = (-3 : ℤ) then ⟨0, 74⟩ else if d = (-2 : ℤ) then ⟨0, 74⟩ else if d = (1 : ℤ) then ⟨0, 74⟩ else if d = (4 : ℤ) then ⟨0, 74⟩ else if d = (7 : ℤ) then ⟨0, 74⟩ else if d = (10 : ℤ) then ⟨0, 74⟩ else ⟨0, 73⟩

def cellA4B14 : CellData where
  inverse := 2092549
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 23⟩ else if d = (0 : ℤ) then ⟨0, 23⟩ else if d = (2 : ℤ) then ⟨0, 23⟩ else if d = (9 : ℤ) then ⟨0, 23⟩ else ⟨0, 24⟩

def cellA4B15 : CellData where
  inverse := 11658487
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 8⟩ else if d = (-1 : ℤ) then ⟨0, 8⟩ else if d = (4 : ℤ) then ⟨0, 8⟩ else if d = (5 : ℤ) then ⟨0, 8⟩ else if d = (10 : ℤ) then ⟨0, 8⟩ else ⟨0, 7⟩

def cellA4B16 : CellData where
  inverse := 40356301
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 1⟩ else if d = (1 : ℤ) then ⟨0, 1⟩ else if d = (2 : ℤ) then ⟨0, 1⟩ else if d = (3 : ℤ) then ⟨0, 1⟩ else ⟨0, 2⟩

def cellA4B17 : CellData where
  inverse := 40356301
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (3 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA4B18 : CellData where
  inverse := 169496464
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA4B19 : CellData where
  inverse := 944337442
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA4B20 : CellData where
  inverse := 3268860376
  bounds := fun _d => ⟨0, -1⟩

def cellA4B21 : CellData where
  inverse := 3268860376
  bounds := fun _d => ⟨0, -1⟩

def cellA4B22 : CellData where
  inverse := 13729213579
  bounds := fun _d => ⟨0, -1⟩

def cellA4B23 : CellData where
  inverse := 76491332797
  bounds := fun _d => ⟨0, -1⟩

def cellA4B24 : CellData where
  inverse := 264777690451
  bounds := fun _d => ⟨0, -1⟩

def cellA4B25 : CellData where
  inverse := 264777690451
  bounds := fun _d => ⟨0, -1⟩

def cellA4B26 : CellData where
  inverse := 1112066299894
  bounds := fun _d => ⟨0, -1⟩

def cellA4B27 : CellData where
  inverse := 6195797956552
  bounds := fun _d => ⟨0, -1⟩

def cellA4B28 : CellData where
  inverse := 21446992926526
  bounds := fun _d => ⟨0, -1⟩

def cellA4B29 : CellData where
  inverse := 21446992926526
  bounds := fun _d => ⟨0, -1⟩

def cellA4B30 : CellData where
  inverse := 90077370291409
  bounds := fun _d => ⟨0, -1⟩

def cellA4B31 : CellData where
  inverse := 501859634480707
  bounds := fun _d => ⟨0, -1⟩

def cellA4B32 : CellData where
  inverse := 1737206427048601
  bounds := fun _d => ⟨0, -1⟩

def cellA4B33 : CellData where
  inverse := 1737206427048601
  bounds := fun _d => ⟨0, -1⟩

def cellA4B34 : CellData where
  inverse := 7296266993604124
  bounds := fun _d => ⟨0, -1⟩

def cellA4B35 : CellData where
  inverse := 40650630392937262
  bounds := fun _d => ⟨0, -1⟩

def cellA4B36 : CellData where
  inverse := 140713720590936676
  bounds := fun _d => ⟨0, -1⟩

def cellA4B37 : CellData where
  inverse := 140713720590936676
  bounds := fun _d => ⟨0, -1⟩

def cellA4B38 : CellData where
  inverse := 590997626481934039
  bounds := fun _d => ⟨0, -1⟩

def cellA4B39 : CellData where
  inverse := 3292701061827918217
  bounds := fun _d => ⟨0, -1⟩

def cellA4B40 : CellData where
  inverse := 11397811367865870751
  bounds := fun _d => ⟨0, -1⟩

def cellA4B41 : CellData where
  inverse := 11397811367865870751
  bounds := fun _d => ⟨0, -1⟩

def cellA4B42 : CellData where
  inverse := 47870807745036657154
  bounds := fun _d => ⟨0, -1⟩

def cellA4B43 : CellData where
  inverse := 266708786008061375572
  bounds := fun _d => ⟨0, -1⟩

def cellA4B44 : CellData where
  inverse := 923222720797135530826
  bounds := fun _d => ⟨0, -1⟩

def cellA4B45 : CellData where
  inverse := 923222720797135530826
  bounds := fun _d => ⟨0, -1⟩

def cellA4B46 : CellData where
  inverse := 3877535427347969229469
  bounds := fun _d => ⟨0, -1⟩

def cellA4B47 : CellData where
  inverse := 21603411666652971421327
  bounds := fun _d => ⟨0, -1⟩

def cellA4B48 : CellData where
  inverse := 74781040384567977996901
  bounds := fun _d => ⟨0, -1⟩

def cellA4B49 : CellData where
  inverse := 74781040384567977996901
  bounds := fun _d => ⟨0, -1⟩

def cellA4B50 : CellData where
  inverse := 314080369615185507586984
  bounds := fun _d => ⟨0, -1⟩

def cellA4B51 : CellData where
  inverse := 1749876344998890685127482
  bounds := fun _d => ⟨0, -1⟩

def cellA4B52 : CellData where
  inverse := 6057264271150006217748976
  bounds := fun _d => ⟨0, -1⟩

def cellA4B53 : CellData where
  inverse := 6057264271150006217748976
  bounds := fun _d => ⟨0, -1⟩

def cellA4B54 : CellData where
  inverse := 25440509938830026114545699
  bounds := fun _d => ⟨0, -1⟩

def cellA4B55 : CellData where
  inverse := 141739983944910145495326037
  bounds := fun _d => ⟨0, -1⟩

def cellA4B56 : CellData where
  inverse := 490638405963150503637667051
  bounds := fun _d => ⟨0, -1⟩

def cellA4B57 : CellData where
  inverse := 490638405963150503637667051
  bounds := fun _d => ⟨0, -1⟩

def cellA4B58 : CellData where
  inverse := 2060681305045232115278201614
  bounds := fun _d => ⟨0, -1⟩

def cellA4B59 : CellData where
  inverse := 11480938699537721785121408992
  bounds := fun _d => ⟨0, -1⟩

def cellA4B60 : CellData where
  inverse := 39741710883015190794651031126
  bounds := fun _d => ⟨0, -1⟩

def cellA4B61 : CellData where
  inverse := 39741710883015190794651031126
  bounds := fun _d => ⟨0, -1⟩

def cellA4B62 : CellData where
  inverse := 166915185708663801337534330729
  bounds := fun _d => ⟨0, -1⟩

def cellA4B63 : CellData where
  inverse := 929956034662555464594834128347
  bounds := fun _d => ⟨0, -1⟩

def cellA4B64 : CellData where
  inverse := 3219078581524230454366733521201
  bounds := fun _d => ⟨0, -1⟩

def cellA4B65 : CellData where
  inverse := 3219078581524230454366733521201
  bounds := fun _d => ⟨0, -1⟩

def cellA4B66 : CellData where
  inverse := 13520130042401767908340280789044
  bounds := fun _d => ⟨0, -1⟩

def cellA4B67 : CellData where
  inverse := 75326438807666992632181564396102
  bounds := fun _d => ⟨0, -1⟩

def cellA4B68 : CellData where
  inverse := 260745365103462666803705415217276
  bounds := fun _d => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 3709468⟩ else if d = (-8 : ℤ) then ⟨0, 3709468⟩ else if d = (-6 : ℤ) then ⟨0, 3709468⟩ else if d = (-5 : ℤ) then ⟨0, 3709468⟩ else if d = (-3 : ℤ) then ⟨0, 3709468⟩ else if d = (0 : ℤ) then ⟨0, 3709468⟩ else if d = (3 : ℤ) then ⟨0, 3709468⟩ else if d = (6 : ℤ) then ⟨0, 3709468⟩ else if d = (9 : ℤ) then ⟨0, 3709468⟩ else ⟨0, 3709469⟩

def cellA5B2 : CellData where
  inverse := 2
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 3709468⟩ else if d = (-9 : ℤ) then ⟨0, 3709468⟩ else if d = (-5 : ℤ) then ⟨0, 3709468⟩ else if d = (-1 : ℤ) then ⟨0, 3709468⟩ else if d = (0 : ℤ) then ⟨0, 3709468⟩ else if d = (4 : ℤ) then ⟨0, 3709468⟩ else if d = (8 : ℤ) then ⟨0, 3709468⟩ else if d = (9 : ℤ) then ⟨0, 3709468⟩ else ⟨0, 3709469⟩

def cellA5B3 : CellData where
  inverse := 11
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 3709468⟩ else if d = (-8 : ℤ) then ⟨0, 3709468⟩ else if d = (-5 : ℤ) then ⟨0, 3709468⟩ else if d = (-3 : ℤ) then ⟨0, 3709468⟩ else if d = (0 : ℤ) then ⟨0, 3709468⟩ else if d = (2 : ℤ) then ⟨0, 3709468⟩ else if d = (7 : ℤ) then ⟨0, 3709468⟩ else ⟨0, 3709469⟩

def cellA5B4 : CellData where
  inverse := 38
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1465469⟩ else if d = (-8 : ℤ) then ⟨0, 1465469⟩ else if d = (-6 : ℤ) then ⟨0, 1465469⟩ else if d = (-4 : ℤ) then ⟨0, 1465469⟩ else if d = (-2 : ℤ) then ⟨0, 1465469⟩ else if d = (1 : ℤ) then ⟨0, 1465469⟩ else if d = (3 : ℤ) then ⟨0, 1465469⟩ else if d = (5 : ℤ) then ⟨0, 1465469⟩ else if d = (7 : ℤ) then ⟨0, 1465469⟩ else if d = (9 : ℤ) then ⟨0, 1465469⟩ else ⟨0, 1465468⟩

def cellA5B5 : CellData where
  inverse := 38
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 488488⟩ else if d = (-1 : ℤ) then ⟨0, 488488⟩ else if d = (0 : ℤ) then ⟨0, 488488⟩ else if d = (6 : ℤ) then ⟨0, 488488⟩ else ⟨0, 488489⟩

def cellA5B6 : CellData where
  inverse := 524
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 162828⟩ else if d = (0 : ℤ) then ⟨0, 162828⟩ else ⟨0, 162829⟩

def cellA5B7 : CellData where
  inverse := 1982
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 54275⟩ else if d = (-9 : ℤ) then ⟨0, 54275⟩ else if d = (-8 : ℤ) then ⟨0, 54275⟩ else if d = (-7 : ℤ) then ⟨0, 54275⟩ else if d = (0 : ℤ) then ⟨0, 54275⟩ else if d = (1 : ℤ) then ⟨0, 54275⟩ else if d = (2 : ℤ) then ⟨0, 54275⟩ else if d = (3 : ℤ) then ⟨0, 54275⟩ else ⟨0, 54276⟩

def cellA5B8 : CellData where
  inverse := 6356
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 18092⟩ else if d = (-5 : ℤ) then ⟨0, 18092⟩ else if d = (-4 : ℤ) then ⟨0, 18092⟩ else if d = (-3 : ℤ) then ⟨0, 18092⟩ else if d = (-2 : ℤ) then ⟨0, 18092⟩ else if d = (-1 : ℤ) then ⟨0, 18092⟩ else ⟨0, 18091⟩

def cellA5B9 : CellData where
  inverse := 12917
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 6029⟩ else if d = (0 : ℤ) then ⟨0, 6029⟩ else if d = (3 : ℤ) then ⟨0, 6029⟩ else if d = (6 : ℤ) then ⟨0, 6029⟩ else if d = (9 : ℤ) then ⟨0, 6029⟩ else ⟨0, 6030⟩

def cellA5B10 : CellData where
  inverse := 12917
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 2010⟩ else if d = (-4 : ℤ) then ⟨0, 2010⟩ else if d = (1 : ℤ) then ⟨0, 2010⟩ else if d = (5 : ℤ) then ⟨0, 2010⟩ else if d = (10 : ℤ) then ⟨0, 2010⟩ else ⟨0, 2009⟩

def cellA5B11 : CellData where
  inverse := 71966
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 670⟩ else if d = (10 : ℤ) then ⟨0, 670⟩ else ⟨0, 669⟩

def cellA5B12 : CellData where
  inverse := 249113
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 223⟩ else if d = (-8 : ℤ) then ⟨0, 223⟩ else if d = (-6 : ℤ) then ⟨0, 223⟩ else if d = (-4 : ℤ) then ⟨0, 223⟩ else if d = (-2 : ℤ) then ⟨0, 223⟩ else if d = (5 : ℤ) then ⟨0, 223⟩ else if d = (7 : ℤ) then ⟨0, 223⟩ else if d = (9 : ℤ) then ⟨0, 223⟩ else ⟨0, 222⟩

def cellA5B13 : CellData where
  inverse := 249113
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 74⟩ else if d = (-6 : ℤ) then ⟨0, 74⟩ else if d = (-5 : ℤ) then ⟨0, 74⟩ else if d = (-4 : ℤ) then ⟨0, 74⟩ else if d = (1 : ℤ) then ⟨0, 74⟩ else if d = (2 : ℤ) then ⟨0, 74⟩ else if d = (7 : ℤ) then ⟨0, 74⟩ else if d = (8 : ℤ) then ⟨0, 74⟩ else if d = (9 : ℤ) then ⟨0, 74⟩ else ⟨0, 73⟩

def cellA5B14 : CellData where
  inverse := 3437759
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 23⟩ else if d = (-3 : ℤ) then ⟨0, 23⟩ else if d = (0 : ℤ) then ⟨0, 23⟩ else if d = (4 : ℤ) then ⟨0, 23⟩ else ⟨0, 24⟩

def cellA5B15 : CellData where
  inverse := 13003697
  bounds := fun d => if d = (-2 : ℤ) then ⟨0, 8⟩ else if d = (-1 : ℤ) then ⟨0, 8⟩ else if d = (8 : ℤ) then ⟨0, 8⟩ else if d = (9 : ℤ) then ⟨0, 8⟩ else if d = (10 : ℤ) then ⟨0, 8⟩ else ⟨0, 7⟩

def cellA5B16 : CellData where
  inverse := 41701511
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 1⟩ else if d = (1 : ℤ) then ⟨0, 1⟩ else if d = (2 : ℤ) then ⟨0, 1⟩ else if d = (3 : ℤ) then ⟨0, 1⟩ else if d = (4 : ℤ) then ⟨0, 1⟩ else if d = (5 : ℤ) then ⟨0, 1⟩ else if d = (6 : ℤ) then ⟨0, 1⟩ else if d = (7 : ℤ) then ⟨0, 1⟩ else ⟨0, 2⟩

def cellA5B17 : CellData where
  inverse := 84748232
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (3 : ℤ) then ⟨0, -1⟩ else if d = (6 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA5B18 : CellData where
  inverse := 84748232
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA5B19 : CellData where
  inverse := 472168721
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA5B20 : CellData where
  inverse := 1634430188
  bounds := fun _d => ⟨0, -1⟩

def cellA5B21 : CellData where
  inverse := 1634430188
  bounds := fun _d => ⟨0, -1⟩

def cellA5B22 : CellData where
  inverse := 22555136594
  bounds := fun _d => ⟨0, -1⟩

def cellA5B23 : CellData where
  inverse := 85317255812
  bounds := fun _d => ⟨0, -1⟩

def cellA5B24 : CellData where
  inverse := 273603613466
  bounds := fun _d => ⟨0, -1⟩

def cellA5B25 : CellData where
  inverse := 556033149947
  bounds := fun _d => ⟨0, -1⟩

def cellA5B26 : CellData where
  inverse := 556033149947
  bounds := fun _d => ⟨0, -1⟩

def cellA5B27 : CellData where
  inverse := 3097898978276
  bounds := fun _d => ⟨0, -1⟩

def cellA5B28 : CellData where
  inverse := 10723496463263
  bounds := fun _d => ⟨0, -1⟩

def cellA5B29 : CellData where
  inverse := 10723496463263
  bounds := fun _d => ⟨0, -1⟩

def cellA5B30 : CellData where
  inverse := 147984251193029
  bounds := fun _d => ⟨0, -1⟩

def cellA5B31 : CellData where
  inverse := 559766515382327
  bounds := fun _d => ⟨0, -1⟩

def cellA5B32 : CellData where
  inverse := 1795113307950221
  bounds := fun _d => ⟨0, -1⟩

def cellA5B33 : CellData where
  inverse := 3648133496802062
  bounds := fun _d => ⟨0, -1⟩

def cellA5B34 : CellData where
  inverse := 3648133496802062
  bounds := fun _d => ⟨0, -1⟩

def cellA5B35 : CellData where
  inverse := 20325315196468631
  bounds := fun _d => ⟨0, -1⟩

def cellA5B36 : CellData where
  inverse := 70356860295468338
  bounds := fun _d => ⟨0, -1⟩

def cellA5B37 : CellData where
  inverse := 70356860295468338
  bounds := fun _d => ⟨0, -1⟩

def cellA5B38 : CellData where
  inverse := 970924672077463064
  bounds := fun _d => ⟨0, -1⟩

def cellA5B39 : CellData where
  inverse := 3672628107423447242
  bounds := fun _d => ⟨0, -1⟩

def cellA5B40 : CellData where
  inverse := 11777738413461399776
  bounds := fun _d => ⟨0, -1⟩

def cellA5B41 : CellData where
  inverse := 23935403872518328577
  bounds := fun _d => ⟨0, -1⟩

def cellA5B42 : CellData where
  inverse := 23935403872518328577
  bounds := fun _d => ⟨0, -1⟩

def cellA5B43 : CellData where
  inverse := 133354393004030687786
  bounds := fun _d => ⟨0, -1⟩

def cellA5B44 : CellData where
  inverse := 461611360398567765413
  bounds := fun _d => ⟨0, -1⟩

def cellA5B45 : CellData where
  inverse := 461611360398567765413
  bounds := fun _d => ⟨0, -1⟩

def cellA5B46 : CellData where
  inverse := 6370236773500235162699
  bounds := fun _d => ⟨0, -1⟩

def cellA5B47 : CellData where
  inverse := 24096113012805237354557
  bounds := fun _d => ⟨0, -1⟩

def cellA5B48 : CellData where
  inverse := 77273741730720243930131
  bounds := fun _d => ⟨0, -1⟩

def cellA5B49 : CellData where
  inverse := 157040184807592753793492
  bounds := fun _d => ⟨0, -1⟩

def cellA5B50 : CellData where
  inverse := 157040184807592753793492
  bounds := fun _d => ⟨0, -1⟩

def cellA5B51 : CellData where
  inverse := 874938172499445342563741
  bounds := fun _d => ⟨0, -1⟩

def cellA5B52 : CellData where
  inverse := 3028632135575003108874488
  bounds := fun _d => ⟨0, -1⟩

def cellA5B53 : CellData where
  inverse := 3028632135575003108874488
  bounds := fun _d => ⟨0, -1⟩

def cellA5B54 : CellData where
  inverse := 41795123470935042902467934
  bounds := fun _d => ⟨0, -1⟩

def cellA5B55 : CellData where
  inverse := 158094597477015162283248272
  bounds := fun _d => ⟨0, -1⟩

def cellA5B56 : CellData where
  inverse := 506993019495255520425589286
  bounds := fun _d => ⟨0, -1⟩

def cellA5B57 : CellData where
  inverse := 1030340652522616057639100807
  bounds := fun _d => ⟨0, -1⟩

def cellA5B58 : CellData where
  inverse := 1030340652522616057639100807
  bounds := fun _d => ⟨0, -1⟩

def cellA5B59 : CellData where
  inverse := 5740469349768860892560704496
  bounds := fun _d => ⟨0, -1⟩

def cellA5B60 : CellData where
  inverse := 19870855441507595397325515563
  bounds := fun _d => ⟨0, -1⟩

def cellA5B61 : CellData where
  inverse := 19870855441507595397325515563
  bounds := fun _d => ⟨0, -1⟩

def cellA5B62 : CellData where
  inverse := 274217805092804816483092114769
  bounds := fun _d => ⟨0, -1⟩

def cellA5B63 : CellData where
  inverse := 1037258654046696479740391912387
  bounds := fun _d => ⟨0, -1⟩

def cellA5B64 : CellData where
  inverse := 3326381200908371469512291305241
  bounds := fun _d => ⟨0, -1⟩

def cellA5B65 : CellData where
  inverse := 6760065021200883954170140394522
  bounds := fun _d => ⟨0, -1⟩

def cellA5B66 : CellData where
  inverse := 6760065021200883954170140394522
  bounds := fun _d => ⟨0, -1⟩

def cellA5B67 : CellData where
  inverse := 37663219403833496316090782198051
  bounds := fun _d => ⟨0, -1⟩

def cellA5B68 : CellData where
  inverse := 130372682551731333401852707608638
  bounds := fun _d => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 1854733⟩ else if d = (-6 : ℤ) then ⟨0, 1854733⟩ else if d = (-3 : ℤ) then ⟨0, 1854733⟩ else if d = (0 : ℤ) then ⟨0, 1854733⟩ else if d = (3 : ℤ) then ⟨0, 1854733⟩ else if d = (6 : ℤ) then ⟨0, 1854733⟩ else if d = (9 : ℤ) then ⟨0, 1854733⟩ else ⟨0, 1854734⟩

def cellA6B2 : CellData where
  inverse := 1
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1854733⟩ else if d = (-9 : ℤ) then ⟨0, 1854733⟩ else if d = (-1 : ℤ) then ⟨0, 1854733⟩ else if d = (0 : ℤ) then ⟨0, 1854733⟩ else if d = (8 : ℤ) then ⟨0, 1854733⟩ else if d = (9 : ℤ) then ⟨0, 1854733⟩ else ⟨0, 1854734⟩

def cellA6B3 : CellData where
  inverse := 19
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1854733⟩ else if d = (-3 : ℤ) then ⟨0, 1854733⟩ else if d = (0 : ℤ) then ⟨0, 1854733⟩ else if d = (7 : ℤ) then ⟨0, 1854733⟩ else ⟨0, 1854734⟩

def cellA6B4 : CellData where
  inverse := 19
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 1465469⟩ else if d = (-7 : ℤ) then ⟨0, 1465469⟩ else if d = (-4 : ℤ) then ⟨0, 1465469⟩ else if d = (-3 : ℤ) then ⟨0, 1465469⟩ else if d = (1 : ℤ) then ⟨0, 1465469⟩ else if d = (2 : ℤ) then ⟨0, 1465469⟩ else if d = (5 : ℤ) then ⟨0, 1465469⟩ else if d = (6 : ℤ) then ⟨0, 1465469⟩ else if d = (9 : ℤ) then ⟨0, 1465469⟩ else if d = (10 : ℤ) then ⟨0, 1465469⟩ else ⟨0, 1465468⟩

def cellA6B5 : CellData where
  inverse := 19
  bounds := fun d => if d = (-2 : ℤ) then ⟨0, 488488⟩ else if d = (-1 : ℤ) then ⟨0, 488488⟩ else if d = (0 : ℤ) then ⟨0, 488488⟩ else ⟨0, 488489⟩

def cellA6B6 : CellData where
  inverse := 262
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 162828⟩ else ⟨0, 162829⟩

def cellA6B7 : CellData where
  inverse := 991
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 54275⟩ else if d = (-7 : ℤ) then ⟨0, 54275⟩ else if d = (-5 : ℤ) then ⟨0, 54275⟩ else if d = (0 : ℤ) then ⟨0, 54275⟩ else if d = (2 : ℤ) then ⟨0, 54275⟩ else if d = (4 : ℤ) then ⟨0, 54275⟩ else if d = (6 : ℤ) then ⟨0, 54275⟩ else ⟨0, 54276⟩

def cellA6B8 : CellData where
  inverse := 3178
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 18092⟩ else if d = (-8 : ℤ) then ⟨0, 18092⟩ else if d = (-6 : ℤ) then ⟨0, 18092⟩ else if d = (-4 : ℤ) then ⟨0, 18092⟩ else if d = (-2 : ℤ) then ⟨0, 18092⟩ else ⟨0, 18091⟩

def cellA6B9 : CellData where
  inverse := 16300
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 6029⟩ else if d = (0 : ℤ) then ⟨0, 6029⟩ else if d = (1 : ℤ) then ⟨0, 6029⟩ else if d = (6 : ℤ) then ⟨0, 6029⟩ else if d = (7 : ℤ) then ⟨0, 6029⟩ else ⟨0, 6030⟩

def cellA6B10 : CellData where
  inverse := 35983
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 2010⟩ else if d = (-3 : ℤ) then ⟨0, 2010⟩ else if d = (2 : ℤ) then ⟨0, 2010⟩ else if d = (5 : ℤ) then ⟨0, 2010⟩ else if d = (10 : ℤ) then ⟨0, 2010⟩ else ⟨0, 2009⟩

def cellA6B11 : CellData where
  inverse := 35983
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 670⟩ else if d = (10 : ℤ) then ⟨0, 670⟩ else ⟨0, 669⟩

def cellA6B12 : CellData where
  inverse := 390277
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 223⟩ else if d = (-5 : ℤ) then ⟨0, 223⟩ else if d = (-4 : ℤ) then ⟨0, 223⟩ else if d = (-1 : ℤ) then ⟨0, 223⟩ else if d = (3 : ℤ) then ⟨0, 223⟩ else if d = (7 : ℤ) then ⟨0, 223⟩ else if d = (10 : ℤ) then ⟨0, 223⟩ else ⟨0, 222⟩

def cellA6B13 : CellData where
  inverse := 921718
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 74⟩ else if d = (-8 : ℤ) then ⟨0, 74⟩ else if d = (-5 : ℤ) then ⟨0, 74⟩ else if d = (-3 : ℤ) then ⟨0, 74⟩ else if d = (-1 : ℤ) then ⟨0, 74⟩ else if d = (2 : ℤ) then ⟨0, 74⟩ else if d = (4 : ℤ) then ⟨0, 74⟩ else if d = (7 : ℤ) then ⟨0, 74⟩ else if d = (9 : ℤ) then ⟨0, 74⟩ else ⟨0, 73⟩

def cellA6B14 : CellData where
  inverse := 4110364
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 23⟩ else if d = (-6 : ℤ) then ⟨0, 23⟩ else if d = (0 : ℤ) then ⟨0, 23⟩ else if d = (1 : ℤ) then ⟨0, 23⟩ else if d = (8 : ℤ) then ⟨0, 23⟩ else ⟨0, 24⟩

def cellA6B15 : CellData where
  inverse := 13676302
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 8⟩ else if d = (-4 : ℤ) then ⟨0, 8⟩ else if d = (-3 : ℤ) then ⟨0, 8⟩ else if d = (-2 : ℤ) then ⟨0, 8⟩ else if d = (-1 : ℤ) then ⟨0, 8⟩ else ⟨0, 7⟩

def cellA6B16 : CellData where
  inverse := 42374116
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 2⟩ else if d = (-9 : ℤ) then ⟨0, 2⟩ else if d = (-8 : ℤ) then ⟨0, 2⟩ else if d = (-7 : ℤ) then ⟨0, 2⟩ else if d = (-6 : ℤ) then ⟨0, 2⟩ else if d = (-5 : ℤ) then ⟨0, 2⟩ else if d = (-4 : ℤ) then ⟨0, 2⟩ else if d = (-3 : ℤ) then ⟨0, 2⟩ else if d = (-2 : ℤ) then ⟨0, 2⟩ else if d = (-1 : ℤ) then ⟨0, 2⟩ else ⟨0, 1⟩

def cellA6B17 : CellData where
  inverse := 42374116
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (3 : ℤ) then ⟨0, -1⟩ else if d = (6 : ℤ) then ⟨0, -1⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA6B18 : CellData where
  inverse := 42374116
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA6B19 : CellData where
  inverse := 817215094
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA6B20 : CellData where
  inverse := 817215094
  bounds := fun _d => ⟨0, -1⟩

def cellA6B21 : CellData where
  inverse := 817215094
  bounds := fun _d => ⟨0, -1⟩

def cellA6B22 : CellData where
  inverse := 11277568297
  bounds := fun _d => ⟨0, -1⟩

def cellA6B23 : CellData where
  inverse := 42658627906
  bounds := fun _d => ⟨0, -1⟩

def cellA6B24 : CellData where
  inverse := 136801806733
  bounds := fun _d => ⟨0, -1⟩

def cellA6B25 : CellData where
  inverse := 701660879695
  bounds := fun _d => ⟨0, -1⟩

def cellA6B26 : CellData where
  inverse := 1548949489138
  bounds := fun _d => ⟨0, -1⟩

def cellA6B27 : CellData where
  inverse := 1548949489138
  bounds := fun _d => ⟨0, -1⟩

def cellA6B28 : CellData where
  inverse := 16800144459112
  bounds := fun _d => ⟨0, -1⟩

def cellA6B29 : CellData where
  inverse := 39676936914073
  bounds := fun _d => ⟨0, -1⟩

def cellA6B30 : CellData where
  inverse := 176937691643839
  bounds := fun _d => ⟨0, -1⟩

def cellA6B31 : CellData where
  inverse := 588719955833137
  bounds := fun _d => ⟨0, -1⟩

def cellA6B32 : CellData where
  inverse := 1824066748401031
  bounds := fun _d => ⟨0, -1⟩

def cellA6B33 : CellData where
  inverse := 1824066748401031
  bounds := fun _d => ⟨0, -1⟩

def cellA6B34 : CellData where
  inverse := 1824066748401031
  bounds := fun _d => ⟨0, -1⟩

def cellA6B35 : CellData where
  inverse := 35178430147734169
  bounds := fun _d => ⟨0, -1⟩

def cellA6B36 : CellData where
  inverse := 35178430147734169
  bounds := fun _d => ⟨0, -1⟩

def cellA6B37 : CellData where
  inverse := 35178430147734169
  bounds := fun _d => ⟨0, -1⟩

def cellA6B38 : CellData where
  inverse := 485462336038731532
  bounds := fun _d => ⟨0, -1⟩

def cellA6B39 : CellData where
  inverse := 1836314053711723621
  bounds := fun _d => ⟨0, -1⟩

def cellA6B40 : CellData where
  inverse := 5888869206730699888
  bounds := fun _d => ⟨0, -1⟩

def cellA6B41 : CellData where
  inverse := 30204200124844557490
  bounds := fun _d => ⟨0, -1⟩

def cellA6B42 : CellData where
  inverse := 66677196502015343893
  bounds := fun _d => ⟨0, -1⟩

def cellA6B43 : CellData where
  inverse := 66677196502015343893
  bounds := fun _d => ⟨0, -1⟩

def cellA6B44 : CellData where
  inverse := 723191131291089499147
  bounds := fun _d => ⟨0, -1⟩

def cellA6B45 : CellData where
  inverse := 1707962033474700732028
  bounds := fun _d => ⟨0, -1⟩

def cellA6B46 : CellData where
  inverse := 7616587446576368129314
  bounds := fun _d => ⟨0, -1⟩

def cellA6B47 : CellData where
  inverse := 25342463685881370321172
  bounds := fun _d => ⟨0, -1⟩

def cellA6B48 : CellData where
  inverse := 78520092403796376896746
  bounds := fun _d => ⟨0, -1⟩

def cellA6B49 : CellData where
  inverse := 78520092403796376896746
  bounds := fun _d => ⟨0, -1⟩

def cellA6B50 : CellData where
  inverse := 78520092403796376896746
  bounds := fun _d => ⟨0, -1⟩

def cellA6B51 : CellData where
  inverse := 1514316067787501554437244
  bounds := fun _d => ⟨0, -1⟩

def cellA6B52 : CellData where
  inverse := 1514316067787501554437244
  bounds := fun _d => ⟨0, -1⟩

def cellA6B53 : CellData where
  inverse := 1514316067787501554437244
  bounds := fun _d => ⟨0, -1⟩

def cellA6B54 : CellData where
  inverse := 20897561735467521451233967
  bounds := fun _d => ⟨0, -1⟩

def cellA6B55 : CellData where
  inverse := 79047298738507581141624136
  bounds := fun _d => ⟨0, -1⟩

def cellA6B56 : CellData where
  inverse := 253496509747627760212794643
  bounds := fun _d => ⟨0, -1⟩

def cellA6B57 : CellData where
  inverse := 1300191775802348834639817685
  bounds := fun _d => ⟨0, -1⟩

def cellA6B58 : CellData where
  inverse := 2870234674884430446280352248
  bounds := fun _d => ⟨0, -1⟩

def cellA6B59 : CellData where
  inverse := 2870234674884430446280352248
  bounds := fun _d => ⟨0, -1⟩

def cellA6B60 : CellData where
  inverse := 31131006858361899455809974382
  bounds := fun _d => ⟨0, -1⟩

def cellA6B61 : CellData where
  inverse := 73522165133578102970104407583
  bounds := fun _d => ⟨0, -1⟩

def cellA6B62 : CellData where
  inverse := 327869114784875324055871006789
  bounds := fun _d => ⟨0, -1⟩

def cellA6B63 : CellData where
  inverse := 1090909963738766987313170804407
  bounds := fun _d => ⟨0, -1⟩

def cellA6B64 : CellData where
  inverse := 3380032510600441977085070197261
  bounds := fun _d => ⟨0, -1⟩

def cellA6B65 : CellData where
  inverse := 3380032510600441977085070197261
  bounds := fun _d => ⟨0, -1⟩

def cellA6B66 : CellData where
  inverse := 3380032510600441977085070197261
  bounds := fun _d => ⟨0, -1⟩

def cellA6B67 : CellData where
  inverse := 65186341275865666700926353804319
  bounds := fun _d => ⟨0, -1⟩

def cellA6B68 : CellData where
  inverse := 65186341275865666700926353804319
  bounds := fun _d => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 927367⟩ else if d = (-7 : ℤ) then ⟨0, 927367⟩ else if d = (-4 : ℤ) then ⟨0, 927367⟩ else if d = (-1 : ℤ) then ⟨0, 927367⟩ else if d = (2 : ℤ) then ⟨0, 927367⟩ else if d = (5 : ℤ) then ⟨0, 927367⟩ else if d = (8 : ℤ) then ⟨0, 927367⟩ else ⟨0, 927366⟩

def cellA7B2 : CellData where
  inverse := 5
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 927367⟩ else if d = (-5 : ℤ) then ⟨0, 927367⟩ else if d = (-3 : ℤ) then ⟨0, 927367⟩ else if d = (2 : ℤ) then ⟨0, 927367⟩ else if d = (4 : ℤ) then ⟨0, 927367⟩ else if d = (6 : ℤ) then ⟨0, 927367⟩ else ⟨0, 927366⟩

def cellA7B3 : CellData where
  inverse := 23
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 927367⟩ else if d = (-8 : ℤ) then ⟨0, 927367⟩ else if d = (-7 : ℤ) then ⟨0, 927367⟩ else if d = (-2 : ℤ) then ⟨0, 927367⟩ else if d = (-1 : ℤ) then ⟨0, 927367⟩ else if d = (4 : ℤ) then ⟨0, 927367⟩ else if d = (5 : ℤ) then ⟨0, 927367⟩ else if d = (6 : ℤ) then ⟨0, 927367⟩ else ⟨0, 927366⟩

def cellA7B4 : CellData where
  inverse := 50
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 927367⟩ else if d = (-6 : ℤ) then ⟨0, 927367⟩ else if d = (-3 : ℤ) then ⟨0, 927367⟩ else if d = (-1 : ℤ) then ⟨0, 927367⟩ else if d = (2 : ℤ) then ⟨0, 927367⟩ else if d = (5 : ℤ) then ⟨0, 927367⟩ else if d = (7 : ℤ) then ⟨0, 927367⟩ else if d = (10 : ℤ) then ⟨0, 927367⟩ else ⟨0, 927366⟩

def cellA7B5 : CellData where
  inverse := 131
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 488488⟩ else if d = (-2 : ℤ) then ⟨0, 488488⟩ else if d = (0 : ℤ) then ⟨0, 488488⟩ else if d = (9 : ℤ) then ⟨0, 488488⟩ else ⟨0, 488489⟩

def cellA7B6 : CellData where
  inverse := 131
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 162828⟩ else ⟨0, 162829⟩

def cellA7B7 : CellData where
  inverse := 1589
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 54275⟩ else if d = (-7 : ℤ) then ⟨0, 54275⟩ else if d = (-3 : ℤ) then ⟨0, 54275⟩ else if d = (0 : ℤ) then ⟨0, 54275⟩ else if d = (1 : ℤ) then ⟨0, 54275⟩ else if d = (4 : ℤ) then ⟨0, 54275⟩ else if d = (8 : ℤ) then ⟨0, 54275⟩ else ⟨0, 54276⟩

def cellA7B8 : CellData where
  inverse := 1589
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 18092⟩ else if d = (-4 : ℤ) then ⟨0, 18092⟩ else if d = (5 : ℤ) then ⟨0, 18092⟩ else if d = (9 : ℤ) then ⟨0, 18092⟩ else ⟨0, 18091⟩

def cellA7B9 : CellData where
  inverse := 8150
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 6029⟩ else if d = (-5 : ℤ) then ⟨0, 6029⟩ else if d = (-3 : ℤ) then ⟨0, 6029⟩ else if d = (0 : ℤ) then ⟨0, 6029⟩ else if d = (2 : ℤ) then ⟨0, 6029⟩ else if d = (7 : ℤ) then ⟨0, 6029⟩ else ⟨0, 6030⟩

def cellA7B10 : CellData where
  inverse := 47516
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 2010⟩ else if d = (-1 : ℤ) then ⟨0, 2010⟩ else if d = (4 : ℤ) then ⟨0, 2010⟩ else if d = (5 : ℤ) then ⟨0, 2010⟩ else if d = (9 : ℤ) then ⟨0, 2010⟩ else if d = (10 : ℤ) then ⟨0, 2010⟩ else ⟨0, 2009⟩

def cellA7B11 : CellData where
  inverse := 106565
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 670⟩ else if d = (10 : ℤ) then ⟨0, 670⟩ else ⟨0, 669⟩

def cellA7B12 : CellData where
  inverse := 460859
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 223⟩ else if d = (-9 : ℤ) then ⟨0, 223⟩ else if d = (-8 : ℤ) then ⟨0, 223⟩ else if d = (-2 : ℤ) then ⟨0, 223⟩ else if d = (-1 : ℤ) then ⟨0, 223⟩ else if d = (5 : ℤ) then ⟨0, 223⟩ else if d = (6 : ℤ) then ⟨0, 223⟩ else if d = (7 : ℤ) then ⟨0, 223⟩ else ⟨0, 222⟩

def cellA7B13 : CellData where
  inverse := 460859
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 74⟩ else if d = (-9 : ℤ) then ⟨0, 74⟩ else if d = (-6 : ℤ) then ⟨0, 74⟩ else if d = (-3 : ℤ) then ⟨0, 74⟩ else if d = (-2 : ℤ) then ⟨0, 74⟩ else if d = (1 : ℤ) then ⟨0, 74⟩ else if d = (4 : ℤ) then ⟨0, 74⟩ else if d = (5 : ℤ) then ⟨0, 74⟩ else if d = (7 : ℤ) then ⟨0, 74⟩ else if d = (8 : ℤ) then ⟨0, 74⟩ else ⟨0, 73⟩

def cellA7B14 : CellData where
  inverse := 2055182
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 23⟩ else if d = (-5 : ℤ) then ⟨0, 23⟩ else if d = (0 : ℤ) then ⟨0, 23⟩ else if d = (2 : ℤ) then ⟨0, 23⟩ else if d = (9 : ℤ) then ⟨0, 23⟩ else ⟨0, 24⟩

def cellA7B15 : CellData where
  inverse := 6838151
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 8⟩ else if d = (-8 : ℤ) then ⟨0, 8⟩ else if d = (-6 : ℤ) then ⟨0, 8⟩ else if d = (-4 : ℤ) then ⟨0, 8⟩ else if d = (-2 : ℤ) then ⟨0, 8⟩ else ⟨0, 7⟩

def cellA7B16 : CellData where
  inverse := 21187058
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 1⟩ else if d = (2 : ℤ) then ⟨0, 1⟩ else if d = (4 : ℤ) then ⟨0, 1⟩ else if d = (6 : ℤ) then ⟨0, 1⟩ else if d = (8 : ℤ) then ⟨0, 1⟩ else if d = (10 : ℤ) then ⟨0, 1⟩ else ⟨0, 2⟩

def cellA7B17 : CellData where
  inverse := 21187058
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (6 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA7B18 : CellData where
  inverse := 21187058
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA7B19 : CellData where
  inverse := 408607547
  bounds := fun d => if d = (3 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA7B20 : CellData where
  inverse := 408607547
  bounds := fun _d => ⟨0, -1⟩

def cellA7B21 : CellData where
  inverse := 408607547
  bounds := fun _d => ⟨0, -1⟩

def cellA7B22 : CellData where
  inverse := 21329313953
  bounds := fun _d => ⟨0, -1⟩

def cellA7B23 : CellData where
  inverse := 21329313953
  bounds := fun _d => ⟨0, -1⟩

def cellA7B24 : CellData where
  inverse := 209615671607
  bounds := fun _d => ⟨0, -1⟩

def cellA7B25 : CellData where
  inverse := 774474744569
  bounds := fun _d => ⟨0, -1⟩

def cellA7B26 : CellData where
  inverse := 774474744569
  bounds := fun _d => ⟨0, -1⟩

def cellA7B27 : CellData where
  inverse := 774474744569
  bounds := fun _d => ⟨0, -1⟩

def cellA7B28 : CellData where
  inverse := 8400072229556
  bounds := fun _d => ⟨0, -1⟩

def cellA7B29 : CellData where
  inverse := 54153657139478
  bounds := fun _d => ⟨0, -1⟩

def cellA7B30 : CellData where
  inverse := 191414411869244
  bounds := fun _d => ⟨0, -1⟩

def cellA7B31 : CellData where
  inverse := 603196676058542
  bounds := fun _d => ⟨0, -1⟩

def cellA7B32 : CellData where
  inverse := 1838543468626436
  bounds := fun _d => ⟨0, -1⟩

def cellA7B33 : CellData where
  inverse := 3691563657478277
  bounds := fun _d => ⟨0, -1⟩

def cellA7B34 : CellData where
  inverse := 9250624224033800
  bounds := fun _d => ⟨0, -1⟩

def cellA7B35 : CellData where
  inverse := 42604987623366938
  bounds := fun _d => ⟨0, -1⟩

def cellA7B36 : CellData where
  inverse := 92636532722366645
  bounds := fun _d => ⟨0, -1⟩

def cellA7B37 : CellData where
  inverse := 242731168019365766
  bounds := fun _d => ⟨0, -1⟩

def cellA7B38 : CellData where
  inverse := 242731168019365766
  bounds := fun _d => ⟨0, -1⟩

def cellA7B39 : CellData where
  inverse := 2944434603365349944
  bounds := fun _d => ⟨0, -1⟩

def cellA7B40 : CellData where
  inverse := 2944434603365349944
  bounds := fun _d => ⟨0, -1⟩

def cellA7B41 : CellData where
  inverse := 15102100062422278745
  bounds := fun _d => ⟨0, -1⟩

def cellA7B42 : CellData where
  inverse := 88048092816763851551
  bounds := fun _d => ⟨0, -1⟩

def cellA7B43 : CellData where
  inverse := 197467081948276210760
  bounds := fun _d => ⟨0, -1⟩

def cellA7B44 : CellData where
  inverse := 853981016737350366014
  bounds := fun _d => ⟨0, -1⟩

def cellA7B45 : CellData where
  inverse := 853981016737350366014
  bounds := fun _d => ⟨0, -1⟩

def cellA7B46 : CellData where
  inverse := 3808293723288184064657
  bounds := fun _d => ⟨0, -1⟩

def cellA7B47 : CellData where
  inverse := 12671231842940685160586
  bounds := fun _d => ⟨0, -1⟩

def cellA7B48 : CellData where
  inverse := 39260046201898188448373
  bounds := fun _d => ⟨0, -1⟩

def cellA7B49 : CellData where
  inverse := 39260046201898188448373
  bounds := fun _d => ⟨0, -1⟩

def cellA7B50 : CellData where
  inverse := 39260046201898188448373
  bounds := fun _d => ⟨0, -1⟩

def cellA7B51 : CellData where
  inverse := 757158033893750777218622
  bounds := fun _d => ⟨0, -1⟩

def cellA7B52 : CellData where
  inverse := 757158033893750777218622
  bounds := fun _d => ⟨0, -1⟩

def cellA7B53 : CellData where
  inverse := 757158033893750777218622
  bounds := fun _d => ⟨0, -1⟩

def cellA7B54 : CellData where
  inverse := 39523649369253790570812068
  bounds := fun _d => ⟨0, -1⟩

def cellA7B55 : CellData where
  inverse := 39523649369253790570812068
  bounds := fun _d => ⟨0, -1⟩

def cellA7B56 : CellData where
  inverse := 388422071387494148713153082
  bounds := fun _d => ⟨0, -1⟩

def cellA7B57 : CellData where
  inverse := 1435117337442215223140176124
  bounds := fun _d => ⟨0, -1⟩

def cellA7B58 : CellData where
  inverse := 1435117337442215223140176124
  bounds := fun _d => ⟨0, -1⟩

def cellA7B59 : CellData where
  inverse := 1435117337442215223140176124
  bounds := fun _d => ⟨0, -1⟩

def cellA7B60 : CellData where
  inverse := 15565503429180949727904987191
  bounds := fun _d => ⟨0, -1⟩

def cellA7B61 : CellData where
  inverse := 100347819979613356756493853593
  bounds := fun _d => ⟨0, -1⟩

def cellA7B62 : CellData where
  inverse := 354694769630910577842260452799
  bounds := fun _d => ⟨0, -1⟩

def cellA7B63 : CellData where
  inverse := 1117735618584802241099560250417
  bounds := fun _d => ⟨0, -1⟩

def cellA7B64 : CellData where
  inverse := 3406858165446477230871459643271
  bounds := fun _d => ⟨0, -1⟩

def cellA7B65 : CellData where
  inverse := 6840541985738989715529308732552
  bounds := fun _d => ⟨0, -1⟩

def cellA7B66 : CellData where
  inverse := 17141593446616527169502856000395
  bounds := fun _d => ⟨0, -1⟩

def cellA7B67 : CellData where
  inverse := 78947902211881751893344139607453
  bounds := fun _d => ⟨0, -1⟩

def cellA7B68 : CellData where
  inverse := 171657365359779588979106065018040
  bounds := fun _d => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 463682⟩ else if d = (-6 : ℤ) then ⟨0, 463682⟩ else if d = (-3 : ℤ) then ⟨0, 463682⟩ else if d = (0 : ℤ) then ⟨0, 463682⟩ else if d = (3 : ℤ) then ⟨0, 463682⟩ else if d = (6 : ℤ) then ⟨0, 463682⟩ else if d = (9 : ℤ) then ⟨0, 463682⟩ else ⟨0, 463683⟩

def cellA8B2 : CellData where
  inverse := 7
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 463682⟩ else if d = (-8 : ℤ) then ⟨0, 463682⟩ else if d = (-4 : ℤ) then ⟨0, 463682⟩ else if d = (0 : ℤ) then ⟨0, 463682⟩ else if d = (1 : ℤ) then ⟨0, 463682⟩ else if d = (5 : ℤ) then ⟨0, 463682⟩ else if d = (9 : ℤ) then ⟨0, 463682⟩ else if d = (10 : ℤ) then ⟨0, 463682⟩ else ⟨0, 463683⟩

def cellA8B3 : CellData where
  inverse := 25
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 463682⟩ else if d = (0 : ℤ) then ⟨0, 463682⟩ else if d = (1 : ℤ) then ⟨0, 463682⟩ else if d = (2 : ℤ) then ⟨0, 463682⟩ else if d = (3 : ℤ) then ⟨0, 463682⟩ else ⟨0, 463683⟩

def cellA8B4 : CellData where
  inverse := 25
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 463682⟩ else if d = (-7 : ℤ) then ⟨0, 463682⟩ else if d = (-4 : ℤ) then ⟨0, 463682⟩ else if d = (0 : ℤ) then ⟨0, 463682⟩ else if d = (3 : ℤ) then ⟨0, 463682⟩ else if d = (6 : ℤ) then ⟨0, 463682⟩ else if d = (9 : ℤ) then ⟨0, 463682⟩ else ⟨0, 463683⟩

def cellA8B5 : CellData where
  inverse := 187
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 463682⟩ else if d = (-4 : ℤ) then ⟨0, 463682⟩ else if d = (0 : ℤ) then ⟨0, 463682⟩ else if d = (1 : ℤ) then ⟨0, 463682⟩ else if d = (5 : ℤ) then ⟨0, 463682⟩ else if d = (9 : ℤ) then ⟨0, 463682⟩ else ⟨0, 463683⟩

def cellA8B6 : CellData where
  inverse := 430
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 162828⟩ else if d = (5 : ℤ) then ⟨0, 162828⟩ else ⟨0, 162829⟩

def cellA8B7 : CellData where
  inverse := 1888
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 54275⟩ else if d = (-6 : ℤ) then ⟨0, 54275⟩ else if d = (-5 : ℤ) then ⟨0, 54275⟩ else if d = (0 : ℤ) then ⟨0, 54275⟩ else if d = (1 : ℤ) then ⟨0, 54275⟩ else if d = (2 : ℤ) then ⟨0, 54275⟩ else if d = (8 : ℤ) then ⟨0, 54275⟩ else if d = (9 : ℤ) then ⟨0, 54275⟩ else ⟨0, 54276⟩

def cellA8B8 : CellData where
  inverse := 4075
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 18092⟩ else if d = (-3 : ℤ) then ⟨0, 18092⟩ else if d = (5 : ℤ) then ⟨0, 18092⟩ else if d = (10 : ℤ) then ⟨0, 18092⟩ else ⟨0, 18091⟩

def cellA8B9 : CellData where
  inverse := 4075
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 6029⟩ else if d = (-6 : ℤ) then ⟨0, 6029⟩ else if d = (-5 : ℤ) then ⟨0, 6029⟩ else if d = (-1 : ℤ) then ⟨0, 6029⟩ else if d = (0 : ℤ) then ⟨0, 6029⟩ else if d = (4 : ℤ) then ⟨0, 6029⟩ else if d = (9 : ℤ) then ⟨0, 6029⟩ else ⟨0, 6030⟩

def cellA8B10 : CellData where
  inverse := 23758
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 2010⟩ else if d = (-2 : ℤ) then ⟨0, 2010⟩ else if d = (3 : ℤ) then ⟨0, 2010⟩ else if d = (5 : ℤ) then ⟨0, 2010⟩ else if d = (8 : ℤ) then ⟨0, 2010⟩ else if d = (10 : ℤ) then ⟨0, 2010⟩ else ⟨0, 2009⟩

def cellA8B11 : CellData where
  inverse := 141856
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 670⟩ else if d = (10 : ℤ) then ⟨0, 670⟩ else ⟨0, 669⟩

def cellA8B12 : CellData where
  inverse := 496150
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 223⟩ else if d = (-4 : ℤ) then ⟨0, 223⟩ else if d = (-3 : ℤ) then ⟨0, 223⟩ else if d = (-2 : ℤ) then ⟨0, 223⟩ else if d = (-1 : ℤ) then ⟨0, 223⟩ else if d = (10 : ℤ) then ⟨0, 223⟩ else ⟨0, 222⟩

def cellA8B13 : CellData where
  inverse := 1027591
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 74⟩ else if d = (-6 : ℤ) then ⟨0, 74⟩ else if d = (-4 : ℤ) then ⟨0, 74⟩ else if d = (-3 : ℤ) then ⟨0, 74⟩ else if d = (-1 : ℤ) then ⟨0, 74⟩ else if d = (2 : ℤ) then ⟨0, 74⟩ else if d = (5 : ℤ) then ⟨0, 74⟩ else if d = (8 : ℤ) then ⟨0, 74⟩ else if d = (10 : ℤ) then ⟨0, 74⟩ else ⟨0, 73⟩

def cellA8B14 : CellData where
  inverse := 1027591
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 23⟩ else if d = (-5 : ℤ) then ⟨0, 23⟩ else if d = (0 : ℤ) then ⟨0, 23⟩ else if d = (4 : ℤ) then ⟨0, 23⟩ else if d = (9 : ℤ) then ⟨0, 23⟩ else ⟨0, 24⟩

def cellA8B15 : CellData where
  inverse := 10593529
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 8⟩ else if d = (-4 : ℤ) then ⟨0, 8⟩ else if d = (-1 : ℤ) then ⟨0, 8⟩ else if d = (3 : ℤ) then ⟨0, 8⟩ else if d = (7 : ℤ) then ⟨0, 8⟩ else ⟨0, 7⟩

def cellA8B16 : CellData where
  inverse := 10593529
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 1⟩ else if d = (-5 : ℤ) then ⟨0, 1⟩ else if d = (0 : ℤ) then ⟨0, 1⟩ else if d = (4 : ℤ) then ⟨0, 1⟩ else if d = (8 : ℤ) then ⟨0, 1⟩ else ⟨0, 2⟩

def cellA8B17 : CellData where
  inverse := 10593529
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA8B18 : CellData where
  inverse := 10593529
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA8B19 : CellData where
  inverse := 785434507
  bounds := fun d => if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA8B20 : CellData where
  inverse := 1947695974
  bounds := fun d => if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA8B21 : CellData where
  inverse := 5434480375
  bounds := fun _d => ⟨0, -1⟩

def cellA8B22 : CellData where
  inverse := 26355186781
  bounds := fun _d => ⟨0, -1⟩

def cellA8B23 : CellData where
  inverse := 57736246390
  bounds := fun _d => ⟨0, -1⟩

def cellA8B24 : CellData where
  inverse := 246022604044
  bounds := fun _d => ⟨0, -1⟩

def cellA8B25 : CellData where
  inverse := 810881677006
  bounds := fun _d => ⟨0, -1⟩

def cellA8B26 : CellData where
  inverse := 1658170286449
  bounds := fun _d => ⟨0, -1⟩

def cellA8B27 : CellData where
  inverse := 4200036114778
  bounds := fun _d => ⟨0, -1⟩

def cellA8B28 : CellData where
  inverse := 4200036114778
  bounds := fun _d => ⟨0, -1⟩

def cellA8B29 : CellData where
  inverse := 27076828569739
  bounds := fun _d => ⟨0, -1⟩

def cellA8B30 : CellData where
  inverse := 95707205934622
  bounds := fun _d => ⟨0, -1⟩

def cellA8B31 : CellData where
  inverse := 301598338029271
  bounds := fun _d => ⟨0, -1⟩

def cellA8B32 : CellData where
  inverse := 919271734313218
  bounds := fun _d => ⟨0, -1⟩

def cellA8B33 : CellData where
  inverse := 4625312112016900
  bounds := fun _d => ⟨0, -1⟩

def cellA8B34 : CellData where
  inverse := 4625312112016900
  bounds := fun _d => ⟨0, -1⟩

def cellA8B35 : CellData where
  inverse := 21302493811683469
  bounds := fun _d => ⟨0, -1⟩

def cellA8B36 : CellData where
  inverse := 121365584009682883
  bounds := fun _d => ⟨0, -1⟩

def cellA8B37 : CellData where
  inverse := 121365584009682883
  bounds := fun _d => ⟨0, -1⟩

def cellA8B38 : CellData where
  inverse := 121365584009682883
  bounds := fun _d => ⟨0, -1⟩

def cellA8B39 : CellData where
  inverse := 1472217301682674972
  bounds := fun _d => ⟨0, -1⟩

def cellA8B40 : CellData where
  inverse := 1472217301682674972
  bounds := fun _d => ⟨0, -1⟩

def cellA8B41 : CellData where
  inverse := 25787548219796532574
  bounds := fun _d => ⟨0, -1⟩

def cellA8B42 : CellData where
  inverse := 98733540974138105380
  bounds := fun _d => ⟨0, -1⟩

def cellA8B43 : CellData where
  inverse := 98733540974138105380
  bounds := fun _d => ⟨0, -1⟩

def cellA8B44 : CellData where
  inverse := 426990508368675183007
  bounds := fun _d => ⟨0, -1⟩

def cellA8B45 : CellData where
  inverse := 426990508368675183007
  bounds := fun _d => ⟨0, -1⟩

def cellA8B46 : CellData where
  inverse := 6335615921470342580293
  bounds := fun _d => ⟨0, -1⟩

def cellA8B47 : CellData where
  inverse := 6335615921470342580293
  bounds := fun _d => ⟨0, -1⟩

def cellA8B48 : CellData where
  inverse := 59513244639385349155867
  bounds := fun _d => ⟨0, -1⟩

def cellA8B49 : CellData where
  inverse := 139279687716257859019228
  bounds := fun _d => ⟨0, -1⟩

def cellA8B50 : CellData where
  inverse := 378579016946875388609311
  bounds := fun _d => ⟨0, -1⟩

def cellA8B51 : CellData where
  inverse := 378579016946875388609311
  bounds := fun _d => ⟨0, -1⟩

def cellA8B52 : CellData where
  inverse := 378579016946875388609311
  bounds := fun _d => ⟨0, -1⟩

def cellA8B53 : CellData where
  inverse := 378579016946875388609311
  bounds := fun _d => ⟨0, -1⟩

def cellA8B54 : CellData where
  inverse := 19761824684626895285406034
  bounds := fun _d => ⟨0, -1⟩

def cellA8B55 : CellData where
  inverse := 19761824684626895285406034
  bounds := fun _d => ⟨0, -1⟩

def cellA8B56 : CellData where
  inverse := 194211035693747074356576541
  bounds := fun _d => ⟨0, -1⟩

def cellA8B57 : CellData where
  inverse := 717558668721107611570088062
  bounds := fun _d => ⟨0, -1⟩

def cellA8B58 : CellData where
  inverse := 717558668721107611570088062
  bounds := fun _d => ⟨0, -1⟩

def cellA8B59 : CellData where
  inverse := 717558668721107611570088062
  bounds := fun _d => ⟨0, -1⟩

def cellA8B60 : CellData where
  inverse := 28978330852198576621099710196
  bounds := fun _d => ⟨0, -1⟩

def cellA8B61 : CellData where
  inverse := 113760647402630983649688576598
  bounds := fun _d => ⟨0, -1⟩

def cellA8B62 : CellData where
  inverse := 368107597053928204735455175804
  bounds := fun _d => ⟨0, -1⟩

def cellA8B63 : CellData where
  inverse := 1131148446007819867992754973422
  bounds := fun _d => ⟨0, -1⟩

def cellA8B64 : CellData where
  inverse := 3420270992869494857764654366276
  bounds := fun _d => ⟨0, -1⟩

def cellA8B65 : CellData where
  inverse := 3420270992869494857764654366276
  bounds := fun _d => ⟨0, -1⟩

def cellA8B66 : CellData where
  inverse := 24022373914624569765711748901962
  bounds := fun _d => ⟨0, -1⟩

def cellA8B67 : CellData where
  inverse := 85828682679889794489553032509020
  bounds := fun _d => ⟨0, -1⟩

def cellA8B68 : CellData where
  inverse := 85828682679889794489553032509020
  bounds := fun _d => ⟨0, -1⟩

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
  else if b = 39 then cellA1B39
  else if b = 40 then cellA1B40
  else if b = 41 then cellA1B41
  else if b = 42 then cellA1B42
  else if b = 43 then cellA1B43
  else if b = 44 then cellA1B44
  else if b = 45 then cellA1B45
  else if b = 46 then cellA1B46
  else if b = 47 then cellA1B47
  else if b = 48 then cellA1B48
  else if b = 49 then cellA1B49
  else if b = 50 then cellA1B50
  else if b = 51 then cellA1B51
  else if b = 52 then cellA1B52
  else if b = 53 then cellA1B53
  else if b = 54 then cellA1B54
  else if b = 55 then cellA1B55
  else if b = 56 then cellA1B56
  else if b = 57 then cellA1B57
  else if b = 58 then cellA1B58
  else if b = 59 then cellA1B59
  else if b = 60 then cellA1B60
  else if b = 61 then cellA1B61
  else if b = 62 then cellA1B62
  else if b = 63 then cellA1B63
  else if b = 64 then cellA1B64
  else if b = 65 then cellA1B65
  else if b = 66 then cellA1B66
  else if b = 67 then cellA1B67
  else if b = 68 then cellA1B68
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
  else if b = 39 then cellA2B39
  else if b = 40 then cellA2B40
  else if b = 41 then cellA2B41
  else if b = 42 then cellA2B42
  else if b = 43 then cellA2B43
  else if b = 44 then cellA2B44
  else if b = 45 then cellA2B45
  else if b = 46 then cellA2B46
  else if b = 47 then cellA2B47
  else if b = 48 then cellA2B48
  else if b = 49 then cellA2B49
  else if b = 50 then cellA2B50
  else if b = 51 then cellA2B51
  else if b = 52 then cellA2B52
  else if b = 53 then cellA2B53
  else if b = 54 then cellA2B54
  else if b = 55 then cellA2B55
  else if b = 56 then cellA2B56
  else if b = 57 then cellA2B57
  else if b = 58 then cellA2B58
  else if b = 59 then cellA2B59
  else if b = 60 then cellA2B60
  else if b = 61 then cellA2B61
  else if b = 62 then cellA2B62
  else if b = 63 then cellA2B63
  else if b = 64 then cellA2B64
  else if b = 65 then cellA2B65
  else if b = 66 then cellA2B66
  else if b = 67 then cellA2B67
  else if b = 68 then cellA2B68
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
  else if b = 39 then cellA3B39
  else if b = 40 then cellA3B40
  else if b = 41 then cellA3B41
  else if b = 42 then cellA3B42
  else if b = 43 then cellA3B43
  else if b = 44 then cellA3B44
  else if b = 45 then cellA3B45
  else if b = 46 then cellA3B46
  else if b = 47 then cellA3B47
  else if b = 48 then cellA3B48
  else if b = 49 then cellA3B49
  else if b = 50 then cellA3B50
  else if b = 51 then cellA3B51
  else if b = 52 then cellA3B52
  else if b = 53 then cellA3B53
  else if b = 54 then cellA3B54
  else if b = 55 then cellA3B55
  else if b = 56 then cellA3B56
  else if b = 57 then cellA3B57
  else if b = 58 then cellA3B58
  else if b = 59 then cellA3B59
  else if b = 60 then cellA3B60
  else if b = 61 then cellA3B61
  else if b = 62 then cellA3B62
  else if b = 63 then cellA3B63
  else if b = 64 then cellA3B64
  else if b = 65 then cellA3B65
  else if b = 66 then cellA3B66
  else if b = 67 then cellA3B67
  else if b = 68 then cellA3B68
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
  else if b = 39 then cellA4B39
  else if b = 40 then cellA4B40
  else if b = 41 then cellA4B41
  else if b = 42 then cellA4B42
  else if b = 43 then cellA4B43
  else if b = 44 then cellA4B44
  else if b = 45 then cellA4B45
  else if b = 46 then cellA4B46
  else if b = 47 then cellA4B47
  else if b = 48 then cellA4B48
  else if b = 49 then cellA4B49
  else if b = 50 then cellA4B50
  else if b = 51 then cellA4B51
  else if b = 52 then cellA4B52
  else if b = 53 then cellA4B53
  else if b = 54 then cellA4B54
  else if b = 55 then cellA4B55
  else if b = 56 then cellA4B56
  else if b = 57 then cellA4B57
  else if b = 58 then cellA4B58
  else if b = 59 then cellA4B59
  else if b = 60 then cellA4B60
  else if b = 61 then cellA4B61
  else if b = 62 then cellA4B62
  else if b = 63 then cellA4B63
  else if b = 64 then cellA4B64
  else if b = 65 then cellA4B65
  else if b = 66 then cellA4B66
  else if b = 67 then cellA4B67
  else if b = 68 then cellA4B68
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
  else if b = 39 then cellA5B39
  else if b = 40 then cellA5B40
  else if b = 41 then cellA5B41
  else if b = 42 then cellA5B42
  else if b = 43 then cellA5B43
  else if b = 44 then cellA5B44
  else if b = 45 then cellA5B45
  else if b = 46 then cellA5B46
  else if b = 47 then cellA5B47
  else if b = 48 then cellA5B48
  else if b = 49 then cellA5B49
  else if b = 50 then cellA5B50
  else if b = 51 then cellA5B51
  else if b = 52 then cellA5B52
  else if b = 53 then cellA5B53
  else if b = 54 then cellA5B54
  else if b = 55 then cellA5B55
  else if b = 56 then cellA5B56
  else if b = 57 then cellA5B57
  else if b = 58 then cellA5B58
  else if b = 59 then cellA5B59
  else if b = 60 then cellA5B60
  else if b = 61 then cellA5B61
  else if b = 62 then cellA5B62
  else if b = 63 then cellA5B63
  else if b = 64 then cellA5B64
  else if b = 65 then cellA5B65
  else if b = 66 then cellA5B66
  else if b = 67 then cellA5B67
  else if b = 68 then cellA5B68
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
  else if b = 39 then cellA6B39
  else if b = 40 then cellA6B40
  else if b = 41 then cellA6B41
  else if b = 42 then cellA6B42
  else if b = 43 then cellA6B43
  else if b = 44 then cellA6B44
  else if b = 45 then cellA6B45
  else if b = 46 then cellA6B46
  else if b = 47 then cellA6B47
  else if b = 48 then cellA6B48
  else if b = 49 then cellA6B49
  else if b = 50 then cellA6B50
  else if b = 51 then cellA6B51
  else if b = 52 then cellA6B52
  else if b = 53 then cellA6B53
  else if b = 54 then cellA6B54
  else if b = 55 then cellA6B55
  else if b = 56 then cellA6B56
  else if b = 57 then cellA6B57
  else if b = 58 then cellA6B58
  else if b = 59 then cellA6B59
  else if b = 60 then cellA6B60
  else if b = 61 then cellA6B61
  else if b = 62 then cellA6B62
  else if b = 63 then cellA6B63
  else if b = 64 then cellA6B64
  else if b = 65 then cellA6B65
  else if b = 66 then cellA6B66
  else if b = 67 then cellA6B67
  else if b = 68 then cellA6B68
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
  else if b = 39 then cellA7B39
  else if b = 40 then cellA7B40
  else if b = 41 then cellA7B41
  else if b = 42 then cellA7B42
  else if b = 43 then cellA7B43
  else if b = 44 then cellA7B44
  else if b = 45 then cellA7B45
  else if b = 46 then cellA7B46
  else if b = 47 then cellA7B47
  else if b = 48 then cellA7B48
  else if b = 49 then cellA7B49
  else if b = 50 then cellA7B50
  else if b = 51 then cellA7B51
  else if b = 52 then cellA7B52
  else if b = 53 then cellA7B53
  else if b = 54 then cellA7B54
  else if b = 55 then cellA7B55
  else if b = 56 then cellA7B56
  else if b = 57 then cellA7B57
  else if b = 58 then cellA7B58
  else if b = 59 then cellA7B59
  else if b = 60 then cellA7B60
  else if b = 61 then cellA7B61
  else if b = 62 then cellA7B62
  else if b = 63 then cellA7B63
  else if b = 64 then cellA7B64
  else if b = 65 then cellA7B65
  else if b = 66 then cellA7B66
  else if b = 67 then cellA7B67
  else if b = 68 then cellA7B68
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
  else if b = 39 then cellA8B39
  else if b = 40 then cellA8B40
  else if b = 41 then cellA8B41
  else if b = 42 then cellA8B42
  else if b = 43 then cellA8B43
  else if b = 44 then cellA8B44
  else if b = 45 then cellA8B45
  else if b = 46 then cellA8B46
  else if b = 47 then cellA8B47
  else if b = 48 then cellA8B48
  else if b = 49 then cellA8B49
  else if b = 50 then cellA8B50
  else if b = 51 then cellA8B51
  else if b = 52 then cellA8B52
  else if b = 53 then cellA8B53
  else if b = 54 then cellA8B54
  else if b = 55 then cellA8B55
  else if b = 56 then cellA8B56
  else if b = 57 then cellA8B57
  else if b = 58 then cellA8B58
  else if b = 59 then cellA8B59
  else if b = 60 then cellA8B60
  else if b = 61 then cellA8B61
  else if b = 62 then cellA8B62
  else if b = 63 then cellA8B63
  else if b = 64 then cellA8B64
  else if b = 65 then cellA8B65
  else if b = 66 then cellA8B66
  else if b = 67 then cellA8B67
  else if b = 68 then cellA8B68
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

theorem row_1_check :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper
      1 1 1 68 chunkData = true := by
  decide +kernel

theorem row_2_check :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper
      2 1 1 68 chunkData = true := by
  decide +kernel

theorem row_3_check :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper
      3 1 1 68 chunkData = true := by
  decide +kernel

theorem row_4_check :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper
      4 1 1 68 chunkData = true := by
  decide +kernel

theorem row_5_check :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper
      5 1 1 68 chunkData = true := by
  decide +kernel

theorem row_6_check :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper
      6 1 1 68 chunkData = true := by
  decide +kernel

theorem row_7_check :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper
      7 1 1 68 chunkData = true := by
  decide +kernel

theorem row_8_check :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper
      8 1 1 68 chunkData = true := by
  decide +kernel

theorem chunk_check :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper
      1 8 1 68 chunkData = true := by
  have h2 : blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 2 1 68 chunkData = true :=
    blockCheck_append_rows row_1_check row_2_check
  have h3 : blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 3 1 68 chunkData = true :=
    blockCheck_append_rows h2 row_3_check
  have h4 : blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 4 1 68 chunkData = true :=
    blockCheck_append_rows h3 row_4_check
  have h5 : blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 5 1 68 chunkData = true :=
    blockCheck_append_rows h4 row_5_check
  have h6 : blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 6 1 68 chunkData = true :=
    blockCheck_append_rows h5 row_6_check
  have h7 : blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 7 1 68 chunkData = true :=
    blockCheck_append_rows h6 row_7_check
  have h8 : blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 8 1 68 chunkData = true :=
    blockCheck_append_rows h7 row_8_check
  exact h8

end Math.B699.CRTStage0Pair23.Chunk000
#print axioms Math.B699.CRTStage0Pair23.Chunk000.row_1_check
#print axioms Math.B699.CRTStage0Pair23.Chunk000.row_2_check
#print axioms Math.B699.CRTStage0Pair23.Chunk000.row_3_check
#print axioms Math.B699.CRTStage0Pair23.Chunk000.row_4_check
#print axioms Math.B699.CRTStage0Pair23.Chunk000.row_5_check
#print axioms Math.B699.CRTStage0Pair23.Chunk000.row_6_check
#print axioms Math.B699.CRTStage0Pair23.Chunk000.row_7_check
#print axioms Math.B699.CRTStage0Pair23.Chunk000.row_8_check
#print axioms Math.B699.CRTStage0Pair23.Chunk000.chunk_check
