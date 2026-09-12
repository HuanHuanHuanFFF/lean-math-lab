import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage1Pair27.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA9B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, 180⟩

def cellA9B2 : CellData where
  inverse := 29
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 181⟩
    else if d = (-5 : ℤ) then ⟨0, 181⟩
    else ⟨0, 180⟩

def cellA9B3 : CellData where
  inverse := 274
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 181⟩
    else if d = (-5 : ℤ) then ⟨0, 181⟩
    else ⟨0, 180⟩

def cellA9B4 : CellData where
  inverse := 1646
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 37⟩
    else if d = (-6 : ℤ) then ⟨0, 37⟩
    else if d = (-3 : ℤ) then ⟨0, 37⟩
    else if d = (-2 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (1 : ℤ) then ⟨0, 37⟩
    else if d = (4 : ℤ) then ⟨0, 37⟩
    else if d = (7 : ℤ) then ⟨0, 37⟩
    else if d = (10 : ℤ) then ⟨0, 37⟩
    else ⟨0, 38⟩

def cellA9B5 : CellData where
  inverse := 16052
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 5⟩
    else if d = (-9 : ℤ) then ⟨0, 5⟩
    else if d = (-8 : ℤ) then ⟨0, 5⟩
    else if d = (-7 : ℤ) then ⟨0, 5⟩
    else if d = (-6 : ℤ) then ⟨0, 5⟩
    else if d = (-5 : ℤ) then ⟨0, 5⟩
    else if d = (-4 : ℤ) then ⟨0, 5⟩
    else if d = (-3 : ℤ) then ⟨0, 5⟩
    else if d = (-2 : ℤ) then ⟨0, 5⟩
    else if d = (-1 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA9B6 : CellData where
  inverse := 32859
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (7 : ℤ) then ⟨0, -1⟩
    else if d = (10 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA9B7 : CellData where
  inverse := 503455
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA9B8 : CellData where
  inverse := 2150541
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA9B9 : CellData where
  inverse := 30974546
  bounds := fun _ => ⟨0, -1⟩

def cellA9B10 : CellData where
  inverse := 273096188
  bounds := fun _ => ⟨0, -1⟩

def cellA9B11 : CellData where
  inverse := 838046686
  bounds := fun _ => ⟨0, -1⟩

def cellA9B12 : CellData where
  inverse := 838046686
  bounds := fun _ => ⟨0, -1⟩

def cellA9B13 : CellData where
  inverse := 56203195490
  bounds := fun _ => ⟨0, -1⟩

def cellA9B14 : CellData where
  inverse := 443759237118
  bounds := fun _ => ⟨0, -1⟩

def cellA9B15 : CellData where
  inverse := 1121982309967
  bounds := fun _ => ⟨0, -1⟩

def cellA9B16 : CellData where
  inverse := 24859789859682
  bounds := fun _ => ⟨0, -1⟩

def cellA9B17 : CellData where
  inverse := 91325650998884
  bounds := fun _ => ⟨0, -1⟩

def cellA9B18 : CellData where
  inverse := 556586678973298
  bounds := fun _ => ⟨0, -1⟩

def cellA9B19 : CellData where
  inverse := 556586678973298
  bounds := fun _ => ⟨0, -1⟩

def cellA9B20 : CellData where
  inverse := 34753272235092727
  bounds := fun _ => ⟨0, -1⟩

def cellA9B21 : CellData where
  inverse := 114545538532704728
  bounds := fun _ => ⟨0, -1⟩

def cellA10B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 90⟩
    else if d = (-8 : ℤ) then ⟨0, 90⟩
    else if d = (-5 : ℤ) then ⟨0, 90⟩
    else if d = (-3 : ℤ) then ⟨0, 90⟩
    else if d = (-1 : ℤ) then ⟨0, 90⟩
    else if d = (2 : ℤ) then ⟨0, 90⟩
    else if d = (4 : ℤ) then ⟨0, 90⟩
    else if d = (6 : ℤ) then ⟨0, 90⟩
    else if d = (9 : ℤ) then ⟨0, 90⟩
    else ⟨0, 89⟩

def cellA10B2 : CellData where
  inverse := 39
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 90⟩
    else if d = (-7 : ℤ) then ⟨0, 90⟩
    else if d = (-6 : ℤ) then ⟨0, 90⟩
    else if d = (-5 : ℤ) then ⟨0, 90⟩
    else if d = (-2 : ℤ) then ⟨0, 90⟩
    else if d = (-1 : ℤ) then ⟨0, 90⟩
    else if d = (3 : ℤ) then ⟨0, 90⟩
    else if d = (4 : ℤ) then ⟨0, 90⟩
    else if d = (8 : ℤ) then ⟨0, 90⟩
    else if d = (9 : ℤ) then ⟨0, 90⟩
    else ⟨0, 89⟩

def cellA10B3 : CellData where
  inverse := 137
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 90⟩
    else if d = (-9 : ℤ) then ⟨0, 90⟩
    else if d = (-7 : ℤ) then ⟨0, 90⟩
    else if d = (-5 : ℤ) then ⟨0, 90⟩
    else if d = (-4 : ℤ) then ⟨0, 90⟩
    else if d = (-2 : ℤ) then ⟨0, 90⟩
    else if d = (1 : ℤ) then ⟨0, 90⟩
    else if d = (3 : ℤ) then ⟨0, 90⟩
    else if d = (6 : ℤ) then ⟨0, 90⟩
    else if d = (8 : ℤ) then ⟨0, 90⟩
    else ⟨0, 89⟩

def cellA10B4 : CellData where
  inverse := 823
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 37⟩
    else if d = (-6 : ℤ) then ⟨0, 37⟩
    else if d = (-4 : ℤ) then ⟨0, 37⟩
    else if d = (-3 : ℤ) then ⟨0, 37⟩
    else if d = (-1 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (2 : ℤ) then ⟨0, 37⟩
    else if d = (5 : ℤ) then ⟨0, 37⟩
    else if d = (8 : ℤ) then ⟨0, 37⟩
    else ⟨0, 38⟩

def cellA10B5 : CellData where
  inverse := 8026
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 5⟩
    else if d = (-8 : ℤ) then ⟨0, 5⟩
    else if d = (-6 : ℤ) then ⟨0, 5⟩
    else if d = (-4 : ℤ) then ⟨0, 5⟩
    else if d = (-2 : ℤ) then ⟨0, 5⟩
    else if d = (1 : ℤ) then ⟨0, 5⟩
    else if d = (3 : ℤ) then ⟨0, 5⟩
    else if d = (5 : ℤ) then ⟨0, 5⟩
    else if d = (7 : ℤ) then ⟨0, 5⟩
    else if d = (9 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA10B6 : CellData where
  inverse := 75254
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA10B7 : CellData where
  inverse := 663499
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA10B8 : CellData where
  inverse := 3957671
  bounds := fun _ => ⟨0, -1⟩

def cellA10B9 : CellData where
  inverse := 15487273
  bounds := fun _ => ⟨0, -1⟩

def cellA10B10 : CellData where
  inverse := 136548094
  bounds := fun _ => ⟨0, -1⟩

def cellA10B11 : CellData where
  inverse := 419023343
  bounds := fun _ => ⟨0, -1⟩

def cellA10B12 : CellData where
  inverse := 419023343
  bounds := fun _ => ⟨0, -1⟩

def cellA10B13 : CellData where
  inverse := 28101597745
  bounds := fun _ => ⟨0, -1⟩

def cellA10B14 : CellData where
  inverse := 221879618559
  bounds := fun _ => ⟨0, -1⟩

def cellA10B15 : CellData where
  inverse := 2934771909955
  bounds := fun _ => ⟨0, -1⟩

def cellA10B16 : CellData where
  inverse := 12429894929841
  bounds := fun _ => ⟨0, -1⟩

def cellA10B17 : CellData where
  inverse := 45662825499442
  bounds := fun _ => ⟨0, -1⟩

def cellA10B18 : CellData where
  inverse := 278293339486649
  bounds := fun _ => ⟨0, -1⟩

def cellA10B19 : CellData where
  inverse := 278293339486649
  bounds := fun _ => ⟨0, -1⟩

def cellA10B20 : CellData where
  inverse := 57272769266352364
  bounds := fun _ => ⟨0, -1⟩

def cellA10B21 : CellData where
  inverse := 57272769266352364
  bounds := fun _ => ⟨0, -1⟩

def cellA11B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 45⟩
    else if d = (-3 : ℤ) then ⟨0, 45⟩
    else if d = (4 : ℤ) then ⟨0, 45⟩
    else ⟨0, 44⟩

def cellA11B2 : CellData where
  inverse := 44
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 45⟩
    else if d = (-2 : ℤ) then ⟨0, 45⟩
    else if d = (-1 : ℤ) then ⟨0, 45⟩
    else if d = (8 : ℤ) then ⟨0, 45⟩
    else if d = (9 : ℤ) then ⟨0, 45⟩
    else ⟨0, 44⟩

def cellA11B3 : CellData where
  inverse := 240
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 45⟩
    else if d = (-7 : ℤ) then ⟨0, 45⟩
    else if d = (-4 : ℤ) then ⟨0, 45⟩
    else if d = (3 : ℤ) then ⟨0, 45⟩
    else if d = (6 : ℤ) then ⟨0, 45⟩
    else ⟨0, 44⟩

def cellA11B4 : CellData where
  inverse := 1612
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 38⟩
    else if d = (-7 : ℤ) then ⟨0, 38⟩
    else if d = (-4 : ℤ) then ⟨0, 38⟩
    else if d = (-1 : ℤ) then ⟨0, 38⟩
    else if d = (2 : ℤ) then ⟨0, 38⟩
    else if d = (3 : ℤ) then ⟨0, 38⟩
    else if d = (5 : ℤ) then ⟨0, 38⟩
    else if d = (6 : ℤ) then ⟨0, 38⟩
    else if d = (8 : ℤ) then ⟨0, 38⟩
    else if d = (9 : ℤ) then ⟨0, 38⟩
    else ⟨0, 37⟩

def cellA11B5 : CellData where
  inverse := 4013
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 5⟩
    else if d = (-7 : ℤ) then ⟨0, 5⟩
    else if d = (-4 : ℤ) then ⟨0, 5⟩
    else if d = (-3 : ℤ) then ⟨0, 5⟩
    else if d = (1 : ℤ) then ⟨0, 5⟩
    else if d = (2 : ℤ) then ⟨0, 5⟩
    else if d = (5 : ℤ) then ⟨0, 5⟩
    else if d = (6 : ℤ) then ⟨0, 5⟩
    else if d = (9 : ℤ) then ⟨0, 5⟩
    else if d = (10 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA11B6 : CellData where
  inverse := 37627
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA11B7 : CellData where
  inverse := 743521
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA11B8 : CellData where
  inverse := 4861236
  bounds := fun _ => ⟨0, -1⟩

def cellA11B9 : CellData where
  inverse := 27920440
  bounds := fun _ => ⟨0, -1⟩

def cellA11B10 : CellData where
  inverse := 68274047
  bounds := fun _ => ⟨0, -1⟩

def cellA11B11 : CellData where
  inverse := 1198175043
  bounds := fun _ => ⟨0, -1⟩

def cellA11B12 : CellData where
  inverse := 7130155272
  bounds := fun _ => ⟨0, -1⟩

def cellA11B13 : CellData where
  inverse := 62495304076
  bounds := fun _ => ⟨0, -1⟩

def cellA11B14 : CellData where
  inverse := 450051345704
  bounds := fun _ => ⟨0, -1⟩

def cellA11B15 : CellData where
  inverse := 3841166709949
  bounds := fun _ => ⟨0, -1⟩

def cellA11B16 : CellData where
  inverse := 22831412749721
  bounds := fun _ => ⟨0, -1⟩

def cellA11B17 : CellData where
  inverse := 22831412749721
  bounds := fun _ => ⟨0, -1⟩

def cellA11B18 : CellData where
  inverse := 953353468698549
  bounds := fun _ => ⟨0, -1⟩

def cellA11B19 : CellData where
  inverse := 5838594262429896
  bounds := fun _ => ⟨0, -1⟩

def cellA11B20 : CellData where
  inverse := 28636384633176182
  bounds := fun _ => ⟨0, -1⟩

def cellA11B21 : CellData where
  inverse := 28636384633176182
  bounds := fun _ => ⟨0, -1⟩

def cellA12B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 21⟩
    else if d = (-8 : ℤ) then ⟨0, 21⟩
    else if d = (-7 : ℤ) then ⟨0, 21⟩
    else if d = (-2 : ℤ) then ⟨0, 21⟩
    else if d = (-1 : ℤ) then ⟨0, 21⟩
    else if d = (0 : ℤ) then ⟨0, 21⟩
    else if d = (5 : ℤ) then ⟨0, 21⟩
    else if d = (6 : ℤ) then ⟨0, 21⟩
    else if d = (7 : ℤ) then ⟨0, 21⟩
    else ⟨0, 22⟩

def cellA12B2 : CellData where
  inverse := 22
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 21⟩
    else if d = (-7 : ℤ) then ⟨0, 21⟩
    else if d = (-5 : ℤ) then ⟨0, 21⟩
    else if d = (-3 : ℤ) then ⟨0, 21⟩
    else if d = (0 : ℤ) then ⟨0, 21⟩
    else if d = (2 : ℤ) then ⟨0, 21⟩
    else if d = (4 : ℤ) then ⟨0, 21⟩
    else if d = (6 : ℤ) then ⟨0, 21⟩
    else ⟨0, 22⟩

def cellA12B3 : CellData where
  inverse := 120
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 21⟩
    else if d = (-6 : ℤ) then ⟨0, 21⟩
    else if d = (-3 : ℤ) then ⟨0, 21⟩
    else if d = (-1 : ℤ) then ⟨0, 21⟩
    else if d = (0 : ℤ) then ⟨0, 21⟩
    else if d = (2 : ℤ) then ⟨0, 21⟩
    else if d = (5 : ℤ) then ⟨0, 21⟩
    else if d = (8 : ℤ) then ⟨0, 21⟩
    else ⟨0, 22⟩

def cellA12B4 : CellData where
  inverse := 806
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 22⟩
    else if d = (-5 : ℤ) then ⟨0, 22⟩
    else if d = (-2 : ℤ) then ⟨0, 22⟩
    else if d = (1 : ℤ) then ⟨0, 22⟩
    else if d = (3 : ℤ) then ⟨0, 22⟩
    else if d = (4 : ℤ) then ⟨0, 22⟩
    else if d = (6 : ℤ) then ⟨0, 22⟩
    else if d = (7 : ℤ) then ⟨0, 22⟩
    else if d = (9 : ℤ) then ⟨0, 22⟩
    else if d = (10 : ℤ) then ⟨0, 22⟩
    else ⟨0, 21⟩

def cellA12B5 : CellData where
  inverse := 10410
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 5⟩
    else if d = (-8 : ℤ) then ⟨0, 5⟩
    else if d = (-6 : ℤ) then ⟨0, 5⟩
    else if d = (-3 : ℤ) then ⟨0, 5⟩
    else if d = (-1 : ℤ) then ⟨0, 5⟩
    else if d = (2 : ℤ) then ⟨0, 5⟩
    else if d = (4 : ℤ) then ⟨0, 5⟩
    else if d = (5 : ℤ) then ⟨0, 5⟩
    else if d = (7 : ℤ) then ⟨0, 5⟩
    else if d = (10 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA12B6 : CellData where
  inverse := 77638
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA12B7 : CellData where
  inverse := 783532
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA12B8 : CellData where
  inverse := 2430618
  bounds := fun _ => ⟨0, -1⟩

def cellA12B9 : CellData where
  inverse := 13960220
  bounds := fun _ => ⟨0, -1⟩

def cellA12B10 : CellData where
  inverse := 175374648
  bounds := fun _ => ⟨0, -1⟩

def cellA12B11 : CellData where
  inverse := 1587750893
  bounds := fun _ => ⟨0, -1⟩

def cellA12B12 : CellData where
  inverse := 3565077636
  bounds := fun _ => ⟨0, -1⟩

def cellA12B13 : CellData where
  inverse := 31247652038
  bounds := fun _ => ⟨0, -1⟩

def cellA12B14 : CellData where
  inverse := 225025672852
  bounds := fun _ => ⟨0, -1⟩

def cellA12B15 : CellData where
  inverse := 4294364109946
  bounds := fun _ => ⟨0, -1⟩

def cellA12B16 : CellData where
  inverse := 28032171659661
  bounds := fun _ => ⟨0, -1⟩

def cellA12B17 : CellData where
  inverse := 127730963368464
  bounds := fun _ => ⟨0, -1⟩

def cellA12B18 : CellData where
  inverse := 1290883533304499
  bounds := fun _ => ⟨0, -1⟩

def cellA12B19 : CellData where
  inverse := 2919297131214948
  bounds := fun _ => ⟨0, -1⟩

def cellA12B20 : CellData where
  inverse := 14318192316588091
  bounds := fun _ => ⟨0, -1⟩

def cellA12B21 : CellData where
  inverse := 14318192316588091
  bounds := fun _ => ⟨0, -1⟩

def cellA13B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 11⟩
    else if d = (-5 : ℤ) then ⟨0, 11⟩
    else if d = (-3 : ℤ) then ⟨0, 11⟩
    else if d = (2 : ℤ) then ⟨0, 11⟩
    else if d = (4 : ℤ) then ⟨0, 11⟩
    else if d = (9 : ℤ) then ⟨0, 11⟩
    else ⟨0, 10⟩

def cellA13B2 : CellData where
  inverse := 11
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 11⟩
    else if d = (-4 : ℤ) then ⟨0, 11⟩
    else if d = (1 : ℤ) then ⟨0, 11⟩
    else if d = (5 : ℤ) then ⟨0, 11⟩
    else if d = (9 : ℤ) then ⟨0, 11⟩
    else if d = (10 : ℤ) then ⟨0, 11⟩
    else ⟨0, 10⟩

def cellA13B3 : CellData where
  inverse := 60
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 11⟩
    else if d = (-5 : ℤ) then ⟨0, 11⟩
    else if d = (-4 : ℤ) then ⟨0, 11⟩
    else if d = (1 : ℤ) then ⟨0, 11⟩
    else if d = (6 : ℤ) then ⟨0, 11⟩
    else if d = (7 : ℤ) then ⟨0, 11⟩
    else ⟨0, 10⟩

def cellA13B4 : CellData where
  inverse := 403
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 11⟩
    else if d = (1 : ℤ) then ⟨0, 11⟩
    else if d = (6 : ℤ) then ⟨0, 11⟩
    else if d = (7 : ℤ) then ⟨0, 11⟩
    else ⟨0, 10⟩

def cellA13B5 : CellData where
  inverse := 5205
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 5⟩
    else if d = (-6 : ℤ) then ⟨0, 5⟩
    else if d = (-5 : ℤ) then ⟨0, 5⟩
    else if d = (-3 : ℤ) then ⟨0, 5⟩
    else if d = (-2 : ℤ) then ⟨0, 5⟩
    else if d = (1 : ℤ) then ⟨0, 5⟩
    else if d = (4 : ℤ) then ⟨0, 5⟩
    else if d = (7 : ℤ) then ⟨0, 5⟩
    else if d = (8 : ℤ) then ⟨0, 5⟩
    else if d = (10 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA13B6 : CellData where
  inverse := 38819
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA13B7 : CellData where
  inverse := 391766
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B8 : CellData where
  inverse := 1215309
  bounds := fun _ => ⟨0, -1⟩

def cellA13B9 : CellData where
  inverse := 6980110
  bounds := fun _ => ⟨0, -1⟩

def cellA13B10 : CellData where
  inverse := 87687324
  bounds := fun _ => ⟨0, -1⟩

def cellA13B11 : CellData where
  inverse := 1782538818
  bounds := fun _ => ⟨0, -1⟩

def cellA13B12 : CellData where
  inverse := 1782538818
  bounds := fun _ => ⟨0, -1⟩

def cellA13B13 : CellData where
  inverse := 15623826019
  bounds := fun _ => ⟨0, -1⟩

def cellA13B14 : CellData where
  inverse := 112512836426
  bounds := fun _ => ⟨0, -1⟩

def cellA13B15 : CellData where
  inverse := 2147182054973
  bounds := fun _ => ⟨0, -1⟩

def cellA13B16 : CellData where
  inverse := 30632551114631
  bounds := fun _ => ⟨0, -1⟩

def cellA13B17 : CellData where
  inverse := 63865481684232
  bounds := fun _ => ⟨0, -1⟩

def cellA13B18 : CellData where
  inverse := 1459648565607474
  bounds := fun _ => ⟨0, -1⟩

def cellA13B19 : CellData where
  inverse := 1459648565607474
  bounds := fun _ => ⟨0, -1⟩

def cellA13B20 : CellData where
  inverse := 47055229307100046
  bounds := fun _ => ⟨0, -1⟩

def cellA13B21 : CellData where
  inverse := 286432028199936049
  bounds := fun _ => ⟨0, -1⟩

def cellA14B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 4⟩
    else if d = (-7 : ℤ) then ⟨0, 4⟩
    else if d = (-4 : ℤ) then ⟨0, 4⟩
    else if d = (-1 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨0, 4⟩
    else if d = (6 : ℤ) then ⟨0, 4⟩
    else if d = (7 : ℤ) then ⟨0, 4⟩
    else if d = (10 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA14B2 : CellData where
  inverse := 30
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4⟩
    else if d = (-7 : ℤ) then ⟨0, 4⟩
    else if d = (-5 : ℤ) then ⟨0, 4⟩
    else if d = (-2 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨0, 4⟩
    else if d = (6 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA14B3 : CellData where
  inverse := 30
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 4⟩
    else if d = (-2 : ℤ) then ⟨0, 4⟩
    else if d = (-1 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨0, 4⟩
    else if d = (10 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA14B4 : CellData where
  inverse := 1402
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-7 : ℤ) then ⟨0, 4⟩
    else if d = (-4 : ℤ) then ⟨0, 4⟩
    else if d = (-2 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨0, 4⟩
    else if d = (5 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨0, 4⟩
    else if d = (10 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA14B5 : CellData where
  inverse := 11006
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 5⟩
    else if d = (-9 : ℤ) then ⟨0, 5⟩
    else if d = (-7 : ℤ) then ⟨0, 5⟩
    else if d = (-6 : ℤ) then ⟨0, 5⟩
    else if d = (-4 : ℤ) then ⟨0, 5⟩
    else if d = (-3 : ℤ) then ⟨0, 5⟩
    else if d = (-1 : ℤ) then ⟨0, 5⟩
    else if d = (2 : ℤ) then ⟨0, 5⟩
    else if d = (5 : ℤ) then ⟨0, 5⟩
    else if d = (8 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA14B6 : CellData where
  inverse := 78234
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA14B7 : CellData where
  inverse := 195883
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B8 : CellData where
  inverse := 3490055
  bounds := fun _ => ⟨0, -1⟩

def cellA14B9 : CellData where
  inverse := 3490055
  bounds := fun _ => ⟨0, -1⟩

def cellA14B10 : CellData where
  inverse := 43843662
  bounds := fun _ => ⟨0, -1⟩

def cellA14B11 : CellData where
  inverse := 891269409
  bounds := fun _ => ⟨0, -1⟩

def cellA14B12 : CellData where
  inverse := 891269409
  bounds := fun _ => ⟨0, -1⟩

def cellA14B13 : CellData where
  inverse := 56256418213
  bounds := fun _ => ⟨0, -1⟩

def cellA14B14 : CellData where
  inverse := 56256418213
  bounds := fun _ => ⟨0, -1⟩

def cellA14B15 : CellData where
  inverse := 3447371782458
  bounds := fun _ => ⟨0, -1⟩

def cellA14B16 : CellData where
  inverse := 31932740842116
  bounds := fun _ => ⟨0, -1⟩

def cellA14B17 : CellData where
  inverse := 31932740842116
  bounds := fun _ => ⟨0, -1⟩

def cellA14B18 : CellData where
  inverse := 729824282803737
  bounds := fun _ => ⟨0, -1⟩

def cellA14B19 : CellData where
  inverse := 729824282803737
  bounds := fun _ => ⟨0, -1⟩

def cellA14B20 : CellData where
  inverse := 23527614653550023
  bounds := fun _ => ⟨0, -1⟩

def cellA14B21 : CellData where
  inverse := 422488946141610028
  bounds := fun _ => ⟨0, -1⟩

def cellA15B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B2 : CellData where
  inverse := 15
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B3 : CellData where
  inverse := 15
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B4 : CellData where
  inverse := 701
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B5 : CellData where
  inverse := 5503
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B6 : CellData where
  inverse := 39117
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA15B7 : CellData where
  inverse := 509713
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B8 : CellData where
  inverse := 4627428
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B9 : CellData where
  inverse := 21921831
  bounds := fun _ => ⟨0, -1⟩

def cellA15B10 : CellData where
  inverse := 21921831
  bounds := fun _ => ⟨0, -1⟩

def cellA15B11 : CellData where
  inverse := 1434298076
  bounds := fun _ => ⟨0, -1⟩

def cellA15B12 : CellData where
  inverse := 7366278305
  bounds := fun _ => ⟨0, -1⟩

def cellA15B13 : CellData where
  inverse := 76572714310
  bounds := fun _ => ⟨0, -1⟩

def cellA15B14 : CellData where
  inverse := 367239745531
  bounds := fun _ => ⟨0, -1⟩

def cellA15B15 : CellData where
  inverse := 1723685891229
  bounds := fun _ => ⟨0, -1⟩

def cellA15B16 : CellData where
  inverse := 15966370421058
  bounds := fun _ => ⟨0, -1⟩

def cellA15B17 : CellData where
  inverse := 15966370421058
  bounds := fun _ => ⟨0, -1⟩

def cellA15B18 : CellData where
  inverse := 1179118940357093
  bounds := fun _ => ⟨0, -1⟩

def cellA15B19 : CellData where
  inverse := 6064359734088440
  bounds := fun _ => ⟨0, -1⟩

def cellA15B20 : CellData where
  inverse := 51659940475581012
  bounds := fun _ => ⟨0, -1⟩

def cellA15B21 : CellData where
  inverse := 211244473070805014
  bounds := fun _ => ⟨0, -1⟩

def cellA16B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (4 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B2 : CellData where
  inverse := 32
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B3 : CellData where
  inverse := 179
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (4 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B4 : CellData where
  inverse := 1551
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B5 : CellData where
  inverse := 11155
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B6 : CellData where
  inverse := 78383
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA16B7 : CellData where
  inverse := 666628
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA16B8 : CellData where
  inverse := 2313714
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA16B9 : CellData where
  inverse := 31137719
  bounds := fun _ => ⟨0, -1⟩

def cellA16B10 : CellData where
  inverse := 152198540
  bounds := fun _ => ⟨0, -1⟩

def cellA16B11 : CellData where
  inverse := 717149038
  bounds := fun _ => ⟨0, -1⟩

def cellA16B12 : CellData where
  inverse := 10603782753
  bounds := fun _ => ⟨0, -1⟩

def cellA16B13 : CellData where
  inverse := 38286357155
  bounds := fun _ => ⟨0, -1⟩

def cellA16B14 : CellData where
  inverse := 522731409190
  bounds := fun _ => ⟨0, -1⟩

def cellA16B15 : CellData where
  inverse := 3235623700586
  bounds := fun _ => ⟨0, -1⟩

def cellA16B16 : CellData where
  inverse := 7983185210529
  bounds := fun _ => ⟨0, -1⟩

def cellA16B17 : CellData where
  inverse := 7983185210529
  bounds := fun _ => ⟨0, -1⟩

def cellA16B18 : CellData where
  inverse := 1403766269133771
  bounds := fun _ => ⟨0, -1⟩

def cellA16B19 : CellData where
  inverse := 3032179867044220
  bounds := fun _ => ⟨0, -1⟩

def cellA16B20 : CellData where
  inverse := 25829970237790506
  bounds := fun _ => ⟨0, -1⟩

def cellA16B21 : CellData where
  inverse := 105622236535402507
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

end Math.B699.CRTStage1Pair27.Chunk001
