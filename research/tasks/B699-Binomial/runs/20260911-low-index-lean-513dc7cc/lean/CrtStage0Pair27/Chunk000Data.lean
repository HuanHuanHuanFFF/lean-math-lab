import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage0Pair27.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 16957574⟩
    else if d = (-7 : ℤ) then ⟨0, 16957574⟩
    else if d = (-2 : ℤ) then ⟨0, 16957574⟩
    else if d = (0 : ℤ) then ⟨0, 16957574⟩
    else if d = (2 : ℤ) then ⟨1, 16957575⟩
    else if d = (4 : ℤ) then ⟨1, 16957575⟩
    else if d = (5 : ℤ) then ⟨0, 16957574⟩
    else if d = (6 : ℤ) then ⟨1, 16957575⟩
    else if d = (7 : ℤ) then ⟨0, 16957574⟩
    else if d = (8 : ℤ) then ⟨1, 16957575⟩
    else if d = (9 : ℤ) then ⟨1, 16957575⟩
    else if d = (10 : ℤ) then ⟨1, 16957575⟩
    else ⟨0, 16957575⟩

def cellA1B2 : CellData where
  inverse := 25
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2422509⟩
    else if d = (-8 : ℤ) then ⟨0, 2422509⟩
    else if d = (-6 : ℤ) then ⟨0, 2422509⟩
    else if d = (-4 : ℤ) then ⟨0, 2422509⟩
    else if d = (-2 : ℤ) then ⟨0, 2422509⟩
    else if d = (0 : ℤ) then ⟨0, 2422509⟩
    else if d = (2 : ℤ) then ⟨1, 2422510⟩
    else if d = (4 : ℤ) then ⟨1, 2422510⟩
    else if d = (6 : ℤ) then ⟨1, 2422510⟩
    else if d = (8 : ℤ) then ⟨1, 2422510⟩
    else if d = (10 : ℤ) then ⟨1, 2422510⟩
    else ⟨0, 2422510⟩

def cellA1B3 : CellData where
  inverse := 172
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 346071⟩
    else if d = (-8 : ℤ) then ⟨0, 346071⟩
    else if d = (-6 : ℤ) then ⟨0, 346071⟩
    else if d = (-4 : ℤ) then ⟨0, 346071⟩
    else if d = (-2 : ℤ) then ⟨0, 346071⟩
    else if d = (0 : ℤ) then ⟨0, 346071⟩
    else if d = (2 : ℤ) then ⟨1, 346072⟩
    else if d = (4 : ℤ) then ⟨1, 346072⟩
    else if d = (6 : ℤ) then ⟨1, 346072⟩
    else if d = (8 : ℤ) then ⟨1, 346072⟩
    else if d = (10 : ℤ) then ⟨1, 346072⟩
    else ⟨0, 346072⟩

def cellA1B4 : CellData where
  inverse := 1201
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 49437⟩
    else if d = (-8 : ℤ) then ⟨0, 49437⟩
    else if d = (-6 : ℤ) then ⟨0, 49437⟩
    else if d = (-4 : ℤ) then ⟨0, 49437⟩
    else if d = (-2 : ℤ) then ⟨0, 49437⟩
    else if d = (0 : ℤ) then ⟨0, 49437⟩
    else if d = (2 : ℤ) then ⟨1, 49438⟩
    else if d = (4 : ℤ) then ⟨1, 49438⟩
    else if d = (6 : ℤ) then ⟨1, 49438⟩
    else if d = (8 : ℤ) then ⟨1, 49438⟩
    else if d = (10 : ℤ) then ⟨1, 49438⟩
    else ⟨0, 49438⟩

def cellA1B5 : CellData where
  inverse := 8404
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 7061⟩
    else if d = (-8 : ℤ) then ⟨0, 7061⟩
    else if d = (-6 : ℤ) then ⟨0, 7061⟩
    else if d = (-4 : ℤ) then ⟨0, 7061⟩
    else if d = (-2 : ℤ) then ⟨0, 7061⟩
    else if d = (0 : ℤ) then ⟨0, 7061⟩
    else if d = (2 : ℤ) then ⟨1, 7062⟩
    else if d = (4 : ℤ) then ⟨1, 7062⟩
    else if d = (6 : ℤ) then ⟨1, 7062⟩
    else if d = (8 : ℤ) then ⟨1, 7062⟩
    else if d = (10 : ℤ) then ⟨1, 7062⟩
    else ⟨0, 7062⟩

def cellA1B6 : CellData where
  inverse := 58825
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1007⟩
    else if d = (-8 : ℤ) then ⟨0, 1007⟩
    else if d = (-6 : ℤ) then ⟨0, 1007⟩
    else if d = (-4 : ℤ) then ⟨0, 1007⟩
    else if d = (-2 : ℤ) then ⟨0, 1007⟩
    else if d = (0 : ℤ) then ⟨0, 1007⟩
    else if d = (2 : ℤ) then ⟨1, 1008⟩
    else if d = (4 : ℤ) then ⟨1, 1008⟩
    else if d = (6 : ℤ) then ⟨1, 1008⟩
    else if d = (8 : ℤ) then ⟨1, 1008⟩
    else if d = (10 : ℤ) then ⟨1, 1008⟩
    else ⟨0, 1008⟩

def cellA1B7 : CellData where
  inverse := 411772
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 144⟩
    else if d = (4 : ℤ) then ⟨1, 144⟩
    else if d = (6 : ℤ) then ⟨1, 144⟩
    else if d = (8 : ℤ) then ⟨1, 144⟩
    else if d = (10 : ℤ) then ⟨1, 144⟩
    else ⟨0, 143⟩

def cellA1B8 : CellData where
  inverse := 2882401
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 19⟩
    else if d = (-8 : ℤ) then ⟨0, 19⟩
    else if d = (-6 : ℤ) then ⟨0, 19⟩
    else if d = (-4 : ℤ) then ⟨0, 19⟩
    else if d = (-2 : ℤ) then ⟨0, 19⟩
    else if d = (0 : ℤ) then ⟨0, 19⟩
    else if d = (2 : ℤ) then ⟨1, 20⟩
    else if d = (4 : ℤ) then ⟨1, 20⟩
    else if d = (6 : ℤ) then ⟨1, 20⟩
    else if d = (8 : ℤ) then ⟨1, 20⟩
    else if d = (10 : ℤ) then ⟨1, 20⟩
    else ⟨0, 20⟩

def cellA1B9 : CellData where
  inverse := 20176804
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨1, 2⟩
    else if d = (4 : ℤ) then ⟨1, 2⟩
    else if d = (6 : ℤ) then ⟨1, 2⟩
    else if d = (8 : ℤ) then ⟨1, 2⟩
    else if d = (10 : ℤ) then ⟨1, 2⟩
    else ⟨0, 2⟩

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

def cellA1B22 : CellData where
  inverse := 1954910524291494025
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B23 : CellData where
  inverse := 13684373670040458172
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B24 : CellData where
  inverse := 95790615690283207201
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B25 : CellData where
  inverse := 670534309831982450404
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B26 : CellData where
  inverse := 4693740168823877152825
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B27 : CellData where
  inverse := 32856181181767140069772
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B28 : CellData where
  inverse := 229993268272369980488401
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B29 : CellData where
  inverse := 1609952877906589863418804
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B30 : CellData where
  inverse := 11269670145346129043931625
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B31 : CellData where
  inverse := 78887691017422903307521372
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B32 : CellData where
  inverse := 552213837121960323152649601
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B33 : CellData where
  inverse := 3865496859853722262068547204
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B34 : CellData where
  inverse := 27058478018976055834479830425
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B35 : CellData where
  inverse := 189409346132832390841358812972
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B36 : CellData where
  inverse := 1325865422929826735889511690801
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B37 : CellData where
  inverse := 9281057960508787151226581835604
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B38 : CellData where
  inverse := 64967405723561510058586072849225
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
    if d = (-7 : ℤ) then ⟨0, 16957574⟩
    else if d = (-4 : ℤ) then ⟨0, 16957574⟩
    else if d = (0 : ℤ) then ⟨0, 16957574⟩
    else if d = (3 : ℤ) then ⟨0, 16957574⟩
    else if d = (4 : ℤ) then ⟨1, 16957575⟩
    else if d = (7 : ℤ) then ⟨0, 16957574⟩
    else if d = (8 : ℤ) then ⟨1, 16957575⟩
    else if d = (10 : ℤ) then ⟨0, 16957574⟩
    else ⟨0, 16957575⟩

def cellA2B2 : CellData where
  inverse := 37
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 2422509⟩
    else if d = (-4 : ℤ) then ⟨0, 2422509⟩
    else if d = (0 : ℤ) then ⟨0, 2422509⟩
    else if d = (4 : ℤ) then ⟨1, 2422510⟩
    else if d = (8 : ℤ) then ⟨1, 2422510⟩
    else ⟨0, 2422510⟩

def cellA2B3 : CellData where
  inverse := 86
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 346071⟩
    else if d = (-4 : ℤ) then ⟨0, 346071⟩
    else if d = (0 : ℤ) then ⟨0, 346071⟩
    else if d = (4 : ℤ) then ⟨1, 346072⟩
    else if d = (8 : ℤ) then ⟨1, 346072⟩
    else ⟨0, 346072⟩

def cellA2B4 : CellData where
  inverse := 1801
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 49437⟩
    else if d = (-4 : ℤ) then ⟨0, 49437⟩
    else if d = (0 : ℤ) then ⟨0, 49437⟩
    else if d = (4 : ℤ) then ⟨1, 49438⟩
    else if d = (8 : ℤ) then ⟨1, 49438⟩
    else ⟨0, 49438⟩

def cellA2B5 : CellData where
  inverse := 4202
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 7061⟩
    else if d = (-8 : ℤ) then ⟨0, 7061⟩
    else if d = (-5 : ℤ) then ⟨0, 7061⟩
    else if d = (-4 : ℤ) then ⟨0, 7061⟩
    else if d = (-1 : ℤ) then ⟨0, 7061⟩
    else if d = (0 : ℤ) then ⟨0, 7061⟩
    else if d = (3 : ℤ) then ⟨0, 7061⟩
    else if d = (4 : ℤ) then ⟨1, 7062⟩
    else if d = (7 : ℤ) then ⟨0, 7061⟩
    else if d = (8 : ℤ) then ⟨1, 7062⟩
    else ⟨0, 7062⟩

def cellA2B6 : CellData where
  inverse := 88237
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1007⟩
    else if d = (-4 : ℤ) then ⟨0, 1007⟩
    else if d = (0 : ℤ) then ⟨0, 1007⟩
    else if d = (4 : ℤ) then ⟨1, 1008⟩
    else if d = (8 : ℤ) then ⟨1, 1008⟩
    else ⟨0, 1008⟩

def cellA2B7 : CellData where
  inverse := 205886
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 144⟩
    else if d = (8 : ℤ) then ⟨1, 144⟩
    else ⟨0, 143⟩

def cellA2B8 : CellData where
  inverse := 4323601
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 19⟩
    else if d = (-7 : ℤ) then ⟨0, 19⟩
    else if d = (-4 : ℤ) then ⟨0, 19⟩
    else if d = (-3 : ℤ) then ⟨0, 19⟩
    else if d = (0 : ℤ) then ⟨0, 19⟩
    else if d = (1 : ℤ) then ⟨0, 19⟩
    else if d = (4 : ℤ) then ⟨1, 20⟩
    else if d = (5 : ℤ) then ⟨0, 19⟩
    else if d = (8 : ℤ) then ⟨1, 20⟩
    else if d = (9 : ℤ) then ⟨0, 19⟩
    else ⟨0, 20⟩

def cellA2B9 : CellData where
  inverse := 10088402
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (4 : ℤ) then ⟨1, 2⟩
    else if d = (8 : ℤ) then ⟨1, 2⟩
    else ⟨0, 2⟩

def cellA2B10 : CellData where
  inverse := 211856437
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
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

def cellA2B22 : CellData where
  inverse := 2932365786437241037
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B23 : CellData where
  inverse := 6842186835020229086
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B24 : CellData where
  inverse := 143685923535424810801
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B25 : CellData where
  inverse := 335267154915991225202
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B26 : CellData where
  inverse := 7040610253235815729237
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B27 : CellData where
  inverse := 16428090590883570034886
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B28 : CellData where
  inverse := 344989902408554970732601
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B29 : CellData where
  inverse := 804976438953294931709402
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B30 : CellData where
  inverse := 16904505218019193565897437
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B31 : CellData where
  inverse := 39443845508711451653760686
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B32 : CellData where
  inverse := 828320755682940484728974401
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B33 : CellData where
  inverse := 1932748429926861131034273602
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B34 : CellData where
  inverse := 40587717028464083751719745637
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B35 : CellData where
  inverse := 94704673066416195420679406486
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B36 : CellData where
  inverse := 1988798134394740103834267536201
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B37 : CellData where
  inverse := 4640528980254393575613290917802
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B38 : CellData where
  inverse := 97451108585342265087879109273837
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 14837877⟩
    else if d = (-8 : ℤ) then ⟨0, 14837877⟩
    else if d = (-7 : ℤ) then ⟨0, 14837877⟩
    else if d = (-1 : ℤ) then ⟨0, 14837877⟩
    else if d = (0 : ℤ) then ⟨0, 14837877⟩
    else if d = (7 : ℤ) then ⟨0, 14837877⟩
    else if d = (8 : ℤ) then ⟨1, 14837878⟩
    else ⟨0, 14837878⟩

def cellA3B2 : CellData where
  inverse := 43
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 2422509⟩
    else if d = (-7 : ℤ) then ⟨0, 2422509⟩
    else if d = (0 : ℤ) then ⟨0, 2422509⟩
    else if d = (1 : ℤ) then ⟨0, 2422509⟩
    else if d = (8 : ℤ) then ⟨1, 2422510⟩
    else if d = (9 : ℤ) then ⟨0, 2422509⟩
    else ⟨0, 2422510⟩

def cellA3B3 : CellData where
  inverse := 43
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 346071⟩
    else if d = (0 : ℤ) then ⟨0, 346071⟩
    else if d = (8 : ℤ) then ⟨1, 346072⟩
    else ⟨0, 346072⟩

def cellA3B4 : CellData where
  inverse := 2101
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 49437⟩
    else if d = (0 : ℤ) then ⟨0, 49437⟩
    else if d = (8 : ℤ) then ⟨1, 49438⟩
    else ⟨0, 49438⟩

def cellA3B5 : CellData where
  inverse := 2101
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 7061⟩
    else if d = (-9 : ℤ) then ⟨0, 7061⟩
    else if d = (-8 : ℤ) then ⟨0, 7061⟩
    else if d = (-2 : ℤ) then ⟨0, 7061⟩
    else if d = (-1 : ℤ) then ⟨0, 7061⟩
    else if d = (0 : ℤ) then ⟨0, 7061⟩
    else if d = (6 : ℤ) then ⟨0, 7061⟩
    else if d = (7 : ℤ) then ⟨0, 7061⟩
    else if d = (8 : ℤ) then ⟨1, 7062⟩
    else ⟨0, 7062⟩

def cellA3B6 : CellData where
  inverse := 102943
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1007⟩
    else if d = (0 : ℤ) then ⟨0, 1007⟩
    else if d = (8 : ℤ) then ⟨1, 1008⟩
    else ⟨0, 1008⟩

def cellA3B7 : CellData where
  inverse := 102943
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 144⟩
    else if d = (1 : ℤ) then ⟨0, 144⟩
    else if d = (8 : ℤ) then ⟨1, 144⟩
    else if d = (9 : ℤ) then ⟨0, 144⟩
    else ⟨0, 143⟩

def cellA3B8 : CellData where
  inverse := 5044201
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 19⟩
    else if d = (-7 : ℤ) then ⟨0, 19⟩
    else if d = (-6 : ℤ) then ⟨0, 19⟩
    else if d = (-5 : ℤ) then ⟨0, 19⟩
    else if d = (0 : ℤ) then ⟨0, 19⟩
    else if d = (1 : ℤ) then ⟨0, 19⟩
    else if d = (2 : ℤ) then ⟨0, 19⟩
    else if d = (3 : ℤ) then ⟨0, 19⟩
    else if d = (8 : ℤ) then ⟨1, 20⟩
    else if d = (9 : ℤ) then ⟨0, 19⟩
    else if d = (10 : ℤ) then ⟨0, 19⟩
    else ⟨0, 20⟩

def cellA3B9 : CellData where
  inverse := 5044201
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨1, 2⟩
    else ⟨0, 2⟩

def cellA3B10 : CellData where
  inverse := 247165843
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
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

def cellA3B22 : CellData where
  inverse := 3421093417510114543
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B23 : CellData where
  inverse := 3421093417510114543
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B24 : CellData where
  inverse := 167633577457995612601
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B25 : CellData where
  inverse := 167633577457995612601
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B26 : CellData where
  inverse := 8214045295441785017443
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B27 : CellData where
  inverse := 8214045295441785017443
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B28 : CellData where
  inverse := 402488219476647465854701
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B29 : CellData where
  inverse := 402488219476647465854701
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B30 : CellData where
  inverse := 19721922754355725826880343
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B31 : CellData where
  inverse := 19721922754355725826880343
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B32 : CellData where
  inverse := 966374214963430565517136801
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B33 : CellData where
  inverse := 966374214963430565517136801
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B34 : CellData where
  inverse := 47352336533208097710339703243
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B35 : CellData where
  inverse := 47352336533208097710339703243
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B36 : CellData where
  inverse := 2320264490127196787806645458901
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B37 : CellData where
  inverse := 2320264490127196787806645458901
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B38 : CellData where
  inverse := 113692960016232642602525627486143
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 7418939⟩
    else if d = (-5 : ℤ) then ⟨0, 7418939⟩
    else if d = (-3 : ℤ) then ⟨0, 7418939⟩
    else if d = (2 : ℤ) then ⟨0, 7418939⟩
    else if d = (4 : ℤ) then ⟨0, 7418939⟩
    else if d = (6 : ℤ) then ⟨0, 7418939⟩
    else if d = (9 : ℤ) then ⟨0, 7418939⟩
    else ⟨0, 7418938⟩

def cellA4B2 : CellData where
  inverse := 46
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 2422509⟩
    else if d = (1 : ℤ) then ⟨0, 2422509⟩
    else if d = (2 : ℤ) then ⟨0, 2422509⟩
    else ⟨0, 2422510⟩

def cellA4B3 : CellData where
  inverse := 193
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 346071⟩
    else ⟨0, 346072⟩

def cellA4B4 : CellData where
  inverse := 2251
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 49437⟩
    else ⟨0, 49438⟩

def cellA4B5 : CellData where
  inverse := 9454
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 7061⟩
    else if d = (-4 : ℤ) then ⟨0, 7061⟩
    else if d = (-2 : ℤ) then ⟨0, 7061⟩
    else if d = (0 : ℤ) then ⟨0, 7061⟩
    else if d = (5 : ℤ) then ⟨0, 7061⟩
    else if d = (7 : ℤ) then ⟨0, 7061⟩
    else ⟨0, 7062⟩

def cellA4B6 : CellData where
  inverse := 110296
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1007⟩
    else ⟨0, 1008⟩

def cellA4B7 : CellData where
  inverse := 463243
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 144⟩
    else if d = (2 : ℤ) then ⟨0, 144⟩
    else if d = (9 : ℤ) then ⟨0, 144⟩
    else ⟨0, 143⟩

def cellA4B8 : CellData where
  inverse := 5404501
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 19⟩
    else if d = (0 : ℤ) then ⟨0, 19⟩
    else if d = (1 : ℤ) then ⟨0, 19⟩
    else if d = (2 : ℤ) then ⟨0, 19⟩
    else if d = (3 : ℤ) then ⟨0, 19⟩
    else if d = (4 : ℤ) then ⟨0, 19⟩
    else if d = (5 : ℤ) then ⟨0, 19⟩
    else if d = (6 : ℤ) then ⟨0, 19⟩
    else ⟨0, 20⟩

def cellA4B9 : CellData where
  inverse := 22698904
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA4B10 : CellData where
  inverse := 264820546
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA4B22 : CellData where
  inverse := 3665457233046551296
  bounds := fun _ => ⟨0, -1⟩

def cellA4B23 : CellData where
  inverse := 15394920378795515443
  bounds := fun _ => ⟨0, -1⟩

def cellA4B24 : CellData where
  inverse := 179607404419281013501
  bounds := fun _ => ⟨0, -1⟩

def cellA4B25 : CellData where
  inverse := 754351098560980256704
  bounds := fun _ => ⟨0, -1⟩

def cellA4B26 : CellData where
  inverse := 8800762816544769661546
  bounds := fun _ => ⟨0, -1⟩

def cellA4B27 : CellData where
  inverse := 36963203829488032578493
  bounds := fun _ => ⟨0, -1⟩

def cellA4B28 : CellData where
  inverse := 431237378010693713415751
  bounds := fun _ => ⟨0, -1⟩

def cellA4B29 : CellData where
  inverse := 1811196987644913596346154
  bounds := fun _ => ⟨0, -1⟩

def cellA4B30 : CellData where
  inverse := 21130631522523991957371796
  bounds := fun _ => ⟨0, -1⟩

def cellA4B31 : CellData where
  inverse := 88748652394600766220961543
  bounds := fun _ => ⟨0, -1⟩

def cellA4B32 : CellData where
  inverse := 1035400944603675605911218001
  bounds := fun _ => ⟨0, -1⟩

def cellA4B33 : CellData where
  inverse := 4348683967335437544827115604
  bounds := fun _ => ⟨0, -1⟩

def cellA4B34 : CellData where
  inverse := 50734646285580104689649682046
  bounds := fun _ => ⟨0, -1⟩

def cellA4B35 : CellData where
  inverse := 213085514399436439696528664593
  bounds := fun _ => ⟨0, -1⟩

def cellA4B36 : CellData where
  inverse := 2485997667993425129792834420251
  bounds := fun _ => ⟨0, -1⟩

def cellA4B37 : CellData where
  inverse := 10441190205572385545129904565054
  bounds := fun _ => ⟨0, -1⟩

def cellA4B38 : CellData where
  inverse := 121813885731677831359848886592296
  bounds := fun _ => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 3709468⟩
    else if d = (-7 : ℤ) then ⟨0, 3709468⟩
    else if d = (-4 : ℤ) then ⟨0, 3709468⟩
    else if d = (-1 : ℤ) then ⟨0, 3709468⟩
    else if d = (0 : ℤ) then ⟨0, 3709468⟩
    else if d = (3 : ℤ) then ⟨0, 3709468⟩
    else if d = (7 : ℤ) then ⟨0, 3709468⟩
    else if d = (10 : ℤ) then ⟨0, 3709468⟩
    else ⟨0, 3709469⟩

def cellA5B2 : CellData where
  inverse := 23
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 2422509⟩
    else if d = (2 : ℤ) then ⟨0, 2422509⟩
    else if d = (4 : ℤ) then ⟨0, 2422509⟩
    else ⟨0, 2422510⟩

def cellA5B3 : CellData where
  inverse := 268
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 346071⟩
    else ⟨0, 346072⟩

def cellA5B4 : CellData where
  inverse := 2326
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 49437⟩
    else ⟨0, 49438⟩

def cellA5B5 : CellData where
  inverse := 4727
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 7061⟩
    else if d = (-4 : ℤ) then ⟨0, 7061⟩
    else if d = (-1 : ℤ) then ⟨0, 7061⟩
    else if d = (0 : ℤ) then ⟨0, 7061⟩
    else if d = (3 : ℤ) then ⟨0, 7061⟩
    else if d = (7 : ℤ) then ⟨0, 7061⟩
    else if d = (10 : ℤ) then ⟨0, 7061⟩
    else ⟨0, 7062⟩

def cellA5B6 : CellData where
  inverse := 55148
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1007⟩
    else ⟨0, 1008⟩

def cellA5B7 : CellData where
  inverse := 643393
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 144⟩
    else if d = (4 : ℤ) then ⟨0, 144⟩
    else if d = (9 : ℤ) then ⟨0, 144⟩
    else ⟨0, 143⟩

def cellA5B8 : CellData where
  inverse := 5584651
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 20⟩
    else if d = (-9 : ℤ) then ⟨0, 20⟩
    else if d = (-8 : ℤ) then ⟨0, 20⟩
    else if d = (-7 : ℤ) then ⟨0, 20⟩
    else if d = (-6 : ℤ) then ⟨0, 20⟩
    else if d = (-5 : ℤ) then ⟨0, 20⟩
    else if d = (-4 : ℤ) then ⟨0, 20⟩
    else if d = (-3 : ℤ) then ⟨0, 20⟩
    else if d = (-2 : ℤ) then ⟨0, 20⟩
    else if d = (-1 : ℤ) then ⟨0, 20⟩
    else ⟨0, 19⟩

def cellA5B9 : CellData where
  inverse := 11349452
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA5B10 : CellData where
  inverse := 132410273
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B11 : CellData where
  inverse := 1544786518
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA5B22 : CellData where
  inverse := 1832728616523275648
  bounds := fun _ => ⟨0, -1⟩

def cellA5B23 : CellData where
  inverse := 21381833859438215893
  bounds := fun _ => ⟨0, -1⟩

def cellA5B24 : CellData where
  inverse := 185594317899923713951
  bounds := fun _ => ⟨0, -1⟩

def cellA5B25 : CellData where
  inverse := 377175549280490128352
  bounds := fun _ => ⟨0, -1⟩

def cellA5B26 : CellData where
  inverse := 4400381408272384830773
  bounds := fun _ => ⟨0, -1⟩

def cellA5B27 : CellData where
  inverse := 51337783096511156359018
  bounds := fun _ => ⟨0, -1⟩

def cellA5B28 : CellData where
  inverse := 445611957277716837196276
  bounds := fun _ => ⟨0, -1⟩

def cellA5B29 : CellData where
  inverse := 905598493822456798173077
  bounds := fun _ => ⟨0, -1⟩

def cellA5B30 : CellData where
  inverse := 10565315761261995978685898
  bounds := fun _ => ⟨0, -1⟩

def cellA5B31 : CellData where
  inverse := 123262017214723286418002143
  bounds := fun _ => ⟨0, -1⟩

def cellA5B32 : CellData where
  inverse := 1069914309423798126108258601
  bounds := fun _ => ⟨0, -1⟩

def cellA5B33 : CellData where
  inverse := 2174341983667718772413557802
  bounds := fun _ => ⟨0, -1⟩

def cellA5B34 : CellData where
  inverse := 25367323142790052344824841023
  bounds := fun _ => ⟨0, -1⟩

def cellA5B35 : CellData where
  inverse := 295952103332550610689623145268
  bounds := fun _ => ⟨0, -1⟩

def cellA5B36 : CellData where
  inverse := 2568864256926539300785928900926
  bounds := fun _ => ⟨0, -1⟩

def cellA5B37 : CellData where
  inverse := 5220595102786192772564952282527
  bounds := fun _ => ⟨0, -1⟩

def cellA5B38 : CellData where
  inverse := 60906942865838915679924443296148
  bounds := fun _ => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1854733⟩
    else if d = (-7 : ℤ) then ⟨0, 1854733⟩
    else if d = (-1 : ℤ) then ⟨0, 1854733⟩
    else if d = (0 : ℤ) then ⟨0, 1854733⟩
    else if d = (7 : ℤ) then ⟨0, 1854733⟩
    else ⟨0, 1854734⟩

def cellA6B2 : CellData where
  inverse := 36
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 1854733⟩
    else if d = (0 : ℤ) then ⟨0, 1854733⟩
    else if d = (4 : ℤ) then ⟨0, 1854733⟩
    else if d = (8 : ℤ) then ⟨0, 1854733⟩
    else ⟨0, 1854734⟩

def cellA6B3 : CellData where
  inverse := 134
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 346071⟩
    else ⟨0, 346072⟩

def cellA6B4 : CellData where
  inverse := 1163
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 49437⟩
    else ⟨0, 49438⟩

def cellA6B5 : CellData where
  inverse := 10767
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 7061⟩
    else if d = (-5 : ℤ) then ⟨0, 7061⟩
    else if d = (-2 : ℤ) then ⟨0, 7061⟩
    else if d = (0 : ℤ) then ⟨0, 7061⟩
    else if d = (3 : ℤ) then ⟨0, 7061⟩
    else if d = (6 : ℤ) then ⟨0, 7061⟩
    else if d = (9 : ℤ) then ⟨0, 7061⟩
    else ⟨0, 7062⟩

def cellA6B6 : CellData where
  inverse := 27574
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1007⟩
    else ⟨0, 1008⟩

def cellA6B7 : CellData where
  inverse := 733468
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 144⟩
    else if d = (-1 : ℤ) then ⟨0, 144⟩
    else if d = (8 : ℤ) then ⟨0, 144⟩
    else if d = (9 : ℤ) then ⟨0, 144⟩
    else ⟨0, 143⟩

def cellA6B8 : CellData where
  inverse := 5674726
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 20⟩
    else if d = (-9 : ℤ) then ⟨0, 20⟩
    else if d = (-8 : ℤ) then ⟨0, 20⟩
    else if d = (-7 : ℤ) then ⟨0, 20⟩
    else if d = (-6 : ℤ) then ⟨0, 20⟩
    else if d = (-5 : ℤ) then ⟨0, 20⟩
    else if d = (-4 : ℤ) then ⟨0, 20⟩
    else if d = (-3 : ℤ) then ⟨0, 20⟩
    else if d = (-2 : ℤ) then ⟨0, 20⟩
    else if d = (-1 : ℤ) then ⟨0, 20⟩
    else ⟨0, 19⟩

def cellA6B9 : CellData where
  inverse := 5674726
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA6B10 : CellData where
  inverse := 207442761
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B11 : CellData where
  inverse := 772393259
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA6B22 : CellData where
  inverse := 916364308261637824
  bounds := fun _ => ⟨0, -1⟩

def cellA6B23 : CellData where
  inverse := 24375290599759566118
  bounds := fun _ => ⟨0, -1⟩

def cellA6B24 : CellData where
  inverse := 188587774640245064176
  bounds := fun _ => ⟨0, -1⟩

def cellA6B25 : CellData where
  inverse := 188587774640245064176
  bounds := fun _ => ⟨0, -1⟩

def cellA6B26 : CellData where
  inverse := 6893930872960069568211
  bounds := fun _ => ⟨0, -1⟩

def cellA6B27 : CellData where
  inverse := 25668891548255578179509
  bounds := fun _ => ⟨0, -1⟩

def cellA6B28 : CellData where
  inverse := 222805978638858418598138
  bounds := fun _ => ⟨0, -1⟩

def cellA6B29 : CellData where
  inverse := 2062752124817818262505342
  bounds := fun _ => ⟨0, -1⟩

def cellA6B30 : CellData where
  inverse := 5282657880630997989342949
  bounds := fun _ => ⟨0, -1⟩

def cellA6B31 : CellData where
  inverse := 140518699624784546516522443
  bounds := fun _ => ⟨0, -1⟩

def cellA6B32 : CellData where
  inverse := 1087170991833859386206778901
  bounds := fun _ => ⟨0, -1⟩

def cellA6B33 : CellData where
  inverse := 1087170991833859386206778901
  bounds := fun _ => ⟨0, -1⟩

def cellA6B34 : CellData where
  inverse := 39742139590371082006892250936
  bounds := fun _ => ⟨0, -1⟩

def cellA6B35 : CellData where
  inverse := 147976051666275305344811572634
  bounds := fun _ => ⟨0, -1⟩

def cellA6B36 : CellData where
  inverse := 1284432128463269650392964450463
  bounds := fun _ => ⟨0, -1⟩

def cellA6B37 : CellData where
  inverse := 11891355511901883537509057976867
  bounds := fun _ => ⟨0, -1⟩

def cellA6B38 : CellData where
  inverse := 30453471432919457839962221648074
  bounds := fun _ => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 927367⟩
    else if d = (-5 : ℤ) then ⟨0, 927367⟩
    else if d = (-3 : ℤ) then ⟨0, 927367⟩
    else if d = (2 : ℤ) then ⟨0, 927367⟩
    else if d = (4 : ℤ) then ⟨0, 927367⟩
    else if d = (6 : ℤ) then ⟨0, 927367⟩
    else if d = (9 : ℤ) then ⟨0, 927367⟩
    else ⟨0, 927366⟩

def cellA7B2 : CellData where
  inverse := 18
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 927367⟩
    else if d = (-8 : ℤ) then ⟨0, 927367⟩
    else if d = (-5 : ℤ) then ⟨0, 927367⟩
    else if d = (-2 : ℤ) then ⟨0, 927367⟩
    else if d = (1 : ℤ) then ⟨0, 927367⟩
    else if d = (3 : ℤ) then ⟨0, 927367⟩
    else if d = (6 : ℤ) then ⟨0, 927367⟩
    else if d = (9 : ℤ) then ⟨0, 927367⟩
    else ⟨0, 927366⟩

def cellA7B3 : CellData where
  inverse := 67
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 346071⟩
    else if d = (5 : ℤ) then ⟨0, 346071⟩
    else ⟨0, 346072⟩

def cellA7B4 : CellData where
  inverse := 1782
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 49437⟩
    else ⟨0, 49438⟩

def cellA7B5 : CellData where
  inverse := 13787
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 7061⟩
    else if d = (-5 : ℤ) then ⟨0, 7061⟩
    else if d = (-4 : ℤ) then ⟨0, 7061⟩
    else if d = (0 : ℤ) then ⟨0, 7061⟩
    else if d = (1 : ℤ) then ⟨0, 7061⟩
    else if d = (6 : ℤ) then ⟨0, 7061⟩
    else if d = (7 : ℤ) then ⟨0, 7061⟩
    else ⟨0, 7062⟩

def cellA7B6 : CellData where
  inverse := 13787
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1007⟩
    else ⟨0, 1008⟩

def cellA7B7 : CellData where
  inverse := 366734
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 144⟩
    else if d = (7 : ℤ) then ⟨0, 144⟩
    else if d = (9 : ℤ) then ⟨0, 144⟩
    else ⟨0, 143⟩

def cellA7B8 : CellData where
  inverse := 2837363
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 19⟩
    else if d = (2 : ℤ) then ⟨0, 19⟩
    else if d = (4 : ℤ) then ⟨0, 19⟩
    else if d = (6 : ℤ) then ⟨0, 19⟩
    else if d = (8 : ℤ) then ⟨0, 19⟩
    else if d = (10 : ℤ) then ⟨0, 19⟩
    else ⟨0, 20⟩

def cellA7B9 : CellData where
  inverse := 2837363
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA7B10 : CellData where
  inverse := 244959005
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B11 : CellData where
  inverse := 1374860001
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA7B22 : CellData where
  inverse := 458182154130818912
  bounds := fun _ => ⟨0, -1⟩

def cellA7B23 : CellData where
  inverse := 12187645299879783059
  bounds := fun _ => ⟨0, -1⟩

def cellA7B24 : CellData where
  inverse := 94293887320122532088
  bounds := fun _ => ⟨0, -1⟩

def cellA7B25 : CellData where
  inverse := 94293887320122532088
  bounds := fun _ => ⟨0, -1⟩

def cellA7B26 : CellData where
  inverse := 8140705605303911936930
  bounds := fun _ => ⟨0, -1⟩

def cellA7B27 : CellData where
  inverse := 45690626955894929159526
  bounds := fun _ => ⟨0, -1⟩

def cellA7B28 : CellData where
  inverse := 111402989319429209299069
  bounds := fun _ => ⟨0, -1⟩

def cellA7B29 : CellData where
  inverse := 1031376062408909131252671
  bounds := fun _ => ⟨0, -1⟩

def cellA7B30 : CellData where
  inverse := 13910999085661628038603099
  bounds := fun _ => ⟨0, -1⟩

def cellA7B31 : CellData where
  inverse := 149147040829815176565782593
  bounds := fun _ => ⟨0, -1⟩

def cellA7B32 : CellData where
  inverse := 1095799333038890016256039051
  bounds := fun _ => ⟨0, -1⟩

def cellA7B33 : CellData where
  inverse := 4409082355770651955171936654
  bounds := fun _ => ⟨0, -1⟩

def cellA7B34 : CellData where
  inverse := 19871069795185541003446125468
  bounds := fun _ => ⟨0, -1⟩

def cellA7B35 : CellData where
  inverse := 73988025833137652672405786317
  bounds := fun _ => ⟨0, -1⟩

def cellA7B36 : CellData where
  inverse := 1968081487161461561085993916032
  bounds := fun _ => ⟨0, -1⟩

def cellA7B37 : CellData where
  inverse := 15226735716459728919981110824037
  bounds := fun _ => ⟨0, -1⟩

def cellA7B38 : CellData where
  inverse := 15226735716459728919981110824037
  bounds := fun _ => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 463682⟩
    else if d = (-7 : ℤ) then ⟨0, 463682⟩
    else if d = (-4 : ℤ) then ⟨0, 463682⟩
    else if d = (-1 : ℤ) then ⟨0, 463682⟩
    else if d = (0 : ℤ) then ⟨0, 463682⟩
    else if d = (3 : ℤ) then ⟨0, 463682⟩
    else if d = (7 : ℤ) then ⟨0, 463682⟩
    else if d = (10 : ℤ) then ⟨0, 463682⟩
    else ⟨0, 463683⟩

def cellA8B2 : CellData where
  inverse := 9
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 463682⟩
    else if d = (-6 : ℤ) then ⟨0, 463682⟩
    else if d = (-1 : ℤ) then ⟨0, 463682⟩
    else if d = (0 : ℤ) then ⟨0, 463682⟩
    else if d = (4 : ℤ) then ⟨0, 463682⟩
    else if d = (5 : ℤ) then ⟨0, 463682⟩
    else if d = (10 : ℤ) then ⟨0, 463682⟩
    else ⟨0, 463683⟩

def cellA8B3 : CellData where
  inverse := 205
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 346071⟩
    else if d = (5 : ℤ) then ⟨0, 346071⟩
    else if d = (10 : ℤ) then ⟨0, 346071⟩
    else ⟨0, 346072⟩

def cellA8B4 : CellData where
  inverse := 891
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 49437⟩
    else ⟨0, 49438⟩

def cellA8B5 : CellData where
  inverse := 15297
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 7061⟩
    else if d = (-9 : ℤ) then ⟨0, 7061⟩
    else if d = (-8 : ℤ) then ⟨0, 7061⟩
    else if d = (0 : ℤ) then ⟨0, 7061⟩
    else if d = (1 : ℤ) then ⟨0, 7061⟩
    else if d = (2 : ℤ) then ⟨0, 7061⟩
    else if d = (3 : ℤ) then ⟨0, 7061⟩
    else ⟨0, 7062⟩

def cellA8B6 : CellData where
  inverse := 65718
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1007⟩
    else if d = (0 : ℤ) then ⟨0, 1007⟩
    else ⟨0, 1008⟩

def cellA8B7 : CellData where
  inverse := 183367
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 144⟩
    else if d = (5 : ℤ) then ⟨0, 144⟩
    else if d = (9 : ℤ) then ⟨0, 144⟩
    else ⟨0, 143⟩

def cellA8B8 : CellData where
  inverse := 4301082
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 19⟩
    else if d = (-3 : ℤ) then ⟨0, 19⟩
    else if d = (0 : ℤ) then ⟨0, 19⟩
    else if d = (1 : ℤ) then ⟨0, 19⟩
    else if d = (4 : ℤ) then ⟨0, 19⟩
    else if d = (5 : ℤ) then ⟨0, 19⟩
    else if d = (8 : ℤ) then ⟨0, 19⟩
    else if d = (9 : ℤ) then ⟨0, 19⟩
    else ⟨0, 20⟩

def cellA8B9 : CellData where
  inverse := 21595485
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA8B10 : CellData where
  inverse := 263717127
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA8B22 : CellData where
  inverse := 229091077065409456
  bounds := fun _ => ⟨0, -1⟩

def cellA8B23 : CellData where
  inverse := 19778196319980349701
  bounds := fun _ => ⟨0, -1⟩

def cellA8B24 : CellData where
  inverse := 47146943660061266044
  bounds := fun _ => ⟨0, -1⟩

def cellA8B25 : CellData where
  inverse := 47146943660061266044
  bounds := fun _ => ⟨0, -1⟩

def cellA8B26 : CellData where
  inverse := 4070352802651955968465
  bounds := fun _ => ⟨0, -1⟩

def cellA8B27 : CellData where
  inverse := 22845313477947464579763
  bounds := fun _ => ⟨0, -1⟩

def cellA8B28 : CellData where
  inverse := 285694762932084585137935
  bounds := fun _ => ⟨0, -1⟩

def cellA8B29 : CellData where
  inverse := 2125640909111044429045139
  bounds := fun _ => ⟨0, -1⟩

def cellA8B30 : CellData where
  inverse := 18225169688176943063233174
  bounds := fun _ => ⟨0, -1⟩

def cellA8B31 : CellData where
  inverse := 153461211432330491590412668
  bounds := fun _ => ⟨0, -1⟩

def cellA8B32 : CellData where
  inverse := 1100113503641405331280669126
  bounds := fun _ => ⟨0, -1⟩

def cellA8B33 : CellData where
  inverse := 2204541177885325977585968327
  bounds := fun _ => ⟨0, -1⟩

def cellA8B34 : CellData where
  inverse := 9935534897592770501723062734
  bounds := fun _ => ⟨0, -1⟩

def cellA8B35 : CellData where
  inverse := 226403359049401217177561706130
  bounds := fun _ => ⟨0, -1⟩

def cellA8B36 : CellData where
  inverse := 984040743580730780542996958016
  bounds := fun _ => ⟨0, -1⟩

def cellA8B37 : CellData where
  inverse := 16894425818738651611217137247622
  bounds := fun _ => ⟨0, -1⟩

def cellA8B38 : CellData where
  inverse := 72580773581791374518576628261243
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

end Math.B699.CRTStage0Pair27.Chunk000
