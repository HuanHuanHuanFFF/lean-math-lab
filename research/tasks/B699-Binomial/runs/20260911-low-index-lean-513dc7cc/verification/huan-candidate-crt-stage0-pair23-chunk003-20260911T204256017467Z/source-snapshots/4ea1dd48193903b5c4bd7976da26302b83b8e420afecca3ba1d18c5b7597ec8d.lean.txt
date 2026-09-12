import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage0Pair23.Chunk003
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA25B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 3⟩ else if d = (-7 : ℤ) then ⟨0, 3⟩ else if d = (-4 : ℤ) then ⟨0, 3⟩ else if d = (-1 : ℤ) then ⟨0, 3⟩ else if d = (2 : ℤ) then ⟨0, 3⟩ else if d = (5 : ℤ) then ⟨0, 3⟩ else if d = (8 : ℤ) then ⟨0, 3⟩ else ⟨0, 2⟩

def cellA25B2 : CellData where
  inverse := 5
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 3⟩ else if d = (-7 : ℤ) then ⟨0, 3⟩ else if d = (-5 : ℤ) then ⟨0, 3⟩ else if d = (-3 : ℤ) then ⟨0, 3⟩ else if d = (-1 : ℤ) then ⟨0, 3⟩ else if d = (2 : ℤ) then ⟨0, 3⟩ else if d = (4 : ℤ) then ⟨0, 3⟩ else if d = (6 : ℤ) then ⟨0, 3⟩ else if d = (8 : ℤ) then ⟨0, 3⟩ else ⟨0, 2⟩

def cellA25B3 : CellData where
  inverse := 23
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 2⟩ else if d = (-5 : ℤ) then ⟨0, 2⟩ else if d = (-4 : ℤ) then ⟨0, 2⟩ else if d = (0 : ℤ) then ⟨0, 2⟩ else if d = (1 : ℤ) then ⟨0, 2⟩ else if d = (2 : ℤ) then ⟨0, 2⟩ else if d = (3 : ℤ) then ⟨0, 2⟩ else if d = (7 : ℤ) then ⟨0, 2⟩ else if d = (8 : ℤ) then ⟨0, 2⟩ else if d = (9 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA25B4 : CellData where
  inverse := 77
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 2⟩ else if d = (1 : ℤ) then ⟨0, 2⟩ else if d = (2 : ℤ) then ⟨0, 2⟩ else if d = (3 : ℤ) then ⟨0, 2⟩ else if d = (4 : ℤ) then ⟨0, 2⟩ else if d = (5 : ℤ) then ⟨0, 2⟩ else if d = (6 : ℤ) then ⟨0, 2⟩ else if d = (7 : ℤ) then ⟨0, 2⟩ else if d = (8 : ℤ) then ⟨0, 2⟩ else if d = (9 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA25B5 : CellData where
  inverse := 158
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 2⟩ else if d = (-5 : ℤ) then ⟨0, 2⟩ else if d = (-2 : ℤ) then ⟨0, 2⟩ else if d = (0 : ℤ) then ⟨0, 2⟩ else if d = (1 : ℤ) then ⟨0, 2⟩ else if d = (3 : ℤ) then ⟨0, 2⟩ else if d = (4 : ℤ) then ⟨0, 2⟩ else if d = (6 : ℤ) then ⟨0, 2⟩ else if d = (7 : ℤ) then ⟨0, 2⟩ else if d = (9 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA25B6 : CellData where
  inverse := 401
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 2⟩ else if d = (-6 : ℤ) then ⟨0, 2⟩ else if d = (-4 : ℤ) then ⟨0, 2⟩ else if d = (-2 : ℤ) then ⟨0, 2⟩ else if d = (0 : ℤ) then ⟨0, 2⟩ else if d = (1 : ℤ) then ⟨0, 2⟩ else if d = (3 : ℤ) then ⟨0, 2⟩ else if d = (5 : ℤ) then ⟨0, 2⟩ else if d = (7 : ℤ) then ⟨0, 2⟩ else if d = (9 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA25B7 : CellData where
  inverse := 401
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 2⟩ else if d = (-6 : ℤ) then ⟨0, 2⟩ else if d = (-2 : ℤ) then ⟨0, 2⟩ else if d = (-1 : ℤ) then ⟨0, 2⟩ else if d = (0 : ℤ) then ⟨0, 2⟩ else if d = (3 : ℤ) then ⟨0, 2⟩ else if d = (4 : ℤ) then ⟨0, 2⟩ else if d = (5 : ℤ) then ⟨0, 2⟩ else if d = (9 : ℤ) then ⟨0, 2⟩ else if d = (10 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA25B8 : CellData where
  inverse := 2588
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 3⟩ else if d = (-9 : ℤ) then ⟨0, 3⟩ else if d = (-7 : ℤ) then ⟨0, 3⟩ else if d = (-5 : ℤ) then ⟨0, 3⟩ else if d = (-4 : ℤ) then ⟨0, 3⟩ else if d = (-2 : ℤ) then ⟨0, 3⟩ else if d = (1 : ℤ) then ⟨0, 3⟩ else if d = (3 : ℤ) then ⟨0, 3⟩ else if d = (6 : ℤ) then ⟨0, 3⟩ else if d = (8 : ℤ) then ⟨0, 3⟩ else ⟨0, 2⟩

def cellA25B9 : CellData where
  inverse := 15710
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 3⟩ else if d = (-7 : ℤ) then ⟨0, 3⟩ else if d = (-6 : ℤ) then ⟨0, 3⟩ else if d = (-5 : ℤ) then ⟨0, 3⟩ else if d = (-2 : ℤ) then ⟨0, 3⟩ else if d = (-1 : ℤ) then ⟨0, 3⟩ else if d = (3 : ℤ) then ⟨0, 3⟩ else if d = (4 : ℤ) then ⟨0, 3⟩ else if d = (8 : ℤ) then ⟨0, 3⟩ else if d = (9 : ℤ) then ⟨0, 3⟩ else ⟨0, 2⟩

def cellA25B10 : CellData where
  inverse := 35393
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 3⟩ else if d = (-8 : ℤ) then ⟨0, 3⟩ else if d = (-6 : ℤ) then ⟨0, 3⟩ else if d = (-5 : ℤ) then ⟨0, 3⟩ else if d = (-3 : ℤ) then ⟨0, 3⟩ else if d = (-1 : ℤ) then ⟨0, 3⟩ else if d = (2 : ℤ) then ⟨0, 3⟩ else if d = (4 : ℤ) then ⟨0, 3⟩ else if d = (7 : ℤ) then ⟨0, 3⟩ else if d = (9 : ℤ) then ⟨0, 3⟩ else ⟨0, 2⟩

def cellA25B11 : CellData where
  inverse := 153491
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 2⟩ else if d = (-6 : ℤ) then ⟨0, 2⟩ else if d = (-5 : ℤ) then ⟨0, 2⟩ else if d = (0 : ℤ) then ⟨0, 2⟩ else if d = (1 : ℤ) then ⟨0, 2⟩ else if d = (2 : ℤ) then ⟨0, 2⟩ else if d = (3 : ℤ) then ⟨0, 2⟩ else if d = (8 : ℤ) then ⟨0, 2⟩ else if d = (9 : ℤ) then ⟨0, 2⟩ else if d = (10 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA25B12 : CellData where
  inverse := 330638
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 2⟩ else if d = (-7 : ℤ) then ⟨0, 2⟩ else if d = (-5 : ℤ) then ⟨0, 2⟩ else if d = (-2 : ℤ) then ⟨0, 2⟩ else if d = (0 : ℤ) then ⟨0, 2⟩ else if d = (1 : ℤ) then ⟨0, 2⟩ else if d = (3 : ℤ) then ⟨0, 2⟩ else if d = (6 : ℤ) then ⟨0, 2⟩ else if d = (8 : ℤ) then ⟨0, 2⟩ else if d = (9 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA25B13 : CellData where
  inverse := 1393520
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 2⟩ else if d = (-6 : ℤ) then ⟨0, 2⟩ else if d = (-5 : ℤ) then ⟨0, 2⟩ else if d = (0 : ℤ) then ⟨0, 2⟩ else if d = (1 : ℤ) then ⟨0, 2⟩ else if d = (2 : ℤ) then ⟨0, 2⟩ else if d = (3 : ℤ) then ⟨0, 2⟩ else if d = (8 : ℤ) then ⟨0, 2⟩ else if d = (9 : ℤ) then ⟨0, 2⟩ else if d = (10 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA25B14 : CellData where
  inverse := 4582166
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 3⟩ else if d = (-9 : ℤ) then ⟨0, 3⟩ else if d = (-8 : ℤ) then ⟨0, 3⟩ else if d = (-7 : ℤ) then ⟨0, 3⟩ else if d = (-6 : ℤ) then ⟨0, 3⟩ else if d = (-5 : ℤ) then ⟨0, 3⟩ else if d = (-4 : ℤ) then ⟨0, 3⟩ else if d = (-3 : ℤ) then ⟨0, 3⟩ else if d = (-2 : ℤ) then ⟨0, 3⟩ else if d = (-1 : ℤ) then ⟨0, 3⟩ else ⟨0, 2⟩

def cellA25B15 : CellData where
  inverse := 14148104
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 3⟩ else if d = (-9 : ℤ) then ⟨0, 3⟩ else if d = (-8 : ℤ) then ⟨0, 3⟩ else if d = (-7 : ℤ) then ⟨0, 3⟩ else if d = (-6 : ℤ) then ⟨0, 3⟩ else if d = (-5 : ℤ) then ⟨0, 3⟩ else if d = (-4 : ℤ) then ⟨0, 3⟩ else if d = (-3 : ℤ) then ⟨0, 3⟩ else if d = (-2 : ℤ) then ⟨0, 3⟩ else if d = (-1 : ℤ) then ⟨0, 3⟩ else ⟨0, 2⟩

def cellA25B16 : CellData where
  inverse := 14148104
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 1⟩ else if d = (3 : ℤ) then ⟨0, 1⟩ else if d = (6 : ℤ) then ⟨0, 1⟩ else if d = (9 : ℤ) then ⟨0, 1⟩ else ⟨0, 2⟩

def cellA25B17 : CellData where
  inverse := 100241546
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA25B18 : CellData where
  inverse := 358521872
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA25B19 : CellData where
  inverse := 358521872
  bounds := fun d => if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA25B20 : CellData where
  inverse := 2683044806
  bounds := fun _d => ⟨0, -1⟩

def cellA25B21 : CellData where
  inverse := 2683044806
  bounds := fun _d => ⟨0, -1⟩

def cellA25B22 : CellData where
  inverse := 23603751212
  bounds := fun _d => ⟨0, -1⟩

def cellA25B23 : CellData where
  inverse := 23603751212
  bounds := fun _d => ⟨0, -1⟩

def cellA25B24 : CellData where
  inverse := 117746930039
  bounds := fun _d => ⟨0, -1⟩

def cellA25B25 : CellData where
  inverse := 117746930039
  bounds := fun _d => ⟨0, -1⟩

def cellA25B26 : CellData where
  inverse := 117746930039
  bounds := fun _d => ⟨0, -1⟩

def cellA25B27 : CellData where
  inverse := 2659612758368
  bounds := fun _d => ⟨0, -1⟩

def cellA25B28 : CellData where
  inverse := 2659612758368
  bounds := fun _d => ⟨0, -1⟩

def cellA25B29 : CellData where
  inverse := 2659612758368
  bounds := fun _d => ⟨0, -1⟩

def cellA25B30 : CellData where
  inverse := 139920367488134
  bounds := fun _d => ⟨0, -1⟩

def cellA25B31 : CellData where
  inverse := 139920367488134
  bounds := fun _d => ⟨0, -1⟩

def cellA25B32 : CellData where
  inverse := 1375267160056028
  bounds := fun _d => ⟨0, -1⟩

def cellA25B33 : CellData where
  inverse := 3228287348907869
  bounds := fun _d => ⟨0, -1⟩

def cellA25B34 : CellData where
  inverse := 3228287348907869
  bounds := fun _d => ⟨0, -1⟩

def cellA25B35 : CellData where
  inverse := 3228287348907869
  bounds := fun _d => ⟨0, -1⟩

def cellA25B36 : CellData where
  inverse := 53259832447907576
  bounds := fun _d => ⟨0, -1⟩

def cellA25B37 : CellData where
  inverse := 53259832447907576
  bounds := fun _d => ⟨0, -1⟩

def cellA25B38 : CellData where
  inverse := 953827644229902302
  bounds := fun _d => ⟨0, -1⟩

def cellA25B39 : CellData where
  inverse := 2304679361902894391
  bounds := fun _d => ⟨0, -1⟩

def cellA25B40 : CellData where
  inverse := 10409789667940846925
  bounds := fun _d => ⟨0, -1⟩

def cellA25B41 : CellData where
  inverse := 34725120586054704527
  bounds := fun _d => ⟨0, -1⟩

def cellA25B42 : CellData where
  inverse := 34725120586054704527
  bounds := fun _d => ⟨0, -1⟩

def cellA25B43 : CellData where
  inverse := 144144109717567063736
  bounds := fun _d => ⟨0, -1⟩

def cellA25B44 : CellData where
  inverse := 144144109717567063736
  bounds := fun _d => ⟨0, -1⟩

def cellA25B45 : CellData where
  inverse := 144144109717567063736
  bounds := fun _d => ⟨0, -1⟩

def cellA25B46 : CellData where
  inverse := 144144109717567063736
  bounds := fun _d => ⟨0, -1⟩

def cellA25B47 : CellData where
  inverse := 9007082229370068159665
  bounds := fun _d => ⟨0, -1⟩

def cellA25B48 : CellData where
  inverse := 62184710947285074735239
  bounds := fun _d => ⟨0, -1⟩

def cellA25B49 : CellData where
  inverse := 62184710947285074735239
  bounds := fun _d => ⟨0, -1⟩

def cellA25B50 : CellData where
  inverse := 62184710947285074735239
  bounds := fun _d => ⟨0, -1⟩

def cellA25B51 : CellData where
  inverse := 780082698639137663505488
  bounds := fun _d => ⟨0, -1⟩

def cellA25B52 : CellData where
  inverse := 780082698639137663505488
  bounds := fun _d => ⟨0, -1⟩

def cellA25B53 : CellData where
  inverse := 780082698639137663505488
  bounds := fun _d => ⟨0, -1⟩

def cellA25B54 : CellData where
  inverse := 780082698639137663505488
  bounds := fun _d => ⟨0, -1⟩

def cellA25B55 : CellData where
  inverse := 780082698639137663505488
  bounds := fun _d => ⟨0, -1⟩

def cellA25B56 : CellData where
  inverse := 780082698639137663505488
  bounds := fun _d => ⟨0, -1⟩

def cellA25B57 : CellData where
  inverse := 1047475348753360212090528530
  bounds := fun _d => ⟨0, -1⟩

def cellA25B58 : CellData where
  inverse := 4187561146917523435371597656
  bounds := fun _d => ⟨0, -1⟩

def cellA25B59 : CellData where
  inverse := 8897689844163768270293201345
  bounds := fun _d => ⟨0, -1⟩

def cellA25B60 : CellData where
  inverse := 37158462027641237279822823479
  bounds := fun _d => ⟨0, -1⟩

def cellA25B61 : CellData where
  inverse := 121940778578073644308411689881
  bounds := fun _d => ⟨0, -1⟩

def cellA25B62 : CellData where
  inverse := 121940778578073644308411689881
  bounds := fun _d => ⟨0, -1⟩

def cellA25B63 : CellData where
  inverse := 503461203055019475937061588690
  bounds := fun _d => ⟨0, -1⟩

def cellA25B64 : CellData where
  inverse := 1648022476485856970823011285117
  bounds := fun _d => ⟨0, -1⟩

def cellA25B65 : CellData where
  inverse := 5081706296778369455480860374398
  bounds := fun _d => ⟨0, -1⟩

def cellA25B66 : CellData where
  inverse := 25683809218533444363427954910084
  bounds := fun _d => ⟨0, -1⟩

def cellA25B67 : CellData where
  inverse := 87490117983798669087269238517142
  bounds := fun _d => ⟨0, -1⟩

def cellA25B68 : CellData where
  inverse := 272909044279594343258793089338316
  bounds := fun _d => ⟨0, -1⟩

def cellA26B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA26B2 : CellData where
  inverse := 7
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA26B3 : CellData where
  inverse := 25
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA26B4 : CellData where
  inverse := 79
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA26B5 : CellData where
  inverse := 79
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA26B6 : CellData where
  inverse := 565
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA26B7 : CellData where
  inverse := 1294
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA26B8 : CellData where
  inverse := 1294
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA26B9 : CellData where
  inverse := 7855
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA26B10 : CellData where
  inverse := 47221
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA26B11 : CellData where
  inverse := 165319
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA26B12 : CellData where
  inverse := 165319
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA26B13 : CellData where
  inverse := 696760
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA26B14 : CellData where
  inverse := 2291083
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA26B15 : CellData where
  inverse := 7074052
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA26B16 : CellData where
  inverse := 7074052
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA26B17 : CellData where
  inverse := 50120773
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (5 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA26B18 : CellData where
  inverse := 179260936
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA26B19 : CellData where
  inverse := 179260936
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA26B20 : CellData where
  inverse := 1341522403
  bounds := fun _d => ⟨0, -1⟩

def cellA26B21 : CellData where
  inverse := 1341522403
  bounds := fun _d => ⟨0, -1⟩

def cellA26B22 : CellData where
  inverse := 11801875606
  bounds := fun _d => ⟨0, -1⟩

def cellA26B23 : CellData where
  inverse := 11801875606
  bounds := fun _d => ⟨0, -1⟩

def cellA26B24 : CellData where
  inverse := 200088233260
  bounds := fun _d => ⟨0, -1⟩

def cellA26B25 : CellData where
  inverse := 482517769741
  bounds := fun _d => ⟨0, -1⟩

def cellA26B26 : CellData where
  inverse := 1329806379184
  bounds := fun _d => ⟨0, -1⟩

def cellA26B27 : CellData where
  inverse := 1329806379184
  bounds := fun _d => ⟨0, -1⟩

def cellA26B28 : CellData where
  inverse := 1329806379184
  bounds := fun _d => ⟨0, -1⟩

def cellA26B29 : CellData where
  inverse := 1329806379184
  bounds := fun _d => ⟨0, -1⟩

def cellA26B30 : CellData where
  inverse := 69960183744067
  bounds := fun _d => ⟨0, -1⟩

def cellA26B31 : CellData where
  inverse := 69960183744067
  bounds := fun _d => ⟨0, -1⟩

def cellA26B32 : CellData where
  inverse := 687633580028014
  bounds := fun _d => ⟨0, -1⟩

def cellA26B33 : CellData where
  inverse := 4393673957731696
  bounds := fun _d => ⟨0, -1⟩

def cellA26B34 : CellData where
  inverse := 9952734524287219
  bounds := fun _d => ⟨0, -1⟩

def cellA26B35 : CellData where
  inverse := 26629916223953788
  bounds := fun _d => ⟨0, -1⟩

def cellA26B36 : CellData where
  inverse := 26629916223953788
  bounds := fun _d => ⟨0, -1⟩

def cellA26B37 : CellData where
  inverse := 26629916223953788
  bounds := fun _d => ⟨0, -1⟩

def cellA26B38 : CellData where
  inverse := 476913822114951151
  bounds := fun _d => ⟨0, -1⟩

def cellA26B39 : CellData where
  inverse := 3178617257460935329
  bounds := fun _d => ⟨0, -1⟩

def cellA26B40 : CellData where
  inverse := 11283727563498887863
  bounds := fun _d => ⟨0, -1⟩

def cellA26B41 : CellData where
  inverse := 35599058481612745465
  bounds := fun _d => ⟨0, -1⟩

def cellA26B42 : CellData where
  inverse := 72072054858783531868
  bounds := fun _d => ⟨0, -1⟩

def cellA26B43 : CellData where
  inverse := 72072054858783531868
  bounds := fun _d => ⟨0, -1⟩

def cellA26B44 : CellData where
  inverse := 72072054858783531868
  bounds := fun _d => ⟨0, -1⟩

def cellA26B45 : CellData where
  inverse := 72072054858783531868
  bounds := fun _d => ⟨0, -1⟩

def cellA26B46 : CellData where
  inverse := 72072054858783531868
  bounds := fun _d => ⟨0, -1⟩

def cellA26B47 : CellData where
  inverse := 17797948294163785723726
  bounds := fun _d => ⟨0, -1⟩

def cellA26B48 : CellData where
  inverse := 70975577012078792299300
  bounds := fun _d => ⟨0, -1⟩

def cellA26B49 : CellData where
  inverse := 150742020088951302162661
  bounds := fun _d => ⟨0, -1⟩

def cellA26B50 : CellData where
  inverse := 390041349319568831752744
  bounds := fun _d => ⟨0, -1⟩

def cellA26B51 : CellData where
  inverse := 390041349319568831752744
  bounds := fun _d => ⟨0, -1⟩

def cellA26B52 : CellData where
  inverse := 390041349319568831752744
  bounds := fun _d => ⟨0, -1⟩

def cellA26B53 : CellData where
  inverse := 390041349319568831752744
  bounds := fun _d => ⟨0, -1⟩

def cellA26B54 : CellData where
  inverse := 390041349319568831752744
  bounds := fun _d => ⟨0, -1⟩

def cellA26B55 : CellData where
  inverse := 390041349319568831752744
  bounds := fun _d => ⟨0, -1⟩

def cellA26B56 : CellData where
  inverse := 390041349319568831752744
  bounds := fun _d => ⟨0, -1⟩

def cellA26B57 : CellData where
  inverse := 523737674376680106045264265
  bounds := fun _d => ⟨0, -1⟩

def cellA26B58 : CellData where
  inverse := 2093780573458761717685798828
  bounds := fun _d => ⟨0, -1⟩

def cellA26B59 : CellData where
  inverse := 11514037967951251387529006206
  bounds := fun _d => ⟨0, -1⟩

def cellA26B60 : CellData where
  inverse := 39774810151428720397058628340
  bounds := fun _d => ⟨0, -1⟩

def cellA26B61 : CellData where
  inverse := 124557126701861127425647494742
  bounds := fun _d => ⟨0, -1⟩

def cellA26B62 : CellData where
  inverse := 251730601527509737968530794345
  bounds := fun _d => ⟨0, -1⟩

def cellA26B63 : CellData where
  inverse := 251730601527509737968530794345
  bounds := fun _d => ⟨0, -1⟩

def cellA26B64 : CellData where
  inverse := 2540853148389184727740430187199
  bounds := fun _d => ⟨0, -1⟩

def cellA26B65 : CellData where
  inverse := 2540853148389184727740430187199
  bounds := fun _d => ⟨0, -1⟩

def cellA26B66 : CellData where
  inverse := 12841904609266722181713977455042
  bounds := fun _d => ⟨0, -1⟩

def cellA26B67 : CellData where
  inverse := 43745058991899334543634619258571
  bounds := fun _d => ⟨0, -1⟩

def cellA26B68 : CellData where
  inverse := 136454522139797171629396544669158
  bounds := fun _d => ⟨0, -1⟩

def cellA27B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, -1⟩ else if d = (-6 : ℤ) then ⟨0, -1⟩ else if d = (-3 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (3 : ℤ) then ⟨0, -1⟩ else if d = (6 : ℤ) then ⟨0, -1⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B2 : CellData where
  inverse := 8
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, -1⟩ else if d = (-8 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (1 : ℤ) then ⟨0, -1⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else if d = (10 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B3 : CellData where
  inverse := 26
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (1 : ℤ) then ⟨0, -1⟩ else if d = (2 : ℤ) then ⟨0, -1⟩ else if d = (3 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B4 : CellData where
  inverse := 80
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (1 : ℤ) then ⟨0, -1⟩ else if d = (2 : ℤ) then ⟨0, -1⟩ else if d = (3 : ℤ) then ⟨0, -1⟩ else if d = (4 : ℤ) then ⟨0, -1⟩ else if d = (5 : ℤ) then ⟨0, -1⟩ else if d = (6 : ℤ) then ⟨0, -1⟩ else if d = (7 : ℤ) then ⟨0, -1⟩ else if d = (8 : ℤ) then ⟨0, -1⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B5 : CellData where
  inverse := 161
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (3 : ℤ) then ⟨0, -1⟩ else if d = (6 : ℤ) then ⟨0, -1⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B6 : CellData where
  inverse := 647
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (1 : ℤ) then ⟨0, -1⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B7 : CellData where
  inverse := 647
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (3 : ℤ) then ⟨0, -1⟩ else if d = (10 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B8 : CellData where
  inverse := 647
  bounds := fun d => if d = (-1 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else if d = (10 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B9 : CellData where
  inverse := 13769
  bounds := fun d => if d = (-3 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (7 : ℤ) then ⟨0, -1⟩ else if d = (10 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B10 : CellData where
  inverse := 53135
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (1 : ℤ) then ⟨0, -1⟩ else if d = (10 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B11 : CellData where
  inverse := 171233
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (1 : ℤ) then ⟨0, -1⟩ else if d = (2 : ℤ) then ⟨0, -1⟩ else if d = (3 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B12 : CellData where
  inverse := 348380
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (3 : ℤ) then ⟨0, -1⟩ else if d = (6 : ℤ) then ⟨0, -1⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B13 : CellData where
  inverse := 348380
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B14 : CellData where
  inverse := 3537026
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (4 : ℤ) then ⟨0, -1⟩ else if d = (8 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B15 : CellData where
  inverse := 3537026
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (4 : ℤ) then ⟨0, -1⟩ else if d = (8 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B16 : CellData where
  inverse := 3537026
  bounds := fun d => if d = (-1 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B17 : CellData where
  inverse := 89630468
  bounds := fun d => if d = (-3 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (10 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA27B18 : CellData where
  inverse := 89630468
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA27B19 : CellData where
  inverse := 89630468
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA27B20 : CellData where
  inverse := 2414153402
  bounds := fun _d => ⟨0, -1⟩

def cellA27B21 : CellData where
  inverse := 5900937803
  bounds := fun _d => ⟨0, -1⟩

def cellA27B22 : CellData where
  inverse := 5900937803
  bounds := fun _d => ⟨0, -1⟩

def cellA27B23 : CellData where
  inverse := 5900937803
  bounds := fun _d => ⟨0, -1⟩

def cellA27B24 : CellData where
  inverse := 100044116630
  bounds := fun _d => ⟨0, -1⟩

def cellA27B25 : CellData where
  inverse := 664903189592
  bounds := fun _d => ⟨0, -1⟩

def cellA27B26 : CellData where
  inverse := 664903189592
  bounds := fun _d => ⟨0, -1⟩

def cellA27B27 : CellData where
  inverse := 664903189592
  bounds := fun _d => ⟨0, -1⟩

def cellA27B28 : CellData where
  inverse := 664903189592
  bounds := fun _d => ⟨0, -1⟩

def cellA27B29 : CellData where
  inverse := 664903189592
  bounds := fun _d => ⟨0, -1⟩

def cellA27B30 : CellData where
  inverse := 137925657919358
  bounds := fun _d => ⟨0, -1⟩

def cellA27B31 : CellData where
  inverse := 343816790014007
  bounds := fun _d => ⟨0, -1⟩

def cellA27B32 : CellData where
  inverse := 343816790014007
  bounds := fun _d => ⟨0, -1⟩

def cellA27B33 : CellData where
  inverse := 2196836978865848
  bounds := fun _d => ⟨0, -1⟩

def cellA27B34 : CellData where
  inverse := 13314958111976894
  bounds := fun _d => ⟨0, -1⟩

def cellA27B35 : CellData where
  inverse := 13314958111976894
  bounds := fun _d => ⟨0, -1⟩

def cellA27B36 : CellData where
  inverse := 13314958111976894
  bounds := fun _d => ⟨0, -1⟩

def cellA27B37 : CellData where
  inverse := 13314958111976894
  bounds := fun _d => ⟨0, -1⟩

def cellA27B38 : CellData where
  inverse := 913882769893971620
  bounds := fun _d => ⟨0, -1⟩

def cellA27B39 : CellData where
  inverse := 3615586205239955798
  bounds := fun _d => ⟨0, -1⟩

def cellA27B40 : CellData where
  inverse := 11720696511277908332
  bounds := fun _d => ⟨0, -1⟩

def cellA27B41 : CellData where
  inverse := 36036027429391765934
  bounds := fun _d => ⟨0, -1⟩

def cellA27B42 : CellData where
  inverse := 36036027429391765934
  bounds := fun _d => ⟨0, -1⟩

def cellA27B43 : CellData where
  inverse := 36036027429391765934
  bounds := fun _d => ⟨0, -1⟩

def cellA27B44 : CellData where
  inverse := 36036027429391765934
  bounds := fun _d => ⟨0, -1⟩

def cellA27B45 : CellData where
  inverse := 36036027429391765934
  bounds := fun _d => ⟨0, -1⟩

def cellA27B46 : CellData where
  inverse := 36036027429391765934
  bounds := fun _d => ⟨0, -1⟩

def cellA27B47 : CellData where
  inverse := 8898974147081892861863
  bounds := fun _d => ⟨0, -1⟩

def cellA27B48 : CellData where
  inverse := 35487788506039396149650
  bounds := fun _d => ⟨0, -1⟩

def cellA27B49 : CellData where
  inverse := 195020674659784415876372
  bounds := fun _d => ⟨0, -1⟩

def cellA27B50 : CellData where
  inverse := 195020674659784415876372
  bounds := fun _d => ⟨0, -1⟩

def cellA27B51 : CellData where
  inverse := 195020674659784415876372
  bounds := fun _d => ⟨0, -1⟩

def cellA27B52 : CellData where
  inverse := 195020674659784415876372
  bounds := fun _d => ⟨0, -1⟩

def cellA27B53 : CellData where
  inverse := 195020674659784415876372
  bounds := fun _d => ⟨0, -1⟩

def cellA27B54 : CellData where
  inverse := 195020674659784415876372
  bounds := fun _d => ⟨0, -1⟩

def cellA27B55 : CellData where
  inverse := 195020674659784415876372
  bounds := fun _d => ⟨0, -1⟩

def cellA27B56 : CellData where
  inverse := 195020674659784415876372
  bounds := fun _d => ⟨0, -1⟩

def cellA27B57 : CellData where
  inverse := 1046890286729380858842899414
  bounds := fun _d => ⟨0, -1⟩

def cellA27B58 : CellData where
  inverse := 1046890286729380858842899414
  bounds := fun _d => ⟨0, -1⟩

def cellA27B59 : CellData where
  inverse := 5757018983975625693764503103
  bounds := fun _d => ⟨0, -1⟩

def cellA27B60 : CellData where
  inverse := 19887405075714360198529314170
  bounds := fun _d => ⟨0, -1⟩

def cellA27B61 : CellData where
  inverse := 62278563350930563712823747371
  bounds := fun _d => ⟨0, -1⟩

def cellA27B62 : CellData where
  inverse := 316625513002227784798590346577
  bounds := fun _d => ⟨0, -1⟩

def cellA27B63 : CellData where
  inverse := 698145937479173616427240245386
  bounds := fun _d => ⟨0, -1⟩

def cellA27B64 : CellData where
  inverse := 2987268484340848606199139638240
  bounds := fun _d => ⟨0, -1⟩

def cellA27B65 : CellData where
  inverse := 6420952304633361090856988727521
  bounds := fun _d => ⟨0, -1⟩

def cellA27B66 : CellData where
  inverse := 6420952304633361090856988727521
  bounds := fun _d => ⟨0, -1⟩

def cellA27B67 : CellData where
  inverse := 68227261069898585814698272334579
  bounds := fun _d => ⟨0, -1⟩

def cellA27B68 : CellData where
  inverse := 68227261069898585814698272334579
  bounds := fun _d => ⟨0, -1⟩

def cellA28B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B2 : CellData where
  inverse := 4
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B3 : CellData where
  inverse := 13
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B4 : CellData where
  inverse := 40
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B5 : CellData where
  inverse := 202
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B6 : CellData where
  inverse := 688
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B7 : CellData where
  inverse := 1417
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B8 : CellData where
  inverse := 3604
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B9 : CellData where
  inverse := 16726
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B10 : CellData where
  inverse := 56092
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B11 : CellData where
  inverse := 174190
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B12 : CellData where
  inverse := 174190
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B13 : CellData where
  inverse := 174190
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B14 : CellData where
  inverse := 1768513
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B15 : CellData where
  inverse := 1768513
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B16 : CellData where
  inverse := 1768513
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B17 : CellData where
  inverse := 44815234
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B18 : CellData where
  inverse := 44815234
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B19 : CellData where
  inverse := 44815234
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA28B20 : CellData where
  inverse := 1207076701
  bounds := fun _d => ⟨0, -1⟩

def cellA28B21 : CellData where
  inverse := 8180645503
  bounds := fun _d => ⟨0, -1⟩

def cellA28B22 : CellData where
  inverse := 18640998706
  bounds := fun _d => ⟨0, -1⟩

def cellA28B23 : CellData where
  inverse := 50022058315
  bounds := fun _d => ⟨0, -1⟩

def cellA28B24 : CellData where
  inverse := 50022058315
  bounds := fun _d => ⟨0, -1⟩

def cellA28B25 : CellData where
  inverse := 332451594796
  bounds := fun _d => ⟨0, -1⟩

def cellA28B26 : CellData where
  inverse := 332451594796
  bounds := fun _d => ⟨0, -1⟩

def cellA28B27 : CellData where
  inverse := 332451594796
  bounds := fun _d => ⟨0, -1⟩

def cellA28B28 : CellData where
  inverse := 332451594796
  bounds := fun _d => ⟨0, -1⟩

def cellA28B29 : CellData where
  inverse := 332451594796
  bounds := fun _d => ⟨0, -1⟩

def cellA28B30 : CellData where
  inverse := 68962828959679
  bounds := fun _d => ⟨0, -1⟩

def cellA28B31 : CellData where
  inverse := 480745093148977
  bounds := fun _d => ⟨0, -1⟩

def cellA28B32 : CellData where
  inverse := 1098418489432924
  bounds := fun _d => ⟨0, -1⟩

def cellA28B33 : CellData where
  inverse := 1098418489432924
  bounds := fun _d => ⟨0, -1⟩

def cellA28B34 : CellData where
  inverse := 6657479055988447
  bounds := fun _d => ⟨0, -1⟩

def cellA28B35 : CellData where
  inverse := 6657479055988447
  bounds := fun _d => ⟨0, -1⟩

def cellA28B36 : CellData where
  inverse := 6657479055988447
  bounds := fun _d => ⟨0, -1⟩

def cellA28B37 : CellData where
  inverse := 6657479055988447
  bounds := fun _d => ⟨0, -1⟩

def cellA28B38 : CellData where
  inverse := 456941384946985810
  bounds := fun _d => ⟨0, -1⟩

def cellA28B39 : CellData where
  inverse := 1807793102619977899
  bounds := fun _d => ⟨0, -1⟩

def cellA28B40 : CellData where
  inverse := 5860348255638954166
  bounds := fun _d => ⟨0, -1⟩

def cellA28B41 : CellData where
  inverse := 18018013714695882967
  bounds := fun _d => ⟨0, -1⟩

def cellA28B42 : CellData where
  inverse := 18018013714695882967
  bounds := fun _d => ⟨0, -1⟩

def cellA28B43 : CellData where
  inverse := 18018013714695882967
  bounds := fun _d => ⟨0, -1⟩

def cellA28B44 : CellData where
  inverse := 18018013714695882967
  bounds := fun _d => ⟨0, -1⟩

def cellA28B45 : CellData where
  inverse := 18018013714695882967
  bounds := fun _d => ⟨0, -1⟩

def cellA28B46 : CellData where
  inverse := 18018013714695882967
  bounds := fun _d => ⟨0, -1⟩

def cellA28B47 : CellData where
  inverse := 17743894253019698074825
  bounds := fun _d => ⟨0, -1⟩

def cellA28B48 : CellData where
  inverse := 17743894253019698074825
  bounds := fun _d => ⟨0, -1⟩

def cellA28B49 : CellData where
  inverse := 97510337329892207938186
  bounds := fun _d => ⟨0, -1⟩

def cellA28B50 : CellData where
  inverse := 97510337329892207938186
  bounds := fun _d => ⟨0, -1⟩

def cellA28B51 : CellData where
  inverse := 97510337329892207938186
  bounds := fun _d => ⟨0, -1⟩

def cellA28B52 : CellData where
  inverse := 97510337329892207938186
  bounds := fun _d => ⟨0, -1⟩

def cellA28B53 : CellData where
  inverse := 97510337329892207938186
  bounds := fun _d => ⟨0, -1⟩

def cellA28B54 : CellData where
  inverse := 97510337329892207938186
  bounds := fun _d => ⟨0, -1⟩

def cellA28B55 : CellData where
  inverse := 97510337329892207938186
  bounds := fun _d => ⟨0, -1⟩

def cellA28B56 : CellData where
  inverse := 97510337329892207938186
  bounds := fun _d => ⟨0, -1⟩

def cellA28B57 : CellData where
  inverse := 523445143364690429421449707
  bounds := fun _d => ⟨0, -1⟩

def cellA28B58 : CellData where
  inverse := 523445143364690429421449707
  bounds := fun _d => ⟨0, -1⟩

def cellA28B59 : CellData where
  inverse := 9943702537857180099264657085
  bounds := fun _d => ⟨0, -1⟩

def cellA28B60 : CellData where
  inverse := 9943702537857180099264657085
  bounds := fun _d => ⟨0, -1⟩

def cellA28B61 : CellData where
  inverse := 94726019088289587127853523487
  bounds := fun _d => ⟨0, -1⟩

def cellA28B62 : CellData where
  inverse := 349072968739586808213620122693
  bounds := fun _d => ⟨0, -1⟩

def cellA28B63 : CellData where
  inverse := 349072968739586808213620122693
  bounds := fun _d => ⟨0, -1⟩

def cellA28B64 : CellData where
  inverse := 1493634242170424303099569819120
  bounds := fun _d => ⟨0, -1⟩

def cellA28B65 : CellData where
  inverse := 8361001882755449272415267997682
  bounds := fun _d => ⟨0, -1⟩

def cellA28B66 : CellData where
  inverse := 18662053343632986726388815265525
  bounds := fun _d => ⟨0, -1⟩

def cellA28B67 : CellData where
  inverse := 80468362108898211450230098872583
  bounds := fun _d => ⟨0, -1⟩

def cellA28B68 : CellData where
  inverse := 173177825256796048535992024283170
  bounds := fun _d => ⟨0, -1⟩

def cellA29B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA29B2 : CellData where
  inverse := 2
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B3 : CellData where
  inverse := 20
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B4 : CellData where
  inverse := 20
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B5 : CellData where
  inverse := 101
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B6 : CellData where
  inverse := 344
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B7 : CellData where
  inverse := 1802
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B8 : CellData where
  inverse := 1802
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B9 : CellData where
  inverse := 8363
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B10 : CellData where
  inverse := 28046
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B11 : CellData where
  inverse := 87095
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B12 : CellData where
  inverse := 87095
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B13 : CellData where
  inverse := 87095
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B14 : CellData where
  inverse := 3275741
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B15 : CellData where
  inverse := 8058710
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B16 : CellData where
  inverse := 22407617
  bounds := fun d => if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B17 : CellData where
  inverse := 22407617
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B18 : CellData where
  inverse := 22407617
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B19 : CellData where
  inverse := 22407617
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B20 : CellData where
  inverse := 2346930551
  bounds := fun d => if d = (3 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA29B21 : CellData where
  inverse := 9320499353
  bounds := fun _d => ⟨0, -1⟩

def cellA29B22 : CellData where
  inverse := 9320499353
  bounds := fun _d => ⟨0, -1⟩

def cellA29B23 : CellData where
  inverse := 72082618571
  bounds := fun _d => ⟨0, -1⟩

def cellA29B24 : CellData where
  inverse := 166225797398
  bounds := fun _d => ⟨0, -1⟩

def cellA29B25 : CellData where
  inverse := 166225797398
  bounds := fun _d => ⟨0, -1⟩

def cellA29B26 : CellData where
  inverse := 166225797398
  bounds := fun _d => ⟨0, -1⟩

def cellA29B27 : CellData where
  inverse := 166225797398
  bounds := fun _d => ⟨0, -1⟩

def cellA29B28 : CellData where
  inverse := 166225797398
  bounds := fun _d => ⟨0, -1⟩

def cellA29B29 : CellData where
  inverse := 166225797398
  bounds := fun _d => ⟨0, -1⟩

def cellA29B30 : CellData where
  inverse := 137426980527164
  bounds := fun _d => ⟨0, -1⟩

def cellA29B31 : CellData where
  inverse := 549209244716462
  bounds := fun _d => ⟨0, -1⟩

def cellA29B32 : CellData where
  inverse := 549209244716462
  bounds := fun _d => ⟨0, -1⟩

def cellA29B33 : CellData where
  inverse := 549209244716462
  bounds := fun _d => ⟨0, -1⟩

def cellA29B34 : CellData where
  inverse := 11667330377827508
  bounds := fun _d => ⟨0, -1⟩

def cellA29B35 : CellData where
  inverse := 28344512077494077
  bounds := fun _d => ⟨0, -1⟩

def cellA29B36 : CellData where
  inverse := 78376057176493784
  bounds := fun _d => ⟨0, -1⟩

def cellA29B37 : CellData where
  inverse := 228470692473492905
  bounds := fun _d => ⟨0, -1⟩

def cellA29B38 : CellData where
  inverse := 228470692473492905
  bounds := fun _d => ⟨0, -1⟩

def cellA29B39 : CellData where
  inverse := 2930174127819477083
  bounds := fun _d => ⟨0, -1⟩

def cellA29B40 : CellData where
  inverse := 2930174127819477083
  bounds := fun _d => ⟨0, -1⟩

def cellA29B41 : CellData where
  inverse := 27245505045933334685
  bounds := fun _d => ⟨0, -1⟩

def cellA29B42 : CellData where
  inverse := 63718501423104121088
  bounds := fun _d => ⟨0, -1⟩

def cellA29B43 : CellData where
  inverse := 173137490554616480297
  bounds := fun _d => ⟨0, -1⟩

def cellA29B44 : CellData where
  inverse := 501394457949153557924
  bounds := fun _d => ⟨0, -1⟩

def cellA29B45 : CellData where
  inverse := 1486165360132764790805
  bounds := fun _d => ⟨0, -1⟩

def cellA29B46 : CellData where
  inverse := 4440478066683598489448
  bounds := fun _d => ⟨0, -1⟩

def cellA29B47 : CellData where
  inverse := 22166354305988600681306
  bounds := fun _d => ⟨0, -1⟩

def cellA29B48 : CellData where
  inverse := 48755168664946103969093
  bounds := fun _d => ⟨0, -1⟩

def cellA29B49 : CellData where
  inverse := 48755168664946103969093
  bounds := fun _d => ⟨0, -1⟩

def cellA29B50 : CellData where
  inverse := 48755168664946103969093
  bounds := fun _d => ⟨0, -1⟩

def cellA29B51 : CellData where
  inverse := 48755168664946103969093
  bounds := fun _d => ⟨0, -1⟩

def cellA29B52 : CellData where
  inverse := 48755168664946103969093
  bounds := fun _d => ⟨0, -1⟩

def cellA29B53 : CellData where
  inverse := 48755168664946103969093
  bounds := fun _d => ⟨0, -1⟩

def cellA29B54 : CellData where
  inverse := 48755168664946103969093
  bounds := fun _d => ⟨0, -1⟩

def cellA29B55 : CellData where
  inverse := 48755168664946103969093
  bounds := fun _d => ⟨0, -1⟩

def cellA29B56 : CellData where
  inverse := 48755168664946103969093
  bounds := fun _d => ⟨0, -1⟩

def cellA29B57 : CellData where
  inverse := 1046744021223386020530992135
  bounds := fun _d => ⟨0, -1⟩

def cellA29B58 : CellData where
  inverse := 2616786920305467632171526698
  bounds := fun _d => ⟨0, -1⟩

def cellA29B59 : CellData where
  inverse := 12037044314797957302014734076
  bounds := fun _d => ⟨0, -1⟩

def cellA29B60 : CellData where
  inverse := 26167430406536691806779545143
  bounds := fun _d => ⟨0, -1⟩

def cellA29B61 : CellData where
  inverse := 110949746956969098835368411545
  bounds := fun _d => ⟨0, -1⟩

def cellA29B62 : CellData where
  inverse := 365296696608266319921135010751
  bounds := fun _d => ⟨0, -1⟩

def cellA29B63 : CellData where
  inverse := 746817121085212151549784909560
  bounds := fun _d => ⟨0, -1⟩

def cellA29B64 : CellData where
  inverse := 746817121085212151549784909560
  bounds := fun _d => ⟨0, -1⟩

def cellA29B65 : CellData where
  inverse := 4180500941377724636207633998841
  bounds := fun _d => ⟨0, -1⟩

def cellA29B66 : CellData where
  inverse := 24782603863132799544154728534527
  bounds := fun _d => ⟨0, -1⟩

def cellA29B67 : CellData where
  inverse := 86588912628398024267996012141585
  bounds := fun _d => ⟨0, -1⟩

def cellA29B68 : CellData where
  inverse := 86588912628398024267996012141585
  bounds := fun _d => ⟨0, -1⟩

def cellA30B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA30B2 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA30B3 : CellData where
  inverse := 10
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B4 : CellData where
  inverse := 10
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B5 : CellData where
  inverse := 172
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B6 : CellData where
  inverse := 172
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B7 : CellData where
  inverse := 901
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B8 : CellData where
  inverse := 901
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B9 : CellData where
  inverse := 14023
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B10 : CellData where
  inverse := 14023
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B11 : CellData where
  inverse := 132121
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B12 : CellData where
  inverse := 309268
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B13 : CellData where
  inverse := 840709
  bounds := fun d => if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B14 : CellData where
  inverse := 4029355
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B15 : CellData where
  inverse := 4029355
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B16 : CellData where
  inverse := 32727169
  bounds := fun d => if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B17 : CellData where
  inverse := 75773890
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B18 : CellData where
  inverse := 204914053
  bounds := fun d => if d = (2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B19 : CellData where
  inverse := 592334542
  bounds := fun d => if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B20 : CellData where
  inverse := 2916857476
  bounds := fun d => if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA30B21 : CellData where
  inverse := 9890426278
  bounds := fun _d => ⟨0, -1⟩

def cellA30B22 : CellData where
  inverse := 20350779481
  bounds := fun _d => ⟨0, -1⟩

def cellA30B23 : CellData where
  inverse := 83112898699
  bounds := fun _d => ⟨0, -1⟩

def cellA30B24 : CellData where
  inverse := 83112898699
  bounds := fun _d => ⟨0, -1⟩

def cellA30B25 : CellData where
  inverse := 83112898699
  bounds := fun _d => ⟨0, -1⟩

def cellA30B26 : CellData where
  inverse := 83112898699
  bounds := fun _d => ⟨0, -1⟩

def cellA30B27 : CellData where
  inverse := 83112898699
  bounds := fun _d => ⟨0, -1⟩

def cellA30B28 : CellData where
  inverse := 83112898699
  bounds := fun _d => ⟨0, -1⟩

def cellA30B29 : CellData where
  inverse := 83112898699
  bounds := fun _d => ⟨0, -1⟩

def cellA30B30 : CellData where
  inverse := 68713490263582
  bounds := fun _d => ⟨0, -1⟩

def cellA30B31 : CellData where
  inverse := 274604622358231
  bounds := fun _d => ⟨0, -1⟩

def cellA30B32 : CellData where
  inverse := 274604622358231
  bounds := fun _d => ⟨0, -1⟩

def cellA30B33 : CellData where
  inverse := 274604622358231
  bounds := fun _d => ⟨0, -1⟩

def cellA30B34 : CellData where
  inverse := 5833665188913754
  bounds := fun _d => ⟨0, -1⟩

def cellA30B35 : CellData where
  inverse := 39188028588246892
  bounds := fun _d => ⟨0, -1⟩

def cellA30B36 : CellData where
  inverse := 39188028588246892
  bounds := fun _d => ⟨0, -1⟩

def cellA30B37 : CellData where
  inverse := 339377299182245134
  bounds := fun _d => ⟨0, -1⟩

def cellA30B38 : CellData where
  inverse := 789661205073242497
  bounds := fun _d => ⟨0, -1⟩

def cellA30B39 : CellData where
  inverse := 3491364640419226675
  bounds := fun _d => ⟨0, -1⟩

def cellA30B40 : CellData where
  inverse := 7543919793438202942
  bounds := fun _d => ⟨0, -1⟩

def cellA30B41 : CellData where
  inverse := 31859250711552060544
  bounds := fun _d => ⟨0, -1⟩

def cellA30B42 : CellData where
  inverse := 31859250711552060544
  bounds := fun _d => ⟨0, -1⟩

def cellA30B43 : CellData where
  inverse := 250697228974576778962
  bounds := fun _d => ⟨0, -1⟩

def cellA30B44 : CellData where
  inverse := 250697228974576778962
  bounds := fun _d => ⟨0, -1⟩

def cellA30B45 : CellData where
  inverse := 2220239033341799244724
  bounds := fun _d => ⟨0, -1⟩

def cellA30B46 : CellData where
  inverse := 2220239033341799244724
  bounds := fun _d => ⟨0, -1⟩

def cellA30B47 : CellData where
  inverse := 11083177152994300340653
  bounds := fun _d => ⟨0, -1⟩

def cellA30B48 : CellData where
  inverse := 64260805870909306916227
  bounds := fun _d => ⟨0, -1⟩

def cellA30B49 : CellData where
  inverse := 144027248947781816779588
  bounds := fun _d => ⟨0, -1⟩

def cellA30B50 : CellData where
  inverse := 383326578178399346369671
  bounds := fun _d => ⟨0, -1⟩

def cellA30B51 : CellData where
  inverse := 1101224565870251935139920
  bounds := fun _d => ⟨0, -1⟩

def cellA30B52 : CellData where
  inverse := 3254918528945809701450667
  bounds := fun _d => ⟨0, -1⟩

def cellA30B53 : CellData where
  inverse := 9716000418172483000382908
  bounds := fun _d => ⟨0, -1⟩

def cellA30B54 : CellData where
  inverse := 29099246085852502897179631
  bounds := fun _d => ⟨0, -1⟩

def cellA30B55 : CellData where
  inverse := 87248983088892562587569800
  bounds := fun _d => ⟨0, -1⟩

def cellA30B56 : CellData where
  inverse := 261698194098012741658740307
  bounds := fun _d => ⟨0, -1⟩

def cellA30B57 : CellData where
  inverse := 1308393460152733816085763349
  bounds := fun _d => ⟨0, -1⟩

def cellA30B58 : CellData where
  inverse := 1308393460152733816085763349
  bounds := fun _d => ⟨0, -1⟩

def cellA30B59 : CellData where
  inverse := 6018522157398978651007367038
  bounds := fun _d => ⟨0, -1⟩

def cellA30B60 : CellData where
  inverse := 34279294340876447660536989172
  bounds := fun _d => ⟨0, -1⟩

def cellA30B61 : CellData where
  inverse := 119061610891308854689125855574
  bounds := fun _d => ⟨0, -1⟩

def cellA30B62 : CellData where
  inverse := 373408560542606075774892454780
  bounds := fun _d => ⟨0, -1⟩

def cellA30B63 : CellData where
  inverse := 373408560542606075774892454780
  bounds := fun _d => ⟨0, -1⟩

def cellA30B64 : CellData where
  inverse := 373408560542606075774892454780
  bounds := fun _d => ⟨0, -1⟩

def cellA30B65 : CellData where
  inverse := 7240776201127631045090590633342
  bounds := fun _d => ⟨0, -1⟩

def cellA30B66 : CellData where
  inverse := 27842879122882705953037685169028
  bounds := fun _d => ⟨0, -1⟩

def cellA30B67 : CellData where
  inverse := 89649187888147930676878968776086
  bounds := fun _d => ⟨0, -1⟩

def cellA30B68 : CellData where
  inverse := 182358651036045767762640894186673
  bounds := fun _d => ⟨0, -1⟩

def cellA31B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA31B2 : CellData where
  inverse := 5
  bounds := fun _d => ⟨0, -1⟩

def cellA31B3 : CellData where
  inverse := 5
  bounds := fun _d => ⟨0, -1⟩

def cellA31B4 : CellData where
  inverse := 5
  bounds := fun _d => ⟨0, -1⟩

def cellA31B5 : CellData where
  inverse := 86
  bounds := fun _d => ⟨0, -1⟩

def cellA31B6 : CellData where
  inverse := 86
  bounds := fun _d => ⟨0, -1⟩

def cellA31B7 : CellData where
  inverse := 1544
  bounds := fun _d => ⟨0, -1⟩

def cellA31B8 : CellData where
  inverse := 3731
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA31B9 : CellData where
  inverse := 16853
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA31B10 : CellData where
  inverse := 36536
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA31B11 : CellData where
  inverse := 154634
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA31B12 : CellData where
  inverse := 154634
  bounds := fun d => if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA31B13 : CellData where
  inverse := 1217516
  bounds := fun d => if d = (4 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA31B14 : CellData where
  inverse := 4406162
  bounds := fun _d => ⟨0, -1⟩

def cellA31B15 : CellData where
  inverse := 9189131
  bounds := fun _d => ⟨0, -1⟩

def cellA31B16 : CellData where
  inverse := 37886945
  bounds := fun d => if d = (8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA31B17 : CellData where
  inverse := 37886945
  bounds := fun d => if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA31B18 : CellData where
  inverse := 296167271
  bounds := fun _d => ⟨0, -1⟩

def cellA31B19 : CellData where
  inverse := 296167271
  bounds := fun d => if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA31B20 : CellData where
  inverse := 1458428738
  bounds := fun _d => ⟨0, -1⟩

def cellA31B21 : CellData where
  inverse := 4945213139
  bounds := fun _d => ⟨0, -1⟩

def cellA31B22 : CellData where
  inverse := 25865919545
  bounds := fun _d => ⟨0, -1⟩

def cellA31B23 : CellData where
  inverse := 88628038763
  bounds := fun _d => ⟨0, -1⟩

def cellA31B24 : CellData where
  inverse := 182771217590
  bounds := fun _d => ⟨0, -1⟩

def cellA31B25 : CellData where
  inverse := 465200754071
  bounds := fun _d => ⟨0, -1⟩

def cellA31B26 : CellData where
  inverse := 1312489363514
  bounds := fun _d => ⟨0, -1⟩

def cellA31B27 : CellData where
  inverse := 3854355191843
  bounds := fun _d => ⟨0, -1⟩

def cellA31B28 : CellData where
  inverse := 11479952676830
  bounds := fun _d => ⟨0, -1⟩

def cellA31B29 : CellData where
  inverse := 34356745131791
  bounds := fun _d => ⟨0, -1⟩

def cellA31B30 : CellData where
  inverse := 34356745131791
  bounds := fun _d => ⟨0, -1⟩

def cellA31B31 : CellData where
  inverse := 446139009321089
  bounds := fun _d => ⟨0, -1⟩

def cellA31B32 : CellData where
  inverse := 1063812405605036
  bounds := fun _d => ⟨0, -1⟩

def cellA31B33 : CellData where
  inverse := 2916832594456877
  bounds := fun _d => ⟨0, -1⟩

def cellA31B34 : CellData where
  inverse := 2916832594456877
  bounds := fun _d => ⟨0, -1⟩

def cellA31B35 : CellData where
  inverse := 19594014294123446
  bounds := fun _d => ⟨0, -1⟩

def cellA31B36 : CellData where
  inverse := 19594014294123446
  bounds := fun _d => ⟨0, -1⟩

def cellA31B37 : CellData where
  inverse := 169688649591122567
  bounds := fun _d => ⟨0, -1⟩

def cellA31B38 : CellData where
  inverse := 1070256461373117293
  bounds := fun _d => ⟨0, -1⟩

def cellA31B39 : CellData where
  inverse := 3771959896719101471
  bounds := fun _d => ⟨0, -1⟩

def cellA31B40 : CellData where
  inverse := 3771959896719101471
  bounds := fun _d => ⟨0, -1⟩

def cellA31B41 : CellData where
  inverse := 15929625355776030272
  bounds := fun _d => ⟨0, -1⟩

def cellA31B42 : CellData where
  inverse := 15929625355776030272
  bounds := fun _d => ⟨0, -1⟩

def cellA31B43 : CellData where
  inverse := 125348614487288389481
  bounds := fun _d => ⟨0, -1⟩

def cellA31B44 : CellData where
  inverse := 125348614487288389481
  bounds := fun _d => ⟨0, -1⟩

def cellA31B45 : CellData where
  inverse := 1110119516670899622362
  bounds := fun _d => ⟨0, -1⟩

def cellA31B46 : CellData where
  inverse := 1110119516670899622362
  bounds := fun _d => ⟨0, -1⟩

def cellA31B47 : CellData where
  inverse := 18835995755975901814220
  bounds := fun _d => ⟨0, -1⟩

def cellA31B48 : CellData where
  inverse := 72013624473890908389794
  bounds := fun _d => ⟨0, -1⟩

def cellA31B49 : CellData where
  inverse := 72013624473890908389794
  bounds := fun _d => ⟨0, -1⟩

def cellA31B50 : CellData where
  inverse := 550612282935125967569960
  bounds := fun _d => ⟨0, -1⟩

def cellA31B51 : CellData where
  inverse := 550612282935125967569960
  bounds := fun _d => ⟨0, -1⟩

def cellA31B52 : CellData where
  inverse := 4858000209086241500191454
  bounds := fun _d => ⟨0, -1⟩

def cellA31B53 : CellData where
  inverse := 4858000209086241500191454
  bounds := fun _d => ⟨0, -1⟩

def cellA31B54 : CellData where
  inverse := 43624491544446281293784900
  bounds := fun _d => ⟨0, -1⟩

def cellA31B55 : CellData where
  inverse := 43624491544446281293784900
  bounds := fun _d => ⟨0, -1⟩

def cellA31B56 : CellData where
  inverse := 392522913562686639436125914
  bounds := fun _d => ⟨0, -1⟩

def cellA31B57 : CellData where
  inverse := 1439218179617407713863148956
  bounds := fun _d => ⟨0, -1⟩

def cellA31B58 : CellData where
  inverse := 3009261078699489325503683519
  bounds := fun _d => ⟨0, -1⟩

def cellA31B59 : CellData where
  inverse := 3009261078699489325503683519
  bounds := fun _d => ⟨0, -1⟩

def cellA31B60 : CellData where
  inverse := 17139647170438223830268494586
  bounds := fun _d => ⟨0, -1⟩

def cellA31B61 : CellData where
  inverse := 59530805445654427344562927787
  bounds := fun _d => ⟨0, -1⟩

def cellA31B62 : CellData where
  inverse := 186704280271303037887446227390
  bounds := fun _d => ⟨0, -1⟩

def cellA31B63 : CellData where
  inverse := 186704280271303037887446227390
  bounds := fun _d => ⟨0, -1⟩

def cellA31B64 : CellData where
  inverse := 186704280271303037887446227390
  bounds := fun _d => ⟨0, -1⟩

def cellA31B65 : CellData where
  inverse := 3620388100563815522545295316671
  bounds := fun _d => ⟨0, -1⟩

def cellA31B66 : CellData where
  inverse := 13921439561441352976518842584514
  bounds := fun _d => ⟨0, -1⟩

def cellA31B67 : CellData where
  inverse := 44824593944073965338439484388043
  bounds := fun _d => ⟨0, -1⟩

def cellA31B68 : CellData where
  inverse := 230243520239869639509963335209217
  bounds := fun _d => ⟨0, -1⟩

def cellA32B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA32B2 : CellData where
  inverse := 7
  bounds := fun _d => ⟨0, -1⟩

def cellA32B3 : CellData where
  inverse := 16
  bounds := fun _d => ⟨0, -1⟩

def cellA32B4 : CellData where
  inverse := 43
  bounds := fun _d => ⟨0, -1⟩

def cellA32B5 : CellData where
  inverse := 43
  bounds := fun _d => ⟨0, -1⟩

def cellA32B6 : CellData where
  inverse := 43
  bounds := fun _d => ⟨0, -1⟩

def cellA32B7 : CellData where
  inverse := 772
  bounds := fun _d => ⟨0, -1⟩

def cellA32B8 : CellData where
  inverse := 5146
  bounds := fun _d => ⟨0, -1⟩

def cellA32B9 : CellData where
  inverse := 18268
  bounds := fun _d => ⟨0, -1⟩

def cellA32B10 : CellData where
  inverse := 18268
  bounds := fun _d => ⟨0, -1⟩

def cellA32B11 : CellData where
  inverse := 77317
  bounds := fun _d => ⟨0, -1⟩

def cellA32B12 : CellData where
  inverse := 77317
  bounds := fun d => if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA32B13 : CellData where
  inverse := 608758
  bounds := fun _d => ⟨0, -1⟩

def cellA32B14 : CellData where
  inverse := 2203081
  bounds := fun _d => ⟨0, -1⟩

def cellA32B15 : CellData where
  inverse := 11769019
  bounds := fun _d => ⟨0, -1⟩

def cellA32B16 : CellData where
  inverse := 40466833
  bounds := fun _d => ⟨0, -1⟩

def cellA32B17 : CellData where
  inverse := 83513554
  bounds := fun _d => ⟨0, -1⟩

def cellA32B18 : CellData where
  inverse := 341793880
  bounds := fun _d => ⟨0, -1⟩

def cellA32B19 : CellData where
  inverse := 729214369
  bounds := fun d => if d = (8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA32B20 : CellData where
  inverse := 729214369
  bounds := fun _d => ⟨0, -1⟩

def cellA32B21 : CellData where
  inverse := 7702783171
  bounds := fun _d => ⟨0, -1⟩

def cellA32B22 : CellData where
  inverse := 28623489577
  bounds := fun _d => ⟨0, -1⟩

def cellA32B23 : CellData where
  inverse := 91385608795
  bounds := fun _d => ⟨0, -1⟩

def cellA32B24 : CellData where
  inverse := 91385608795
  bounds := fun _d => ⟨0, -1⟩

def cellA32B25 : CellData where
  inverse := 656244681757
  bounds := fun _d => ⟨0, -1⟩

def cellA32B26 : CellData where
  inverse := 656244681757
  bounds := fun _d => ⟨0, -1⟩

def cellA32B27 : CellData where
  inverse := 5739976338415
  bounds := fun _d => ⟨0, -1⟩

def cellA32B28 : CellData where
  inverse := 5739976338415
  bounds := fun _d => ⟨0, -1⟩

def cellA32B29 : CellData where
  inverse := 51493561248337
  bounds := fun _d => ⟨0, -1⟩

def cellA32B30 : CellData where
  inverse := 120123938613220
  bounds := fun _d => ⟨0, -1⟩

def cellA32B31 : CellData where
  inverse := 531906202802518
  bounds := fun _d => ⟨0, -1⟩

def cellA32B32 : CellData where
  inverse := 531906202802518
  bounds := fun _d => ⟨0, -1⟩

def cellA32B33 : CellData where
  inverse := 4237946580506200
  bounds := fun _d => ⟨0, -1⟩

def cellA32B34 : CellData where
  inverse := 9797007147061723
  bounds := fun _d => ⟨0, -1⟩

def cellA32B35 : CellData where
  inverse := 9797007147061723
  bounds := fun _d => ⟨0, -1⟩

def cellA32B36 : CellData where
  inverse := 9797007147061723
  bounds := fun _d => ⟨0, -1⟩

def cellA32B37 : CellData where
  inverse := 309986277741059965
  bounds := fun _d => ⟨0, -1⟩

def cellA32B38 : CellData where
  inverse := 1210554089523054691
  bounds := fun _d => ⟨0, -1⟩

def cellA32B39 : CellData where
  inverse := 3912257524869038869
  bounds := fun _d => ⟨0, -1⟩

def cellA32B40 : CellData where
  inverse := 7964812677888015136
  bounds := fun _d => ⟨0, -1⟩

def cellA32B41 : CellData where
  inverse := 7964812677888015136
  bounds := fun _d => ⟨0, -1⟩

def cellA32B42 : CellData where
  inverse := 7964812677888015136
  bounds := fun _d => ⟨0, -1⟩

def cellA32B43 : CellData where
  inverse := 226802790940912733554
  bounds := fun _d => ⟨0, -1⟩

def cellA32B44 : CellData where
  inverse := 555059758335449811181
  bounds := fun _d => ⟨0, -1⟩

def cellA32B45 : CellData where
  inverse := 555059758335449811181
  bounds := fun _d => ⟨0, -1⟩

def cellA32B46 : CellData where
  inverse := 555059758335449811181
  bounds := fun _d => ⟨0, -1⟩

def cellA32B47 : CellData where
  inverse := 9417997877987950907110
  bounds := fun _d => ⟨0, -1⟩

def cellA32B48 : CellData where
  inverse := 36006812236945454194897
  bounds := fun _d => ⟨0, -1⟩

def cellA32B49 : CellData where
  inverse := 36006812236945454194897
  bounds := fun _d => ⟨0, -1⟩

def cellA32B50 : CellData where
  inverse := 275306141467562983784980
  bounds := fun _d => ⟨0, -1⟩

def cellA32B51 : CellData where
  inverse := 275306141467562983784980
  bounds := fun _d => ⟨0, -1⟩

def cellA32B52 : CellData where
  inverse := 2429000104543120750095727
  bounds := fun _d => ⟨0, -1⟩

def cellA32B53 : CellData where
  inverse := 2429000104543120750095727
  bounds := fun _d => ⟨0, -1⟩

def cellA32B54 : CellData where
  inverse := 21812245772223140646892450
  bounds := fun _d => ⟨0, -1⟩

def cellA32B55 : CellData where
  inverse := 21812245772223140646892450
  bounds := fun _d => ⟨0, -1⟩

def cellA32B56 : CellData where
  inverse := 196261456781343319718062957
  bounds := fun _d => ⟨0, -1⟩

def cellA32B57 : CellData where
  inverse := 719609089808703856931574478
  bounds := fun _d => ⟨0, -1⟩

def cellA32B58 : CellData where
  inverse := 3859694887972867080212643604
  bounds := fun _d => ⟨0, -1⟩

def cellA32B59 : CellData where
  inverse := 8569823585219111915134247293
  bounds := fun _d => ⟨0, -1⟩

def cellA32B60 : CellData where
  inverse := 8569823585219111915134247293
  bounds := fun _d => ⟨0, -1⟩

def cellA32B61 : CellData where
  inverse := 93352140135651518943723113695
  bounds := fun _d => ⟨0, -1⟩

def cellA32B62 : CellData where
  inverse := 93352140135651518943723113695
  bounds := fun _d => ⟨0, -1⟩

def cellA32B63 : CellData where
  inverse := 93352140135651518943723113695
  bounds := fun _d => ⟨0, -1⟩

def cellA32B64 : CellData where
  inverse := 93352140135651518943723113695
  bounds := fun _d => ⟨0, -1⟩

def cellA32B65 : CellData where
  inverse := 6960719780720676488259421292257
  bounds := fun _d => ⟨0, -1⟩

def cellA32B66 : CellData where
  inverse := 6960719780720676488259421292257
  bounds := fun _d => ⟨0, -1⟩

def cellA32B67 : CellData where
  inverse := 68767028545985901212100704899315
  bounds := fun _d => ⟨0, -1⟩

def cellA32B68 : CellData where
  inverse := 254185954841781575383624555720489
  bounds := fun _d => ⟨0, -1⟩

def rowA25 (b : ℕ) : CellData :=
  if b = 1 then cellA25B1
  else if b = 2 then cellA25B2
  else if b = 3 then cellA25B3
  else if b = 4 then cellA25B4
  else if b = 5 then cellA25B5
  else if b = 6 then cellA25B6
  else if b = 7 then cellA25B7
  else if b = 8 then cellA25B8
  else if b = 9 then cellA25B9
  else if b = 10 then cellA25B10
  else if b = 11 then cellA25B11
  else if b = 12 then cellA25B12
  else if b = 13 then cellA25B13
  else if b = 14 then cellA25B14
  else if b = 15 then cellA25B15
  else if b = 16 then cellA25B16
  else if b = 17 then cellA25B17
  else if b = 18 then cellA25B18
  else if b = 19 then cellA25B19
  else if b = 20 then cellA25B20
  else if b = 21 then cellA25B21
  else if b = 22 then cellA25B22
  else if b = 23 then cellA25B23
  else if b = 24 then cellA25B24
  else if b = 25 then cellA25B25
  else if b = 26 then cellA25B26
  else if b = 27 then cellA25B27
  else if b = 28 then cellA25B28
  else if b = 29 then cellA25B29
  else if b = 30 then cellA25B30
  else if b = 31 then cellA25B31
  else if b = 32 then cellA25B32
  else if b = 33 then cellA25B33
  else if b = 34 then cellA25B34
  else if b = 35 then cellA25B35
  else if b = 36 then cellA25B36
  else if b = 37 then cellA25B37
  else if b = 38 then cellA25B38
  else if b = 39 then cellA25B39
  else if b = 40 then cellA25B40
  else if b = 41 then cellA25B41
  else if b = 42 then cellA25B42
  else if b = 43 then cellA25B43
  else if b = 44 then cellA25B44
  else if b = 45 then cellA25B45
  else if b = 46 then cellA25B46
  else if b = 47 then cellA25B47
  else if b = 48 then cellA25B48
  else if b = 49 then cellA25B49
  else if b = 50 then cellA25B50
  else if b = 51 then cellA25B51
  else if b = 52 then cellA25B52
  else if b = 53 then cellA25B53
  else if b = 54 then cellA25B54
  else if b = 55 then cellA25B55
  else if b = 56 then cellA25B56
  else if b = 57 then cellA25B57
  else if b = 58 then cellA25B58
  else if b = 59 then cellA25B59
  else if b = 60 then cellA25B60
  else if b = 61 then cellA25B61
  else if b = 62 then cellA25B62
  else if b = 63 then cellA25B63
  else if b = 64 then cellA25B64
  else if b = 65 then cellA25B65
  else if b = 66 then cellA25B66
  else if b = 67 then cellA25B67
  else if b = 68 then cellA25B68
  else outsideCell

def rowA26 (b : ℕ) : CellData :=
  if b = 1 then cellA26B1
  else if b = 2 then cellA26B2
  else if b = 3 then cellA26B3
  else if b = 4 then cellA26B4
  else if b = 5 then cellA26B5
  else if b = 6 then cellA26B6
  else if b = 7 then cellA26B7
  else if b = 8 then cellA26B8
  else if b = 9 then cellA26B9
  else if b = 10 then cellA26B10
  else if b = 11 then cellA26B11
  else if b = 12 then cellA26B12
  else if b = 13 then cellA26B13
  else if b = 14 then cellA26B14
  else if b = 15 then cellA26B15
  else if b = 16 then cellA26B16
  else if b = 17 then cellA26B17
  else if b = 18 then cellA26B18
  else if b = 19 then cellA26B19
  else if b = 20 then cellA26B20
  else if b = 21 then cellA26B21
  else if b = 22 then cellA26B22
  else if b = 23 then cellA26B23
  else if b = 24 then cellA26B24
  else if b = 25 then cellA26B25
  else if b = 26 then cellA26B26
  else if b = 27 then cellA26B27
  else if b = 28 then cellA26B28
  else if b = 29 then cellA26B29
  else if b = 30 then cellA26B30
  else if b = 31 then cellA26B31
  else if b = 32 then cellA26B32
  else if b = 33 then cellA26B33
  else if b = 34 then cellA26B34
  else if b = 35 then cellA26B35
  else if b = 36 then cellA26B36
  else if b = 37 then cellA26B37
  else if b = 38 then cellA26B38
  else if b = 39 then cellA26B39
  else if b = 40 then cellA26B40
  else if b = 41 then cellA26B41
  else if b = 42 then cellA26B42
  else if b = 43 then cellA26B43
  else if b = 44 then cellA26B44
  else if b = 45 then cellA26B45
  else if b = 46 then cellA26B46
  else if b = 47 then cellA26B47
  else if b = 48 then cellA26B48
  else if b = 49 then cellA26B49
  else if b = 50 then cellA26B50
  else if b = 51 then cellA26B51
  else if b = 52 then cellA26B52
  else if b = 53 then cellA26B53
  else if b = 54 then cellA26B54
  else if b = 55 then cellA26B55
  else if b = 56 then cellA26B56
  else if b = 57 then cellA26B57
  else if b = 58 then cellA26B58
  else if b = 59 then cellA26B59
  else if b = 60 then cellA26B60
  else if b = 61 then cellA26B61
  else if b = 62 then cellA26B62
  else if b = 63 then cellA26B63
  else if b = 64 then cellA26B64
  else if b = 65 then cellA26B65
  else if b = 66 then cellA26B66
  else if b = 67 then cellA26B67
  else if b = 68 then cellA26B68
  else outsideCell

def rowA27 (b : ℕ) : CellData :=
  if b = 1 then cellA27B1
  else if b = 2 then cellA27B2
  else if b = 3 then cellA27B3
  else if b = 4 then cellA27B4
  else if b = 5 then cellA27B5
  else if b = 6 then cellA27B6
  else if b = 7 then cellA27B7
  else if b = 8 then cellA27B8
  else if b = 9 then cellA27B9
  else if b = 10 then cellA27B10
  else if b = 11 then cellA27B11
  else if b = 12 then cellA27B12
  else if b = 13 then cellA27B13
  else if b = 14 then cellA27B14
  else if b = 15 then cellA27B15
  else if b = 16 then cellA27B16
  else if b = 17 then cellA27B17
  else if b = 18 then cellA27B18
  else if b = 19 then cellA27B19
  else if b = 20 then cellA27B20
  else if b = 21 then cellA27B21
  else if b = 22 then cellA27B22
  else if b = 23 then cellA27B23
  else if b = 24 then cellA27B24
  else if b = 25 then cellA27B25
  else if b = 26 then cellA27B26
  else if b = 27 then cellA27B27
  else if b = 28 then cellA27B28
  else if b = 29 then cellA27B29
  else if b = 30 then cellA27B30
  else if b = 31 then cellA27B31
  else if b = 32 then cellA27B32
  else if b = 33 then cellA27B33
  else if b = 34 then cellA27B34
  else if b = 35 then cellA27B35
  else if b = 36 then cellA27B36
  else if b = 37 then cellA27B37
  else if b = 38 then cellA27B38
  else if b = 39 then cellA27B39
  else if b = 40 then cellA27B40
  else if b = 41 then cellA27B41
  else if b = 42 then cellA27B42
  else if b = 43 then cellA27B43
  else if b = 44 then cellA27B44
  else if b = 45 then cellA27B45
  else if b = 46 then cellA27B46
  else if b = 47 then cellA27B47
  else if b = 48 then cellA27B48
  else if b = 49 then cellA27B49
  else if b = 50 then cellA27B50
  else if b = 51 then cellA27B51
  else if b = 52 then cellA27B52
  else if b = 53 then cellA27B53
  else if b = 54 then cellA27B54
  else if b = 55 then cellA27B55
  else if b = 56 then cellA27B56
  else if b = 57 then cellA27B57
  else if b = 58 then cellA27B58
  else if b = 59 then cellA27B59
  else if b = 60 then cellA27B60
  else if b = 61 then cellA27B61
  else if b = 62 then cellA27B62
  else if b = 63 then cellA27B63
  else if b = 64 then cellA27B64
  else if b = 65 then cellA27B65
  else if b = 66 then cellA27B66
  else if b = 67 then cellA27B67
  else if b = 68 then cellA27B68
  else outsideCell

def rowA28 (b : ℕ) : CellData :=
  if b = 1 then cellA28B1
  else if b = 2 then cellA28B2
  else if b = 3 then cellA28B3
  else if b = 4 then cellA28B4
  else if b = 5 then cellA28B5
  else if b = 6 then cellA28B6
  else if b = 7 then cellA28B7
  else if b = 8 then cellA28B8
  else if b = 9 then cellA28B9
  else if b = 10 then cellA28B10
  else if b = 11 then cellA28B11
  else if b = 12 then cellA28B12
  else if b = 13 then cellA28B13
  else if b = 14 then cellA28B14
  else if b = 15 then cellA28B15
  else if b = 16 then cellA28B16
  else if b = 17 then cellA28B17
  else if b = 18 then cellA28B18
  else if b = 19 then cellA28B19
  else if b = 20 then cellA28B20
  else if b = 21 then cellA28B21
  else if b = 22 then cellA28B22
  else if b = 23 then cellA28B23
  else if b = 24 then cellA28B24
  else if b = 25 then cellA28B25
  else if b = 26 then cellA28B26
  else if b = 27 then cellA28B27
  else if b = 28 then cellA28B28
  else if b = 29 then cellA28B29
  else if b = 30 then cellA28B30
  else if b = 31 then cellA28B31
  else if b = 32 then cellA28B32
  else if b = 33 then cellA28B33
  else if b = 34 then cellA28B34
  else if b = 35 then cellA28B35
  else if b = 36 then cellA28B36
  else if b = 37 then cellA28B37
  else if b = 38 then cellA28B38
  else if b = 39 then cellA28B39
  else if b = 40 then cellA28B40
  else if b = 41 then cellA28B41
  else if b = 42 then cellA28B42
  else if b = 43 then cellA28B43
  else if b = 44 then cellA28B44
  else if b = 45 then cellA28B45
  else if b = 46 then cellA28B46
  else if b = 47 then cellA28B47
  else if b = 48 then cellA28B48
  else if b = 49 then cellA28B49
  else if b = 50 then cellA28B50
  else if b = 51 then cellA28B51
  else if b = 52 then cellA28B52
  else if b = 53 then cellA28B53
  else if b = 54 then cellA28B54
  else if b = 55 then cellA28B55
  else if b = 56 then cellA28B56
  else if b = 57 then cellA28B57
  else if b = 58 then cellA28B58
  else if b = 59 then cellA28B59
  else if b = 60 then cellA28B60
  else if b = 61 then cellA28B61
  else if b = 62 then cellA28B62
  else if b = 63 then cellA28B63
  else if b = 64 then cellA28B64
  else if b = 65 then cellA28B65
  else if b = 66 then cellA28B66
  else if b = 67 then cellA28B67
  else if b = 68 then cellA28B68
  else outsideCell

def rowA29 (b : ℕ) : CellData :=
  if b = 1 then cellA29B1
  else if b = 2 then cellA29B2
  else if b = 3 then cellA29B3
  else if b = 4 then cellA29B4
  else if b = 5 then cellA29B5
  else if b = 6 then cellA29B6
  else if b = 7 then cellA29B7
  else if b = 8 then cellA29B8
  else if b = 9 then cellA29B9
  else if b = 10 then cellA29B10
  else if b = 11 then cellA29B11
  else if b = 12 then cellA29B12
  else if b = 13 then cellA29B13
  else if b = 14 then cellA29B14
  else if b = 15 then cellA29B15
  else if b = 16 then cellA29B16
  else if b = 17 then cellA29B17
  else if b = 18 then cellA29B18
  else if b = 19 then cellA29B19
  else if b = 20 then cellA29B20
  else if b = 21 then cellA29B21
  else if b = 22 then cellA29B22
  else if b = 23 then cellA29B23
  else if b = 24 then cellA29B24
  else if b = 25 then cellA29B25
  else if b = 26 then cellA29B26
  else if b = 27 then cellA29B27
  else if b = 28 then cellA29B28
  else if b = 29 then cellA29B29
  else if b = 30 then cellA29B30
  else if b = 31 then cellA29B31
  else if b = 32 then cellA29B32
  else if b = 33 then cellA29B33
  else if b = 34 then cellA29B34
  else if b = 35 then cellA29B35
  else if b = 36 then cellA29B36
  else if b = 37 then cellA29B37
  else if b = 38 then cellA29B38
  else if b = 39 then cellA29B39
  else if b = 40 then cellA29B40
  else if b = 41 then cellA29B41
  else if b = 42 then cellA29B42
  else if b = 43 then cellA29B43
  else if b = 44 then cellA29B44
  else if b = 45 then cellA29B45
  else if b = 46 then cellA29B46
  else if b = 47 then cellA29B47
  else if b = 48 then cellA29B48
  else if b = 49 then cellA29B49
  else if b = 50 then cellA29B50
  else if b = 51 then cellA29B51
  else if b = 52 then cellA29B52
  else if b = 53 then cellA29B53
  else if b = 54 then cellA29B54
  else if b = 55 then cellA29B55
  else if b = 56 then cellA29B56
  else if b = 57 then cellA29B57
  else if b = 58 then cellA29B58
  else if b = 59 then cellA29B59
  else if b = 60 then cellA29B60
  else if b = 61 then cellA29B61
  else if b = 62 then cellA29B62
  else if b = 63 then cellA29B63
  else if b = 64 then cellA29B64
  else if b = 65 then cellA29B65
  else if b = 66 then cellA29B66
  else if b = 67 then cellA29B67
  else if b = 68 then cellA29B68
  else outsideCell

def rowA30 (b : ℕ) : CellData :=
  if b = 1 then cellA30B1
  else if b = 2 then cellA30B2
  else if b = 3 then cellA30B3
  else if b = 4 then cellA30B4
  else if b = 5 then cellA30B5
  else if b = 6 then cellA30B6
  else if b = 7 then cellA30B7
  else if b = 8 then cellA30B8
  else if b = 9 then cellA30B9
  else if b = 10 then cellA30B10
  else if b = 11 then cellA30B11
  else if b = 12 then cellA30B12
  else if b = 13 then cellA30B13
  else if b = 14 then cellA30B14
  else if b = 15 then cellA30B15
  else if b = 16 then cellA30B16
  else if b = 17 then cellA30B17
  else if b = 18 then cellA30B18
  else if b = 19 then cellA30B19
  else if b = 20 then cellA30B20
  else if b = 21 then cellA30B21
  else if b = 22 then cellA30B22
  else if b = 23 then cellA30B23
  else if b = 24 then cellA30B24
  else if b = 25 then cellA30B25
  else if b = 26 then cellA30B26
  else if b = 27 then cellA30B27
  else if b = 28 then cellA30B28
  else if b = 29 then cellA30B29
  else if b = 30 then cellA30B30
  else if b = 31 then cellA30B31
  else if b = 32 then cellA30B32
  else if b = 33 then cellA30B33
  else if b = 34 then cellA30B34
  else if b = 35 then cellA30B35
  else if b = 36 then cellA30B36
  else if b = 37 then cellA30B37
  else if b = 38 then cellA30B38
  else if b = 39 then cellA30B39
  else if b = 40 then cellA30B40
  else if b = 41 then cellA30B41
  else if b = 42 then cellA30B42
  else if b = 43 then cellA30B43
  else if b = 44 then cellA30B44
  else if b = 45 then cellA30B45
  else if b = 46 then cellA30B46
  else if b = 47 then cellA30B47
  else if b = 48 then cellA30B48
  else if b = 49 then cellA30B49
  else if b = 50 then cellA30B50
  else if b = 51 then cellA30B51
  else if b = 52 then cellA30B52
  else if b = 53 then cellA30B53
  else if b = 54 then cellA30B54
  else if b = 55 then cellA30B55
  else if b = 56 then cellA30B56
  else if b = 57 then cellA30B57
  else if b = 58 then cellA30B58
  else if b = 59 then cellA30B59
  else if b = 60 then cellA30B60
  else if b = 61 then cellA30B61
  else if b = 62 then cellA30B62
  else if b = 63 then cellA30B63
  else if b = 64 then cellA30B64
  else if b = 65 then cellA30B65
  else if b = 66 then cellA30B66
  else if b = 67 then cellA30B67
  else if b = 68 then cellA30B68
  else outsideCell

def rowA31 (b : ℕ) : CellData :=
  if b = 1 then cellA31B1
  else if b = 2 then cellA31B2
  else if b = 3 then cellA31B3
  else if b = 4 then cellA31B4
  else if b = 5 then cellA31B5
  else if b = 6 then cellA31B6
  else if b = 7 then cellA31B7
  else if b = 8 then cellA31B8
  else if b = 9 then cellA31B9
  else if b = 10 then cellA31B10
  else if b = 11 then cellA31B11
  else if b = 12 then cellA31B12
  else if b = 13 then cellA31B13
  else if b = 14 then cellA31B14
  else if b = 15 then cellA31B15
  else if b = 16 then cellA31B16
  else if b = 17 then cellA31B17
  else if b = 18 then cellA31B18
  else if b = 19 then cellA31B19
  else if b = 20 then cellA31B20
  else if b = 21 then cellA31B21
  else if b = 22 then cellA31B22
  else if b = 23 then cellA31B23
  else if b = 24 then cellA31B24
  else if b = 25 then cellA31B25
  else if b = 26 then cellA31B26
  else if b = 27 then cellA31B27
  else if b = 28 then cellA31B28
  else if b = 29 then cellA31B29
  else if b = 30 then cellA31B30
  else if b = 31 then cellA31B31
  else if b = 32 then cellA31B32
  else if b = 33 then cellA31B33
  else if b = 34 then cellA31B34
  else if b = 35 then cellA31B35
  else if b = 36 then cellA31B36
  else if b = 37 then cellA31B37
  else if b = 38 then cellA31B38
  else if b = 39 then cellA31B39
  else if b = 40 then cellA31B40
  else if b = 41 then cellA31B41
  else if b = 42 then cellA31B42
  else if b = 43 then cellA31B43
  else if b = 44 then cellA31B44
  else if b = 45 then cellA31B45
  else if b = 46 then cellA31B46
  else if b = 47 then cellA31B47
  else if b = 48 then cellA31B48
  else if b = 49 then cellA31B49
  else if b = 50 then cellA31B50
  else if b = 51 then cellA31B51
  else if b = 52 then cellA31B52
  else if b = 53 then cellA31B53
  else if b = 54 then cellA31B54
  else if b = 55 then cellA31B55
  else if b = 56 then cellA31B56
  else if b = 57 then cellA31B57
  else if b = 58 then cellA31B58
  else if b = 59 then cellA31B59
  else if b = 60 then cellA31B60
  else if b = 61 then cellA31B61
  else if b = 62 then cellA31B62
  else if b = 63 then cellA31B63
  else if b = 64 then cellA31B64
  else if b = 65 then cellA31B65
  else if b = 66 then cellA31B66
  else if b = 67 then cellA31B67
  else if b = 68 then cellA31B68
  else outsideCell

def rowA32 (b : ℕ) : CellData :=
  if b = 1 then cellA32B1
  else if b = 2 then cellA32B2
  else if b = 3 then cellA32B3
  else if b = 4 then cellA32B4
  else if b = 5 then cellA32B5
  else if b = 6 then cellA32B6
  else if b = 7 then cellA32B7
  else if b = 8 then cellA32B8
  else if b = 9 then cellA32B9
  else if b = 10 then cellA32B10
  else if b = 11 then cellA32B11
  else if b = 12 then cellA32B12
  else if b = 13 then cellA32B13
  else if b = 14 then cellA32B14
  else if b = 15 then cellA32B15
  else if b = 16 then cellA32B16
  else if b = 17 then cellA32B17
  else if b = 18 then cellA32B18
  else if b = 19 then cellA32B19
  else if b = 20 then cellA32B20
  else if b = 21 then cellA32B21
  else if b = 22 then cellA32B22
  else if b = 23 then cellA32B23
  else if b = 24 then cellA32B24
  else if b = 25 then cellA32B25
  else if b = 26 then cellA32B26
  else if b = 27 then cellA32B27
  else if b = 28 then cellA32B28
  else if b = 29 then cellA32B29
  else if b = 30 then cellA32B30
  else if b = 31 then cellA32B31
  else if b = 32 then cellA32B32
  else if b = 33 then cellA32B33
  else if b = 34 then cellA32B34
  else if b = 35 then cellA32B35
  else if b = 36 then cellA32B36
  else if b = 37 then cellA32B37
  else if b = 38 then cellA32B38
  else if b = 39 then cellA32B39
  else if b = 40 then cellA32B40
  else if b = 41 then cellA32B41
  else if b = 42 then cellA32B42
  else if b = 43 then cellA32B43
  else if b = 44 then cellA32B44
  else if b = 45 then cellA32B45
  else if b = 46 then cellA32B46
  else if b = 47 then cellA32B47
  else if b = 48 then cellA32B48
  else if b = 49 then cellA32B49
  else if b = 50 then cellA32B50
  else if b = 51 then cellA32B51
  else if b = 52 then cellA32B52
  else if b = 53 then cellA32B53
  else if b = 54 then cellA32B54
  else if b = 55 then cellA32B55
  else if b = 56 then cellA32B56
  else if b = 57 then cellA32B57
  else if b = 58 then cellA32B58
  else if b = 59 then cellA32B59
  else if b = 60 then cellA32B60
  else if b = 61 then cellA32B61
  else if b = 62 then cellA32B62
  else if b = 63 then cellA32B63
  else if b = 64 then cellA32B64
  else if b = 65 then cellA32B65
  else if b = 66 then cellA32B66
  else if b = 67 then cellA32B67
  else if b = 68 then cellA32B68
  else outsideCell

def chunkData (a b : ℕ) : CellData :=
  if a = 25 then rowA25 b
  else if a = 26 then rowA26 b
  else if a = 27 then rowA27 b
  else if a = 28 then rowA28 b
  else if a = 29 then rowA29 b
  else if a = 30 then rowA30 b
  else if a = 31 then rowA31 b
  else if a = 32 then rowA32 b
  else outsideCell

theorem chunk_check :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper
      25 8 1 68 chunkData = true := by
  decide +kernel

end Math.B699.CRTStage0Pair23.Chunk003
#print axioms Math.B699.CRTStage0Pair23.Chunk003.chunk_check
