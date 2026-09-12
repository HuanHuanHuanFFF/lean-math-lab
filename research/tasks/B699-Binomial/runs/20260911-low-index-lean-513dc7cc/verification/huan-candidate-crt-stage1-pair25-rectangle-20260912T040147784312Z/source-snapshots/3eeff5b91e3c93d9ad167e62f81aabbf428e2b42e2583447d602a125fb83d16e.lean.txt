import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage1Pair25.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA9B1 : CellData where
  inverse := 3
  bounds := fun _ => ⟨0, 180⟩

def cellA9B2 : CellData where
  inverse := 23
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 181⟩
    else ⟨0, 180⟩

def cellA9B3 : CellData where
  inverse := 73
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 181⟩
    else if d = (7 : ℤ) then ⟨0, 181⟩
    else ⟨0, 180⟩

def cellA9B4 : CellData where
  inverse := 448
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 148⟩
    else if d = (-4 : ℤ) then ⟨0, 148⟩
    else if d = (-1 : ℤ) then ⟨0, 148⟩
    else if d = (3 : ℤ) then ⟨0, 148⟩
    else if d = (6 : ℤ) then ⟨0, 148⟩
    else if d = (7 : ℤ) then ⟨0, 148⟩
    else if d = (10 : ℤ) then ⟨0, 148⟩
    else ⟨0, 147⟩

def cellA9B5 : CellData where
  inverse := 2948
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (1 : ℤ) then ⟨0, 28⟩
    else if d = (2 : ℤ) then ⟨0, 28⟩
    else if d = (3 : ℤ) then ⟨0, 28⟩
    else if d = (4 : ℤ) then ⟨0, 28⟩
    else if d = (5 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA9B6 : CellData where
  inverse := 6073
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (5 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA9B7 : CellData where
  inverse := 52948
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA9B8 : CellData where
  inverse := 365448
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA9B9 : CellData where
  inverse := 1537323
  bounds := fun _ => ⟨0, -1⟩

def cellA9B10 : CellData where
  inverse := 3490448
  bounds := fun _ => ⟨0, -1⟩

def cellA9B11 : CellData where
  inverse := 13256073
  bounds := fun _ => ⟨0, -1⟩

def cellA9B12 : CellData where
  inverse := 159740448
  bounds := fun _ => ⟨0, -1⟩

def cellA9B13 : CellData where
  inverse := 159740448
  bounds := fun _ => ⟨0, -1⟩

def cellA9B14 : CellData where
  inverse := 5042552948
  bounds := fun _ => ⟨0, -1⟩

def cellA9B15 : CellData where
  inverse := 11146068573
  bounds := fun _ => ⟨0, -1⟩

def cellA9B16 : CellData where
  inverse := 133216381073
  bounds := fun _ => ⟨0, -1⟩

def cellA9B17 : CellData where
  inverse := 743567943573
  bounds := fun _ => ⟨0, -1⟩

def cellA9B18 : CellData where
  inverse := 3032386302948
  bounds := fun _ => ⟨0, -1⟩

def cellA9B19 : CellData where
  inverse := 18291175365448
  bounds := fun _ => ⟨0, -1⟩

def cellA9B20 : CellData where
  inverse := 56438148021698
  bounds := fun _ => ⟨0, -1⟩

def cellA9B21 : CellData where
  inverse := 151805579662323
  bounds := fun _ => ⟨0, -1⟩

def cellA9B22 : CellData where
  inverse := 628642737865448
  bounds := fun _ => ⟨0, -1⟩

def cellA9B23 : CellData where
  inverse := 628642737865448
  bounds := fun _ => ⟨0, -1⟩

def cellA9B24 : CellData where
  inverse := 48312358558177948
  bounds := fun _ => ⟨0, -1⟩

def cellA9B25 : CellData where
  inverse := 48312358558177948
  bounds := fun _ => ⟨0, -1⟩

def cellA10B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 90⟩
    else if d = (-6 : ℤ) then ⟨0, 90⟩
    else if d = (-2 : ℤ) then ⟨0, 90⟩
    else if d = (-1 : ℤ) then ⟨0, 90⟩
    else if d = (3 : ℤ) then ⟨0, 90⟩
    else if d = (4 : ℤ) then ⟨0, 90⟩
    else if d = (8 : ℤ) then ⟨0, 90⟩
    else if d = (9 : ℤ) then ⟨0, 90⟩
    else ⟨0, 89⟩

def cellA10B2 : CellData where
  inverse := 24
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 90⟩
    else if d = (-9 : ℤ) then ⟨0, 90⟩
    else if d = (-8 : ℤ) then ⟨0, 90⟩
    else if d = (-7 : ℤ) then ⟨0, 90⟩
    else if d = (-6 : ℤ) then ⟨0, 90⟩
    else if d = (-5 : ℤ) then ⟨0, 90⟩
    else if d = (-4 : ℤ) then ⟨0, 90⟩
    else if d = (-3 : ℤ) then ⟨0, 90⟩
    else if d = (-2 : ℤ) then ⟨0, 90⟩
    else if d = (-1 : ℤ) then ⟨0, 90⟩
    else ⟨0, 89⟩

def cellA10B3 : CellData where
  inverse := 99
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 89⟩
    else if d = (-8 : ℤ) then ⟨0, 89⟩
    else if d = (-4 : ℤ) then ⟨0, 89⟩
    else if d = (-3 : ℤ) then ⟨0, 89⟩
    else if d = (0 : ℤ) then ⟨0, 89⟩
    else if d = (1 : ℤ) then ⟨0, 89⟩
    else if d = (2 : ℤ) then ⟨0, 89⟩
    else if d = (5 : ℤ) then ⟨0, 89⟩
    else if d = (6 : ℤ) then ⟨0, 89⟩
    else if d = (10 : ℤ) then ⟨0, 89⟩
    else ⟨0, 90⟩

def cellA10B4 : CellData where
  inverse := 224
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 89⟩
    else if d = (-6 : ℤ) then ⟨0, 89⟩
    else if d = (-4 : ℤ) then ⟨0, 89⟩
    else if d = (-3 : ℤ) then ⟨0, 89⟩
    else if d = (-1 : ℤ) then ⟨0, 89⟩
    else if d = (0 : ℤ) then ⟨0, 89⟩
    else if d = (2 : ℤ) then ⟨0, 89⟩
    else if d = (5 : ℤ) then ⟨0, 89⟩
    else if d = (8 : ℤ) then ⟨0, 89⟩
    else if d = (10 : ℤ) then ⟨0, 89⟩
    else ⟨0, 90⟩

def cellA10B5 : CellData where
  inverse := 1474
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 28⟩
    else if d = (-7 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (2 : ℤ) then ⟨0, 28⟩
    else if d = (4 : ℤ) then ⟨0, 28⟩
    else if d = (6 : ℤ) then ⟨0, 28⟩
    else if d = (8 : ℤ) then ⟨0, 28⟩
    else if d = (10 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA10B6 : CellData where
  inverse := 10849
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (10 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA10B7 : CellData where
  inverse := 26474
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA10B8 : CellData where
  inverse := 182724
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA10B9 : CellData where
  inverse := 1745224
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA10B10 : CellData where
  inverse := 1745224
  bounds := fun _ => ⟨0, -1⟩

def cellA10B11 : CellData where
  inverse := 31042099
  bounds := fun _ => ⟨0, -1⟩

def cellA10B12 : CellData where
  inverse := 79870224
  bounds := fun _ => ⟨0, -1⟩

def cellA10B13 : CellData where
  inverse := 79870224
  bounds := fun _ => ⟨0, -1⟩

def cellA10B14 : CellData where
  inverse := 2521276474
  bounds := fun _ => ⟨0, -1⟩

def cellA10B15 : CellData where
  inverse := 20831823349
  bounds := fun _ => ⟨0, -1⟩

def cellA10B16 : CellData where
  inverse := 142902135849
  bounds := fun _ => ⟨0, -1⟩

def cellA10B17 : CellData where
  inverse := 753253698349
  bounds := fun _ => ⟨0, -1⟩

def cellA10B18 : CellData where
  inverse := 1516193151474
  bounds := fun _ => ⟨0, -1⟩

def cellA10B19 : CellData where
  inverse := 9145587682724
  bounds := fun _ => ⟨0, -1⟩

def cellA10B20 : CellData where
  inverse := 28219074010849
  bounds := fun _ => ⟨0, -1⟩

def cellA10B21 : CellData where
  inverse := 314321368932724
  bounds := fun _ => ⟨0, -1⟩

def cellA10B22 : CellData where
  inverse := 314321368932724
  bounds := fun _ => ⟨0, -1⟩

def cellA10B23 : CellData where
  inverse := 314321368932724
  bounds := fun _ => ⟨0, -1⟩

def cellA10B24 : CellData where
  inverse := 24156179279088974
  bounds := fun _ => ⟨0, -1⟩

def cellA10B25 : CellData where
  inverse := 24156179279088974
  bounds := fun _ => ⟨0, -1⟩

def cellA11B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 45⟩
    else if d = (-2 : ℤ) then ⟨0, 45⟩
    else if d = (3 : ℤ) then ⟨0, 45⟩
    else if d = (8 : ℤ) then ⟨0, 45⟩
    else ⟨0, 44⟩

def cellA11B2 : CellData where
  inverse := 12
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 45⟩
    else if d = (-8 : ℤ) then ⟨0, 45⟩
    else if d = (-6 : ℤ) then ⟨0, 45⟩
    else if d = (-4 : ℤ) then ⟨0, 45⟩
    else if d = (-2 : ℤ) then ⟨0, 45⟩
    else ⟨0, 44⟩

def cellA11B3 : CellData where
  inverse := 112
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 45⟩
    else if d = (-2 : ℤ) then ⟨0, 45⟩
    else if d = (-1 : ℤ) then ⟨0, 45⟩
    else if d = (7 : ℤ) then ⟨0, 45⟩
    else if d = (8 : ℤ) then ⟨0, 45⟩
    else if d = (9 : ℤ) then ⟨0, 45⟩
    else ⟨0, 44⟩

def cellA11B4 : CellData where
  inverse := 112
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 45⟩
    else if d = (-5 : ℤ) then ⟨0, 45⟩
    else if d = (1 : ℤ) then ⟨0, 45⟩
    else if d = (6 : ℤ) then ⟨0, 45⟩
    else if d = (7 : ℤ) then ⟨0, 45⟩
    else ⟨0, 44⟩

def cellA11B5 : CellData where
  inverse := 737
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 28⟩
    else if d = (-5 : ℤ) then ⟨0, 28⟩
    else if d = (-1 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (3 : ℤ) then ⟨0, 28⟩
    else if d = (4 : ℤ) then ⟨0, 28⟩
    else if d = (8 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA11B6 : CellData where
  inverse := 13237
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA11B7 : CellData where
  inverse := 13237
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (1 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA11B8 : CellData where
  inverse := 91362
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA11B9 : CellData where
  inverse := 872612
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA11B10 : CellData where
  inverse := 872612
  bounds := fun _ => ⟨0, -1⟩

def cellA11B11 : CellData where
  inverse := 39935112
  bounds := fun _ => ⟨0, -1⟩

def cellA11B12 : CellData where
  inverse := 39935112
  bounds := fun _ => ⟨0, -1⟩

def cellA11B13 : CellData where
  inverse := 39935112
  bounds := fun _ => ⟨0, -1⟩

def cellA11B14 : CellData where
  inverse := 1260638237
  bounds := fun _ => ⟨0, -1⟩

def cellA11B15 : CellData where
  inverse := 25674700737
  bounds := fun _ => ⟨0, -1⟩

def cellA11B16 : CellData where
  inverse := 147745013237
  bounds := fun _ => ⟨0, -1⟩

def cellA11B17 : CellData where
  inverse := 758096575737
  bounds := fun _ => ⟨0, -1⟩

def cellA11B18 : CellData where
  inverse := 758096575737
  bounds := fun _ => ⟨0, -1⟩

def cellA11B19 : CellData where
  inverse := 4572793841362
  bounds := fun _ => ⟨0, -1⟩

def cellA11B20 : CellData where
  inverse := 61793252825737
  bounds := fun _ => ⟨0, -1⟩

def cellA11B21 : CellData where
  inverse := 157160684466362
  bounds := fun _ => ⟨0, -1⟩

def cellA11B22 : CellData where
  inverse := 157160684466362
  bounds := fun _ => ⟨0, -1⟩

def cellA11B23 : CellData where
  inverse := 157160684466362
  bounds := fun _ => ⟨0, -1⟩

def cellA11B24 : CellData where
  inverse := 12078089639544487
  bounds := fun _ => ⟨0, -1⟩

def cellA11B25 : CellData where
  inverse := 12078089639544487
  bounds := fun _ => ⟨0, -1⟩

def cellA12B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 21⟩
    else if d = (-6 : ℤ) then ⟨0, 21⟩
    else if d = (-5 : ℤ) then ⟨0, 21⟩
    else if d = (-1 : ℤ) then ⟨0, 21⟩
    else if d = (0 : ℤ) then ⟨0, 21⟩
    else if d = (4 : ℤ) then ⟨0, 21⟩
    else if d = (5 : ℤ) then ⟨0, 21⟩
    else if d = (9 : ℤ) then ⟨0, 21⟩
    else if d = (10 : ℤ) then ⟨0, 21⟩
    else ⟨0, 22⟩

def cellA12B2 : CellData where
  inverse := 6
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 21⟩
    else if d = (-5 : ℤ) then ⟨0, 21⟩
    else if d = (-1 : ℤ) then ⟨0, 21⟩
    else if d = (0 : ℤ) then ⟨0, 21⟩
    else if d = (3 : ℤ) then ⟨0, 21⟩
    else if d = (4 : ℤ) then ⟨0, 21⟩
    else if d = (7 : ℤ) then ⟨0, 21⟩
    else if d = (8 : ℤ) then ⟨0, 21⟩
    else ⟨0, 22⟩

def cellA12B3 : CellData where
  inverse := 56
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

def cellA12B4 : CellData where
  inverse := 56
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 21⟩
    else if d = (-3 : ℤ) then ⟨0, 21⟩
    else if d = (-2 : ℤ) then ⟨0, 21⟩
    else if d = (-1 : ℤ) then ⟨0, 21⟩
    else if d = (0 : ℤ) then ⟨0, 21⟩
    else if d = (8 : ℤ) then ⟨0, 21⟩
    else if d = (9 : ℤ) then ⟨0, 21⟩
    else if d = (10 : ℤ) then ⟨0, 21⟩
    else ⟨0, 22⟩

def cellA12B5 : CellData where
  inverse := 1931
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 21⟩
    else if d = (-7 : ℤ) then ⟨0, 21⟩
    else if d = (-5 : ℤ) then ⟨0, 21⟩
    else if d = (-2 : ℤ) then ⟨0, 21⟩
    else if d = (0 : ℤ) then ⟨0, 21⟩
    else if d = (3 : ℤ) then ⟨0, 21⟩
    else if d = (6 : ℤ) then ⟨0, 21⟩
    else if d = (8 : ℤ) then ⟨0, 21⟩
    else ⟨0, 22⟩

def cellA12B6 : CellData where
  inverse := 14431
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA12B7 : CellData where
  inverse := 45681
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA12B8 : CellData where
  inverse := 45681
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA12B9 : CellData where
  inverse := 436306
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA12B10 : CellData where
  inverse := 436306
  bounds := fun _ => ⟨0, -1⟩

def cellA12B11 : CellData where
  inverse := 19967556
  bounds := fun _ => ⟨0, -1⟩

def cellA12B12 : CellData where
  inverse := 19967556
  bounds := fun _ => ⟨0, -1⟩

def cellA12B13 : CellData where
  inverse := 19967556
  bounds := fun _ => ⟨0, -1⟩

def cellA12B14 : CellData where
  inverse := 3682076931
  bounds := fun _ => ⟨0, -1⟩

def cellA12B15 : CellData where
  inverse := 28096139431
  bounds := fun _ => ⟨0, -1⟩

def cellA12B16 : CellData where
  inverse := 150166451931
  bounds := fun _ => ⟨0, -1⟩

def cellA12B17 : CellData where
  inverse := 760518014431
  bounds := fun _ => ⟨0, -1⟩

def cellA12B18 : CellData where
  inverse := 2286396920681
  bounds := fun _ => ⟨0, -1⟩

def cellA12B19 : CellData where
  inverse := 2286396920681
  bounds := fun _ => ⟨0, -1⟩

def cellA12B20 : CellData where
  inverse := 78580342233181
  bounds := fun _ => ⟨0, -1⟩

def cellA12B21 : CellData where
  inverse := 78580342233181
  bounds := fun _ => ⟨0, -1⟩

def cellA12B22 : CellData where
  inverse := 78580342233181
  bounds := fun _ => ⟨0, -1⟩

def cellA12B23 : CellData where
  inverse := 78580342233181
  bounds := fun _ => ⟨0, -1⟩

def cellA12B24 : CellData where
  inverse := 35841367207467556
  bounds := fun _ => ⟨0, -1⟩

def cellA12B25 : CellData where
  inverse := 155050656758248806
  bounds := fun _ => ⟨0, -1⟩

def cellA13B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 11⟩
    else if d = (-3 : ℤ) then ⟨0, 11⟩
    else if d = (2 : ℤ) then ⟨0, 11⟩
    else if d = (7 : ℤ) then ⟨0, 11⟩
    else ⟨0, 10⟩

def cellA13B2 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 11⟩
    else if d = (-7 : ℤ) then ⟨0, 11⟩
    else if d = (-6 : ℤ) then ⟨0, 11⟩
    else if d = (1 : ℤ) then ⟨0, 11⟩
    else if d = (2 : ℤ) then ⟨0, 11⟩
    else if d = (9 : ℤ) then ⟨0, 11⟩
    else if d = (10 : ℤ) then ⟨0, 11⟩
    else ⟨0, 10⟩

def cellA13B3 : CellData where
  inverse := 28
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 11⟩
    else if d = (-4 : ℤ) then ⟨0, 11⟩
    else if d = (1 : ℤ) then ⟨0, 11⟩
    else if d = (5 : ℤ) then ⟨0, 11⟩
    else if d = (9 : ℤ) then ⟨0, 11⟩
    else if d = (10 : ℤ) then ⟨0, 11⟩
    else ⟨0, 10⟩

def cellA13B4 : CellData where
  inverse := 28
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 11⟩
    else if d = (2 : ℤ) then ⟨0, 11⟩
    else if d = (3 : ℤ) then ⟨0, 11⟩
    else if d = (4 : ℤ) then ⟨0, 11⟩
    else if d = (5 : ℤ) then ⟨0, 11⟩
    else if d = (6 : ℤ) then ⟨0, 11⟩
    else if d = (7 : ℤ) then ⟨0, 11⟩
    else ⟨0, 10⟩

def cellA13B5 : CellData where
  inverse := 2528
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 11⟩
    else if d = (-1 : ℤ) then ⟨0, 11⟩
    else if d = (4 : ℤ) then ⟨0, 11⟩
    else if d = (5 : ℤ) then ⟨0, 11⟩
    else if d = (9 : ℤ) then ⟨0, 11⟩
    else if d = (10 : ℤ) then ⟨0, 11⟩
    else ⟨0, 10⟩

def cellA13B6 : CellData where
  inverse := 15028
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (1 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA13B7 : CellData where
  inverse := 61903
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (4 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA13B8 : CellData where
  inverse := 218153
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B9 : CellData where
  inverse := 218153
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA13B10 : CellData where
  inverse := 218153
  bounds := fun _ => ⟨0, -1⟩

def cellA13B11 : CellData where
  inverse := 9983778
  bounds := fun _ => ⟨0, -1⟩

def cellA13B12 : CellData where
  inverse := 9983778
  bounds := fun _ => ⟨0, -1⟩

def cellA13B13 : CellData where
  inverse := 9983778
  bounds := fun _ => ⟨0, -1⟩

def cellA13B14 : CellData where
  inverse := 4892796278
  bounds := fun _ => ⟨0, -1⟩

def cellA13B15 : CellData where
  inverse := 29306858778
  bounds := fun _ => ⟨0, -1⟩

def cellA13B16 : CellData where
  inverse := 151377171278
  bounds := fun _ => ⟨0, -1⟩

def cellA13B17 : CellData where
  inverse := 761728733778
  bounds := fun _ => ⟨0, -1⟩

def cellA13B18 : CellData where
  inverse := 3050547093153
  bounds := fun _ => ⟨0, -1⟩

def cellA13B19 : CellData where
  inverse := 10679941624403
  bounds := fun _ => ⟨0, -1⟩

def cellA13B20 : CellData where
  inverse := 86973886936903
  bounds := fun _ => ⟨0, -1⟩

def cellA13B21 : CellData where
  inverse := 277708750218153
  bounds := fun _ => ⟨0, -1⟩

def cellA13B22 : CellData where
  inverse := 1231383066624403
  bounds := fun _ => ⟨0, -1⟩

def cellA13B23 : CellData where
  inverse := 5999754648655653
  bounds := fun _ => ⟨0, -1⟩

def cellA13B24 : CellData where
  inverse := 17920683603733778
  bounds := fun _ => ⟨0, -1⟩

def cellA13B25 : CellData where
  inverse := 77525328379124403
  bounds := fun _ => ⟨0, -1⟩

def cellA14B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4⟩
    else if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-5 : ℤ) then ⟨0, 4⟩
    else if d = (-4 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (1 : ℤ) then ⟨0, 4⟩
    else if d = (5 : ℤ) then ⟨0, 4⟩
    else if d = (6 : ℤ) then ⟨0, 4⟩
    else if d = (10 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA14B2 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-4 : ℤ) then ⟨0, 4⟩
    else if d = (-2 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨0, 4⟩
    else if d = (5 : ℤ) then ⟨0, 4⟩
    else if d = (7 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA14B3 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4⟩
    else if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-3 : ℤ) then ⟨0, 4⟩
    else if d = (-2 : ℤ) then ⟨0, 4⟩
    else if d = (-1 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (6 : ℤ) then ⟨0, 4⟩
    else if d = (7 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA14B4 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 5⟩
    else if d = (2 : ℤ) then ⟨0, 5⟩
    else if d = (3 : ℤ) then ⟨0, 5⟩
    else if d = (4 : ℤ) then ⟨0, 5⟩
    else if d = (5 : ℤ) then ⟨0, 5⟩
    else if d = (6 : ℤ) then ⟨0, 5⟩
    else if d = (7 : ℤ) then ⟨0, 5⟩
    else if d = (8 : ℤ) then ⟨0, 5⟩
    else if d = (9 : ℤ) then ⟨0, 5⟩
    else if d = (10 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA14B5 : CellData where
  inverse := 1264
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4⟩
    else if d = (-8 : ℤ) then ⟨0, 4⟩
    else if d = (-5 : ℤ) then ⟨0, 4⟩
    else if d = (-3 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (2 : ℤ) then ⟨0, 4⟩
    else if d = (7 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA14B6 : CellData where
  inverse := 7514
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (2 : ℤ) then ⟨0, 4⟩
    else if d = (4 : ℤ) then ⟨0, 4⟩
    else if d = (6 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨0, 4⟩
    else if d = (10 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA14B7 : CellData where
  inverse := 70014
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA14B8 : CellData where
  inverse := 304389
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B9 : CellData where
  inverse := 1085639
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA14B10 : CellData where
  inverse := 4991889
  bounds := fun _ => ⟨0, -1⟩

def cellA14B11 : CellData where
  inverse := 4991889
  bounds := fun _ => ⟨0, -1⟩

def cellA14B12 : CellData where
  inverse := 4991889
  bounds := fun _ => ⟨0, -1⟩

def cellA14B13 : CellData where
  inverse := 4991889
  bounds := fun _ => ⟨0, -1⟩

def cellA14B14 : CellData where
  inverse := 2446398139
  bounds := fun _ => ⟨0, -1⟩

def cellA14B15 : CellData where
  inverse := 14653429389
  bounds := fun _ => ⟨0, -1⟩

def cellA14B16 : CellData where
  inverse := 75688585639
  bounds := fun _ => ⟨0, -1⟩

def cellA14B17 : CellData where
  inverse := 380864366889
  bounds := fun _ => ⟨0, -1⟩

def cellA14B18 : CellData where
  inverse := 3432622179389
  bounds := fun _ => ⟨0, -1⟩

def cellA14B19 : CellData where
  inverse := 14876713976264
  bounds := fun _ => ⟨0, -1⟩

def cellA14B20 : CellData where
  inverse := 91170659288764
  bounds := fun _ => ⟨0, -1⟩

def cellA14B21 : CellData where
  inverse := 377272954210639
  bounds := fun _ => ⟨0, -1⟩

def cellA14B22 : CellData where
  inverse := 1807784428820014
  bounds := fun _ => ⟨0, -1⟩

def cellA14B23 : CellData where
  inverse := 8960341801866889
  bounds := fun _ => ⟨0, -1⟩

def cellA14B24 : CellData where
  inverse := 8960341801866889
  bounds := fun _ => ⟨0, -1⟩

def cellA14B25 : CellData where
  inverse := 187774276128038764
  bounds := fun _ => ⟨0, -1⟩

def cellA15B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B2 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B3 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B4 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (2 : ℤ) then ⟨0, 2⟩
    else if d = (3 : ℤ) then ⟨0, 2⟩
    else if d = (4 : ℤ) then ⟨0, 2⟩
    else if d = (5 : ℤ) then ⟨0, 2⟩
    else if d = (6 : ℤ) then ⟨0, 2⟩
    else if d = (7 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨0, 2⟩
    else if d = (9 : ℤ) then ⟨0, 2⟩
    else if d = (10 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA15B5 : CellData where
  inverse := 632
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B6 : CellData where
  inverse := 3757
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (4 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA15B7 : CellData where
  inverse := 35007
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA15B8 : CellData where
  inverse := 347507
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B9 : CellData where
  inverse := 1519382
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B10 : CellData where
  inverse := 7378757
  bounds := fun _ => ⟨0, -1⟩

def cellA15B11 : CellData where
  inverse := 26910007
  bounds := fun _ => ⟨0, -1⟩

def cellA15B12 : CellData where
  inverse := 124566257
  bounds := fun _ => ⟨0, -1⟩

def cellA15B13 : CellData where
  inverse := 612847507
  bounds := fun _ => ⟨0, -1⟩

def cellA15B14 : CellData where
  inverse := 4274956882
  bounds := fun _ => ⟨0, -1⟩

def cellA15B15 : CellData where
  inverse := 22585503757
  bounds := fun _ => ⟨0, -1⟩

def cellA15B16 : CellData where
  inverse := 114138238132
  bounds := fun _ => ⟨0, -1⟩

def cellA15B17 : CellData where
  inverse := 571901910007
  bounds := fun _ => ⟨0, -1⟩

def cellA15B18 : CellData where
  inverse := 3623659722507
  bounds := fun _ => ⟨0, -1⟩

def cellA15B19 : CellData where
  inverse := 7438356988132
  bounds := fun _ => ⟨0, -1⟩

def cellA15B20 : CellData where
  inverse := 45585329644382
  bounds := fun _ => ⟨0, -1⟩

def cellA15B21 : CellData where
  inverse := 427055056206882
  bounds := fun _ => ⟨0, -1⟩

def cellA15B22 : CellData where
  inverse := 903892214410007
  bounds := fun _ => ⟨0, -1⟩

def cellA15B23 : CellData where
  inverse := 10440635378472507
  bounds := fun _ => ⟨0, -1⟩

def cellA15B24 : CellData where
  inverse := 34282493288628757
  bounds := fun _ => ⟨0, -1⟩

def cellA15B25 : CellData where
  inverse := 93887138064019382
  bounds := fun _ => ⟨0, -1⟩

def cellA16B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (1 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B2 : CellData where
  inverse := 16
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

def cellA16B3 : CellData where
  inverse := 66
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
  inverse := 316
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (4 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B5 : CellData where
  inverse := 316
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (1 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (4 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B6 : CellData where
  inverse := 9691
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B7 : CellData where
  inverse := 56566
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA16B8 : CellData where
  inverse := 369066
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA16B9 : CellData where
  inverse := 759691
  bounds := fun _ => ⟨0, -1⟩

def cellA16B10 : CellData where
  inverse := 8572191
  bounds := fun _ => ⟨0, -1⟩

def cellA16B11 : CellData where
  inverse := 37869066
  bounds := fun _ => ⟨0, -1⟩

def cellA16B12 : CellData where
  inverse := 184353441
  bounds := fun _ => ⟨0, -1⟩

def cellA16B13 : CellData where
  inverse := 916775316
  bounds := fun _ => ⟨0, -1⟩

def cellA16B14 : CellData where
  inverse := 2137478441
  bounds := fun _ => ⟨0, -1⟩

def cellA16B15 : CellData where
  inverse := 26551540941
  bounds := fun _ => ⟨0, -1⟩

def cellA16B16 : CellData where
  inverse := 57069119066
  bounds := fun _ => ⟨0, -1⟩

def cellA16B17 : CellData where
  inverse := 667420681566
  bounds := fun _ => ⟨0, -1⟩

def cellA16B18 : CellData where
  inverse := 3719178494066
  bounds := fun _ => ⟨0, -1⟩

def cellA16B19 : CellData where
  inverse := 3719178494066
  bounds := fun _ => ⟨0, -1⟩

def cellA16B20 : CellData where
  inverse := 22792664822191
  bounds := fun _ => ⟨0, -1⟩

def cellA16B21 : CellData where
  inverse := 213527528103441
  bounds := fun _ => ⟨0, -1⟩

def cellA16B22 : CellData where
  inverse := 1644039002712816
  bounds := fun _ => ⟨0, -1⟩

def cellA16B23 : CellData where
  inverse := 11180782166775316
  bounds := fun _ => ⟨0, -1⟩

def cellA16B24 : CellData where
  inverse := 46943569032009691
  bounds := fun _ => ⟨0, -1⟩

def cellA16B25 : CellData where
  inverse := 46943569032009691
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

end Math.B699.CRTStage1Pair25.Chunk001
