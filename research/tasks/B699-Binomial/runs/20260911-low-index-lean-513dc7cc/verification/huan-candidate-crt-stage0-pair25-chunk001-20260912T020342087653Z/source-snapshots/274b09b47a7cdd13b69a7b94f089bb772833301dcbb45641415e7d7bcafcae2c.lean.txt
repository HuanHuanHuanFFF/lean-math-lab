import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage0Pair25.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA9B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 231840⟩
    else if d = (-5 : ℤ) then ⟨0, 231840⟩
    else if d = (0 : ℤ) then ⟨0, 231840⟩
    else if d = (5 : ℤ) then ⟨0, 231840⟩
    else if d = (10 : ℤ) then ⟨0, 231840⟩
    else ⟨0, 231841⟩

def cellA9B2 : CellData where
  inverse := 23
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 231840⟩
    else if d = (1 : ℤ) then ⟨0, 231840⟩
    else ⟨0, 231841⟩

def cellA9B3 : CellData where
  inverse := 73
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 231840⟩
    else if d = (0 : ℤ) then ⟨0, 231840⟩
    else if d = (5 : ℤ) then ⟨0, 231840⟩
    else ⟨0, 231841⟩

def cellA9B4 : CellData where
  inverse := 448
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 189923⟩
    else if d = (-3 : ℤ) then ⟨0, 189923⟩
    else if d = (0 : ℤ) then ⟨0, 189923⟩
    else if d = (4 : ℤ) then ⟨0, 189923⟩
    else ⟨0, 189924⟩

def cellA9B5 : CellData where
  inverse := 2948
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA9B6 : CellData where
  inverse := 6073
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA9B7 : CellData where
  inverse := 52948
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1519⟩
    else if d = (-7 : ℤ) then ⟨0, 1519⟩
    else if d = (-4 : ℤ) then ⟨0, 1519⟩
    else if d = (-1 : ℤ) then ⟨0, 1519⟩
    else if d = (2 : ℤ) then ⟨0, 1519⟩
    else if d = (3 : ℤ) then ⟨0, 1519⟩
    else if d = (5 : ℤ) then ⟨0, 1519⟩
    else if d = (6 : ℤ) then ⟨0, 1519⟩
    else if d = (9 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA9B8 : CellData where
  inverse := 365448
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (1 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA9B9 : CellData where
  inverse := 1537323
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 59⟩
    else if d = (-4 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (1 : ℤ) then ⟨0, 59⟩
    else if d = (5 : ℤ) then ⟨0, 59⟩
    else if d = (10 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA9B10 : CellData where
  inverse := 3490448
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 12⟩
    else if d = (3 : ℤ) then ⟨0, 12⟩
    else if d = (6 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA9B11 : CellData where
  inverse := 13256073
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2⟩
    else if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (-6 : ℤ) then ⟨0, 2⟩
    else if d = (-3 : ℤ) then ⟨0, 2⟩
    else if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (4 : ℤ) then ⟨0, 2⟩
    else if d = (5 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA9B12 : CellData where
  inverse := 159740448
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA9B13 : CellData where
  inverse := 159740448
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA9B26 : CellData where
  inverse := 346335582435131073
  bounds := fun _ => ⟨0, -1⟩

def cellA9B27 : CellData where
  inverse := 4816683940589427948
  bounds := fun _ => ⟨0, -1⟩

def cellA9B28 : CellData where
  inverse := 19717845134437084198
  bounds := fun _ => ⟨0, -1⟩

def cellA9B29 : CellData where
  inverse := 94223651103675365448
  bounds := fun _ => ⟨0, -1⟩

def cellA9B30 : CellData where
  inverse := 653017195872962474823
  bounds := fun _ => ⟨0, -1⟩

def cellA9B31 : CellData where
  inverse := 3446984919719398021698
  bounds := fun _ => ⟨0, -1⟩

def cellA9B32 : CellData where
  inverse := 17416823538951575756073
  bounds := fun _ => ⟨0, -1⟩

def cellA9B33 : CellData where
  inverse := 40699887904338538646698
  bounds := fun _ => ⟨0, -1⟩

def cellA9B34 : CellData where
  inverse := 389945853385142982006073
  bounds := fun _ => ⟨0, -1⟩

def cellA9B35 : CellData where
  inverse := 972022462519817054271698
  bounds := fun _ => ⟨0, -1⟩

def cellA9B36 : CellData where
  inverse := 6792788553866557776927948
  bounds := fun _ => ⟨0, -1⟩

def cellA9B37 : CellData where
  inverse := 50448534238967113196849823
  bounds := fun _ => ⟨0, -1⟩

def cellA9B38 : CellData where
  inverse := 50448534238967113196849823
  bounds := fun _ => ⟨0, -1⟩

def cellA9B39 : CellData where
  inverse := 778044295657309703528881073
  bounds := fun _ => ⟨0, -1⟩

def cellA9B40 : CellData where
  inverse := 6235012506294879131019115448
  bounds := fun _ => ⟨0, -1⟩

def cellA9B41 : CellData where
  inverse := 24424906541753443889319896698
  bounds := fun _ => ⟨0, -1⟩

def cellA9B42 : CellData where
  inverse := 24424906541753443889319896698
  bounds := fun _ => ⟨0, -1⟩

def cellA9B43 : CellData where
  inverse := 24424906541753443889319896698
  bounds := fun _ => ⟨0, -1⟩

def cellA9B44 : CellData where
  inverse := 2298161660974074038676917552948
  bounds := fun _ => ⟨0, -1⟩

def cellA9B45 : CellData where
  inverse := 25035529205297279986552894115448
  bounds := fun _ => ⟨0, -1⟩

def cellA9B46 : CellData where
  inverse := 81878948066105294856242835521698
  bounds := fun _ => ⟨0, -1⟩

def cellA10B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 115919⟩
    else if d = (-5 : ℤ) then ⟨0, 115919⟩
    else if d = (0 : ℤ) then ⟨0, 115919⟩
    else if d = (5 : ℤ) then ⟨0, 115919⟩
    else if d = (10 : ℤ) then ⟨0, 115919⟩
    else ⟨0, 115920⟩

def cellA10B2 : CellData where
  inverse := 24
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 115919⟩
    else if d = (1 : ℤ) then ⟨0, 115919⟩
    else ⟨0, 115920⟩

def cellA10B3 : CellData where
  inverse := 99
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 115919⟩
    else if d = (5 : ℤ) then ⟨0, 115919⟩
    else ⟨0, 115920⟩

def cellA10B4 : CellData where
  inverse := 224
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 115919⟩
    else ⟨0, 115920⟩

def cellA10B5 : CellData where
  inverse := 1474
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA10B6 : CellData where
  inverse := 10849
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA10B7 : CellData where
  inverse := 26474
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1519⟩
    else if d = (-5 : ℤ) then ⟨0, 1519⟩
    else if d = (-2 : ℤ) then ⟨0, 1519⟩
    else if d = (1 : ℤ) then ⟨0, 1519⟩
    else if d = (3 : ℤ) then ⟨0, 1519⟩
    else if d = (4 : ℤ) then ⟨0, 1519⟩
    else if d = (6 : ℤ) then ⟨0, 1519⟩
    else if d = (7 : ℤ) then ⟨0, 1519⟩
    else if d = (9 : ℤ) then ⟨0, 1519⟩
    else if d = (10 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA10B8 : CellData where
  inverse := 182724
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (2 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA10B9 : CellData where
  inverse := 1745224
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 59⟩
    else if d = (-8 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (1 : ℤ) then ⟨0, 59⟩
    else if d = (2 : ℤ) then ⟨0, 59⟩
    else if d = (10 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA10B10 : CellData where
  inverse := 1745224
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 12⟩
    else if d = (6 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA10B11 : CellData where
  inverse := 31042099
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 2⟩
    else if d = (-6 : ℤ) then ⟨0, 2⟩
    else if d = (-3 : ℤ) then ⟨0, 2⟩
    else if d = (-1 : ℤ) then ⟨0, 2⟩
    else if d = (2 : ℤ) then ⟨0, 2⟩
    else if d = (5 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨0, 2⟩
    else if d = (10 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA10B12 : CellData where
  inverse := 79870224
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA10B13 : CellData where
  inverse := 79870224
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA10B26 : CellData where
  inverse := 918225850909948349
  bounds := fun _ => ⟨0, -1⟩

def cellA10B27 : CellData where
  inverse := 2408341970294713974
  bounds := fun _ => ⟨0, -1⟩

def cellA10B28 : CellData where
  inverse := 9858922567218542099
  bounds := fun _ => ⟨0, -1⟩

def cellA10B29 : CellData where
  inverse := 47111825551837682724
  bounds := fun _ => ⟨0, -1⟩

def cellA10B30 : CellData where
  inverse := 792169885244220495224
  bounds := fun _ => ⟨0, -1⟩

def cellA10B31 : CellData where
  inverse := 1723492459859699010849
  bounds := fun _ => ⟨0, -1⟩

def cellA10B32 : CellData where
  inverse := 20349943952169269323349
  bounds := fun _ => ⟨0, -1⟩

def cellA10B33 : CellData where
  inverse := 20349943952169269323349
  bounds := fun _ => ⟨0, -1⟩

def cellA10B34 : CellData where
  inverse := 486011231259908527135849
  bounds := fun _ => ⟨0, -1⟩

def cellA10B35 : CellData where
  inverse := 486011231259908527135849
  bounds := fun _ => ⟨0, -1⟩

def cellA10B36 : CellData where
  inverse := 3396394276933278888463974
  bounds := fun _ => ⟨0, -1⟩

def cellA10B37 : CellData where
  inverse := 61604055190400686115026474
  bounds := fun _ => ⟨0, -1⟩

def cellA10B38 : CellData where
  inverse := 207123207474069204181432724
  bounds := fun _ => ⟨0, -1⟩

def cellA10B39 : CellData where
  inverse := 1298516849601583089679479599
  bounds := fun _ => ⟨0, -1⟩

def cellA10B40 : CellData where
  inverse := 3117506253147439565509557724
  bounds := fun _ => ⟨0, -1⟩

def cellA10B41 : CellData where
  inverse := 12212453270876721944659948349
  bounds := fun _ => ⟨0, -1⟩

def cellA10B42 : CellData where
  inverse := 12212453270876721944659948349
  bounds := fun _ => ⟨0, -1⟩

def cellA10B43 : CellData where
  inverse := 12212453270876721944659948349
  bounds := fun _ => ⟨0, -1⟩

def cellA10B44 : CellData where
  inverse := 1149080830487037019338458776474
  bounds := fun _ => ⟨0, -1⟩

def cellA10B45 : CellData where
  inverse := 12517764602648639993276447057724
  bounds := fun _ => ⟨0, -1⟩

def cellA10B46 : CellData where
  inverse := 40939474033052647428121417760849
  bounds := fun _ => ⟨0, -1⟩

def cellA11B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 57960⟩
    else if d = (-7 : ℤ) then ⟨0, 57960⟩
    else if d = (-4 : ℤ) then ⟨0, 57960⟩
    else if d = (-2 : ℤ) then ⟨0, 57960⟩
    else if d = (1 : ℤ) then ⟨0, 57960⟩
    else if d = (3 : ℤ) then ⟨0, 57960⟩
    else if d = (6 : ℤ) then ⟨0, 57960⟩
    else if d = (8 : ℤ) then ⟨0, 57960⟩
    else ⟨0, 57959⟩

def cellA11B2 : CellData where
  inverse := 12
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 57960⟩
    else if d = (-8 : ℤ) then ⟨0, 57960⟩
    else if d = (-6 : ℤ) then ⟨0, 57960⟩
    else if d = (-4 : ℤ) then ⟨0, 57960⟩
    else if d = (-2 : ℤ) then ⟨0, 57960⟩
    else if d = (3 : ℤ) then ⟨0, 57960⟩
    else if d = (5 : ℤ) then ⟨0, 57960⟩
    else if d = (7 : ℤ) then ⟨0, 57960⟩
    else if d = (9 : ℤ) then ⟨0, 57960⟩
    else ⟨0, 57959⟩

def cellA11B3 : CellData where
  inverse := 112
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 57960⟩
    else if d = (-4 : ℤ) then ⟨0, 57960⟩
    else if d = (-3 : ℤ) then ⟨0, 57960⟩
    else if d = (-2 : ℤ) then ⟨0, 57960⟩
    else if d = (-1 : ℤ) then ⟨0, 57960⟩
    else if d = (6 : ℤ) then ⟨0, 57960⟩
    else if d = (7 : ℤ) then ⟨0, 57960⟩
    else if d = (8 : ℤ) then ⟨0, 57960⟩
    else if d = (9 : ℤ) then ⟨0, 57960⟩
    else ⟨0, 57959⟩

def cellA11B4 : CellData where
  inverse := 112
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 57960⟩
    else if d = (-9 : ℤ) then ⟨0, 57960⟩
    else if d = (-5 : ℤ) then ⟨0, 57960⟩
    else if d = (-4 : ℤ) then ⟨0, 57960⟩
    else if d = (-3 : ℤ) then ⟨0, 57960⟩
    else if d = (1 : ℤ) then ⟨0, 57960⟩
    else if d = (2 : ℤ) then ⟨0, 57960⟩
    else if d = (6 : ℤ) then ⟨0, 57960⟩
    else if d = (7 : ℤ) then ⟨0, 57960⟩
    else if d = (8 : ℤ) then ⟨0, 57960⟩
    else ⟨0, 57959⟩

def cellA11B5 : CellData where
  inverse := 737
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA11B6 : CellData where
  inverse := 13237
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA11B7 : CellData where
  inverse := 13237
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1519⟩
    else if d = (-5 : ℤ) then ⟨0, 1519⟩
    else if d = (-4 : ℤ) then ⟨0, 1519⟩
    else if d = (1 : ℤ) then ⟨0, 1519⟩
    else if d = (2 : ℤ) then ⟨0, 1519⟩
    else if d = (6 : ℤ) then ⟨0, 1519⟩
    else if d = (7 : ℤ) then ⟨0, 1519⟩
    else if d = (8 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA11B8 : CellData where
  inverse := 91362
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 302⟩
    else if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (4 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA11B9 : CellData where
  inverse := 872612
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 59⟩
    else if d = (-7 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (2 : ℤ) then ⟨0, 59⟩
    else if d = (4 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA11B10 : CellData where
  inverse := 872612
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 12⟩
    else if d = (1 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA11B11 : CellData where
  inverse := 39935112
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (-6 : ℤ) then ⟨0, 2⟩
    else if d = (-2 : ℤ) then ⟨0, 2⟩
    else if d = (-1 : ℤ) then ⟨0, 2⟩
    else if d = (4 : ℤ) then ⟨0, 2⟩
    else if d = (5 : ℤ) then ⟨0, 2⟩
    else if d = (9 : ℤ) then ⟨0, 2⟩
    else if d = (10 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA11B12 : CellData where
  inverse := 39935112
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA11B13 : CellData where
  inverse := 39935112
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA11B26 : CellData where
  inverse := 1204170985147356987
  bounds := fun _ => ⟨0, -1⟩

def cellA11B27 : CellData where
  inverse := 1204170985147356987
  bounds := fun _ => ⟨0, -1⟩

def cellA11B28 : CellData where
  inverse := 23555912775918841362
  bounds := fun _ => ⟨0, -1⟩

def cellA11B29 : CellData where
  inverse := 23555912775918841362
  bounds := fun _ => ⟨0, -1⟩

def cellA11B30 : CellData where
  inverse := 396084942622110247612
  bounds := fun _ => ⟨0, -1⟩

def cellA11B31 : CellData where
  inverse := 3190052666468545794487
  bounds := fun _ => ⟨0, -1⟩

def cellA11B32 : CellData where
  inverse := 21816504158778116106987
  bounds := fun _ => ⟨0, -1⟩

def cellA11B33 : CellData where
  inverse := 68382632889552041888237
  bounds := fun _ => ⟨0, -1⟩

def cellA11B34 : CellData where
  inverse := 534043920197291299700737
  bounds := fun _ => ⟨0, -1⟩

def cellA11B35 : CellData where
  inverse := 1698197138466639444231987
  bounds := fun _ => ⟨0, -1⟩

def cellA11B36 : CellData where
  inverse := 1698197138466639444231987
  bounds := fun _ => ⟨0, -1⟩

def cellA11B37 : CellData where
  inverse := 30802027595200343057513237
  bounds := fun _ => ⟨0, -1⟩

def cellA11B38 : CellData where
  inverse := 103561603737034602090716362
  bounds := fun _ => ⟨0, -1⟩

def cellA11B39 : CellData where
  inverse := 1558753126573719782754778862
  bounds := fun _ => ⟨0, -1⟩

def cellA11B40 : CellData where
  inverse := 1558753126573719782754778862
  bounds := fun _ => ⟨0, -1⟩

def cellA11B41 : CellData where
  inverse := 28843594179761566920205950737
  bounds := fun _ => ⟨0, -1⟩

def cellA11B42 : CellData where
  inverse := 119793064357054390711709856987
  bounds := fun _ => ⟨0, -1⟩

def cellA11B43 : CellData where
  inverse := 574540415243518509669229388237
  bounds := fun _ => ⟨0, -1⟩

def cellA11B44 : CellData where
  inverse := 574540415243518509669229388237
  bounds := fun _ => ⟨0, -1⟩

def cellA11B45 : CellData where
  inverse := 6258882301324319996638223528862
  bounds := fun _ => ⟨0, -1⟩

def cellA11B46 : CellData where
  inverse := 91524010592536342301173135638237
  bounds := fun _ => ⟨0, -1⟩

def cellA12B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 28980⟩
    else if d = (-4 : ℤ) then ⟨0, 28980⟩
    else if d = (1 : ℤ) then ⟨0, 28980⟩
    else if d = (6 : ℤ) then ⟨0, 28980⟩
    else ⟨0, 28979⟩

def cellA12B2 : CellData where
  inverse := 6
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 28980⟩
    else if d = (-4 : ℤ) then ⟨0, 28980⟩
    else if d = (5 : ℤ) then ⟨0, 28980⟩
    else if d = (9 : ℤ) then ⟨0, 28980⟩
    else ⟨0, 28979⟩

def cellA12B3 : CellData where
  inverse := 56
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 28980⟩
    else if d = (-2 : ℤ) then ⟨0, 28980⟩
    else if d = (7 : ℤ) then ⟨0, 28980⟩
    else if d = (9 : ℤ) then ⟨0, 28980⟩
    else ⟨0, 28979⟩

def cellA12B4 : CellData where
  inverse := 56
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 28980⟩
    else if d = (-9 : ℤ) then ⟨0, 28980⟩
    else if d = (1 : ℤ) then ⟨0, 28980⟩
    else if d = (2 : ℤ) then ⟨0, 28980⟩
    else ⟨0, 28979⟩

def cellA12B5 : CellData where
  inverse := 1931
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 28980⟩
    else if d = (-3 : ℤ) then ⟨0, 28980⟩
    else if d = (5 : ℤ) then ⟨0, 28980⟩
    else if d = (10 : ℤ) then ⟨0, 28980⟩
    else ⟨0, 28979⟩

def cellA12B6 : CellData where
  inverse := 14431
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA12B7 : CellData where
  inverse := 45681
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1519⟩
    else if d = (-8 : ℤ) then ⟨0, 1519⟩
    else if d = (-5 : ℤ) then ⟨0, 1519⟩
    else if d = (-3 : ℤ) then ⟨0, 1519⟩
    else if d = (2 : ℤ) then ⟨0, 1519⟩
    else if d = (4 : ℤ) then ⟨0, 1519⟩
    else if d = (7 : ℤ) then ⟨0, 1519⟩
    else if d = (9 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA12B8 : CellData where
  inverse := 45681
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 302⟩
    else if d = (-1 : ℤ) then ⟨0, 302⟩
    else if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (8 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA12B9 : CellData where
  inverse := 436306
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 59⟩
    else if d = (-5 : ℤ) then ⟨0, 59⟩
    else if d = (-1 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (4 : ℤ) then ⟨0, 59⟩
    else if d = (8 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA12B10 : CellData where
  inverse := 436306
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 12⟩
    else if d = (2 : ℤ) then ⟨0, 12⟩
    else if d = (3 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA12B11 : CellData where
  inverse := 19967556
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 2⟩
    else if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (-4 : ℤ) then ⟨0, 2⟩
    else if d = (-2 : ℤ) then ⟨0, 2⟩
    else if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (3 : ℤ) then ⟨0, 2⟩
    else if d = (5 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨0, 2⟩
    else if d = (10 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA12B12 : CellData where
  inverse := 19967556
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA12B13 : CellData where
  inverse := 19967556
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA12B14 : CellData where
  inverse := 3682076931
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA12B26 : CellData where
  inverse := 1347143552266061306
  bounds := fun _ => ⟨0, -1⟩

def cellA12B27 : CellData where
  inverse := 4327375791035592556
  bounds := fun _ => ⟨0, -1⟩

def cellA12B28 : CellData where
  inverse := 11777956387959420681
  bounds := fun _ => ⟨0, -1⟩

def cellA12B29 : CellData where
  inverse := 11777956387959420681
  bounds := fun _ => ⟨0, -1⟩

def cellA12B30 : CellData where
  inverse := 198042471311055123806
  bounds := fun _ => ⟨0, -1⟩

def cellA12B31 : CellData where
  inverse := 3923332769772969186306
  bounds := fun _ => ⟨0, -1⟩

def cellA12B32 : CellData where
  inverse := 22549784262082539498806
  bounds := fun _ => ⟨0, -1⟩

def cellA12B33 : CellData where
  inverse := 92398977358243428170681
  bounds := fun _ => ⟨0, -1⟩

def cellA12B34 : CellData where
  inverse := 558060264665982685983181
  bounds := fun _ => ⟨0, -1⟩

def cellA12B35 : CellData where
  inverse := 2304290092070004902780056
  bounds := fun _ => ⟨0, -1⟩

def cellA12B36 : CellData where
  inverse := 8125056183416745625436306
  bounds := fun _ => ⟨0, -1⟩

def cellA12B37 : CellData where
  inverse := 51780801868517301045358181
  bounds := fun _ => ⟨0, -1⟩

def cellA12B38 : CellData where
  inverse := 51780801868517301045358181
  bounds := fun _ => ⟨0, -1⟩

def cellA12B39 : CellData where
  inverse := 779376563286859891377389431
  bounds := fun _ => ⟨0, -1⟩

def cellA12B40 : CellData where
  inverse := 779376563286859891377389431
  bounds := fun _ => ⟨0, -1⟩

def cellA12B41 : CellData where
  inverse := 37159164634203989407978951931
  bounds := fun _ => ⟨0, -1⟩

def cellA12B42 : CellData where
  inverse := 173583369900143225095234811306
  bounds := fun _ => ⟨0, -1⟩

def cellA12B43 : CellData where
  inverse := 855704396229839403531514108181
  bounds := fun _ => ⟨0, -1⟩

def cellA12B44 : CellData where
  inverse := 3129441150662159998319111764431
  bounds := fun _ => ⟨0, -1⟩

def cellA12B45 : CellData where
  inverse := 3129441150662159998319111764431
  bounds := fun _ => ⟨0, -1⟩

def cellA12B46 : CellData where
  inverse := 116816278872278189737698994576931
  bounds := fun _ => ⟨0, -1⟩

def cellA13B1 : CellData where
  inverse := 3
  bounds := fun _ => ⟨0, 14489⟩

def cellA13B2 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 14490⟩
    else if d = (9 : ℤ) then ⟨0, 14490⟩
    else ⟨0, 14489⟩

def cellA13B3 : CellData where
  inverse := 28
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 14490⟩
    else if d = (9 : ℤ) then ⟨0, 14490⟩
    else ⟨0, 14489⟩

def cellA13B4 : CellData where
  inverse := 28
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 14490⟩
    else if d = (2 : ℤ) then ⟨0, 14490⟩
    else ⟨0, 14489⟩

def cellA13B5 : CellData where
  inverse := 2528
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 14490⟩
    else if d = (10 : ℤ) then ⟨0, 14490⟩
    else ⟨0, 14489⟩

def cellA13B6 : CellData where
  inverse := 15028
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA13B7 : CellData where
  inverse := 61903
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1519⟩
    else if d = (-6 : ℤ) then ⟨0, 1519⟩
    else if d = (-5 : ℤ) then ⟨0, 1519⟩
    else if d = (-1 : ℤ) then ⟨0, 1519⟩
    else if d = (3 : ℤ) then ⟨0, 1519⟩
    else if d = (4 : ℤ) then ⟨0, 1519⟩
    else if d = (8 : ℤ) then ⟨0, 1519⟩
    else if d = (9 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA13B8 : CellData where
  inverse := 218153
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 302⟩
    else if d = (-2 : ℤ) then ⟨0, 302⟩
    else if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (7 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA13B9 : CellData where
  inverse := 218153
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 59⟩
    else if d = (-9 : ℤ) then ⟨0, 59⟩
    else if d = (-2 : ℤ) then ⟨0, 59⟩
    else if d = (-1 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (7 : ℤ) then ⟨0, 59⟩
    else if d = (8 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA13B10 : CellData where
  inverse := 218153
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 12⟩
    else if d = (2 : ℤ) then ⟨0, 12⟩
    else if d = (3 : ℤ) then ⟨0, 12⟩
    else if d = (4 : ℤ) then ⟨0, 12⟩
    else if d = (5 : ℤ) then ⟨0, 12⟩
    else if d = (6 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA13B11 : CellData where
  inverse := 9983778
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 2⟩
    else if d = (-8 : ℤ) then ⟨0, 2⟩
    else if d = (-4 : ℤ) then ⟨0, 2⟩
    else if d = (-3 : ℤ) then ⟨0, 2⟩
    else if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (2 : ℤ) then ⟨0, 2⟩
    else if d = (5 : ℤ) then ⟨0, 2⟩
    else if d = (6 : ℤ) then ⟨0, 2⟩
    else if d = (10 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA13B12 : CellData where
  inverse := 9983778
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

def cellA13B13 : CellData where
  inverse := 9983778
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

def cellA13B14 : CellData where
  inverse := 4892796278
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA13B26 : CellData where
  inverse := 673571776133030653
  bounds := fun _ => ⟨0, -1⟩

def cellA13B27 : CellData where
  inverse := 2163687895517796278
  bounds := fun _ => ⟨0, -1⟩

def cellA13B28 : CellData where
  inverse := 24515429686289280653
  bounds := fun _ => ⟨0, -1⟩

def cellA13B29 : CellData where
  inverse := 99021235655527561903
  bounds := fun _ => ⟨0, -1⟩

def cellA13B30 : CellData where
  inverse := 99021235655527561903
  bounds := fun _ => ⟨0, -1⟩

def cellA13B31 : CellData where
  inverse := 1961666384886484593153
  bounds := fun _ => ⟨0, -1⟩

def cellA13B32 : CellData where
  inverse := 11274892131041269749403
  bounds := fun _ => ⟨0, -1⟩

def cellA13B33 : CellData where
  inverse := 104407149592589121311903
  bounds := fun _ => ⟨0, -1⟩

def cellA13B34 : CellData where
  inverse := 570068436900328379124403
  bounds := fun _ => ⟨0, -1⟩

def cellA13B35 : CellData where
  inverse := 1152145046035002451390028
  bounds := fun _ => ⟨0, -1⟩

def cellA13B36 : CellData where
  inverse := 4062528091708372812718153
  bounds := fun _ => ⟨0, -1⟩

def cellA13B37 : CellData where
  inverse := 62270189005175780039280653
  bounds := fun _ => ⟨0, -1⟩

def cellA13B38 : CellData where
  inverse := 207789341288844298105686903
  bounds := fun _ => ⟨0, -1⟩

def cellA13B39 : CellData where
  inverse := 1299182983416358183603733778
  bounds := fun _ => ⟨0, -1⟩

def cellA13B40 : CellData where
  inverse := 4937161790508071135263890028
  bounds := fun _ => ⟨0, -1⟩

def cellA13B41 : CellData where
  inverse := 41316949861425200651865452528
  bounds := fun _ => ⟨0, -1⟩

def cellA13B42 : CellData where
  inverse := 86791684950071612547617405653
  bounds := fun _ => ⟨0, -1⟩

def cellA13B43 : CellData where
  inverse := 996286386722999850462656468153
  bounds := fun _ => ⟨0, -1⟩

def cellA13B44 : CellData where
  inverse := 4406891518371480742644052952528
  bounds := fun _ => ⟨0, -1⟩

def cellA13B45 : CellData where
  inverse := 15775575290533083716582041233778
  bounds := fun _ => ⟨0, -1⟩

def cellA13B46 : CellData where
  inverse := 129462413012149113455961924046278
  bounds := fun _ => ⟨0, -1⟩

def cellA14B1 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, 7244⟩

def cellA14B2 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨0, 7245⟩
    else ⟨0, 7244⟩

def cellA14B3 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨0, 7245⟩
    else ⟨0, 7244⟩

def cellA14B4 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 7245⟩
    else if d = (2 : ℤ) then ⟨0, 7245⟩
    else ⟨0, 7244⟩

def cellA14B5 : CellData where
  inverse := 1264
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 7245⟩
    else if d = (10 : ℤ) then ⟨0, 7245⟩
    else ⟨0, 7244⟩

def cellA14B6 : CellData where
  inverse := 7514
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 7245⟩
    else ⟨0, 7244⟩

def cellA14B7 : CellData where
  inverse := 70014
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1519⟩
    else if d = (-3 : ℤ) then ⟨0, 1519⟩
    else if d = (-2 : ℤ) then ⟨0, 1519⟩
    else if d = (-1 : ℤ) then ⟨0, 1519⟩
    else if d = (6 : ℤ) then ⟨0, 1519⟩
    else if d = (7 : ℤ) then ⟨0, 1519⟩
    else if d = (8 : ℤ) then ⟨0, 1519⟩
    else if d = (9 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA14B8 : CellData where
  inverse := 304389
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 302⟩
    else if d = (-4 : ℤ) then ⟨0, 302⟩
    else if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (5 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA14B9 : CellData where
  inverse := 1085639
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 59⟩
    else if d = (-4 : ℤ) then ⟨0, 59⟩
    else if d = (-2 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (5 : ℤ) then ⟨0, 59⟩
    else if d = (7 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA14B10 : CellData where
  inverse := 4991889
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 12⟩
    else if d = (4 : ℤ) then ⟨0, 12⟩
    else if d = (6 : ℤ) then ⟨0, 12⟩
    else if d = (8 : ℤ) then ⟨0, 12⟩
    else if d = (10 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA14B11 : CellData where
  inverse := 4991889
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 2⟩
    else if d = (-8 : ℤ) then ⟨0, 2⟩
    else if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (-6 : ℤ) then ⟨0, 2⟩
    else if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (2 : ℤ) then ⟨0, 2⟩
    else if d = (3 : ℤ) then ⟨0, 2⟩
    else if d = (4 : ℤ) then ⟨0, 2⟩
    else if d = (10 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA14B12 : CellData where
  inverse := 4991889
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

def cellA14B13 : CellData where
  inverse := 4991889
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

def cellA14B14 : CellData where
  inverse := 2446398139
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA14B26 : CellData where
  inverse := 1081843947758898139
  bounds := fun _ => ⟨0, -1⟩

def cellA14B27 : CellData where
  inverse := 1081843947758898139
  bounds := fun _ => ⟨0, -1⟩

def cellA14B28 : CellData where
  inverse := 30884166335454210639
  bounds := fun _ => ⟨0, -1⟩

def cellA14B29 : CellData where
  inverse := 142642875289311632514
  bounds := fun _ => ⟨0, -1⟩

def cellA14B30 : CellData where
  inverse := 515171905135503038764
  bounds := fun _ => ⟨0, -1⟩

def cellA14B31 : CellData where
  inverse := 3309139628981938585639
  bounds := fun _ => ⟨0, -1⟩

def cellA14B32 : CellData where
  inverse := 17278978248214116320014
  bounds := fun _ => ⟨0, -1⟩

def cellA14B33 : CellData where
  inverse := 110411235709761967882514
  bounds := fun _ => ⟨0, -1⟩

def cellA14B34 : CellData where
  inverse := 576072523017501225695014
  bounds := fun _ => ⟨0, -1⟩

def cellA14B35 : CellData where
  inverse := 576072523017501225695014
  bounds := fun _ => ⟨0, -1⟩

def cellA14B36 : CellData where
  inverse := 9307221660037612309679389
  bounds := fun _ => ⟨0, -1⟩

def cellA14B37 : CellData where
  inverse := 67514882573505019536241889
  bounds := fun _ => ⟨0, -1⟩

def cellA14B38 : CellData where
  inverse := 285793610999007796635851264
  bounds := fun _ => ⟨0, -1⟩

def cellA14B39 : CellData where
  inverse := 649591491708179091801866889
  bounds := fun _ => ⟨0, -1⟩

def cellA14B40 : CellData where
  inverse := 2468580895254035567631945014
  bounds := fun _ => ⟨0, -1⟩

def cellA14B41 : CellData where
  inverse := 20658474930712600325932726264
  bounds := fun _ => ⟨0, -1⟩

def cellA14B42 : CellData where
  inverse := 157082680196651836013188585639
  bounds := fun _ => ⟨0, -1⟩

def cellA14B43 : CellData where
  inverse := 1066577381969580073928227648139
  bounds := fun _ => ⟨0, -1⟩

def cellA14B44 : CellData where
  inverse := 2203445759185740371322026476264
  bounds := fun _ => ⟨0, -1⟩

def cellA14B45 : CellData where
  inverse := 7887787645266541858291020616889
  bounds := fun _ => ⟨0, -1⟩

def cellA14B46 : CellData where
  inverse := 64731206506074556727980962023139
  bounds := fun _ => ⟨0, -1⟩

def cellA15B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 3622⟩
    else if d = (-7 : ℤ) then ⟨0, 3622⟩
    else if d = (-4 : ℤ) then ⟨0, 3622⟩
    else if d = (-2 : ℤ) then ⟨0, 3622⟩
    else if d = (1 : ℤ) then ⟨0, 3622⟩
    else if d = (3 : ℤ) then ⟨0, 3622⟩
    else if d = (6 : ℤ) then ⟨0, 3622⟩
    else if d = (8 : ℤ) then ⟨0, 3622⟩
    else ⟨0, 3621⟩

def cellA15B2 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 3621⟩
    else if d = (-5 : ℤ) then ⟨0, 3621⟩
    else if d = (-4 : ℤ) then ⟨0, 3621⟩
    else if d = (-1 : ℤ) then ⟨0, 3621⟩
    else if d = (0 : ℤ) then ⟨0, 3621⟩
    else if d = (2 : ℤ) then ⟨0, 3621⟩
    else if d = (3 : ℤ) then ⟨0, 3621⟩
    else if d = (6 : ℤ) then ⟨0, 3621⟩
    else if d = (7 : ℤ) then ⟨0, 3621⟩
    else if d = (10 : ℤ) then ⟨0, 3621⟩
    else ⟨0, 3622⟩

def cellA15B3 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 3621⟩
    else if d = (-7 : ℤ) then ⟨0, 3621⟩
    else if d = (-6 : ℤ) then ⟨0, 3621⟩
    else if d = (-5 : ℤ) then ⟨0, 3621⟩
    else if d = (-4 : ℤ) then ⟨0, 3621⟩
    else if d = (-3 : ℤ) then ⟨0, 3621⟩
    else if d = (-2 : ℤ) then ⟨0, 3621⟩
    else if d = (-1 : ℤ) then ⟨0, 3621⟩
    else if d = (0 : ℤ) then ⟨0, 3621⟩
    else if d = (10 : ℤ) then ⟨0, 3621⟩
    else ⟨0, 3622⟩

def cellA15B4 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 3622⟩
    else if d = (2 : ℤ) then ⟨0, 3622⟩
    else if d = (3 : ℤ) then ⟨0, 3622⟩
    else if d = (4 : ℤ) then ⟨0, 3622⟩
    else if d = (5 : ℤ) then ⟨0, 3622⟩
    else if d = (6 : ℤ) then ⟨0, 3622⟩
    else if d = (7 : ℤ) then ⟨0, 3622⟩
    else if d = (8 : ℤ) then ⟨0, 3622⟩
    else if d = (9 : ℤ) then ⟨0, 3622⟩
    else if d = (10 : ℤ) then ⟨0, 3622⟩
    else ⟨0, 3621⟩

def cellA15B5 : CellData where
  inverse := 632
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 3622⟩
    else if d = (-8 : ℤ) then ⟨0, 3622⟩
    else if d = (-4 : ℤ) then ⟨0, 3622⟩
    else if d = (-3 : ℤ) then ⟨0, 3622⟩
    else if d = (1 : ℤ) then ⟨0, 3622⟩
    else if d = (2 : ℤ) then ⟨0, 3622⟩
    else if d = (5 : ℤ) then ⟨0, 3622⟩
    else if d = (6 : ℤ) then ⟨0, 3622⟩
    else if d = (7 : ℤ) then ⟨0, 3622⟩
    else if d = (10 : ℤ) then ⟨0, 3622⟩
    else ⟨0, 3621⟩

def cellA15B6 : CellData where
  inverse := 3757
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3621⟩
    else if d = (-9 : ℤ) then ⟨0, 3621⟩
    else if d = (-6 : ℤ) then ⟨0, 3621⟩
    else if d = (-5 : ℤ) then ⟨0, 3621⟩
    else if d = (-1 : ℤ) then ⟨0, 3621⟩
    else if d = (0 : ℤ) then ⟨0, 3621⟩
    else if d = (3 : ℤ) then ⟨0, 3621⟩
    else if d = (4 : ℤ) then ⟨0, 3621⟩
    else if d = (7 : ℤ) then ⟨0, 3621⟩
    else if d = (8 : ℤ) then ⟨0, 3621⟩
    else ⟨0, 3622⟩

def cellA15B7 : CellData where
  inverse := 35007
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 1519⟩
    else if d = (-4 : ℤ) then ⟨0, 1519⟩
    else if d = (-2 : ℤ) then ⟨0, 1519⟩
    else if d = (3 : ℤ) then ⟨0, 1519⟩
    else if d = (5 : ℤ) then ⟨0, 1519⟩
    else if d = (7 : ℤ) then ⟨0, 1519⟩
    else if d = (9 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA15B8 : CellData where
  inverse := 347507
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 302⟩
    else if d = (-8 : ℤ) then ⟨0, 302⟩
    else if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (1 : ℤ) then ⟨0, 302⟩
    else if d = (10 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA15B9 : CellData where
  inverse := 1519382
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 59⟩
    else if d = (-8 : ℤ) then ⟨0, 59⟩
    else if d = (-4 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (1 : ℤ) then ⟨0, 59⟩
    else if d = (5 : ℤ) then ⟨0, 59⟩
    else if d = (10 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA15B10 : CellData where
  inverse := 7378757
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨0, 12⟩
    else if d = (8 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA15B11 : CellData where
  inverse := 26910007
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 2⟩
    else if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (-3 : ℤ) then ⟨0, 2⟩
    else if d = (2 : ℤ) then ⟨0, 2⟩
    else if d = (4 : ℤ) then ⟨0, 2⟩
    else if d = (6 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA15B12 : CellData where
  inverse := 124566257
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B13 : CellData where
  inverse := 612847507
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA15B14 : CellData where
  inverse := 4274956882
  bounds := fun d =>
    if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA15B26 : CellData where
  inverse := 1285980033571831882
  bounds := fun _ => ⟨0, -1⟩

def cellA15B27 : CellData where
  inverse := 4266212272341363132
  bounds := fun _ => ⟨0, -1⟩

def cellA15B28 : CellData where
  inverse := 34068534660036675632
  bounds := fun _ => ⟨0, -1⟩

def cellA15B29 : CellData where
  inverse := 71321437644655816257
  bounds := fun _ => ⟨0, -1⟩

def cellA15B30 : CellData where
  inverse := 257585952567751519382
  bounds := fun _ => ⟨0, -1⟩

def cellA15B31 : CellData where
  inverse := 3982876251029665581882
  bounds := fun _ => ⟨0, -1⟩

def cellA15B32 : CellData where
  inverse := 8639489124107058160007
  bounds := fun _ => ⟨0, -1⟩

def cellA15B33 : CellData where
  inverse := 55205617854880983941257
  bounds := fun _ => ⟨0, -1⟩

def cellA15B34 : CellData where
  inverse := 288036261508750612847507
  bounds := fun _ => ⟨0, -1⟩

def cellA15B35 : CellData where
  inverse := 288036261508750612847507
  bounds := fun _ => ⟨0, -1⟩

def cellA15B36 : CellData where
  inverse := 11929568444202232058160007
  bounds := fun _ => ⟨0, -1⟩

def cellA15B37 : CellData where
  inverse := 70137229357669639284722507
  bounds := fun _ => ⟨0, -1⟩

def cellA15B38 : CellData where
  inverse := 142896805499503898317925632
  bounds := fun _ => ⟨0, -1⟩

def cellA15B39 : CellData where
  inverse := 1234290447627017783815972507
  bounds := fun _ => ⟨0, -1⟩

def cellA15B40 : CellData where
  inverse := 1234290447627017783815972507
  bounds := fun _ => ⟨0, -1⟩

def cellA15B41 : CellData where
  inverse := 10329237465356300162966363132
  bounds := fun _ => ⟨0, -1⟩

def cellA15B42 : CellData where
  inverse := 192228177819941947745974175632
  bounds := fun _ => ⟨0, -1⟩

def cellA15B43 : CellData where
  inverse := 1101722879592870185661013238132
  bounds := fun _ => ⟨0, -1⟩

def cellA15B44 : CellData where
  inverse := 1101722879592870185661013238132
  bounds := fun _ => ⟨0, -1⟩

def cellA15B45 : CellData where
  inverse := 18154748537835274646567995660007
  bounds := fun _ => ⟨0, -1⟩

def cellA15B46 : CellData where
  inverse := 103419876829047296951102907769382
  bounds := fun _ => ⟨0, -1⟩

def cellA16B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1811⟩
    else if d = (-4 : ℤ) then ⟨0, 1811⟩
    else if d = (1 : ℤ) then ⟨0, 1811⟩
    else if d = (6 : ℤ) then ⟨0, 1811⟩
    else ⟨0, 1810⟩

def cellA16B2 : CellData where
  inverse := 16
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1811⟩
    else if d = (-6 : ℤ) then ⟨0, 1811⟩
    else if d = (-3 : ℤ) then ⟨0, 1811⟩
    else if d = (5 : ℤ) then ⟨0, 1811⟩
    else if d = (8 : ℤ) then ⟨0, 1811⟩
    else ⟨0, 1810⟩

def cellA16B3 : CellData where
  inverse := 66
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1811⟩
    else if d = (2 : ℤ) then ⟨0, 1811⟩
    else if d = (4 : ℤ) then ⟨0, 1811⟩
    else if d = (6 : ℤ) then ⟨0, 1811⟩
    else if d = (8 : ℤ) then ⟨0, 1811⟩
    else ⟨0, 1810⟩

def cellA16B4 : CellData where
  inverse := 316
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 1811⟩
    else if d = (4 : ℤ) then ⟨0, 1811⟩
    else if d = (6 : ℤ) then ⟨0, 1811⟩
    else if d = (8 : ℤ) then ⟨0, 1811⟩
    else if d = (10 : ℤ) then ⟨0, 1811⟩
    else ⟨0, 1810⟩

def cellA16B5 : CellData where
  inverse := 316
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1811⟩
    else if d = (-8 : ℤ) then ⟨0, 1811⟩
    else if d = (1 : ℤ) then ⟨0, 1811⟩
    else if d = (2 : ℤ) then ⟨0, 1811⟩
    else if d = (10 : ℤ) then ⟨0, 1811⟩
    else ⟨0, 1810⟩

def cellA16B6 : CellData where
  inverse := 9691
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1811⟩
    else if d = (-3 : ℤ) then ⟨0, 1811⟩
    else if d = (2 : ℤ) then ⟨0, 1811⟩
    else if d = (5 : ℤ) then ⟨0, 1811⟩
    else if d = (10 : ℤ) then ⟨0, 1811⟩
    else ⟨0, 1810⟩

def cellA16B7 : CellData where
  inverse := 56566
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1519⟩
    else if d = (-5 : ℤ) then ⟨0, 1519⟩
    else if d = (-4 : ℤ) then ⟨0, 1519⟩
    else if d = (-1 : ℤ) then ⟨0, 1519⟩
    else if d = (3 : ℤ) then ⟨0, 1519⟩
    else if d = (6 : ℤ) then ⟨0, 1519⟩
    else if d = (7 : ℤ) then ⟨0, 1519⟩
    else if d = (10 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA16B8 : CellData where
  inverse := 369066
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (1 : ℤ) then ⟨0, 302⟩
    else if d = (2 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA16B9 : CellData where
  inverse := 759691
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 59⟩
    else if d = (-3 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (2 : ℤ) then ⟨0, 59⟩
    else if d = (5 : ℤ) then ⟨0, 59⟩
    else if d = (10 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA16B10 : CellData where
  inverse := 8572191
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 12⟩
    else if d = (-1 : ℤ) then ⟨0, 12⟩
    else if d = (7 : ℤ) then ⟨0, 12⟩
    else if d = (8 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA16B11 : CellData where
  inverse := 37869066
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2⟩
    else if d = (-9 : ℤ) then ⟨0, 2⟩
    else if d = (-6 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (-1 : ℤ) then ⟨0, 2⟩
    else if d = (3 : ℤ) then ⟨0, 2⟩
    else if d = (4 : ℤ) then ⟨0, 2⟩
    else if d = (7 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA16B12 : CellData where
  inverse := 184353441
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA16B13 : CellData where
  inverse := 916775316
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

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

def cellA16B26 : CellData where
  inverse := 642990016785915941
  bounds := fun _ => ⟨0, -1⟩

def cellA16B27 : CellData where
  inverse := 2133106136170681566
  bounds := fun _ => ⟨0, -1⟩

def cellA16B28 : CellData where
  inverse := 17034267330018337816
  bounds := fun _ => ⟨0, -1⟩

def cellA16B29 : CellData where
  inverse := 128792976283875759691
  bounds := fun _ => ⟨0, -1⟩

def cellA16B30 : CellData where
  inverse := 128792976283875759691
  bounds := fun _ => ⟨0, -1⟩

def cellA16B31 : CellData where
  inverse := 1991438125514832790941
  bounds := fun _ => ⟨0, -1⟩

def cellA16B32 : CellData where
  inverse := 15961276744747010525316
  bounds := fun _ => ⟨0, -1⟩

def cellA16B33 : CellData where
  inverse := 85810469840907899197191
  bounds := fun _ => ⟨0, -1⟩

def cellA16B34 : CellData where
  inverse := 435056435321712342556566
  bounds := fun _ => ⟨0, -1⟩

def cellA16B35 : CellData where
  inverse := 1599209653591060487087816
  bounds := fun _ => ⟨0, -1⟩

def cellA16B36 : CellData where
  inverse := 13240741836284541932400316
  bounds := fun _ => ⟨0, -1⟩

def cellA16B37 : CellData where
  inverse := 71448402749751949158962816
  bounds := fun _ => ⟨0, -1⟩

def cellA16B38 : CellData where
  inverse := 71448402749751949158962816
  bounds := fun _ => ⟨0, -1⟩

def cellA16B39 : CellData where
  inverse := 1526639925586437129823025316
  bounds := fun _ => ⟨0, -1⟩

def cellA16B40 : CellData where
  inverse := 5164618732678150081483181566
  bounds := fun _ => ⟨0, -1⟩

def cellA16B41 : CellData where
  inverse := 5164618732678150081483181566
  bounds := fun _ => ⟨0, -1⟩

def cellA16B42 : CellData where
  inverse := 96114088909970973872987087816
  bounds := fun _ => ⟨0, -1⟩

def cellA16B43 : CellData where
  inverse := 550861439796435092830506619066
  bounds := fun _ => ⟨0, -1⟩

def cellA16B44 : CellData where
  inverse := 550861439796435092830506619066
  bounds := fun _ => ⟨0, -1⟩

def cellA16B45 : CellData where
  inverse := 23288228984119641040706483181566
  bounds := fun _ => ⟨0, -1⟩

def cellA16B46 : CellData where
  inverse := 51709938414523648475551453884691
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
  else if b = 39 then cellA9B39
  else if b = 40 then cellA9B40
  else if b = 41 then cellA9B41
  else if b = 42 then cellA9B42
  else if b = 43 then cellA9B43
  else if b = 44 then cellA9B44
  else if b = 45 then cellA9B45
  else if b = 46 then cellA9B46
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
  else if b = 39 then cellA10B39
  else if b = 40 then cellA10B40
  else if b = 41 then cellA10B41
  else if b = 42 then cellA10B42
  else if b = 43 then cellA10B43
  else if b = 44 then cellA10B44
  else if b = 45 then cellA10B45
  else if b = 46 then cellA10B46
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
  else if b = 39 then cellA11B39
  else if b = 40 then cellA11B40
  else if b = 41 then cellA11B41
  else if b = 42 then cellA11B42
  else if b = 43 then cellA11B43
  else if b = 44 then cellA11B44
  else if b = 45 then cellA11B45
  else if b = 46 then cellA11B46
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
  else if b = 39 then cellA12B39
  else if b = 40 then cellA12B40
  else if b = 41 then cellA12B41
  else if b = 42 then cellA12B42
  else if b = 43 then cellA12B43
  else if b = 44 then cellA12B44
  else if b = 45 then cellA12B45
  else if b = 46 then cellA12B46
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
  else if b = 39 then cellA13B39
  else if b = 40 then cellA13B40
  else if b = 41 then cellA13B41
  else if b = 42 then cellA13B42
  else if b = 43 then cellA13B43
  else if b = 44 then cellA13B44
  else if b = 45 then cellA13B45
  else if b = 46 then cellA13B46
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
  else if b = 39 then cellA14B39
  else if b = 40 then cellA14B40
  else if b = 41 then cellA14B41
  else if b = 42 then cellA14B42
  else if b = 43 then cellA14B43
  else if b = 44 then cellA14B44
  else if b = 45 then cellA14B45
  else if b = 46 then cellA14B46
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
  else if b = 39 then cellA15B39
  else if b = 40 then cellA15B40
  else if b = 41 then cellA15B41
  else if b = 42 then cellA15B42
  else if b = 43 then cellA15B43
  else if b = 44 then cellA15B44
  else if b = 45 then cellA15B45
  else if b = 46 then cellA15B46
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
  else if b = 39 then cellA16B39
  else if b = 40 then cellA16B40
  else if b = 41 then cellA16B41
  else if b = 42 then cellA16B42
  else if b = 43 then cellA16B43
  else if b = 44 then cellA16B44
  else if b = 45 then cellA16B45
  else if b = 46 then cellA16B46
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

end Math.B699.CRTStage0Pair25.Chunk001
