import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage1Pair23.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA9B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, 180⟩

def cellA9B2 : CellData where
  inverse := 8
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 181⟩
    else if d = (-1 : ℤ) then ⟨0, 181⟩
    else if d = (8 : ℤ) then ⟨0, 181⟩
    else ⟨0, 180⟩

def cellA9B3 : CellData where
  inverse := 26
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 181⟩
    else if d = (-2 : ℤ) then ⟨0, 181⟩
    else if d = (-1 : ℤ) then ⟨0, 181⟩
    else ⟨0, 180⟩

def cellA9B4 : CellData where
  inverse := 53
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 181⟩
    else if d = (-6 : ℤ) then ⟨0, 181⟩
    else if d = (-3 : ℤ) then ⟨0, 181⟩
    else ⟨0, 180⟩

def cellA9B5 : CellData where
  inverse := 215
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 181⟩
    else if d = (-1 : ℤ) then ⟨0, 181⟩
    else if d = (8 : ℤ) then ⟨0, 181⟩
    else ⟨0, 180⟩

def cellA9B6 : CellData where
  inverse := 215
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 127⟩
    else if d = (-3 : ℤ) then ⟨0, 127⟩
    else if d = (4 : ℤ) then ⟨0, 127⟩
    else if d = (7 : ℤ) then ⟨0, 127⟩
    else ⟨0, 126⟩

def cellA9B7 : CellData where
  inverse := 944
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 42⟩
    else if d = (-4 : ℤ) then ⟨0, 42⟩
    else if d = (-2 : ℤ) then ⟨0, 42⟩
    else if d = (3 : ℤ) then ⟨0, 42⟩
    else if d = (5 : ℤ) then ⟨0, 42⟩
    else if d = (7 : ℤ) then ⟨0, 42⟩
    else if d = (10 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA9B8 : CellData where
  inverse := 5318
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 14⟩
    else if d = (10 : ℤ) then ⟨0, 14⟩
    else ⟨0, 13⟩

def cellA9B9 : CellData where
  inverse := 11879
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3⟩
    else if d = (-7 : ℤ) then ⟨0, 3⟩
    else if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (-2 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (3 : ℤ) then ⟨0, 3⟩
    else if d = (8 : ℤ) then ⟨0, 3⟩
    else ⟨0, 4⟩

def cellA9B10 : CellData where
  inverse := 11879
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (1 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA9B11 : CellData where
  inverse := 70928
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

def cellA9B12 : CellData where
  inverse := 248075
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA9B25 : CellData where
  inverse := 405440838503
  bounds := fun _ => ⟨0, -1⟩

def cellA9B26 : CellData where
  inverse := 2100018057389
  bounds := fun _ => ⟨0, -1⟩

def cellA9B27 : CellData where
  inverse := 2100018057389
  bounds := fun _ => ⟨0, -1⟩

def cellA9B28 : CellData where
  inverse := 2100018057389
  bounds := fun _ => ⟨0, -1⟩

def cellA9B29 : CellData where
  inverse := 47853602967311
  bounds := fun _ => ⟨0, -1⟩

def cellA9B30 : CellData where
  inverse := 47853602967311
  bounds := fun _ => ⟨0, -1⟩

def cellA9B31 : CellData where
  inverse := 459635867156609
  bounds := fun _ => ⟨0, -1⟩

def cellA9B32 : CellData where
  inverse := 459635867156609
  bounds := fun _ => ⟨0, -1⟩

def cellA9B33 : CellData where
  inverse := 2312656056008450
  bounds := fun _ => ⟨0, -1⟩

def cellA9B34 : CellData where
  inverse := 2312656056008450
  bounds := fun _ => ⟨0, -1⟩

def cellA9B35 : CellData where
  inverse := 35667019455341588
  bounds := fun _ => ⟨0, -1⟩

def cellA9B36 : CellData where
  inverse := 135730109653341002
  bounds := fun _ => ⟨0, -1⟩

def cellA9B37 : CellData where
  inverse := 285824744950340123
  bounds := fun _ => ⟨0, -1⟩

def cellA9B38 : CellData where
  inverse := 736108650841337486
  bounds := fun _ => ⟨0, -1⟩

def cellA10B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 90⟩
    else if d = (-5 : ℤ) then ⟨0, 90⟩
    else if d = (-2 : ℤ) then ⟨0, 90⟩
    else if d = (1 : ℤ) then ⟨0, 90⟩
    else if d = (4 : ℤ) then ⟨0, 90⟩
    else if d = (7 : ℤ) then ⟨0, 90⟩
    else if d = (10 : ℤ) then ⟨0, 90⟩
    else ⟨0, 89⟩

def cellA10B2 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 89⟩
    else if d = (-7 : ℤ) then ⟨0, 89⟩
    else if d = (-5 : ℤ) then ⟨0, 89⟩
    else if d = (-3 : ℤ) then ⟨0, 89⟩
    else if d = (0 : ℤ) then ⟨0, 89⟩
    else if d = (2 : ℤ) then ⟨0, 89⟩
    else if d = (4 : ℤ) then ⟨0, 89⟩
    else if d = (6 : ℤ) then ⟨0, 89⟩
    else if d = (9 : ℤ) then ⟨0, 89⟩
    else ⟨0, 90⟩

def cellA10B3 : CellData where
  inverse := 13
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 89⟩
    else if d = (-7 : ℤ) then ⟨0, 89⟩
    else if d = (-5 : ℤ) then ⟨0, 89⟩
    else if d = (0 : ℤ) then ⟨0, 89⟩
    else if d = (2 : ℤ) then ⟨0, 89⟩
    else if d = (4 : ℤ) then ⟨0, 89⟩
    else if d = (6 : ℤ) then ⟨0, 89⟩
    else if d = (8 : ℤ) then ⟨0, 89⟩
    else if d = (10 : ℤ) then ⟨0, 89⟩
    else ⟨0, 90⟩

def cellA10B4 : CellData where
  inverse := 67
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 89⟩
    else if d = (-5 : ℤ) then ⟨0, 89⟩
    else if d = (-4 : ℤ) then ⟨0, 89⟩
    else if d = (0 : ℤ) then ⟨0, 89⟩
    else if d = (1 : ℤ) then ⟨0, 89⟩
    else if d = (2 : ℤ) then ⟨0, 89⟩
    else if d = (6 : ℤ) then ⟨0, 89⟩
    else if d = (7 : ℤ) then ⟨0, 89⟩
    else if d = (8 : ℤ) then ⟨0, 89⟩
    else ⟨0, 90⟩

def cellA10B5 : CellData where
  inverse := 229
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 89⟩
    else if d = (0 : ℤ) then ⟨0, 89⟩
    else if d = (1 : ℤ) then ⟨0, 89⟩
    else if d = (2 : ℤ) then ⟨0, 89⟩
    else if d = (3 : ℤ) then ⟨0, 89⟩
    else if d = (4 : ℤ) then ⟨0, 89⟩
    else if d = (5 : ℤ) then ⟨0, 89⟩
    else if d = (6 : ℤ) then ⟨0, 89⟩
    else if d = (7 : ℤ) then ⟨0, 89⟩
    else ⟨0, 90⟩

def cellA10B6 : CellData where
  inverse := 472
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 89⟩
    else if d = (-5 : ℤ) then ⟨0, 89⟩
    else if d = (-2 : ℤ) then ⟨0, 89⟩
    else if d = (0 : ℤ) then ⟨0, 89⟩
    else if d = (1 : ℤ) then ⟨0, 89⟩
    else if d = (3 : ℤ) then ⟨0, 89⟩
    else if d = (4 : ℤ) then ⟨0, 89⟩
    else if d = (6 : ℤ) then ⟨0, 89⟩
    else if d = (9 : ℤ) then ⟨0, 89⟩
    else ⟨0, 90⟩

def cellA10B7 : CellData where
  inverse := 472
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 42⟩
    else if d = (-8 : ℤ) then ⟨0, 42⟩
    else if d = (-4 : ℤ) then ⟨0, 42⟩
    else if d = (-3 : ℤ) then ⟨0, 42⟩
    else if d = (1 : ℤ) then ⟨0, 42⟩
    else if d = (5 : ℤ) then ⟨0, 42⟩
    else if d = (6 : ℤ) then ⟨0, 42⟩
    else if d = (10 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA10B8 : CellData where
  inverse := 2659
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 14⟩
    else if d = (10 : ℤ) then ⟨0, 14⟩
    else ⟨0, 13⟩

def cellA10B9 : CellData where
  inverse := 15781
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3⟩
    else if d = (-9 : ℤ) then ⟨0, 3⟩
    else if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (-4 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (1 : ℤ) then ⟨0, 3⟩
    else if d = (6 : ℤ) then ⟨0, 3⟩
    else ⟨0, 4⟩

def cellA10B10 : CellData where
  inverse := 35464
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (4 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA10B11 : CellData where
  inverse := 35464
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

def cellA10B12 : CellData where
  inverse := 389758
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA10B25 : CellData where
  inverse := 626364723973
  bounds := fun _ => ⟨0, -1⟩

def cellA10B26 : CellData where
  inverse := 2320941942859
  bounds := fun _ => ⟨0, -1⟩

def cellA10B27 : CellData where
  inverse := 4862807771188
  bounds := fun _ => ⟨0, -1⟩

def cellA10B28 : CellData where
  inverse := 12488405256175
  bounds := fun _ => ⟨0, -1⟩

def cellA10B29 : CellData where
  inverse := 58241990166097
  bounds := fun _ => ⟨0, -1⟩

def cellA10B30 : CellData where
  inverse := 126872367530980
  bounds := fun _ => ⟨0, -1⟩

def cellA10B31 : CellData where
  inverse := 538654631720278
  bounds := fun _ => ⟨0, -1⟩

def cellA10B32 : CellData where
  inverse := 1156328028004225
  bounds := fun _ => ⟨0, -1⟩

def cellA10B33 : CellData where
  inverse := 1156328028004225
  bounds := fun _ => ⟨0, -1⟩

def cellA10B34 : CellData where
  inverse := 1156328028004225
  bounds := fun _ => ⟨0, -1⟩

def cellA10B35 : CellData where
  inverse := 17833509727670794
  bounds := fun _ => ⟨0, -1⟩

def cellA10B36 : CellData where
  inverse := 67865054826670501
  bounds := fun _ => ⟨0, -1⟩

def cellA10B37 : CellData where
  inverse := 368054325420668743
  bounds := fun _ => ⟨0, -1⟩

def cellA10B38 : CellData where
  inverse := 368054325420668743
  bounds := fun _ => ⟨0, -1⟩

def cellA11B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, 44⟩

def cellA11B2 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 45⟩
    else if d = (-4 : ℤ) then ⟨0, 45⟩
    else if d = (1 : ℤ) then ⟨0, 45⟩
    else if d = (5 : ℤ) then ⟨0, 45⟩
    else if d = (10 : ℤ) then ⟨0, 45⟩
    else ⟨0, 44⟩

def cellA11B3 : CellData where
  inverse := 20
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 45⟩
    else if d = (-4 : ℤ) then ⟨0, 45⟩
    else if d = (-1 : ℤ) then ⟨0, 45⟩
    else if d = (3 : ℤ) then ⟨0, 45⟩
    else if d = (7 : ℤ) then ⟨0, 45⟩
    else ⟨0, 44⟩

def cellA11B4 : CellData where
  inverse := 74
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 45⟩
    else if d = (-2 : ℤ) then ⟨0, 45⟩
    else if d = (-1 : ℤ) then ⟨0, 45⟩
    else if d = (9 : ℤ) then ⟨0, 45⟩
    else if d = (10 : ℤ) then ⟨0, 45⟩
    else ⟨0, 44⟩

def cellA11B5 : CellData where
  inverse := 236
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 45⟩
    else if d = (-8 : ℤ) then ⟨0, 45⟩
    else if d = (-7 : ℤ) then ⟨0, 45⟩
    else if d = (-6 : ℤ) then ⟨0, 45⟩
    else if d = (-5 : ℤ) then ⟨0, 45⟩
    else if d = (-4 : ℤ) then ⟨0, 45⟩
    else if d = (-3 : ℤ) then ⟨0, 45⟩
    else if d = (-2 : ℤ) then ⟨0, 45⟩
    else if d = (-1 : ℤ) then ⟨0, 45⟩
    else ⟨0, 44⟩

def cellA11B6 : CellData where
  inverse := 236
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 45⟩
    else if d = (-6 : ℤ) then ⟨0, 45⟩
    else if d = (-3 : ℤ) then ⟨0, 45⟩
    else if d = (7 : ℤ) then ⟨0, 45⟩
    else if d = (10 : ℤ) then ⟨0, 45⟩
    else ⟨0, 44⟩

def cellA11B7 : CellData where
  inverse := 236
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 42⟩
    else if d = (-8 : ℤ) then ⟨0, 42⟩
    else if d = (-7 : ℤ) then ⟨0, 42⟩
    else if d = (-6 : ℤ) then ⟨0, 42⟩
    else if d = (1 : ℤ) then ⟨0, 42⟩
    else if d = (2 : ℤ) then ⟨0, 42⟩
    else if d = (3 : ℤ) then ⟨0, 42⟩
    else if d = (10 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA11B8 : CellData where
  inverse := 4610
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 14⟩
    else if d = (3 : ℤ) then ⟨0, 14⟩
    else if d = (10 : ℤ) then ⟨0, 14⟩
    else ⟨0, 13⟩

def cellA11B9 : CellData where
  inverse := 17732
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3⟩
    else if d = (-9 : ℤ) then ⟨0, 3⟩
    else if d = (-8 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (1 : ℤ) then ⟨0, 3⟩
    else if d = (2 : ℤ) then ⟨0, 3⟩
    else ⟨0, 4⟩

def cellA11B10 : CellData where
  inverse := 17732
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA11B11 : CellData where
  inverse := 17732
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (-3 : ℤ) then ⟨0, -1⟩
    else if d = (-2 : ℤ) then ⟨0, -1⟩
    else if d = (-1 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (7 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA11B12 : CellData where
  inverse := 194879
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA11B25 : CellData where
  inverse := 736826666708
  bounds := fun _ => ⟨0, -1⟩

def cellA11B26 : CellData where
  inverse := 2431403885594
  bounds := fun _ => ⟨0, -1⟩

def cellA11B27 : CellData where
  inverse := 2431403885594
  bounds := fun _ => ⟨0, -1⟩

def cellA11B28 : CellData where
  inverse := 17682598855568
  bounds := fun _ => ⟨0, -1⟩

def cellA11B29 : CellData where
  inverse := 63436183765490
  bounds := fun _ => ⟨0, -1⟩

def cellA11B30 : CellData where
  inverse := 63436183765490
  bounds := fun _ => ⟨0, -1⟩

def cellA11B31 : CellData where
  inverse := 269327315860139
  bounds := fun _ => ⟨0, -1⟩

def cellA11B32 : CellData where
  inverse := 1504674108428033
  bounds := fun _ => ⟨0, -1⟩

def cellA11B33 : CellData where
  inverse := 3357694297279874
  bounds := fun _ => ⟨0, -1⟩

def cellA11B34 : CellData where
  inverse := 8916754863835397
  bounds := fun _ => ⟨0, -1⟩

def cellA11B35 : CellData where
  inverse := 8916754863835397
  bounds := fun _ => ⟨0, -1⟩

def cellA11B36 : CellData where
  inverse := 108979845061834811
  bounds := fun _ => ⟨0, -1⟩

def cellA11B37 : CellData where
  inverse := 409169115655833053
  bounds := fun _ => ⟨0, -1⟩

def cellA11B38 : CellData where
  inverse := 859453021546830416
  bounds := fun _ => ⟨0, -1⟩

def cellA12B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 22⟩
    else if d = (-5 : ℤ) then ⟨0, 22⟩
    else if d = (-2 : ℤ) then ⟨0, 22⟩
    else if d = (1 : ℤ) then ⟨0, 22⟩
    else if d = (4 : ℤ) then ⟨0, 22⟩
    else if d = (7 : ℤ) then ⟨0, 22⟩
    else if d = (10 : ℤ) then ⟨0, 22⟩
    else ⟨0, 21⟩

def cellA12B2 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 21⟩
    else if d = (-9 : ℤ) then ⟨0, 21⟩
    else if d = (-3 : ℤ) then ⟨0, 21⟩
    else if d = (-2 : ℤ) then ⟨0, 21⟩
    else if d = (-1 : ℤ) then ⟨0, 21⟩
    else if d = (0 : ℤ) then ⟨0, 21⟩
    else if d = (6 : ℤ) then ⟨0, 21⟩
    else if d = (7 : ℤ) then ⟨0, 21⟩
    else if d = (8 : ℤ) then ⟨0, 21⟩
    else if d = (9 : ℤ) then ⟨0, 21⟩
    else ⟨0, 22⟩

def cellA12B3 : CellData where
  inverse := 10
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 21⟩
    else if d = (-6 : ℤ) then ⟨0, 21⟩
    else if d = (-3 : ℤ) then ⟨0, 21⟩
    else if d = (0 : ℤ) then ⟨0, 21⟩
    else if d = (2 : ℤ) then ⟨0, 21⟩
    else if d = (5 : ℤ) then ⟨0, 21⟩
    else if d = (8 : ℤ) then ⟨0, 21⟩
    else if d = (10 : ℤ) then ⟨0, 21⟩
    else ⟨0, 22⟩

def cellA12B4 : CellData where
  inverse := 37
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 21⟩
    else if d = (-7 : ℤ) then ⟨0, 21⟩
    else if d = (-5 : ℤ) then ⟨0, 21⟩
    else if d = (0 : ℤ) then ⟨0, 21⟩
    else if d = (2 : ℤ) then ⟨0, 21⟩
    else if d = (4 : ℤ) then ⟨0, 21⟩
    else if d = (6 : ℤ) then ⟨0, 21⟩
    else if d = (8 : ℤ) then ⟨0, 21⟩
    else ⟨0, 22⟩

def cellA12B5 : CellData where
  inverse := 118
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 21⟩
    else if d = (2 : ℤ) then ⟨0, 21⟩
    else if d = (4 : ℤ) then ⟨0, 21⟩
    else if d = (6 : ℤ) then ⟨0, 21⟩
    else if d = (8 : ℤ) then ⟨0, 21⟩
    else if d = (10 : ℤ) then ⟨0, 21⟩
    else ⟨0, 22⟩

def cellA12B6 : CellData where
  inverse := 118
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 21⟩
    else if d = (-7 : ℤ) then ⟨0, 21⟩
    else if d = (-2 : ℤ) then ⟨0, 21⟩
    else if d = (-1 : ℤ) then ⟨0, 21⟩
    else if d = (0 : ℤ) then ⟨0, 21⟩
    else if d = (4 : ℤ) then ⟨0, 21⟩
    else if d = (5 : ℤ) then ⟨0, 21⟩
    else if d = (6 : ℤ) then ⟨0, 21⟩
    else ⟨0, 22⟩

def cellA12B7 : CellData where
  inverse := 118
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 21⟩
    else if d = (-5 : ℤ) then ⟨0, 21⟩
    else if d = (-4 : ℤ) then ⟨0, 21⟩
    else if d = (-3 : ℤ) then ⟨0, 21⟩
    else if d = (-2 : ℤ) then ⟨0, 21⟩
    else if d = (-1 : ℤ) then ⟨0, 21⟩
    else if d = (0 : ℤ) then ⟨0, 21⟩
    else ⟨0, 22⟩

def cellA12B8 : CellData where
  inverse := 2305
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨0, 14⟩
    else if d = (6 : ℤ) then ⟨0, 14⟩
    else ⟨0, 13⟩

def cellA12B9 : CellData where
  inverse := 8866
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 3⟩
    else if d = (-7 : ℤ) then ⟨0, 3⟩
    else if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (2 : ℤ) then ⟨0, 3⟩
    else if d = (4 : ℤ) then ⟨0, 3⟩
    else ⟨0, 4⟩

def cellA12B10 : CellData where
  inverse := 8866
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA12B11 : CellData where
  inverse := 8866
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-8 : ℤ) then ⟨0, -1⟩
    else if d = (-7 : ℤ) then ⟨0, -1⟩
    else if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (-3 : ℤ) then ⟨0, -1⟩
    else if d = (-2 : ℤ) then ⟨0, -1⟩
    else if d = (-1 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA12B12 : CellData where
  inverse := 363160
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA12B13 : CellData where
  inverse := 363160
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA12B25 : CellData where
  inverse := 368413333354
  bounds := fun _ => ⟨0, -1⟩

def cellA12B26 : CellData where
  inverse := 1215701942797
  bounds := fun _ => ⟨0, -1⟩

def cellA12B27 : CellData where
  inverse := 1215701942797
  bounds := fun _ => ⟨0, -1⟩

def cellA12B28 : CellData where
  inverse := 8841299427784
  bounds := fun _ => ⟨0, -1⟩

def cellA12B29 : CellData where
  inverse := 31718091882745
  bounds := fun _ => ⟨0, -1⟩

def cellA12B30 : CellData where
  inverse := 31718091882745
  bounds := fun _ => ⟨0, -1⟩

def cellA12B31 : CellData where
  inverse := 443500356072043
  bounds := fun _ => ⟨0, -1⟩

def cellA12B32 : CellData where
  inverse := 1678847148639937
  bounds := fun _ => ⟨0, -1⟩

def cellA12B33 : CellData where
  inverse := 1678847148639937
  bounds := fun _ => ⟨0, -1⟩

def cellA12B34 : CellData where
  inverse := 12796968281750983
  bounds := fun _ => ⟨0, -1⟩

def cellA12B35 : CellData where
  inverse := 29474149981417552
  bounds := fun _ => ⟨0, -1⟩

def cellA12B36 : CellData where
  inverse := 129537240179416966
  bounds := fun _ => ⟨0, -1⟩

def cellA12B37 : CellData where
  inverse := 429726510773415208
  bounds := fun _ => ⟨0, -1⟩

def cellA12B38 : CellData where
  inverse := 429726510773415208
  bounds := fun _ => ⟨0, -1⟩

def cellA13B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, 10⟩

def cellA13B2 : CellData where
  inverse := 5
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 11⟩
    else if d = (-5 : ℤ) then ⟨0, 11⟩
    else if d = (2 : ℤ) then ⟨0, 11⟩
    else if d = (4 : ℤ) then ⟨0, 11⟩
    else ⟨0, 10⟩

def cellA13B3 : CellData where
  inverse := 5
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 11⟩
    else if d = (-5 : ℤ) then ⟨0, 11⟩
    else if d = (-4 : ℤ) then ⟨0, 11⟩
    else if d = (1 : ℤ) then ⟨0, 11⟩
    else if d = (6 : ℤ) then ⟨0, 11⟩
    else if d = (7 : ℤ) then ⟨0, 11⟩
    else ⟨0, 10⟩

def cellA13B4 : CellData where
  inverse := 59
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 11⟩
    else if d = (-4 : ℤ) then ⟨0, 11⟩
    else if d = (-1 : ℤ) then ⟨0, 11⟩
    else if d = (3 : ℤ) then ⟨0, 11⟩
    else if d = (7 : ℤ) then ⟨0, 11⟩
    else if d = (10 : ℤ) then ⟨0, 11⟩
    else ⟨0, 10⟩

def cellA13B5 : CellData where
  inverse := 59
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 11⟩
    else if d = (-7 : ℤ) then ⟨0, 11⟩
    else if d = (-4 : ℤ) then ⟨0, 11⟩
    else if d = (-3 : ℤ) then ⟨0, 11⟩
    else if d = (1 : ℤ) then ⟨0, 11⟩
    else if d = (5 : ℤ) then ⟨0, 11⟩
    else if d = (9 : ℤ) then ⟨0, 11⟩
    else ⟨0, 10⟩

def cellA13B6 : CellData where
  inverse := 59
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 11⟩
    else if d = (-9 : ℤ) then ⟨0, 11⟩
    else if d = (1 : ℤ) then ⟨0, 11⟩
    else if d = (2 : ℤ) then ⟨0, 11⟩
    else if d = (3 : ℤ) then ⟨0, 11⟩
    else ⟨0, 10⟩

def cellA13B7 : CellData where
  inverse := 59
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 11⟩
    else if d = (2 : ℤ) then ⟨0, 11⟩
    else if d = (3 : ℤ) then ⟨0, 11⟩
    else if d = (4 : ℤ) then ⟨0, 11⟩
    else if d = (5 : ℤ) then ⟨0, 11⟩
    else if d = (6 : ℤ) then ⟨0, 11⟩
    else if d = (7 : ℤ) then ⟨0, 11⟩
    else if d = (8 : ℤ) then ⟨0, 11⟩
    else if d = (9 : ℤ) then ⟨0, 11⟩
    else if d = (10 : ℤ) then ⟨0, 11⟩
    else ⟨0, 10⟩

def cellA13B8 : CellData where
  inverse := 4433
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 11⟩
    else if d = (-7 : ℤ) then ⟨0, 11⟩
    else if d = (-4 : ℤ) then ⟨0, 11⟩
    else if d = (3 : ℤ) then ⟨0, 11⟩
    else if d = (6 : ℤ) then ⟨0, 11⟩
    else if d = (9 : ℤ) then ⟨0, 11⟩
    else ⟨0, 10⟩

def cellA13B9 : CellData where
  inverse := 4433
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3⟩
    else if d = (-9 : ℤ) then ⟨0, 3⟩
    else if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (-1 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (4 : ℤ) then ⟨0, 3⟩
    else if d = (8 : ℤ) then ⟨0, 3⟩
    else ⟨0, 4⟩

def cellA13B10 : CellData where
  inverse := 4433
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA13B11 : CellData where
  inverse := 4433
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

def cellA13B12 : CellData where
  inverse := 181580
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B13 : CellData where
  inverse := 181580
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA13B25 : CellData where
  inverse := 184206666677
  bounds := fun _ => ⟨0, -1⟩

def cellA13B26 : CellData where
  inverse := 1878783885563
  bounds := fun _ => ⟨0, -1⟩

def cellA13B27 : CellData where
  inverse := 4420649713892
  bounds := fun _ => ⟨0, -1⟩

def cellA13B28 : CellData where
  inverse := 4420649713892
  bounds := fun _ => ⟨0, -1⟩

def cellA13B29 : CellData where
  inverse := 50174234623814
  bounds := fun _ => ⟨0, -1⟩

def cellA13B30 : CellData where
  inverse := 118804611988697
  bounds := fun _ => ⟨0, -1⟩

def cellA13B31 : CellData where
  inverse := 530586876177995
  bounds := fun _ => ⟨0, -1⟩

def cellA13B32 : CellData where
  inverse := 1765933668745889
  bounds := fun _ => ⟨0, -1⟩

def cellA13B33 : CellData where
  inverse := 3618953857597730
  bounds := fun _ => ⟨0, -1⟩

def cellA13B34 : CellData where
  inverse := 14737074990708776
  bounds := fun _ => ⟨0, -1⟩

def cellA13B35 : CellData where
  inverse := 14737074990708776
  bounds := fun _ => ⟨0, -1⟩

def cellA13B36 : CellData where
  inverse := 64768620089708483
  bounds := fun _ => ⟨0, -1⟩

def cellA13B37 : CellData where
  inverse := 214863255386707604
  bounds := fun _ => ⟨0, -1⟩

def cellA13B38 : CellData where
  inverse := 214863255386707604
  bounds := fun _ => ⟨0, -1⟩

def cellA14B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 5⟩
    else if d = (-5 : ℤ) then ⟨0, 5⟩
    else if d = (-2 : ℤ) then ⟨0, 5⟩
    else if d = (1 : ℤ) then ⟨0, 5⟩
    else if d = (4 : ℤ) then ⟨0, 5⟩
    else if d = (7 : ℤ) then ⟨0, 5⟩
    else if d = (10 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA14B2 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-8 : ℤ) then ⟨0, 4⟩
    else if d = (-4 : ℤ) then ⟨0, 4⟩
    else if d = (-3 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (1 : ℤ) then ⟨0, 4⟩
    else if d = (5 : ℤ) then ⟨0, 4⟩
    else if d = (6 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨0, 4⟩
    else if d = (10 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA14B3 : CellData where
  inverse := 16
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-7 : ℤ) then ⟨0, 4⟩
    else if d = (-2 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨0, 4⟩
    else if d = (5 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨0, 4⟩
    else if d = (10 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA14B4 : CellData where
  inverse := 70
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 4⟩
    else if d = (-6 : ℤ) then ⟨0, 4⟩
    else if d = (-5 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (1 : ℤ) then ⟨0, 4⟩
    else if d = (2 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA14B5 : CellData where
  inverse := 151
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4⟩
    else if d = (-5 : ℤ) then ⟨0, 4⟩
    else if d = (-2 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨0, 4⟩
    else if d = (6 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA14B6 : CellData where
  inverse := 394
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 4⟩
    else if d = (-6 : ℤ) then ⟨0, 4⟩
    else if d = (-4 : ℤ) then ⟨0, 4⟩
    else if d = (-2 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (5 : ℤ) then ⟨0, 4⟩
    else if d = (7 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA14B7 : CellData where
  inverse := 1123
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4⟩
    else if d = (-8 : ℤ) then ⟨0, 4⟩
    else if d = (-6 : ℤ) then ⟨0, 4⟩
    else if d = (-4 : ℤ) then ⟨0, 4⟩
    else if d = (-2 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA14B8 : CellData where
  inverse := 5497
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 4⟩
    else if d = (-5 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (1 : ℤ) then ⟨0, 4⟩
    else if d = (2 : ℤ) then ⟨0, 4⟩
    else if d = (7 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA14B9 : CellData where
  inverse := 12058
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3⟩
    else if d = (-7 : ℤ) then ⟨0, 3⟩
    else if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (-2 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (3 : ℤ) then ⟨0, 3⟩
    else if d = (8 : ℤ) then ⟨0, 3⟩
    else ⟨0, 4⟩

def cellA14B10 : CellData where
  inverse := 31741
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA14B11 : CellData where
  inverse := 90790
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-8 : ℤ) then ⟨0, -1⟩
    else if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (-2 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨0, -1⟩
    else if d = (7 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA14B12 : CellData where
  inverse := 90790
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B13 : CellData where
  inverse := 90790
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B14 : CellData where
  inverse := 90790
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA14B25 : CellData where
  inverse := 515747638060
  bounds := fun _ => ⟨0, -1⟩

def cellA14B26 : CellData where
  inverse := 2210324856946
  bounds := fun _ => ⟨0, -1⟩

def cellA14B27 : CellData where
  inverse := 2210324856946
  bounds := fun _ => ⟨0, -1⟩

def cellA14B28 : CellData where
  inverse := 2210324856946
  bounds := fun _ => ⟨0, -1⟩

def cellA14B29 : CellData where
  inverse := 25087117311907
  bounds := fun _ => ⟨0, -1⟩

def cellA14B30 : CellData where
  inverse := 162347872041673
  bounds := fun _ => ⟨0, -1⟩

def cellA14B31 : CellData where
  inverse := 574130136230971
  bounds := fun _ => ⟨0, -1⟩

def cellA14B32 : CellData where
  inverse := 1809476928798865
  bounds := fun _ => ⟨0, -1⟩

def cellA14B33 : CellData where
  inverse := 1809476928798865
  bounds := fun _ => ⟨0, -1⟩

def cellA14B34 : CellData where
  inverse := 7368537495354388
  bounds := fun _ => ⟨0, -1⟩

def cellA14B35 : CellData where
  inverse := 7368537495354388
  bounds := fun _ => ⟨0, -1⟩

def cellA14B36 : CellData where
  inverse := 107431627693353802
  bounds := fun _ => ⟨0, -1⟩

def cellA14B37 : CellData where
  inverse := 107431627693353802
  bounds := fun _ => ⟨0, -1⟩

def cellA14B38 : CellData where
  inverse := 107431627693353802
  bounds := fun _ => ⟨0, -1⟩

def cellA15B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B2 : CellData where
  inverse := 8
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (1 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B3 : CellData where
  inverse := 8
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B4 : CellData where
  inverse := 35
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B5 : CellData where
  inverse := 197
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B6 : CellData where
  inverse := 197
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B7 : CellData where
  inverse := 1655
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B8 : CellData where
  inverse := 6029
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (1 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B9 : CellData where
  inverse := 6029
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B10 : CellData where
  inverse := 45395
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA15B11 : CellData where
  inverse := 45395
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-8 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (-1 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (7 : ℤ) then ⟨0, -1⟩
    else if d = (10 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA15B12 : CellData where
  inverse := 45395
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B13 : CellData where
  inverse := 45395
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B14 : CellData where
  inverse := 45395
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA15B25 : CellData where
  inverse := 257873819030
  bounds := fun _ => ⟨0, -1⟩

def cellA15B26 : CellData where
  inverse := 1105162428473
  bounds := fun _ => ⟨0, -1⟩

def cellA15B27 : CellData where
  inverse := 1105162428473
  bounds := fun _ => ⟨0, -1⟩

def cellA15B28 : CellData where
  inverse := 1105162428473
  bounds := fun _ => ⟨0, -1⟩

def cellA15B29 : CellData where
  inverse := 46858747338395
  bounds := fun _ => ⟨0, -1⟩

def cellA15B30 : CellData where
  inverse := 184119502068161
  bounds := fun _ => ⟨0, -1⟩

def cellA15B31 : CellData where
  inverse := 595901766257459
  bounds := fun _ => ⟨0, -1⟩

def cellA15B32 : CellData where
  inverse := 1831248558825353
  bounds := fun _ => ⟨0, -1⟩

def cellA15B33 : CellData where
  inverse := 3684268747677194
  bounds := fun _ => ⟨0, -1⟩

def cellA15B34 : CellData where
  inverse := 3684268747677194
  bounds := fun _ => ⟨0, -1⟩

def cellA15B35 : CellData where
  inverse := 3684268747677194
  bounds := fun _ => ⟨0, -1⟩

def cellA15B36 : CellData where
  inverse := 53715813846676901
  bounds := fun _ => ⟨0, -1⟩

def cellA15B37 : CellData where
  inverse := 53715813846676901
  bounds := fun _ => ⟨0, -1⟩

def cellA15B38 : CellData where
  inverse := 53715813846676901
  bounds := fun _ => ⟨0, -1⟩

def cellA16B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (1 : ℤ) then ⟨0, 1⟩
    else if d = (4 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B2 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B3 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (1 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B4 : CellData where
  inverse := 58
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B5 : CellData where
  inverse := 220
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B6 : CellData where
  inverse := 463
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B7 : CellData where
  inverse := 1921
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B8 : CellData where
  inverse := 6295
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

def cellA16B9 : CellData where
  inverse := 12856
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

def cellA16B10 : CellData where
  inverse := 52222
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B11 : CellData where
  inverse := 111271
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-8 : ℤ) then ⟨0, -1⟩
    else if d = (-7 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (-2 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA16B12 : CellData where
  inverse := 288418
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA16B13 : CellData where
  inverse := 819859
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA16B14 : CellData where
  inverse := 2414182
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA16B25 : CellData where
  inverse := 128936909515
  bounds := fun _ => ⟨0, -1⟩

def cellA16B26 : CellData where
  inverse := 1823514128401
  bounds := fun _ => ⟨0, -1⟩

def cellA16B27 : CellData where
  inverse := 4365379956730
  bounds := fun _ => ⟨0, -1⟩

def cellA16B28 : CellData where
  inverse := 11990977441717
  bounds := fun _ => ⟨0, -1⟩

def cellA16B29 : CellData where
  inverse := 57744562351639
  bounds := fun _ => ⟨0, -1⟩

def cellA16B30 : CellData where
  inverse := 195005317081405
  bounds := fun _ => ⟨0, -1⟩

def cellA16B31 : CellData where
  inverse := 606787581270703
  bounds := fun _ => ⟨0, -1⟩

def cellA16B32 : CellData where
  inverse := 1842134373838597
  bounds := fun _ => ⟨0, -1⟩

def cellA16B33 : CellData where
  inverse := 1842134373838597
  bounds := fun _ => ⟨0, -1⟩

def cellA16B34 : CellData where
  inverse := 1842134373838597
  bounds := fun _ => ⟨0, -1⟩

def cellA16B35 : CellData where
  inverse := 1842134373838597
  bounds := fun _ => ⟨0, -1⟩

def cellA16B36 : CellData where
  inverse := 101905224571838011
  bounds := fun _ => ⟨0, -1⟩

def cellA16B37 : CellData where
  inverse := 251999859868837132
  bounds := fun _ => ⟨0, -1⟩

def cellA16B38 : CellData where
  inverse := 702283765759834495
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
  else if b = 25 then cellA9B25
  else if b = 26 then cellA9B26
  else if b = 27 then cellA9B27
  else if b = 28 then cellA9B28
  else if b = 29 then cellA9B29
  else if b = 30 then cellA9B30
  else if b = 31 then cellA9B31
  else if b = 32 then cellA9B32
  else if b = 33 then cellA9B33
  else if b = 34 then cellA9B34
  else if b = 35 then cellA9B35
  else if b = 36 then cellA9B36
  else if b = 37 then cellA9B37
  else if b = 38 then cellA9B38
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
  else if b = 25 then cellA10B25
  else if b = 26 then cellA10B26
  else if b = 27 then cellA10B27
  else if b = 28 then cellA10B28
  else if b = 29 then cellA10B29
  else if b = 30 then cellA10B30
  else if b = 31 then cellA10B31
  else if b = 32 then cellA10B32
  else if b = 33 then cellA10B33
  else if b = 34 then cellA10B34
  else if b = 35 then cellA10B35
  else if b = 36 then cellA10B36
  else if b = 37 then cellA10B37
  else if b = 38 then cellA10B38
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
  else if b = 25 then cellA11B25
  else if b = 26 then cellA11B26
  else if b = 27 then cellA11B27
  else if b = 28 then cellA11B28
  else if b = 29 then cellA11B29
  else if b = 30 then cellA11B30
  else if b = 31 then cellA11B31
  else if b = 32 then cellA11B32
  else if b = 33 then cellA11B33
  else if b = 34 then cellA11B34
  else if b = 35 then cellA11B35
  else if b = 36 then cellA11B36
  else if b = 37 then cellA11B37
  else if b = 38 then cellA11B38
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
  else if b = 25 then cellA12B25
  else if b = 26 then cellA12B26
  else if b = 27 then cellA12B27
  else if b = 28 then cellA12B28
  else if b = 29 then cellA12B29
  else if b = 30 then cellA12B30
  else if b = 31 then cellA12B31
  else if b = 32 then cellA12B32
  else if b = 33 then cellA12B33
  else if b = 34 then cellA12B34
  else if b = 35 then cellA12B35
  else if b = 36 then cellA12B36
  else if b = 37 then cellA12B37
  else if b = 38 then cellA12B38
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
  else if b = 25 then cellA13B25
  else if b = 26 then cellA13B26
  else if b = 27 then cellA13B27
  else if b = 28 then cellA13B28
  else if b = 29 then cellA13B29
  else if b = 30 then cellA13B30
  else if b = 31 then cellA13B31
  else if b = 32 then cellA13B32
  else if b = 33 then cellA13B33
  else if b = 34 then cellA13B34
  else if b = 35 then cellA13B35
  else if b = 36 then cellA13B36
  else if b = 37 then cellA13B37
  else if b = 38 then cellA13B38
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
  else if b = 25 then cellA14B25
  else if b = 26 then cellA14B26
  else if b = 27 then cellA14B27
  else if b = 28 then cellA14B28
  else if b = 29 then cellA14B29
  else if b = 30 then cellA14B30
  else if b = 31 then cellA14B31
  else if b = 32 then cellA14B32
  else if b = 33 then cellA14B33
  else if b = 34 then cellA14B34
  else if b = 35 then cellA14B35
  else if b = 36 then cellA14B36
  else if b = 37 then cellA14B37
  else if b = 38 then cellA14B38
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
  else if b = 25 then cellA15B25
  else if b = 26 then cellA15B26
  else if b = 27 then cellA15B27
  else if b = 28 then cellA15B28
  else if b = 29 then cellA15B29
  else if b = 30 then cellA15B30
  else if b = 31 then cellA15B31
  else if b = 32 then cellA15B32
  else if b = 33 then cellA15B33
  else if b = 34 then cellA15B34
  else if b = 35 then cellA15B35
  else if b = 36 then cellA15B36
  else if b = 37 then cellA15B37
  else if b = 38 then cellA15B38
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
  else if b = 25 then cellA16B25
  else if b = 26 then cellA16B26
  else if b = 27 then cellA16B27
  else if b = 28 then cellA16B28
  else if b = 29 then cellA16B29
  else if b = 30 then cellA16B30
  else if b = 31 then cellA16B31
  else if b = 32 then cellA16B32
  else if b = 33 then cellA16B33
  else if b = 34 then cellA16B34
  else if b = 35 then cellA16B35
  else if b = 36 then cellA16B36
  else if b = 37 then cellA16B37
  else if b = 38 then cellA16B38
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

end Math.B699.CRTStage1Pair23.Chunk001
