import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage1Pair23.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA17B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (-3 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B2 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (-1 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B3 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, -1⟩
    else if d = (-2 : ℤ) then ⟨0, -1⟩
    else if d = (-1 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (10 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B4 : CellData where
  inverse := 29
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (-3 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (2 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B5 : CellData where
  inverse := 110
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-7 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (2 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B6 : CellData where
  inverse := 596
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (7 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B7 : CellData where
  inverse := 2054
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (2 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B8 : CellData where
  inverse := 6428
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

def cellA17B9 : CellData where
  inverse := 6428
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-7 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B10 : CellData where
  inverse := 26111
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (2 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B11 : CellData where
  inverse := 144209
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

def cellA17B12 : CellData where
  inverse := 144209
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA17B13 : CellData where
  inverse := 1207091
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA17B14 : CellData where
  inverse := 1207091
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA17B15 : CellData where
  inverse := 5990060
  bounds := fun _ => ⟨0, -1⟩

def cellA17B16 : CellData where
  inverse := 5990060
  bounds := fun _ => ⟨0, -1⟩

def cellA17B17 : CellData where
  inverse := 92083502
  bounds := fun _ => ⟨0, -1⟩

def cellA17B18 : CellData where
  inverse := 350363828
  bounds := fun _ => ⟨0, -1⟩

def cellA17B19 : CellData where
  inverse := 1125204806
  bounds := fun _ => ⟨0, -1⟩

def cellA17B20 : CellData where
  inverse := 3449727740
  bounds := fun _ => ⟨0, -1⟩

def cellA17B21 : CellData where
  inverse := 6936512141
  bounds := fun _ => ⟨0, -1⟩

def cellA17B22 : CellData where
  inverse := 17396865344
  bounds := fun _ => ⟨0, -1⟩

def cellA17B23 : CellData where
  inverse := 17396865344
  bounds := fun _ => ⟨0, -1⟩

def cellA17B24 : CellData where
  inverse := 205683222998
  bounds := fun _ => ⟨0, -1⟩

def cellA17B25 : CellData where
  inverse := 488112759479
  bounds := fun _ => ⟨0, -1⟩

def cellA17B26 : CellData where
  inverse := 2182689978365
  bounds := fun _ => ⟨0, -1⟩

def cellA17B27 : CellData where
  inverse := 2182689978365
  bounds := fun _ => ⟨0, -1⟩

def cellA17B28 : CellData where
  inverse := 17433884948339
  bounds := fun _ => ⟨0, -1⟩

def cellA17B29 : CellData where
  inverse := 63187469858261
  bounds := fun _ => ⟨0, -1⟩

def cellA17B30 : CellData where
  inverse := 200448224588027
  bounds := fun _ => ⟨0, -1⟩

def cellA17B31 : CellData where
  inverse := 612230488777325
  bounds := fun _ => ⟨0, -1⟩

def cellA17B32 : CellData where
  inverse := 1847577281345219
  bounds := fun _ => ⟨0, -1⟩

def cellA17B33 : CellData where
  inverse := 3700597470197060
  bounds := fun _ => ⟨0, -1⟩

def cellA17B34 : CellData where
  inverse := 9259658036752583
  bounds := fun _ => ⟨0, -1⟩

def cellA17B35 : CellData where
  inverse := 25936839736419152
  bounds := fun _ => ⟨0, -1⟩

def cellA17B36 : CellData where
  inverse := 125999929934418566
  bounds := fun _ => ⟨0, -1⟩

def cellA17B37 : CellData where
  inverse := 125999929934418566
  bounds := fun _ => ⟨0, -1⟩

def cellA17B38 : CellData where
  inverse := 1026567741716413292
  bounds := fun _ => ⟨0, -1⟩

def cellA18B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B2 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B3 : CellData where
  inverse := 1
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
    else ⟨0, -1⟩

def cellA18B4 : CellData where
  inverse := 55
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B5 : CellData where
  inverse := 55
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B6 : CellData where
  inverse := 298
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B7 : CellData where
  inverse := 1027
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B8 : CellData where
  inverse := 3214
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B9 : CellData where
  inverse := 3214
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B10 : CellData where
  inverse := 42580
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B11 : CellData where
  inverse := 160678
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B12 : CellData where
  inverse := 337825
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B13 : CellData where
  inverse := 1400707
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B14 : CellData where
  inverse := 2995030
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B15 : CellData where
  inverse := 2995030
  bounds := fun _ => ⟨0, -1⟩

def cellA18B16 : CellData where
  inverse := 2995030
  bounds := fun _ => ⟨0, -1⟩

def cellA18B17 : CellData where
  inverse := 46041751
  bounds := fun _ => ⟨0, -1⟩

def cellA18B18 : CellData where
  inverse := 175181914
  bounds := fun _ => ⟨0, -1⟩

def cellA18B19 : CellData where
  inverse := 562602403
  bounds := fun _ => ⟨0, -1⟩

def cellA18B20 : CellData where
  inverse := 1724863870
  bounds := fun _ => ⟨0, -1⟩

def cellA18B21 : CellData where
  inverse := 8698432672
  bounds := fun _ => ⟨0, -1⟩

def cellA18B22 : CellData where
  inverse := 8698432672
  bounds := fun _ => ⟨0, -1⟩

def cellA18B23 : CellData where
  inverse := 8698432672
  bounds := fun _ => ⟨0, -1⟩

def cellA18B24 : CellData where
  inverse := 102841611499
  bounds := fun _ => ⟨0, -1⟩

def cellA18B25 : CellData where
  inverse := 667700684461
  bounds := fun _ => ⟨0, -1⟩

def cellA18B26 : CellData where
  inverse := 2362277903347
  bounds := fun _ => ⟨0, -1⟩

def cellA18B27 : CellData where
  inverse := 4904143731676
  bounds := fun _ => ⟨0, -1⟩

def cellA18B28 : CellData where
  inverse := 20155338701650
  bounds := fun _ => ⟨0, -1⟩

def cellA18B29 : CellData where
  inverse := 65908923611572
  bounds := fun _ => ⟨0, -1⟩

def cellA18B30 : CellData where
  inverse := 203169678341338
  bounds := fun _ => ⟨0, -1⟩

def cellA18B31 : CellData where
  inverse := 614951942530636
  bounds := fun _ => ⟨0, -1⟩

def cellA18B32 : CellData where
  inverse := 1850298735098530
  bounds := fun _ => ⟨0, -1⟩

def cellA18B33 : CellData where
  inverse := 1850298735098530
  bounds := fun _ => ⟨0, -1⟩

def cellA18B34 : CellData where
  inverse := 12968419868209576
  bounds := fun _ => ⟨0, -1⟩

def cellA18B35 : CellData where
  inverse := 12968419868209576
  bounds := fun _ => ⟨0, -1⟩

def cellA18B36 : CellData where
  inverse := 62999964967209283
  bounds := fun _ => ⟨0, -1⟩

def cellA18B37 : CellData where
  inverse := 62999964967209283
  bounds := fun _ => ⟨0, -1⟩

def cellA18B38 : CellData where
  inverse := 513283870858206646
  bounds := fun _ => ⟨0, -1⟩

def cellA19B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA19B2 : CellData where
  inverse := 5
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B3 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B4 : CellData where
  inverse := 68
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B5 : CellData where
  inverse := 149
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B6 : CellData where
  inverse := 149
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B7 : CellData where
  inverse := 1607
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B8 : CellData where
  inverse := 1607
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B9 : CellData where
  inverse := 1607
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B10 : CellData where
  inverse := 21290
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B11 : CellData where
  inverse := 80339
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B12 : CellData where
  inverse := 434633
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B13 : CellData where
  inverse := 1497515
  bounds := fun _ => ⟨0, -1⟩

def cellA19B14 : CellData where
  inverse := 1497515
  bounds := fun _ => ⟨0, -1⟩

def cellA19B15 : CellData where
  inverse := 1497515
  bounds := fun _ => ⟨0, -1⟩

def cellA19B16 : CellData where
  inverse := 1497515
  bounds := fun _ => ⟨0, -1⟩

def cellA19B17 : CellData where
  inverse := 87590957
  bounds := fun _ => ⟨0, -1⟩

def cellA19B18 : CellData where
  inverse := 87590957
  bounds := fun _ => ⟨0, -1⟩

def cellA19B19 : CellData where
  inverse := 862431935
  bounds := fun _ => ⟨0, -1⟩

def cellA19B20 : CellData where
  inverse := 862431935
  bounds := fun _ => ⟨0, -1⟩

def cellA19B21 : CellData where
  inverse := 4349216336
  bounds := fun _ => ⟨0, -1⟩

def cellA19B22 : CellData where
  inverse := 4349216336
  bounds := fun _ => ⟨0, -1⟩

def cellA19B23 : CellData where
  inverse := 4349216336
  bounds := fun _ => ⟨0, -1⟩

def cellA19B24 : CellData where
  inverse := 192635573990
  bounds := fun _ => ⟨0, -1⟩

def cellA19B25 : CellData where
  inverse := 757494646952
  bounds := fun _ => ⟨0, -1⟩

def cellA19B26 : CellData where
  inverse := 2452071865838
  bounds := fun _ => ⟨0, -1⟩

def cellA19B27 : CellData where
  inverse := 2452071865838
  bounds := fun _ => ⟨0, -1⟩

def cellA19B28 : CellData where
  inverse := 10077669350825
  bounds := fun _ => ⟨0, -1⟩

def cellA19B29 : CellData where
  inverse := 32954461805786
  bounds := fun _ => ⟨0, -1⟩

def cellA19B30 : CellData where
  inverse := 101584839170669
  bounds := fun _ => ⟨0, -1⟩

def cellA19B31 : CellData where
  inverse := 307475971265318
  bounds := fun _ => ⟨0, -1⟩

def cellA19B32 : CellData where
  inverse := 925149367549265
  bounds := fun _ => ⟨0, -1⟩

def cellA19B33 : CellData where
  inverse := 925149367549265
  bounds := fun _ => ⟨0, -1⟩

def cellA19B34 : CellData where
  inverse := 6484209934104788
  bounds := fun _ => ⟨0, -1⟩

def cellA19B35 : CellData where
  inverse := 6484209934104788
  bounds := fun _ => ⟨0, -1⟩

def cellA19B36 : CellData where
  inverse := 106547300132104202
  bounds := fun _ => ⟨0, -1⟩

def cellA19B37 : CellData where
  inverse := 256641935429103323
  bounds := fun _ => ⟨0, -1⟩

def cellA19B38 : CellData where
  inverse := 256641935429103323
  bounds := fun _ => ⟨0, -1⟩

def cellA20B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA20B2 : CellData where
  inverse := 7
  bounds := fun _ => ⟨0, -1⟩

def cellA20B3 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA20B4 : CellData where
  inverse := 34
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA20B5 : CellData where
  inverse := 196
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA20B6 : CellData where
  inverse := 439
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA20B7 : CellData where
  inverse := 1897
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA20B8 : CellData where
  inverse := 4084
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA20B9 : CellData where
  inverse := 10645
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA20B10 : CellData where
  inverse := 10645
  bounds := fun d =>
    if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA20B11 : CellData where
  inverse := 128743
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA20B12 : CellData where
  inverse := 483037
  bounds := fun _ => ⟨0, -1⟩

def cellA20B13 : CellData where
  inverse := 1545919
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA20B14 : CellData where
  inverse := 3140242
  bounds := fun _ => ⟨0, -1⟩

def cellA20B15 : CellData where
  inverse := 7923211
  bounds := fun _ => ⟨0, -1⟩

def cellA20B16 : CellData where
  inverse := 22272118
  bounds := fun _ => ⟨0, -1⟩

def cellA20B17 : CellData where
  inverse := 108365560
  bounds := fun _ => ⟨0, -1⟩

def cellA20B18 : CellData where
  inverse := 237505723
  bounds := fun _ => ⟨0, -1⟩

def cellA20B19 : CellData where
  inverse := 1012346701
  bounds := fun _ => ⟨0, -1⟩

def cellA20B20 : CellData where
  inverse := 2174608168
  bounds := fun _ => ⟨0, -1⟩

def cellA20B21 : CellData where
  inverse := 2174608168
  bounds := fun _ => ⟨0, -1⟩

def cellA20B22 : CellData where
  inverse := 2174608168
  bounds := fun _ => ⟨0, -1⟩

def cellA20B23 : CellData where
  inverse := 2174608168
  bounds := fun _ => ⟨0, -1⟩

def cellA20B24 : CellData where
  inverse := 96317786995
  bounds := fun _ => ⟨0, -1⟩

def cellA20B25 : CellData where
  inverse := 378747323476
  bounds := fun _ => ⟨0, -1⟩

def cellA20B26 : CellData where
  inverse := 1226035932919
  bounds := fun _ => ⟨0, -1⟩

def cellA20B27 : CellData where
  inverse := 1226035932919
  bounds := fun _ => ⟨0, -1⟩

def cellA20B28 : CellData where
  inverse := 16477230902893
  bounds := fun _ => ⟨0, -1⟩

def cellA20B29 : CellData where
  inverse := 16477230902893
  bounds := fun _ => ⟨0, -1⟩

def cellA20B30 : CellData where
  inverse := 153737985632659
  bounds := fun _ => ⟨0, -1⟩

def cellA20B31 : CellData where
  inverse := 153737985632659
  bounds := fun _ => ⟨0, -1⟩

def cellA20B32 : CellData where
  inverse := 1389084778200553
  bounds := fun _ => ⟨0, -1⟩

def cellA20B33 : CellData where
  inverse := 3242104967052394
  bounds := fun _ => ⟨0, -1⟩

def cellA20B34 : CellData where
  inverse := 3242104967052394
  bounds := fun _ => ⟨0, -1⟩

def cellA20B35 : CellData where
  inverse := 3242104967052394
  bounds := fun _ => ⟨0, -1⟩

def cellA20B36 : CellData where
  inverse := 53273650066052101
  bounds := fun _ => ⟨0, -1⟩

def cellA20B37 : CellData where
  inverse := 353462920660050343
  bounds := fun _ => ⟨0, -1⟩

def cellA20B38 : CellData where
  inverse := 803746826551047706
  bounds := fun _ => ⟨0, -1⟩

def cellA21B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA21B2 : CellData where
  inverse := 8
  bounds := fun _ => ⟨0, -1⟩

def cellA21B3 : CellData where
  inverse := 17
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA21B4 : CellData where
  inverse := 17
  bounds := fun _ => ⟨0, -1⟩

def cellA21B5 : CellData where
  inverse := 98
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA21B6 : CellData where
  inverse := 584
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA21B7 : CellData where
  inverse := 2042
  bounds := fun _ => ⟨0, -1⟩

def cellA21B8 : CellData where
  inverse := 2042
  bounds := fun _ => ⟨0, -1⟩

def cellA21B9 : CellData where
  inverse := 15164
  bounds := fun _ => ⟨0, -1⟩

def cellA21B10 : CellData where
  inverse := 34847
  bounds := fun _ => ⟨0, -1⟩

def cellA21B11 : CellData where
  inverse := 152945
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA21B12 : CellData where
  inverse := 507239
  bounds := fun _ => ⟨0, -1⟩

def cellA21B13 : CellData where
  inverse := 1570121
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA21B14 : CellData where
  inverse := 1570121
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA21B15 : CellData where
  inverse := 11136059
  bounds := fun _ => ⟨0, -1⟩

def cellA21B16 : CellData where
  inverse := 11136059
  bounds := fun _ => ⟨0, -1⟩

def cellA21B17 : CellData where
  inverse := 54182780
  bounds := fun _ => ⟨0, -1⟩

def cellA21B18 : CellData where
  inverse := 312463106
  bounds := fun _ => ⟨0, -1⟩

def cellA21B19 : CellData where
  inverse := 1087304084
  bounds := fun _ => ⟨0, -1⟩

def cellA21B20 : CellData where
  inverse := 1087304084
  bounds := fun _ => ⟨0, -1⟩

def cellA21B21 : CellData where
  inverse := 1087304084
  bounds := fun _ => ⟨0, -1⟩

def cellA21B22 : CellData where
  inverse := 1087304084
  bounds := fun _ => ⟨0, -1⟩

def cellA21B23 : CellData where
  inverse := 1087304084
  bounds := fun _ => ⟨0, -1⟩

def cellA21B24 : CellData where
  inverse := 189373661738
  bounds := fun _ => ⟨0, -1⟩

def cellA21B25 : CellData where
  inverse := 189373661738
  bounds := fun _ => ⟨0, -1⟩

def cellA21B26 : CellData where
  inverse := 1883950880624
  bounds := fun _ => ⟨0, -1⟩

def cellA21B27 : CellData where
  inverse := 4425816708953
  bounds := fun _ => ⟨0, -1⟩

def cellA21B28 : CellData where
  inverse := 19677011678927
  bounds := fun _ => ⟨0, -1⟩

def cellA21B29 : CellData where
  inverse := 42553804133888
  bounds := fun _ => ⟨0, -1⟩

def cellA21B30 : CellData where
  inverse := 179814558863654
  bounds := fun _ => ⟨0, -1⟩

def cellA21B31 : CellData where
  inverse := 385705690958303
  bounds := fun _ => ⟨0, -1⟩

def cellA21B32 : CellData where
  inverse := 1621052483526197
  bounds := fun _ => ⟨0, -1⟩

def cellA21B33 : CellData where
  inverse := 1621052483526197
  bounds := fun _ => ⟨0, -1⟩

def cellA21B34 : CellData where
  inverse := 1621052483526197
  bounds := fun _ => ⟨0, -1⟩

def cellA21B35 : CellData where
  inverse := 1621052483526197
  bounds := fun _ => ⟨0, -1⟩

def cellA21B36 : CellData where
  inverse := 101684142681525611
  bounds := fun _ => ⟨0, -1⟩

def cellA21B37 : CellData where
  inverse := 401873413275523853
  bounds := fun _ => ⟨0, -1⟩

def cellA21B38 : CellData where
  inverse := 401873413275523853
  bounds := fun _ => ⟨0, -1⟩

def cellA22B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA22B2 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, -1⟩

def cellA22B3 : CellData where
  inverse := 22
  bounds := fun _ => ⟨0, -1⟩

def cellA22B4 : CellData where
  inverse := 49
  bounds := fun _ => ⟨0, -1⟩

def cellA22B5 : CellData where
  inverse := 49
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA22B6 : CellData where
  inverse := 292
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA22B7 : CellData where
  inverse := 1021
  bounds := fun _ => ⟨0, -1⟩

def cellA22B8 : CellData where
  inverse := 1021
  bounds := fun _ => ⟨0, -1⟩

def cellA22B9 : CellData where
  inverse := 7582
  bounds := fun _ => ⟨0, -1⟩

def cellA22B10 : CellData where
  inverse := 46948
  bounds := fun _ => ⟨0, -1⟩

def cellA22B11 : CellData where
  inverse := 165046
  bounds := fun _ => ⟨0, -1⟩

def cellA22B12 : CellData where
  inverse := 519340
  bounds := fun _ => ⟨0, -1⟩

def cellA22B13 : CellData where
  inverse := 1582222
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA22B14 : CellData where
  inverse := 3176545
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA22B15 : CellData where
  inverse := 12742483
  bounds := fun _ => ⟨0, -1⟩

def cellA22B16 : CellData where
  inverse := 27091390
  bounds := fun _ => ⟨0, -1⟩

def cellA22B17 : CellData where
  inverse := 27091390
  bounds := fun _ => ⟨0, -1⟩

def cellA22B18 : CellData where
  inverse := 156231553
  bounds := fun _ => ⟨0, -1⟩

def cellA22B19 : CellData where
  inverse := 543652042
  bounds := fun _ => ⟨0, -1⟩

def cellA22B20 : CellData where
  inverse := 543652042
  bounds := fun _ => ⟨0, -1⟩

def cellA22B21 : CellData where
  inverse := 543652042
  bounds := fun _ => ⟨0, -1⟩

def cellA22B22 : CellData where
  inverse := 543652042
  bounds := fun _ => ⟨0, -1⟩

def cellA22B23 : CellData where
  inverse := 543652042
  bounds := fun _ => ⟨0, -1⟩

def cellA22B24 : CellData where
  inverse := 94686830869
  bounds := fun _ => ⟨0, -1⟩

def cellA22B25 : CellData where
  inverse := 94686830869
  bounds := fun _ => ⟨0, -1⟩

def cellA22B26 : CellData where
  inverse := 941975440312
  bounds := fun _ => ⟨0, -1⟩

def cellA22B27 : CellData where
  inverse := 6025707096970
  bounds := fun _ => ⟨0, -1⟩

def cellA22B28 : CellData where
  inverse := 21276902066944
  bounds := fun _ => ⟨0, -1⟩

def cellA22B29 : CellData where
  inverse := 21276902066944
  bounds := fun _ => ⟨0, -1⟩

def cellA22B30 : CellData where
  inverse := 89907279431827
  bounds := fun _ => ⟨0, -1⟩

def cellA22B31 : CellData where
  inverse := 501689543621125
  bounds := fun _ => ⟨0, -1⟩

def cellA22B32 : CellData where
  inverse := 1737036336189019
  bounds := fun _ => ⟨0, -1⟩

def cellA22B33 : CellData where
  inverse := 3590056525040860
  bounds := fun _ => ⟨0, -1⟩

def cellA22B34 : CellData where
  inverse := 9149117091596383
  bounds := fun _ => ⟨0, -1⟩

def cellA22B35 : CellData where
  inverse := 25826298791262952
  bounds := fun _ => ⟨0, -1⟩

def cellA22B36 : CellData where
  inverse := 125889388989262366
  bounds := fun _ => ⟨0, -1⟩

def cellA22B37 : CellData where
  inverse := 426078659583260608
  bounds := fun _ => ⟨0, -1⟩

def cellA22B38 : CellData where
  inverse := 876362565474257971
  bounds := fun _ => ⟨0, -1⟩

def cellA23B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA23B2 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA23B3 : CellData where
  inverse := 11
  bounds := fun _ => ⟨0, -1⟩

def cellA23B4 : CellData where
  inverse := 65
  bounds := fun _ => ⟨0, -1⟩

def cellA23B5 : CellData where
  inverse := 146
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA23B6 : CellData where
  inverse := 146
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA23B7 : CellData where
  inverse := 1604
  bounds := fun _ => ⟨0, -1⟩

def cellA23B8 : CellData where
  inverse := 3791
  bounds := fun _ => ⟨0, -1⟩

def cellA23B9 : CellData where
  inverse := 3791
  bounds := fun _ => ⟨0, -1⟩

def cellA23B10 : CellData where
  inverse := 23474
  bounds := fun _ => ⟨0, -1⟩

def cellA23B11 : CellData where
  inverse := 82523
  bounds := fun _ => ⟨0, -1⟩

def cellA23B12 : CellData where
  inverse := 259670
  bounds := fun _ => ⟨0, -1⟩

def cellA23B13 : CellData where
  inverse := 791111
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA23B14 : CellData where
  inverse := 3979757
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA23B15 : CellData where
  inverse := 13545695
  bounds := fun _ => ⟨0, -1⟩

def cellA23B16 : CellData where
  inverse := 13545695
  bounds := fun _ => ⟨0, -1⟩

def cellA23B17 : CellData where
  inverse := 13545695
  bounds := fun _ => ⟨0, -1⟩

def cellA23B18 : CellData where
  inverse := 271826021
  bounds := fun _ => ⟨0, -1⟩

def cellA23B19 : CellData where
  inverse := 271826021
  bounds := fun _ => ⟨0, -1⟩

def cellA23B20 : CellData where
  inverse := 271826021
  bounds := fun _ => ⟨0, -1⟩

def cellA23B21 : CellData where
  inverse := 271826021
  bounds := fun _ => ⟨0, -1⟩

def cellA23B22 : CellData where
  inverse := 271826021
  bounds := fun _ => ⟨0, -1⟩

def cellA23B23 : CellData where
  inverse := 271826021
  bounds := fun _ => ⟨0, -1⟩

def cellA23B24 : CellData where
  inverse := 188558183675
  bounds := fun _ => ⟨0, -1⟩

def cellA23B25 : CellData where
  inverse := 470987720156
  bounds := fun _ => ⟨0, -1⟩

def cellA23B26 : CellData where
  inverse := 470987720156
  bounds := fun _ => ⟨0, -1⟩

def cellA23B27 : CellData where
  inverse := 3012853548485
  bounds := fun _ => ⟨0, -1⟩

def cellA23B28 : CellData where
  inverse := 10638451033472
  bounds := fun _ => ⟨0, -1⟩

def cellA23B29 : CellData where
  inverse := 10638451033472
  bounds := fun _ => ⟨0, -1⟩

def cellA23B30 : CellData where
  inverse := 147899205763238
  bounds := fun _ => ⟨0, -1⟩

def cellA23B31 : CellData where
  inverse := 559681469952536
  bounds := fun _ => ⟨0, -1⟩

def cellA23B32 : CellData where
  inverse := 1795028262520430
  bounds := fun _ => ⟨0, -1⟩

def cellA23B33 : CellData where
  inverse := 1795028262520430
  bounds := fun _ => ⟨0, -1⟩

def cellA23B34 : CellData where
  inverse := 12913149395631476
  bounds := fun _ => ⟨0, -1⟩

def cellA23B35 : CellData where
  inverse := 12913149395631476
  bounds := fun _ => ⟨0, -1⟩

def cellA23B36 : CellData where
  inverse := 62944694494631183
  bounds := fun _ => ⟨0, -1⟩

def cellA23B37 : CellData where
  inverse := 213039329791630304
  bounds := fun _ => ⟨0, -1⟩

def cellA23B38 : CellData where
  inverse := 1113607141573625030
  bounds := fun _ => ⟨0, -1⟩

def cellA24B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA24B2 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA24B3 : CellData where
  inverse := 19
  bounds := fun _ => ⟨0, -1⟩

def cellA24B4 : CellData where
  inverse := 73
  bounds := fun _ => ⟨0, -1⟩

def cellA24B5 : CellData where
  inverse := 73
  bounds := fun d =>
    if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA24B6 : CellData where
  inverse := 73
  bounds := fun d =>
    if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA24B7 : CellData where
  inverse := 802
  bounds := fun _ => ⟨0, -1⟩

def cellA24B8 : CellData where
  inverse := 5176
  bounds := fun _ => ⟨0, -1⟩

def cellA24B9 : CellData where
  inverse := 11737
  bounds := fun _ => ⟨0, -1⟩

def cellA24B10 : CellData where
  inverse := 11737
  bounds := fun _ => ⟨0, -1⟩

def cellA24B11 : CellData where
  inverse := 129835
  bounds := fun _ => ⟨0, -1⟩

def cellA24B12 : CellData where
  inverse := 129835
  bounds := fun _ => ⟨0, -1⟩

def cellA24B13 : CellData where
  inverse := 1192717
  bounds := fun _ => ⟨0, -1⟩

def cellA24B14 : CellData where
  inverse := 4381363
  bounds := fun _ => ⟨0, -1⟩

def cellA24B15 : CellData where
  inverse := 13947301
  bounds := fun _ => ⟨0, -1⟩

def cellA24B16 : CellData where
  inverse := 28296208
  bounds := fun _ => ⟨0, -1⟩

def cellA24B17 : CellData where
  inverse := 71342929
  bounds := fun _ => ⟨0, -1⟩

def cellA24B18 : CellData where
  inverse := 329623255
  bounds := fun _ => ⟨0, -1⟩

def cellA24B19 : CellData where
  inverse := 717043744
  bounds := fun _ => ⟨0, -1⟩

def cellA24B20 : CellData where
  inverse := 1879305211
  bounds := fun _ => ⟨0, -1⟩

def cellA24B21 : CellData where
  inverse := 5366089612
  bounds := fun _ => ⟨0, -1⟩

def cellA24B22 : CellData where
  inverse := 15826442815
  bounds := fun _ => ⟨0, -1⟩

def cellA24B23 : CellData where
  inverse := 47207502424
  bounds := fun _ => ⟨0, -1⟩

def cellA24B24 : CellData where
  inverse := 235493860078
  bounds := fun _ => ⟨0, -1⟩

def cellA24B25 : CellData where
  inverse := 235493860078
  bounds := fun _ => ⟨0, -1⟩

def cellA24B26 : CellData where
  inverse := 235493860078
  bounds := fun _ => ⟨0, -1⟩

def cellA24B27 : CellData where
  inverse := 5319225516736
  bounds := fun _ => ⟨0, -1⟩

def cellA24B28 : CellData where
  inverse := 5319225516736
  bounds := fun _ => ⟨0, -1⟩

def cellA24B29 : CellData where
  inverse := 5319225516736
  bounds := fun _ => ⟨0, -1⟩

def cellA24B30 : CellData where
  inverse := 73949602881619
  bounds := fun _ => ⟨0, -1⟩

def cellA24B31 : CellData where
  inverse := 279840734976268
  bounds := fun _ => ⟨0, -1⟩

def cellA24B32 : CellData where
  inverse := 897514131260215
  bounds := fun _ => ⟨0, -1⟩

def cellA24B33 : CellData where
  inverse := 897514131260215
  bounds := fun _ => ⟨0, -1⟩

def cellA24B34 : CellData where
  inverse := 6456574697815738
  bounds := fun _ => ⟨0, -1⟩

def cellA24B35 : CellData where
  inverse := 6456574697815738
  bounds := fun _ => ⟨0, -1⟩

def cellA24B36 : CellData where
  inverse := 106519664895815152
  bounds := fun _ => ⟨0, -1⟩

def cellA24B37 : CellData where
  inverse := 106519664895815152
  bounds := fun _ => ⟨0, -1⟩

def cellA24B38 : CellData where
  inverse := 556803570786812515
  bounds := fun _ => ⟨0, -1⟩

def rowA17 (b : ℕ) : CellData :=
  if b = 1 then cellA17B1
  else if b = 2 then cellA17B2
  else if b = 3 then cellA17B3
  else if b = 4 then cellA17B4
  else if b = 5 then cellA17B5
  else if b = 6 then cellA17B6
  else if b = 7 then cellA17B7
  else if b = 8 then cellA17B8
  else if b = 9 then cellA17B9
  else if b = 10 then cellA17B10
  else if b = 11 then cellA17B11
  else if b = 12 then cellA17B12
  else if b = 13 then cellA17B13
  else if b = 14 then cellA17B14
  else if b = 15 then cellA17B15
  else if b = 16 then cellA17B16
  else if b = 17 then cellA17B17
  else if b = 18 then cellA17B18
  else if b = 19 then cellA17B19
  else if b = 20 then cellA17B20
  else if b = 21 then cellA17B21
  else if b = 22 then cellA17B22
  else if b = 23 then cellA17B23
  else if b = 24 then cellA17B24
  else if b = 25 then cellA17B25
  else if b = 26 then cellA17B26
  else if b = 27 then cellA17B27
  else if b = 28 then cellA17B28
  else if b = 29 then cellA17B29
  else if b = 30 then cellA17B30
  else if b = 31 then cellA17B31
  else if b = 32 then cellA17B32
  else if b = 33 then cellA17B33
  else if b = 34 then cellA17B34
  else if b = 35 then cellA17B35
  else if b = 36 then cellA17B36
  else if b = 37 then cellA17B37
  else if b = 38 then cellA17B38
  else outsideCell

def rowA18 (b : ℕ) : CellData :=
  if b = 1 then cellA18B1
  else if b = 2 then cellA18B2
  else if b = 3 then cellA18B3
  else if b = 4 then cellA18B4
  else if b = 5 then cellA18B5
  else if b = 6 then cellA18B6
  else if b = 7 then cellA18B7
  else if b = 8 then cellA18B8
  else if b = 9 then cellA18B9
  else if b = 10 then cellA18B10
  else if b = 11 then cellA18B11
  else if b = 12 then cellA18B12
  else if b = 13 then cellA18B13
  else if b = 14 then cellA18B14
  else if b = 15 then cellA18B15
  else if b = 16 then cellA18B16
  else if b = 17 then cellA18B17
  else if b = 18 then cellA18B18
  else if b = 19 then cellA18B19
  else if b = 20 then cellA18B20
  else if b = 21 then cellA18B21
  else if b = 22 then cellA18B22
  else if b = 23 then cellA18B23
  else if b = 24 then cellA18B24
  else if b = 25 then cellA18B25
  else if b = 26 then cellA18B26
  else if b = 27 then cellA18B27
  else if b = 28 then cellA18B28
  else if b = 29 then cellA18B29
  else if b = 30 then cellA18B30
  else if b = 31 then cellA18B31
  else if b = 32 then cellA18B32
  else if b = 33 then cellA18B33
  else if b = 34 then cellA18B34
  else if b = 35 then cellA18B35
  else if b = 36 then cellA18B36
  else if b = 37 then cellA18B37
  else if b = 38 then cellA18B38
  else outsideCell

def rowA19 (b : ℕ) : CellData :=
  if b = 1 then cellA19B1
  else if b = 2 then cellA19B2
  else if b = 3 then cellA19B3
  else if b = 4 then cellA19B4
  else if b = 5 then cellA19B5
  else if b = 6 then cellA19B6
  else if b = 7 then cellA19B7
  else if b = 8 then cellA19B8
  else if b = 9 then cellA19B9
  else if b = 10 then cellA19B10
  else if b = 11 then cellA19B11
  else if b = 12 then cellA19B12
  else if b = 13 then cellA19B13
  else if b = 14 then cellA19B14
  else if b = 15 then cellA19B15
  else if b = 16 then cellA19B16
  else if b = 17 then cellA19B17
  else if b = 18 then cellA19B18
  else if b = 19 then cellA19B19
  else if b = 20 then cellA19B20
  else if b = 21 then cellA19B21
  else if b = 22 then cellA19B22
  else if b = 23 then cellA19B23
  else if b = 24 then cellA19B24
  else if b = 25 then cellA19B25
  else if b = 26 then cellA19B26
  else if b = 27 then cellA19B27
  else if b = 28 then cellA19B28
  else if b = 29 then cellA19B29
  else if b = 30 then cellA19B30
  else if b = 31 then cellA19B31
  else if b = 32 then cellA19B32
  else if b = 33 then cellA19B33
  else if b = 34 then cellA19B34
  else if b = 35 then cellA19B35
  else if b = 36 then cellA19B36
  else if b = 37 then cellA19B37
  else if b = 38 then cellA19B38
  else outsideCell

def rowA20 (b : ℕ) : CellData :=
  if b = 1 then cellA20B1
  else if b = 2 then cellA20B2
  else if b = 3 then cellA20B3
  else if b = 4 then cellA20B4
  else if b = 5 then cellA20B5
  else if b = 6 then cellA20B6
  else if b = 7 then cellA20B7
  else if b = 8 then cellA20B8
  else if b = 9 then cellA20B9
  else if b = 10 then cellA20B10
  else if b = 11 then cellA20B11
  else if b = 12 then cellA20B12
  else if b = 13 then cellA20B13
  else if b = 14 then cellA20B14
  else if b = 15 then cellA20B15
  else if b = 16 then cellA20B16
  else if b = 17 then cellA20B17
  else if b = 18 then cellA20B18
  else if b = 19 then cellA20B19
  else if b = 20 then cellA20B20
  else if b = 21 then cellA20B21
  else if b = 22 then cellA20B22
  else if b = 23 then cellA20B23
  else if b = 24 then cellA20B24
  else if b = 25 then cellA20B25
  else if b = 26 then cellA20B26
  else if b = 27 then cellA20B27
  else if b = 28 then cellA20B28
  else if b = 29 then cellA20B29
  else if b = 30 then cellA20B30
  else if b = 31 then cellA20B31
  else if b = 32 then cellA20B32
  else if b = 33 then cellA20B33
  else if b = 34 then cellA20B34
  else if b = 35 then cellA20B35
  else if b = 36 then cellA20B36
  else if b = 37 then cellA20B37
  else if b = 38 then cellA20B38
  else outsideCell

def rowA21 (b : ℕ) : CellData :=
  if b = 1 then cellA21B1
  else if b = 2 then cellA21B2
  else if b = 3 then cellA21B3
  else if b = 4 then cellA21B4
  else if b = 5 then cellA21B5
  else if b = 6 then cellA21B6
  else if b = 7 then cellA21B7
  else if b = 8 then cellA21B8
  else if b = 9 then cellA21B9
  else if b = 10 then cellA21B10
  else if b = 11 then cellA21B11
  else if b = 12 then cellA21B12
  else if b = 13 then cellA21B13
  else if b = 14 then cellA21B14
  else if b = 15 then cellA21B15
  else if b = 16 then cellA21B16
  else if b = 17 then cellA21B17
  else if b = 18 then cellA21B18
  else if b = 19 then cellA21B19
  else if b = 20 then cellA21B20
  else if b = 21 then cellA21B21
  else if b = 22 then cellA21B22
  else if b = 23 then cellA21B23
  else if b = 24 then cellA21B24
  else if b = 25 then cellA21B25
  else if b = 26 then cellA21B26
  else if b = 27 then cellA21B27
  else if b = 28 then cellA21B28
  else if b = 29 then cellA21B29
  else if b = 30 then cellA21B30
  else if b = 31 then cellA21B31
  else if b = 32 then cellA21B32
  else if b = 33 then cellA21B33
  else if b = 34 then cellA21B34
  else if b = 35 then cellA21B35
  else if b = 36 then cellA21B36
  else if b = 37 then cellA21B37
  else if b = 38 then cellA21B38
  else outsideCell

def rowA22 (b : ℕ) : CellData :=
  if b = 1 then cellA22B1
  else if b = 2 then cellA22B2
  else if b = 3 then cellA22B3
  else if b = 4 then cellA22B4
  else if b = 5 then cellA22B5
  else if b = 6 then cellA22B6
  else if b = 7 then cellA22B7
  else if b = 8 then cellA22B8
  else if b = 9 then cellA22B9
  else if b = 10 then cellA22B10
  else if b = 11 then cellA22B11
  else if b = 12 then cellA22B12
  else if b = 13 then cellA22B13
  else if b = 14 then cellA22B14
  else if b = 15 then cellA22B15
  else if b = 16 then cellA22B16
  else if b = 17 then cellA22B17
  else if b = 18 then cellA22B18
  else if b = 19 then cellA22B19
  else if b = 20 then cellA22B20
  else if b = 21 then cellA22B21
  else if b = 22 then cellA22B22
  else if b = 23 then cellA22B23
  else if b = 24 then cellA22B24
  else if b = 25 then cellA22B25
  else if b = 26 then cellA22B26
  else if b = 27 then cellA22B27
  else if b = 28 then cellA22B28
  else if b = 29 then cellA22B29
  else if b = 30 then cellA22B30
  else if b = 31 then cellA22B31
  else if b = 32 then cellA22B32
  else if b = 33 then cellA22B33
  else if b = 34 then cellA22B34
  else if b = 35 then cellA22B35
  else if b = 36 then cellA22B36
  else if b = 37 then cellA22B37
  else if b = 38 then cellA22B38
  else outsideCell

def rowA23 (b : ℕ) : CellData :=
  if b = 1 then cellA23B1
  else if b = 2 then cellA23B2
  else if b = 3 then cellA23B3
  else if b = 4 then cellA23B4
  else if b = 5 then cellA23B5
  else if b = 6 then cellA23B6
  else if b = 7 then cellA23B7
  else if b = 8 then cellA23B8
  else if b = 9 then cellA23B9
  else if b = 10 then cellA23B10
  else if b = 11 then cellA23B11
  else if b = 12 then cellA23B12
  else if b = 13 then cellA23B13
  else if b = 14 then cellA23B14
  else if b = 15 then cellA23B15
  else if b = 16 then cellA23B16
  else if b = 17 then cellA23B17
  else if b = 18 then cellA23B18
  else if b = 19 then cellA23B19
  else if b = 20 then cellA23B20
  else if b = 21 then cellA23B21
  else if b = 22 then cellA23B22
  else if b = 23 then cellA23B23
  else if b = 24 then cellA23B24
  else if b = 25 then cellA23B25
  else if b = 26 then cellA23B26
  else if b = 27 then cellA23B27
  else if b = 28 then cellA23B28
  else if b = 29 then cellA23B29
  else if b = 30 then cellA23B30
  else if b = 31 then cellA23B31
  else if b = 32 then cellA23B32
  else if b = 33 then cellA23B33
  else if b = 34 then cellA23B34
  else if b = 35 then cellA23B35
  else if b = 36 then cellA23B36
  else if b = 37 then cellA23B37
  else if b = 38 then cellA23B38
  else outsideCell

def rowA24 (b : ℕ) : CellData :=
  if b = 1 then cellA24B1
  else if b = 2 then cellA24B2
  else if b = 3 then cellA24B3
  else if b = 4 then cellA24B4
  else if b = 5 then cellA24B5
  else if b = 6 then cellA24B6
  else if b = 7 then cellA24B7
  else if b = 8 then cellA24B8
  else if b = 9 then cellA24B9
  else if b = 10 then cellA24B10
  else if b = 11 then cellA24B11
  else if b = 12 then cellA24B12
  else if b = 13 then cellA24B13
  else if b = 14 then cellA24B14
  else if b = 15 then cellA24B15
  else if b = 16 then cellA24B16
  else if b = 17 then cellA24B17
  else if b = 18 then cellA24B18
  else if b = 19 then cellA24B19
  else if b = 20 then cellA24B20
  else if b = 21 then cellA24B21
  else if b = 22 then cellA24B22
  else if b = 23 then cellA24B23
  else if b = 24 then cellA24B24
  else if b = 25 then cellA24B25
  else if b = 26 then cellA24B26
  else if b = 27 then cellA24B27
  else if b = 28 then cellA24B28
  else if b = 29 then cellA24B29
  else if b = 30 then cellA24B30
  else if b = 31 then cellA24B31
  else if b = 32 then cellA24B32
  else if b = 33 then cellA24B33
  else if b = 34 then cellA24B34
  else if b = 35 then cellA24B35
  else if b = 36 then cellA24B36
  else if b = 37 then cellA24B37
  else if b = 38 then cellA24B38
  else outsideCell

def chunkData (a b : ℕ) : CellData :=
  if a = 17 then rowA17 b
  else if a = 18 then rowA18 b
  else if a = 19 then rowA19 b
  else if a = 20 then rowA20 b
  else if a = 21 then rowA21 b
  else if a = 22 then rowA22 b
  else if a = 23 then rowA23 b
  else if a = 24 then rowA24 b
  else outsideCell

end Math.B699.CRTStage1Pair23.Chunk002
