import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage0Pair23.Chunk001
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA9B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 231840⟩ else if d = (-6 : ℤ) then ⟨0, 231840⟩ else if d = (-3 : ℤ) then ⟨0, 231840⟩ else if d = (0 : ℤ) then ⟨0, 231840⟩ else if d = (3 : ℤ) then ⟨0, 231840⟩ else if d = (6 : ℤ) then ⟨0, 231840⟩ else if d = (9 : ℤ) then ⟨0, 231840⟩ else ⟨0, 231841⟩

def cellA9B2 : CellData where
  inverse := 8
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 231840⟩ else if d = (-8 : ℤ) then ⟨0, 231840⟩ else if d = (0 : ℤ) then ⟨0, 231840⟩ else if d = (1 : ℤ) then ⟨0, 231840⟩ else if d = (9 : ℤ) then ⟨0, 231840⟩ else if d = (10 : ℤ) then ⟨0, 231840⟩ else ⟨0, 231841⟩

def cellA9B3 : CellData where
  inverse := 26
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 231840⟩ else if d = (1 : ℤ) then ⟨0, 231840⟩ else if d = (2 : ℤ) then ⟨0, 231840⟩ else if d = (3 : ℤ) then ⟨0, 231840⟩ else ⟨0, 231841⟩

def cellA9B4 : CellData where
  inverse := 53
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 231840⟩ else if d = (3 : ℤ) then ⟨0, 231840⟩ else if d = (6 : ℤ) then ⟨0, 231840⟩ else if d = (9 : ℤ) then ⟨0, 231840⟩ else ⟨0, 231841⟩

def cellA9B5 : CellData where
  inverse := 215
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 231840⟩ else if d = (0 : ℤ) then ⟨0, 231840⟩ else if d = (1 : ℤ) then ⟨0, 231840⟩ else if d = (9 : ℤ) then ⟨0, 231840⟩ else ⟨0, 231841⟩

def cellA9B6 : CellData where
  inverse := 215
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 162828⟩ else if d = (10 : ℤ) then ⟨0, 162828⟩ else ⟨0, 162829⟩

def cellA9B7 : CellData where
  inverse := 944
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 54275⟩ else if d = (-7 : ℤ) then ⟨0, 54275⟩ else if d = (-5 : ℤ) then ⟨0, 54275⟩ else if d = (-3 : ℤ) then ⟨0, 54275⟩ else if d = (0 : ℤ) then ⟨0, 54275⟩ else if d = (2 : ℤ) then ⟨0, 54275⟩ else if d = (4 : ℤ) then ⟨0, 54275⟩ else if d = (9 : ℤ) then ⟨0, 54275⟩ else ⟨0, 54276⟩

def cellA9B8 : CellData where
  inverse := 5318
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 18092⟩ else if d = (-1 : ℤ) then ⟨0, 18092⟩ else if d = (5 : ℤ) then ⟨0, 18092⟩ else if d = (10 : ℤ) then ⟨0, 18092⟩ else ⟨0, 18091⟩

def cellA9B9 : CellData where
  inverse := 11879
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 6029⟩ else if d = (-7 : ℤ) then ⟨0, 6029⟩ else if d = (-5 : ℤ) then ⟨0, 6029⟩ else if d = (-2 : ℤ) then ⟨0, 6029⟩ else if d = (0 : ℤ) then ⟨0, 6029⟩ else if d = (3 : ℤ) then ⟨0, 6029⟩ else if d = (8 : ℤ) then ⟨0, 6029⟩ else ⟨0, 6030⟩

def cellA9B10 : CellData where
  inverse := 11879
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 2010⟩ else if d = (-4 : ℤ) then ⟨0, 2010⟩ else if d = (1 : ℤ) then ⟨0, 2010⟩ else if d = (5 : ℤ) then ⟨0, 2010⟩ else if d = (6 : ℤ) then ⟨0, 2010⟩ else if d = (10 : ℤ) then ⟨0, 2010⟩ else ⟨0, 2009⟩

def cellA9B11 : CellData where
  inverse := 70928
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 670⟩ else if d = (10 : ℤ) then ⟨0, 670⟩ else ⟨0, 669⟩

def cellA9B12 : CellData where
  inverse := 248075
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 223⟩ else if d = (-8 : ℤ) then ⟨0, 223⟩ else if d = (-6 : ℤ) then ⟨0, 223⟩ else if d = (-4 : ℤ) then ⟨0, 223⟩ else if d = (-2 : ℤ) then ⟨0, 223⟩ else if d = (5 : ℤ) then ⟨0, 223⟩ else if d = (7 : ℤ) then ⟨0, 223⟩ else if d = (9 : ℤ) then ⟨0, 223⟩ else ⟨0, 222⟩

def cellA9B13 : CellData where
  inverse := 1310957
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 74⟩ else if d = (-7 : ℤ) then ⟨0, 74⟩ else if d = (-6 : ℤ) then ⟨0, 74⟩ else if d = (-2 : ℤ) then ⟨0, 74⟩ else if d = (-1 : ℤ) then ⟨0, 74⟩ else if d = (4 : ℤ) then ⟨0, 74⟩ else if d = (5 : ℤ) then ⟨0, 74⟩ else if d = (9 : ℤ) then ⟨0, 74⟩ else if d = (10 : ℤ) then ⟨0, 74⟩ else ⟨0, 73⟩

def cellA9B14 : CellData where
  inverse := 2905280
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 23⟩ else if d = (-5 : ℤ) then ⟨0, 23⟩ else if d = (0 : ℤ) then ⟨0, 23⟩ else if d = (3 : ℤ) then ⟨0, 23⟩ else if d = (8 : ℤ) then ⟨0, 23⟩ else ⟨0, 24⟩

def cellA9B15 : CellData where
  inverse := 12471218
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 8⟩ else if d = (-8 : ℤ) then ⟨0, 8⟩ else if d = (-2 : ℤ) then ⟨0, 8⟩ else if d = (-1 : ℤ) then ⟨0, 8⟩ else if d = (6 : ℤ) then ⟨0, 8⟩ else if d = (7 : ℤ) then ⟨0, 8⟩ else ⟨0, 7⟩

def cellA9B16 : CellData where
  inverse := 26820125
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1⟩ else if d = (-5 : ℤ) then ⟨0, 1⟩ else if d = (0 : ℤ) then ⟨0, 1⟩ else if d = (3 : ℤ) then ⟨0, 1⟩ else if d = (8 : ℤ) then ⟨0, 1⟩ else ⟨0, 2⟩

def cellA9B17 : CellData where
  inverse := 69866846
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA9B18 : CellData where
  inverse := 199007009
  bounds := fun d => if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA9B19 : CellData where
  inverse := 973847987
  bounds := fun d => if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA9B20 : CellData where
  inverse := 973847987
  bounds := fun _d => ⟨0, -1⟩

def cellA9B21 : CellData where
  inverse := 7947416789
  bounds := fun _d => ⟨0, -1⟩

def cellA9B22 : CellData where
  inverse := 28868123195
  bounds := fun _d => ⟨0, -1⟩

def cellA9B23 : CellData where
  inverse := 28868123195
  bounds := fun _d => ⟨0, -1⟩

def cellA9B24 : CellData where
  inverse := 123011302022
  bounds := fun _d => ⟨0, -1⟩

def cellA9B25 : CellData where
  inverse := 405440838503
  bounds := fun _d => ⟨0, -1⟩

def cellA9B26 : CellData where
  inverse := 2100018057389
  bounds := fun _d => ⟨0, -1⟩

def cellA9B27 : CellData where
  inverse := 2100018057389
  bounds := fun _d => ⟨0, -1⟩

def cellA9B28 : CellData where
  inverse := 2100018057389
  bounds := fun _d => ⟨0, -1⟩

def cellA9B29 : CellData where
  inverse := 47853602967311
  bounds := fun _d => ⟨0, -1⟩

def cellA9B30 : CellData where
  inverse := 47853602967311
  bounds := fun _d => ⟨0, -1⟩

def cellA9B31 : CellData where
  inverse := 459635867156609
  bounds := fun _d => ⟨0, -1⟩

def cellA9B32 : CellData where
  inverse := 459635867156609
  bounds := fun _d => ⟨0, -1⟩

def cellA9B33 : CellData where
  inverse := 2312656056008450
  bounds := fun _d => ⟨0, -1⟩

def cellA9B34 : CellData where
  inverse := 2312656056008450
  bounds := fun _d => ⟨0, -1⟩

def cellA9B35 : CellData where
  inverse := 35667019455341588
  bounds := fun _d => ⟨0, -1⟩

def cellA9B36 : CellData where
  inverse := 135730109653341002
  bounds := fun _d => ⟨0, -1⟩

def cellA9B37 : CellData where
  inverse := 285824744950340123
  bounds := fun _d => ⟨0, -1⟩

def cellA9B38 : CellData where
  inverse := 736108650841337486
  bounds := fun _d => ⟨0, -1⟩

def cellA9B39 : CellData where
  inverse := 736108650841337486
  bounds := fun _d => ⟨0, -1⟩

def cellA9B40 : CellData where
  inverse := 736108650841337486
  bounds := fun _d => ⟨0, -1⟩

def cellA9B41 : CellData where
  inverse := 12893774109898266287
  bounds := fun _d => ⟨0, -1⟩

def cellA9B42 : CellData where
  inverse := 49366770487069052690
  bounds := fun _d => ⟨0, -1⟩

def cellA9B43 : CellData where
  inverse := 49366770487069052690
  bounds := fun _d => ⟨0, -1⟩

def cellA9B44 : CellData where
  inverse := 705880705276143207944
  bounds := fun _d => ⟨0, -1⟩

def cellA9B45 : CellData where
  inverse := 1690651607459754440825
  bounds := fun _d => ⟨0, -1⟩

def cellA9B46 : CellData where
  inverse := 7599277020561421838111
  bounds := fun _d => ⟨0, -1⟩

def cellA9B47 : CellData where
  inverse := 16462215140213922934040
  bounds := fun _d => ⟨0, -1⟩

def cellA9B48 : CellData where
  inverse := 69639843858128929509614
  bounds := fun _d => ⟨0, -1⟩

def cellA9B49 : CellData where
  inverse := 69639843858128929509614
  bounds := fun _d => ⟨0, -1⟩

def cellA9B50 : CellData where
  inverse := 548238502319363988689780
  bounds := fun _d => ⟨0, -1⟩

def cellA9B51 : CellData where
  inverse := 1266136490011216577460029
  bounds := fun _d => ⟨0, -1⟩

def cellA9B52 : CellData where
  inverse := 3419830453086774343770776
  bounds := fun _d => ⟨0, -1⟩

def cellA9B53 : CellData where
  inverse := 9880912342313447642703017
  bounds := fun _d => ⟨0, -1⟩

def cellA9B54 : CellData where
  inverse := 9880912342313447642703017
  bounds := fun _d => ⟨0, -1⟩

def cellA9B55 : CellData where
  inverse := 9880912342313447642703017
  bounds := fun _d => ⟨0, -1⟩

def cellA9B56 : CellData where
  inverse := 358779334360553805785044031
  bounds := fun _d => ⟨0, -1⟩

def cellA9B57 : CellData where
  inverse := 358779334360553805785044031
  bounds := fun _d => ⟨0, -1⟩

def cellA9B58 : CellData where
  inverse := 358779334360553805785044031
  bounds := fun _d => ⟨0, -1⟩

def cellA9B59 : CellData where
  inverse := 358779334360553805785044031
  bounds := fun _d => ⟨0, -1⟩

def cellA9B60 : CellData where
  inverse := 14489165426099288310549855098
  bounds := fun _d => ⟨0, -1⟩

def cellA9B61 : CellData where
  inverse := 56880323701315491824844288299
  bounds := fun _d => ⟨0, -1⟩

def cellA9B62 : CellData where
  inverse := 184053798526964102367727587902
  bounds := fun _d => ⟨0, -1⟩

def cellA9B63 : CellData where
  inverse := 565574223003909933996377486711
  bounds := fun _d => ⟨0, -1⟩

def cellA9B64 : CellData where
  inverse := 1710135496434747428882327183138
  bounds := fun _d => ⟨0, -1⟩

def cellA9B65 : CellData where
  inverse := 1710135496434747428882327183138
  bounds := fun _d => ⟨0, -1⟩

def cellA9B66 : CellData where
  inverse := 12011186957312284882855874450981
  bounds := fun _d => ⟨0, -1⟩

def cellA9B67 : CellData where
  inverse := 42914341339944897244776516254510
  bounds := fun _d => ⟨0, -1⟩

def cellA9B68 : CellData where
  inverse := 42914341339944897244776516254510
  bounds := fun _d => ⟨0, -1⟩

def cellA10B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 115919⟩ else if d = (-6 : ℤ) then ⟨0, 115919⟩ else if d = (-3 : ℤ) then ⟨0, 115919⟩ else if d = (0 : ℤ) then ⟨0, 115919⟩ else if d = (3 : ℤ) then ⟨0, 115919⟩ else if d = (6 : ℤ) then ⟨0, 115919⟩ else if d = (9 : ℤ) then ⟨0, 115919⟩ else ⟨0, 115920⟩

def cellA10B2 : CellData where
  inverse := 4
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 115919⟩ else if d = (0 : ℤ) then ⟨0, 115919⟩ else if d = (9 : ℤ) then ⟨0, 115919⟩ else ⟨0, 115920⟩

def cellA10B3 : CellData where
  inverse := 13
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 115919⟩ else if d = (2 : ℤ) then ⟨0, 115919⟩ else ⟨0, 115920⟩

def cellA10B4 : CellData where
  inverse := 67
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 115919⟩ else if d = (6 : ℤ) then ⟨0, 115919⟩ else ⟨0, 115920⟩

def cellA10B5 : CellData where
  inverse := 229
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 115919⟩ else if d = (1 : ℤ) then ⟨0, 115919⟩ else ⟨0, 115920⟩

def cellA10B6 : CellData where
  inverse := 472
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 115919⟩ else if d = (3 : ℤ) then ⟨0, 115919⟩ else ⟨0, 115920⟩

def cellA10B7 : CellData where
  inverse := 472
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 54275⟩ else if d = (-6 : ℤ) then ⟨0, 54275⟩ else if d = (-5 : ℤ) then ⟨0, 54275⟩ else if d = (-1 : ℤ) then ⟨0, 54275⟩ else if d = (0 : ℤ) then ⟨0, 54275⟩ else if d = (4 : ℤ) then ⟨0, 54275⟩ else if d = (8 : ℤ) then ⟨0, 54275⟩ else if d = (9 : ℤ) then ⟨0, 54275⟩ else ⟨0, 54276⟩

def cellA10B8 : CellData where
  inverse := 2659
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 18092⟩ else if d = (-2 : ℤ) then ⟨0, 18092⟩ else if d = (3 : ℤ) then ⟨0, 18092⟩ else if d = (5 : ℤ) then ⟨0, 18092⟩ else if d = (10 : ℤ) then ⟨0, 18092⟩ else ⟨0, 18091⟩

def cellA10B9 : CellData where
  inverse := 15781
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 6029⟩ else if d = (-9 : ℤ) then ⟨0, 6029⟩ else if d = (-5 : ℤ) then ⟨0, 6029⟩ else if d = (-4 : ℤ) then ⟨0, 6029⟩ else if d = (0 : ℤ) then ⟨0, 6029⟩ else if d = (1 : ℤ) then ⟨0, 6029⟩ else if d = (6 : ℤ) then ⟨0, 6029⟩ else ⟨0, 6030⟩

def cellA10B10 : CellData where
  inverse := 35464
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 2010⟩ else if d = (-3 : ℤ) then ⟨0, 2010⟩ else if d = (2 : ℤ) then ⟨0, 2010⟩ else if d = (5 : ℤ) then ⟨0, 2010⟩ else if d = (7 : ℤ) then ⟨0, 2010⟩ else if d = (10 : ℤ) then ⟨0, 2010⟩ else ⟨0, 2009⟩

def cellA10B11 : CellData where
  inverse := 35464
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 670⟩ else if d = (10 : ℤ) then ⟨0, 670⟩ else ⟨0, 669⟩

def cellA10B12 : CellData where
  inverse := 389758
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 223⟩ else if d = (-5 : ℤ) then ⟨0, 223⟩ else if d = (-4 : ℤ) then ⟨0, 223⟩ else if d = (-1 : ℤ) then ⟨0, 223⟩ else if d = (3 : ℤ) then ⟨0, 223⟩ else if d = (7 : ℤ) then ⟨0, 223⟩ else if d = (10 : ℤ) then ⟨0, 223⟩ else ⟨0, 222⟩

def cellA10B13 : CellData where
  inverse := 1452640
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 74⟩ else if d = (-4 : ℤ) then ⟨0, 74⟩ else if d = (-3 : ℤ) then ⟨0, 74⟩ else if d = (-2 : ℤ) then ⟨0, 74⟩ else if d = (-1 : ℤ) then ⟨0, 74⟩ else if d = (7 : ℤ) then ⟨0, 74⟩ else if d = (8 : ℤ) then ⟨0, 74⟩ else if d = (9 : ℤ) then ⟨0, 74⟩ else if d = (10 : ℤ) then ⟨0, 74⟩ else ⟨0, 73⟩

def cellA10B14 : CellData where
  inverse := 1452640
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 23⟩ else if d = (-7 : ℤ) then ⟨0, 23⟩ else if d = (0 : ℤ) then ⟨0, 23⟩ else if d = (3 : ℤ) then ⟨0, 23⟩ else if d = (6 : ℤ) then ⟨0, 23⟩ else ⟨0, 24⟩

def cellA10B15 : CellData where
  inverse := 6235609
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 8⟩ else if d = (-4 : ℤ) then ⟨0, 8⟩ else if d = (-2 : ℤ) then ⟨0, 8⟩ else if d = (5 : ℤ) then ⟨0, 8⟩ else if d = (7 : ℤ) then ⟨0, 8⟩ else ⟨0, 7⟩

def cellA10B16 : CellData where
  inverse := 34933423
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1⟩ else if d = (-5 : ℤ) then ⟨0, 1⟩ else if d = (0 : ℤ) then ⟨0, 1⟩ else if d = (1 : ℤ) then ⟨0, 1⟩ else if d = (6 : ℤ) then ⟨0, 1⟩ else ⟨0, 2⟩

def cellA10B17 : CellData where
  inverse := 34933423
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA10B18 : CellData where
  inverse := 293213749
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B19 : CellData where
  inverse := 1068054727
  bounds := fun d => if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B20 : CellData where
  inverse := 2230316194
  bounds := fun _d => ⟨0, -1⟩

def cellA10B21 : CellData where
  inverse := 9203884996
  bounds := fun _d => ⟨0, -1⟩

def cellA10B22 : CellData where
  inverse := 30124591402
  bounds := fun _d => ⟨0, -1⟩

def cellA10B23 : CellData where
  inverse := 61505651011
  bounds := fun _d => ⟨0, -1⟩

def cellA10B24 : CellData where
  inverse := 61505651011
  bounds := fun _d => ⟨0, -1⟩

def cellA10B25 : CellData where
  inverse := 626364723973
  bounds := fun _d => ⟨0, -1⟩

def cellA10B26 : CellData where
  inverse := 2320941942859
  bounds := fun _d => ⟨0, -1⟩

def cellA10B27 : CellData where
  inverse := 4862807771188
  bounds := fun _d => ⟨0, -1⟩

def cellA10B28 : CellData where
  inverse := 12488405256175
  bounds := fun _d => ⟨0, -1⟩

def cellA10B29 : CellData where
  inverse := 58241990166097
  bounds := fun _d => ⟨0, -1⟩

def cellA10B30 : CellData where
  inverse := 126872367530980
  bounds := fun _d => ⟨0, -1⟩

def cellA10B31 : CellData where
  inverse := 538654631720278
  bounds := fun _d => ⟨0, -1⟩

def cellA10B32 : CellData where
  inverse := 1156328028004225
  bounds := fun _d => ⟨0, -1⟩

def cellA10B33 : CellData where
  inverse := 1156328028004225
  bounds := fun _d => ⟨0, -1⟩

def cellA10B34 : CellData where
  inverse := 1156328028004225
  bounds := fun _d => ⟨0, -1⟩

def cellA10B35 : CellData where
  inverse := 17833509727670794
  bounds := fun _d => ⟨0, -1⟩

def cellA10B36 : CellData where
  inverse := 67865054826670501
  bounds := fun _d => ⟨0, -1⟩

def cellA10B37 : CellData where
  inverse := 368054325420668743
  bounds := fun _d => ⟨0, -1⟩

def cellA10B38 : CellData where
  inverse := 368054325420668743
  bounds := fun _d => ⟨0, -1⟩

def cellA10B39 : CellData where
  inverse := 368054325420668743
  bounds := fun _d => ⟨0, -1⟩

def cellA10B40 : CellData where
  inverse := 368054325420668743
  bounds := fun _d => ⟨0, -1⟩

def cellA10B41 : CellData where
  inverse := 24683385243534526345
  bounds := fun _d => ⟨0, -1⟩

def cellA10B42 : CellData where
  inverse := 24683385243534526345
  bounds := fun _d => ⟨0, -1⟩

def cellA10B43 : CellData where
  inverse := 24683385243534526345
  bounds := fun _d => ⟨0, -1⟩

def cellA10B44 : CellData where
  inverse := 352940352638071603972
  bounds := fun _d => ⟨0, -1⟩

def cellA10B45 : CellData where
  inverse := 2322482157005294069734
  bounds := fun _d => ⟨0, -1⟩

def cellA10B46 : CellData where
  inverse := 8231107570106961467020
  bounds := fun _d => ⟨0, -1⟩

def cellA10B47 : CellData where
  inverse := 8231107570106961467020
  bounds := fun _d => ⟨0, -1⟩

def cellA10B48 : CellData where
  inverse := 34819921929064464754807
  bounds := fun _d => ⟨0, -1⟩

def cellA10B49 : CellData where
  inverse := 34819921929064464754807
  bounds := fun _d => ⟨0, -1⟩

def cellA10B50 : CellData where
  inverse := 274119251159681994344890
  bounds := fun _d => ⟨0, -1⟩

def cellA10B51 : CellData where
  inverse := 1709915226543387171885388
  bounds := fun _d => ⟨0, -1⟩

def cellA10B52 : CellData where
  inverse := 1709915226543387171885388
  bounds := fun _d => ⟨0, -1⟩

def cellA10B53 : CellData where
  inverse := 14632079004996733769749870
  bounds := fun _d => ⟨0, -1⟩

def cellA10B54 : CellData where
  inverse := 34015324672676753666546593
  bounds := fun _d => ⟨0, -1⟩

def cellA10B55 : CellData where
  inverse := 92165061675716813356936762
  bounds := fun _d => ⟨0, -1⟩

def cellA10B56 : CellData where
  inverse := 441063483693957171499277776
  bounds := fun _d => ⟨0, -1⟩

def cellA10B57 : CellData where
  inverse := 964411116721317708712789297
  bounds := fun _d => ⟨0, -1⟩

def cellA10B58 : CellData where
  inverse := 2534454015803399320353323860
  bounds := fun _d => ⟨0, -1⟩

def cellA10B59 : CellData where
  inverse := 7244582713049644155274927549
  bounds := fun _d => ⟨0, -1⟩

def cellA10B60 : CellData where
  inverse := 7244582713049644155274927549
  bounds := fun _d => ⟨0, -1⟩

def cellA10B61 : CellData where
  inverse := 92026899263482051183863793951
  bounds := fun _d => ⟨0, -1⟩

def cellA10B62 : CellData where
  inverse := 92026899263482051183863793951
  bounds := fun _d => ⟨0, -1⟩

def cellA10B63 : CellData where
  inverse := 855067748217373714441163591569
  bounds := fun _d => ⟨0, -1⟩

def cellA10B64 : CellData where
  inverse := 855067748217373714441163591569
  bounds := fun _d => ⟨0, -1⟩

def cellA10B65 : CellData where
  inverse := 855067748217373714441163591569
  bounds := fun _d => ⟨0, -1⟩

def cellA10B66 : CellData where
  inverse := 21457170669972448622388258127255
  bounds := fun _d => ⟨0, -1⟩

def cellA10B67 : CellData where
  inverse := 21457170669972448622388258127255
  bounds := fun _d => ⟨0, -1⟩

def cellA10B68 : CellData where
  inverse := 21457170669972448622388258127255
  bounds := fun _d => ⟨0, -1⟩

def cellA11B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 57960⟩ else if d = (-7 : ℤ) then ⟨0, 57960⟩ else if d = (-4 : ℤ) then ⟨0, 57960⟩ else if d = (-1 : ℤ) then ⟨0, 57960⟩ else if d = (2 : ℤ) then ⟨0, 57960⟩ else if d = (5 : ℤ) then ⟨0, 57960⟩ else if d = (8 : ℤ) then ⟨0, 57960⟩ else ⟨0, 57959⟩

def cellA11B2 : CellData where
  inverse := 2
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 57960⟩ else if d = (-7 : ℤ) then ⟨0, 57960⟩ else if d = (-4 : ℤ) then ⟨0, 57960⟩ else if d = (-3 : ℤ) then ⟨0, 57960⟩ else if d = (1 : ℤ) then ⟨0, 57960⟩ else if d = (2 : ℤ) then ⟨0, 57960⟩ else if d = (5 : ℤ) then ⟨0, 57960⟩ else if d = (6 : ℤ) then ⟨0, 57960⟩ else if d = (10 : ℤ) then ⟨0, 57960⟩ else ⟨0, 57959⟩

def cellA11B3 : CellData where
  inverse := 20
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 57960⟩ else if d = (-8 : ℤ) then ⟨0, 57960⟩ else if d = (-5 : ℤ) then ⟨0, 57960⟩ else if d = (-4 : ℤ) then ⟨0, 57960⟩ else if d = (-1 : ℤ) then ⟨0, 57960⟩ else if d = (3 : ℤ) then ⟨0, 57960⟩ else if d = (6 : ℤ) then ⟨0, 57960⟩ else if d = (7 : ℤ) then ⟨0, 57960⟩ else if d = (10 : ℤ) then ⟨0, 57960⟩ else ⟨0, 57959⟩

def cellA11B4 : CellData where
  inverse := 74
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 57960⟩ else if d = (-4 : ℤ) then ⟨0, 57960⟩ else if d = (-3 : ℤ) then ⟨0, 57960⟩ else if d = (-2 : ℤ) then ⟨0, 57960⟩ else if d = (-1 : ℤ) then ⟨0, 57960⟩ else if d = (7 : ℤ) then ⟨0, 57960⟩ else if d = (8 : ℤ) then ⟨0, 57960⟩ else if d = (9 : ℤ) then ⟨0, 57960⟩ else if d = (10 : ℤ) then ⟨0, 57960⟩ else ⟨0, 57959⟩

def cellA11B5 : CellData where
  inverse := 236
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 57960⟩ else if d = (-9 : ℤ) then ⟨0, 57960⟩ else if d = (-8 : ℤ) then ⟨0, 57960⟩ else if d = (-7 : ℤ) then ⟨0, 57960⟩ else if d = (-6 : ℤ) then ⟨0, 57960⟩ else if d = (-5 : ℤ) then ⟨0, 57960⟩ else if d = (-4 : ℤ) then ⟨0, 57960⟩ else if d = (-3 : ℤ) then ⟨0, 57960⟩ else if d = (-2 : ℤ) then ⟨0, 57960⟩ else if d = (-1 : ℤ) then ⟨0, 57960⟩ else ⟨0, 57959⟩

def cellA11B6 : CellData where
  inverse := 236
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 57960⟩ else if d = (-8 : ℤ) then ⟨0, 57960⟩ else if d = (-6 : ℤ) then ⟨0, 57960⟩ else if d = (-5 : ℤ) then ⟨0, 57960⟩ else if d = (-3 : ℤ) then ⟨0, 57960⟩ else if d = (-2 : ℤ) then ⟨0, 57960⟩ else if d = (1 : ℤ) then ⟨0, 57960⟩ else if d = (4 : ℤ) then ⟨0, 57960⟩ else if d = (7 : ℤ) then ⟨0, 57960⟩ else if d = (10 : ℤ) then ⟨0, 57960⟩ else ⟨0, 57959⟩

def cellA11B7 : CellData where
  inverse := 236
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 54275⟩ else if d = (-3 : ℤ) then ⟨0, 54275⟩ else if d = (-2 : ℤ) then ⟨0, 54275⟩ else if d = (-1 : ℤ) then ⟨0, 54275⟩ else if d = (0 : ℤ) then ⟨0, 54275⟩ else if d = (7 : ℤ) then ⟨0, 54275⟩ else if d = (8 : ℤ) then ⟨0, 54275⟩ else if d = (9 : ℤ) then ⟨0, 54275⟩ else ⟨0, 54276⟩

def cellA11B8 : CellData where
  inverse := 4610
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 18092⟩ else if d = (-4 : ℤ) then ⟨0, 18092⟩ else if d = (3 : ℤ) then ⟨0, 18092⟩ else if d = (6 : ℤ) then ⟨0, 18092⟩ else if d = (10 : ℤ) then ⟨0, 18092⟩ else ⟨0, 18091⟩

def cellA11B9 : CellData where
  inverse := 17732
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 6029⟩ else if d = (-9 : ℤ) then ⟨0, 6029⟩ else if d = (-8 : ℤ) then ⟨0, 6029⟩ else if d = (0 : ℤ) then ⟨0, 6029⟩ else if d = (1 : ℤ) then ⟨0, 6029⟩ else if d = (2 : ℤ) then ⟨0, 6029⟩ else ⟨0, 6030⟩

def cellA11B10 : CellData where
  inverse := 17732
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 2010⟩ else if d = (-3 : ℤ) then ⟨0, 2010⟩ else if d = (4 : ℤ) then ⟨0, 2010⟩ else if d = (7 : ℤ) then ⟨0, 2010⟩ else if d = (10 : ℤ) then ⟨0, 2010⟩ else ⟨0, 2009⟩

def cellA11B11 : CellData where
  inverse := 17732
  bounds := fun d => if d = (10 : ℤ) then ⟨0, 670⟩ else ⟨0, 669⟩

def cellA11B12 : CellData where
  inverse := 194879
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 223⟩ else if d = (-8 : ℤ) then ⟨0, 223⟩ else if d = (-5 : ℤ) then ⟨0, 223⟩ else if d = (-2 : ℤ) then ⟨0, 223⟩ else if d = (3 : ℤ) then ⟨0, 223⟩ else if d = (6 : ℤ) then ⟨0, 223⟩ else if d = (9 : ℤ) then ⟨0, 223⟩ else ⟨0, 222⟩

def cellA11B13 : CellData where
  inverse := 726320
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 74⟩ else if d = (-8 : ℤ) then ⟨0, 74⟩ else if d = (-6 : ℤ) then ⟨0, 74⟩ else if d = (-4 : ℤ) then ⟨0, 74⟩ else if d = (-2 : ℤ) then ⟨0, 74⟩ else if d = (3 : ℤ) then ⟨0, 74⟩ else if d = (5 : ℤ) then ⟨0, 74⟩ else if d = (7 : ℤ) then ⟨0, 74⟩ else if d = (9 : ℤ) then ⟨0, 74⟩ else ⟨0, 73⟩

def cellA11B14 : CellData where
  inverse := 726320
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 23⟩ else if d = (-1 : ℤ) then ⟨0, 23⟩ else if d = (0 : ℤ) then ⟨0, 23⟩ else if d = (6 : ℤ) then ⟨0, 23⟩ else ⟨0, 24⟩

def cellA11B15 : CellData where
  inverse := 10292258
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 8⟩ else if d = (-4 : ℤ) then ⟨0, 8⟩ else if d = (3 : ℤ) then ⟨0, 8⟩ else if d = (7 : ℤ) then ⟨0, 8⟩ else if d = (10 : ℤ) then ⟨0, 8⟩ else ⟨0, 7⟩

def cellA11B16 : CellData where
  inverse := 38990072
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1⟩ else if d = (-9 : ℤ) then ⟨0, 1⟩ else if d = (0 : ℤ) then ⟨0, 1⟩ else if d = (1 : ℤ) then ⟨0, 1⟩ else if d = (2 : ℤ) then ⟨0, 1⟩ else ⟨0, 2⟩

def cellA11B17 : CellData where
  inverse := 82036793
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA11B18 : CellData where
  inverse := 340317119
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B19 : CellData where
  inverse := 1115158097
  bounds := fun d => if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B20 : CellData where
  inverse := 1115158097
  bounds := fun _d => ⟨0, -1⟩

def cellA11B21 : CellData where
  inverse := 4601942498
  bounds := fun _d => ⟨0, -1⟩

def cellA11B22 : CellData where
  inverse := 15062295701
  bounds := fun _d => ⟨0, -1⟩

def cellA11B23 : CellData where
  inverse := 77824414919
  bounds := fun _d => ⟨0, -1⟩

def cellA11B24 : CellData where
  inverse := 171967593746
  bounds := fun _d => ⟨0, -1⟩

def cellA11B25 : CellData where
  inverse := 736826666708
  bounds := fun _d => ⟨0, -1⟩

def cellA11B26 : CellData where
  inverse := 2431403885594
  bounds := fun _d => ⟨0, -1⟩

def cellA11B27 : CellData where
  inverse := 2431403885594
  bounds := fun _d => ⟨0, -1⟩

def cellA11B28 : CellData where
  inverse := 17682598855568
  bounds := fun _d => ⟨0, -1⟩

def cellA11B29 : CellData where
  inverse := 63436183765490
  bounds := fun _d => ⟨0, -1⟩

def cellA11B30 : CellData where
  inverse := 63436183765490
  bounds := fun _d => ⟨0, -1⟩

def cellA11B31 : CellData where
  inverse := 269327315860139
  bounds := fun _d => ⟨0, -1⟩

def cellA11B32 : CellData where
  inverse := 1504674108428033
  bounds := fun _d => ⟨0, -1⟩

def cellA11B33 : CellData where
  inverse := 3357694297279874
  bounds := fun _d => ⟨0, -1⟩

def cellA11B34 : CellData where
  inverse := 8916754863835397
  bounds := fun _d => ⟨0, -1⟩

def cellA11B35 : CellData where
  inverse := 8916754863835397
  bounds := fun _d => ⟨0, -1⟩

def cellA11B36 : CellData where
  inverse := 108979845061834811
  bounds := fun _d => ⟨0, -1⟩

def cellA11B37 : CellData where
  inverse := 409169115655833053
  bounds := fun _d => ⟨0, -1⟩

def cellA11B38 : CellData where
  inverse := 859453021546830416
  bounds := fun _d => ⟨0, -1⟩

def cellA11B39 : CellData where
  inverse := 2210304739219822505
  bounds := fun _d => ⟨0, -1⟩

def cellA11B40 : CellData where
  inverse := 6262859892238798772
  bounds := fun _d => ⟨0, -1⟩

def cellA11B41 : CellData where
  inverse := 30578190810352656374
  bounds := fun _d => ⟨0, -1⟩

def cellA11B42 : CellData where
  inverse := 67051187187523442777
  bounds := fun _d => ⟨0, -1⟩

def cellA11B43 : CellData where
  inverse := 176470176319035801986
  bounds := fun _d => ⟨0, -1⟩

def cellA11B44 : CellData where
  inverse := 176470176319035801986
  bounds := fun _d => ⟨0, -1⟩

def cellA11B45 : CellData where
  inverse := 1161241078502647034867
  bounds := fun _d => ⟨0, -1⟩

def cellA11B46 : CellData where
  inverse := 4115553785053480733510
  bounds := fun _d => ⟨0, -1⟩

def cellA11B47 : CellData where
  inverse := 4115553785053480733510
  bounds := fun _d => ⟨0, -1⟩

def cellA11B48 : CellData where
  inverse := 57293182502968487309084
  bounds := fun _d => ⟨0, -1⟩

def cellA11B49 : CellData where
  inverse := 137059625579840997172445
  bounds := fun _d => ⟨0, -1⟩

def cellA11B50 : CellData where
  inverse := 137059625579840997172445
  bounds := fun _d => ⟨0, -1⟩

def cellA11B51 : CellData where
  inverse := 854957613271693585942694
  bounds := fun _d => ⟨0, -1⟩

def cellA11B52 : CellData where
  inverse := 854957613271693585942694
  bounds := fun _d => ⟨0, -1⟩

def cellA11B53 : CellData where
  inverse := 7316039502498366884874935
  bounds := fun _d => ⟨0, -1⟩

def cellA11B54 : CellData where
  inverse := 46082530837858406678468381
  bounds := fun _d => ⟨0, -1⟩

def cellA11B55 : CellData where
  inverse := 46082530837858406678468381
  bounds := fun _d => ⟨0, -1⟩

def cellA11B56 : CellData where
  inverse := 220531741846978585749638888
  bounds := fun _d => ⟨0, -1⟩

def cellA11B57 : CellData where
  inverse := 1267227007901699660176661930
  bounds := fun _d => ⟨0, -1⟩

def cellA11B58 : CellData where
  inverse := 1267227007901699660176661930
  bounds := fun _d => ⟨0, -1⟩

def cellA11B59 : CellData where
  inverse := 10687484402394189330019869308
  bounds := fun _d => ⟨0, -1⟩

def cellA11B60 : CellData where
  inverse := 24817870494132923834784680375
  bounds := fun _d => ⟨0, -1⟩

def cellA11B61 : CellData where
  inverse := 109600187044565330863373546777
  bounds := fun _d => ⟨0, -1⟩

def cellA11B62 : CellData where
  inverse := 236773661870213941406256846380
  bounds := fun _d => ⟨0, -1⟩

def cellA11B63 : CellData where
  inverse := 999814510824105604663556643998
  bounds := fun _d => ⟨0, -1⟩

def cellA11B64 : CellData where
  inverse := 2144375784254943099549506340425
  bounds := fun _d => ⟨0, -1⟩

def cellA11B65 : CellData where
  inverse := 5578059604547455584207355429706
  bounds := fun _d => ⟨0, -1⟩

def cellA11B66 : CellData where
  inverse := 26180162526302530492154449965392
  bounds := fun _d => ⟨0, -1⟩

def cellA11B67 : CellData where
  inverse := 57083316908935142854075091768921
  bounds := fun _d => ⟨0, -1⟩

def cellA11B68 : CellData where
  inverse := 149792780056832979939837017179508
  bounds := fun _d => ⟨0, -1⟩

def cellA12B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, 28979⟩

def cellA12B2 : CellData where
  inverse := 1
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 28980⟩ else if d = (-7 : ℤ) then ⟨0, 28980⟩ else if d = (1 : ℤ) then ⟨0, 28980⟩ else if d = (2 : ℤ) then ⟨0, 28980⟩ else if d = (10 : ℤ) then ⟨0, 28980⟩ else ⟨0, 28979⟩

def cellA12B3 : CellData where
  inverse := 10
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 28980⟩ else if d = (-5 : ℤ) then ⟨0, 28980⟩ else if d = (3 : ℤ) then ⟨0, 28980⟩ else if d = (6 : ℤ) then ⟨0, 28980⟩ else ⟨0, 28979⟩

def cellA12B4 : CellData where
  inverse := 37
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 28980⟩ else if d = (-2 : ℤ) then ⟨0, 28980⟩ else if d = (7 : ℤ) then ⟨0, 28980⟩ else if d = (9 : ℤ) then ⟨0, 28980⟩ else ⟨0, 28979⟩

def cellA12B5 : CellData where
  inverse := 118
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 28980⟩ else if d = (-8 : ℤ) then ⟨0, 28980⟩ else if d = (-6 : ℤ) then ⟨0, 28980⟩ else if d = (-4 : ℤ) then ⟨0, 28980⟩ else if d = (-2 : ℤ) then ⟨0, 28980⟩ else ⟨0, 28979⟩

def cellA12B6 : CellData where
  inverse := 118
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 28980⟩ else if d = (-5 : ℤ) then ⟨0, 28980⟩ else if d = (1 : ℤ) then ⟨0, 28980⟩ else if d = (7 : ℤ) then ⟨0, 28980⟩ else ⟨0, 28979⟩

def cellA12B7 : CellData where
  inverse := 118
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 28980⟩ else if d = (2 : ℤ) then ⟨0, 28980⟩ else if d = (3 : ℤ) then ⟨0, 28980⟩ else if d = (4 : ℤ) then ⟨0, 28980⟩ else ⟨0, 28979⟩

def cellA12B8 : CellData where
  inverse := 2305
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 18092⟩ else if d = (3 : ℤ) then ⟨0, 18092⟩ else if d = (6 : ℤ) then ⟨0, 18092⟩ else if d = (9 : ℤ) then ⟨0, 18092⟩ else ⟨0, 18091⟩

def cellA12B9 : CellData where
  inverse := 8866
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 6029⟩ else if d = (-7 : ℤ) then ⟨0, 6029⟩ else if d = (-5 : ℤ) then ⟨0, 6029⟩ else if d = (0 : ℤ) then ⟨0, 6029⟩ else if d = (2 : ℤ) then ⟨0, 6029⟩ else if d = (4 : ℤ) then ⟨0, 6029⟩ else ⟨0, 6030⟩

def cellA12B10 : CellData where
  inverse := 8866
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 2010⟩ else if d = (1 : ℤ) then ⟨0, 2010⟩ else if d = (7 : ℤ) then ⟨0, 2010⟩ else if d = (8 : ℤ) then ⟨0, 2010⟩ else ⟨0, 2009⟩

def cellA12B11 : CellData where
  inverse := 8866
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 670⟩ else ⟨0, 669⟩

def cellA12B12 : CellData where
  inverse := 363160
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 223⟩ else if d = (-7 : ℤ) then ⟨0, 223⟩ else if d = (-4 : ℤ) then ⟨0, 223⟩ else if d = (-1 : ℤ) then ⟨0, 223⟩ else if d = (3 : ℤ) then ⟨0, 223⟩ else if d = (6 : ℤ) then ⟨0, 223⟩ else if d = (9 : ℤ) then ⟨0, 223⟩ else ⟨0, 222⟩

def cellA12B13 : CellData where
  inverse := 363160
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 74⟩ else if d = (-7 : ℤ) then ⟨0, 74⟩ else if d = (-4 : ℤ) then ⟨0, 74⟩ else if d = (-3 : ℤ) then ⟨0, 74⟩ else if d = (1 : ℤ) then ⟨0, 74⟩ else if d = (5 : ℤ) then ⟨0, 74⟩ else if d = (6 : ℤ) then ⟨0, 74⟩ else if d = (9 : ℤ) then ⟨0, 74⟩ else if d = (10 : ℤ) then ⟨0, 74⟩ else ⟨0, 73⟩

def cellA12B14 : CellData where
  inverse := 363160
  bounds := fun d => if d = (-2 : ℤ) then ⟨0, 23⟩ else if d = (-1 : ℤ) then ⟨0, 23⟩ else if d = (0 : ℤ) then ⟨0, 23⟩ else ⟨0, 24⟩

def cellA12B15 : CellData where
  inverse := 5146129
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 8⟩ else if d = (-5 : ℤ) then ⟨0, 8⟩ else if d = (3 : ℤ) then ⟨0, 8⟩ else if d = (6 : ℤ) then ⟨0, 8⟩ else if d = (9 : ℤ) then ⟨0, 8⟩ else ⟨0, 7⟩

def cellA12B16 : CellData where
  inverse := 19495036
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 1⟩ else if d = (-7 : ℤ) then ⟨0, 1⟩ else if d = (0 : ℤ) then ⟨0, 1⟩ else if d = (2 : ℤ) then ⟨0, 1⟩ else if d = (4 : ℤ) then ⟨0, 1⟩ else ⟨0, 2⟩

def cellA12B17 : CellData where
  inverse := 105588478
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA12B18 : CellData where
  inverse := 363868804
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B19 : CellData where
  inverse := 1138709782
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B20 : CellData where
  inverse := 2300971249
  bounds := fun d => if d = (-3 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B21 : CellData where
  inverse := 2300971249
  bounds := fun _d => ⟨0, -1⟩

def cellA12B22 : CellData where
  inverse := 23221677655
  bounds := fun _d => ⟨0, -1⟩

def cellA12B23 : CellData where
  inverse := 85983796873
  bounds := fun _d => ⟨0, -1⟩

def cellA12B24 : CellData where
  inverse := 85983796873
  bounds := fun _d => ⟨0, -1⟩

def cellA12B25 : CellData where
  inverse := 368413333354
  bounds := fun _d => ⟨0, -1⟩

def cellA12B26 : CellData where
  inverse := 1215701942797
  bounds := fun _d => ⟨0, -1⟩

def cellA12B27 : CellData where
  inverse := 1215701942797
  bounds := fun _d => ⟨0, -1⟩

def cellA12B28 : CellData where
  inverse := 8841299427784
  bounds := fun _d => ⟨0, -1⟩

def cellA12B29 : CellData where
  inverse := 31718091882745
  bounds := fun _d => ⟨0, -1⟩

def cellA12B30 : CellData where
  inverse := 31718091882745
  bounds := fun _d => ⟨0, -1⟩

def cellA12B31 : CellData where
  inverse := 443500356072043
  bounds := fun _d => ⟨0, -1⟩

def cellA12B32 : CellData where
  inverse := 1678847148639937
  bounds := fun _d => ⟨0, -1⟩

def cellA12B33 : CellData where
  inverse := 1678847148639937
  bounds := fun _d => ⟨0, -1⟩

def cellA12B34 : CellData where
  inverse := 12796968281750983
  bounds := fun _d => ⟨0, -1⟩

def cellA12B35 : CellData where
  inverse := 29474149981417552
  bounds := fun _d => ⟨0, -1⟩

def cellA12B36 : CellData where
  inverse := 129537240179416966
  bounds := fun _d => ⟨0, -1⟩

def cellA12B37 : CellData where
  inverse := 429726510773415208
  bounds := fun _d => ⟨0, -1⟩

def cellA12B38 : CellData where
  inverse := 429726510773415208
  bounds := fun _d => ⟨0, -1⟩

def cellA12B39 : CellData where
  inverse := 3131429946119399386
  bounds := fun _d => ⟨0, -1⟩

def cellA12B40 : CellData where
  inverse := 3131429946119399386
  bounds := fun _d => ⟨0, -1⟩

def cellA12B41 : CellData where
  inverse := 15289095405176328187
  bounds := fun _d => ⟨0, -1⟩

def cellA12B42 : CellData where
  inverse := 88235088159517900993
  bounds := fun _d => ⟨0, -1⟩

def cellA12B43 : CellData where
  inverse := 88235088159517900993
  bounds := fun _d => ⟨0, -1⟩

def cellA12B44 : CellData where
  inverse := 88235088159517900993
  bounds := fun _d => ⟨0, -1⟩

def cellA12B45 : CellData where
  inverse := 2057776892526740366755
  bounds := fun _d => ⟨0, -1⟩

def cellA12B46 : CellData where
  inverse := 2057776892526740366755
  bounds := fun _d => ⟨0, -1⟩

def cellA12B47 : CellData where
  inverse := 2057776892526740366755
  bounds := fun _d => ⟨0, -1⟩

def cellA12B48 : CellData where
  inverse := 28646591251484243654542
  bounds := fun _d => ⟨0, -1⟩

def cellA12B49 : CellData where
  inverse := 188179477405229263381264
  bounds := fun _d => ⟨0, -1⟩

def cellA12B50 : CellData where
  inverse := 427478806635846792971347
  bounds := fun _d => ⟨0, -1⟩

def cellA12B51 : CellData where
  inverse := 427478806635846792971347
  bounds := fun _d => ⟨0, -1⟩

def cellA12B52 : CellData where
  inverse := 427478806635846792971347
  bounds := fun _d => ⟨0, -1⟩

def cellA12B53 : CellData where
  inverse := 13349642585089193390835829
  bounds := fun _d => ⟨0, -1⟩

def cellA12B54 : CellData where
  inverse := 52116133920449233184429275
  bounds := fun _d => ⟨0, -1⟩

def cellA12B55 : CellData where
  inverse := 110265870923489292874819444
  bounds := fun _d => ⟨0, -1⟩

def cellA12B56 : CellData where
  inverse := 110265870923489292874819444
  bounds := fun _d => ⟨0, -1⟩

def cellA12B57 : CellData where
  inverse := 633613503950849830088330965
  bounds := fun _d => ⟨0, -1⟩

def cellA12B58 : CellData where
  inverse := 633613503950849830088330965
  bounds := fun _d => ⟨0, -1⟩

def cellA12B59 : CellData where
  inverse := 5343742201197094665009934654
  bounds := fun _d => ⟨0, -1⟩

def cellA12B60 : CellData where
  inverse := 33604514384674563674539556788
  bounds := fun _d => ⟨0, -1⟩

def cellA12B61 : CellData where
  inverse := 118386830935106970703128423190
  bounds := fun _d => ⟨0, -1⟩

def cellA12B62 : CellData where
  inverse := 118386830935106970703128423190
  bounds := fun _d => ⟨0, -1⟩

def cellA12B63 : CellData where
  inverse := 499907255412052802331778321999
  bounds := fun _d => ⟨0, -1⟩

def cellA12B64 : CellData where
  inverse := 2789029802273727792103677714853
  bounds := fun _d => ⟨0, -1⟩

def cellA12B65 : CellData where
  inverse := 2789029802273727792103677714853
  bounds := fun _d => ⟨0, -1⟩

def cellA12B66 : CellData where
  inverse := 13090081263151265246077224982696
  bounds := fun _d => ⟨0, -1⟩

def cellA12B67 : CellData where
  inverse := 74896390028416489969918508589754
  bounds := fun _d => ⟨0, -1⟩

def cellA12B68 : CellData where
  inverse := 74896390028416489969918508589754
  bounds := fun _d => ⟨0, -1⟩

def cellA13B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, 14489⟩

def cellA13B2 : CellData where
  inverse := 5
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 14490⟩ else if d = (2 : ℤ) then ⟨0, 14490⟩ else ⟨0, 14489⟩

def cellA13B3 : CellData where
  inverse := 5
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 14490⟩ else if d = (6 : ℤ) then ⟨0, 14490⟩ else ⟨0, 14489⟩

def cellA13B4 : CellData where
  inverse := 59
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 14490⟩ else if d = (7 : ℤ) then ⟨0, 14490⟩ else ⟨0, 14489⟩

def cellA13B5 : CellData where
  inverse := 59
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 14490⟩ else if d = (-4 : ℤ) then ⟨0, 14490⟩ else ⟨0, 14489⟩

def cellA13B6 : CellData where
  inverse := 59
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 14490⟩ else ⟨0, 14489⟩

def cellA13B7 : CellData where
  inverse := 59
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 14490⟩ else if d = (2 : ℤ) then ⟨0, 14490⟩ else if d = (3 : ℤ) then ⟨0, 14490⟩ else if d = (4 : ℤ) then ⟨0, 14490⟩ else ⟨0, 14489⟩

def cellA13B8 : CellData where
  inverse := 4433
  bounds := fun d => if d = (3 : ℤ) then ⟨0, 14490⟩ else if d = (6 : ℤ) then ⟨0, 14490⟩ else if d = (9 : ℤ) then ⟨0, 14490⟩ else ⟨0, 14489⟩

def cellA13B9 : CellData where
  inverse := 4433
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 6029⟩ else if d = (-9 : ℤ) then ⟨0, 6029⟩ else if d = (-5 : ℤ) then ⟨0, 6029⟩ else if d = (-1 : ℤ) then ⟨0, 6029⟩ else if d = (0 : ℤ) then ⟨0, 6029⟩ else if d = (4 : ℤ) then ⟨0, 6029⟩ else if d = (8 : ℤ) then ⟨0, 6029⟩ else ⟨0, 6030⟩

def cellA13B10 : CellData where
  inverse := 4433
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 2010⟩ else if d = (2 : ℤ) then ⟨0, 2010⟩ else if d = (3 : ℤ) then ⟨0, 2010⟩ else ⟨0, 2009⟩

def cellA13B11 : CellData where
  inverse := 4433
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 670⟩ else if d = (2 : ℤ) then ⟨0, 670⟩ else if d = (3 : ℤ) then ⟨0, 670⟩ else ⟨0, 669⟩

def cellA13B12 : CellData where
  inverse := 181580
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 223⟩ else if d = (-5 : ℤ) then ⟨0, 223⟩ else if d = (-2 : ℤ) then ⟨0, 223⟩ else if d = (1 : ℤ) then ⟨0, 223⟩ else if d = (3 : ℤ) then ⟨0, 223⟩ else if d = (6 : ℤ) then ⟨0, 223⟩ else if d = (9 : ℤ) then ⟨0, 223⟩ else ⟨0, 222⟩

def cellA13B13 : CellData where
  inverse := 181580
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 74⟩ else if d = (-7 : ℤ) then ⟨0, 74⟩ else if d = (-6 : ℤ) then ⟨0, 74⟩ else if d = (-5 : ℤ) then ⟨0, 74⟩ else if d = (1 : ℤ) then ⟨0, 74⟩ else if d = (2 : ℤ) then ⟨0, 74⟩ else if d = (3 : ℤ) then ⟨0, 74⟩ else if d = (9 : ℤ) then ⟨0, 74⟩ else if d = (10 : ℤ) then ⟨0, 74⟩ else ⟨0, 73⟩

def cellA13B14 : CellData where
  inverse := 181580
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 23⟩ else if d = (-3 : ℤ) then ⟨0, 23⟩ else if d = (-2 : ℤ) then ⟨0, 23⟩ else if d = (-1 : ℤ) then ⟨0, 23⟩ else if d = (0 : ℤ) then ⟨0, 23⟩ else ⟨0, 24⟩

def cellA13B15 : CellData where
  inverse := 9747518
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 8⟩ else if d = (-7 : ℤ) then ⟨0, 8⟩ else if d = (3 : ℤ) then ⟨0, 8⟩ else if d = (6 : ℤ) then ⟨0, 8⟩ else if d = (9 : ℤ) then ⟨0, 8⟩ else ⟨0, 7⟩

def cellA13B16 : CellData where
  inverse := 9747518
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 1⟩ else if d = (-5 : ℤ) then ⟨0, 1⟩ else if d = (-1 : ℤ) then ⟨0, 1⟩ else if d = (0 : ℤ) then ⟨0, 1⟩ else if d = (4 : ℤ) then ⟨0, 1⟩ else if d = (8 : ℤ) then ⟨0, 1⟩ else ⟨0, 2⟩

def cellA13B17 : CellData where
  inverse := 52794239
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA13B18 : CellData where
  inverse := 181934402
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA13B19 : CellData where
  inverse := 569354891
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA13B20 : CellData where
  inverse := 2893877825
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA13B21 : CellData where
  inverse := 6380662226
  bounds := fun _d => ⟨0, -1⟩

def cellA13B22 : CellData where
  inverse := 27301368632
  bounds := fun _d => ⟨0, -1⟩

def cellA13B23 : CellData where
  inverse := 90063487850
  bounds := fun _d => ⟨0, -1⟩

def cellA13B24 : CellData where
  inverse := 184206666677
  bounds := fun _d => ⟨0, -1⟩

def cellA13B25 : CellData where
  inverse := 184206666677
  bounds := fun _d => ⟨0, -1⟩

def cellA13B26 : CellData where
  inverse := 1878783885563
  bounds := fun _d => ⟨0, -1⟩

def cellA13B27 : CellData where
  inverse := 4420649713892
  bounds := fun _d => ⟨0, -1⟩

def cellA13B28 : CellData where
  inverse := 4420649713892
  bounds := fun _d => ⟨0, -1⟩

def cellA13B29 : CellData where
  inverse := 50174234623814
  bounds := fun _d => ⟨0, -1⟩

def cellA13B30 : CellData where
  inverse := 118804611988697
  bounds := fun _d => ⟨0, -1⟩

def cellA13B31 : CellData where
  inverse := 530586876177995
  bounds := fun _d => ⟨0, -1⟩

def cellA13B32 : CellData where
  inverse := 1765933668745889
  bounds := fun _d => ⟨0, -1⟩

def cellA13B33 : CellData where
  inverse := 3618953857597730
  bounds := fun _d => ⟨0, -1⟩

def cellA13B34 : CellData where
  inverse := 14737074990708776
  bounds := fun _d => ⟨0, -1⟩

def cellA13B35 : CellData where
  inverse := 14737074990708776
  bounds := fun _d => ⟨0, -1⟩

def cellA13B36 : CellData where
  inverse := 64768620089708483
  bounds := fun _d => ⟨0, -1⟩

def cellA13B37 : CellData where
  inverse := 214863255386707604
  bounds := fun _d => ⟨0, -1⟩

def cellA13B38 : CellData where
  inverse := 214863255386707604
  bounds := fun _d => ⟨0, -1⟩

def cellA13B39 : CellData where
  inverse := 1565714973059699693
  bounds := fun _d => ⟨0, -1⟩

def cellA13B40 : CellData where
  inverse := 1565714973059699693
  bounds := fun _d => ⟨0, -1⟩

def cellA13B41 : CellData where
  inverse := 25881045891173557295
  bounds := fun _d => ⟨0, -1⟩

def cellA13B42 : CellData where
  inverse := 98827038645515130101
  bounds := fun _d => ⟨0, -1⟩

def cellA13B43 : CellData where
  inverse := 208246027777027489310
  bounds := fun _d => ⟨0, -1⟩

def cellA13B44 : CellData where
  inverse := 536502995171564566937
  bounds := fun _d => ⟨0, -1⟩

def cellA13B45 : CellData where
  inverse := 2506044799538787032699
  bounds := fun _d => ⟨0, -1⟩

def cellA13B46 : CellData where
  inverse := 5460357506089620731342
  bounds := fun _d => ⟨0, -1⟩

def cellA13B47 : CellData where
  inverse := 14323295625742121827271
  bounds := fun _d => ⟨0, -1⟩

def cellA13B48 : CellData where
  inverse := 14323295625742121827271
  bounds := fun _d => ⟨0, -1⟩

def cellA13B49 : CellData where
  inverse := 94089738702614631690632
  bounds := fun _d => ⟨0, -1⟩

def cellA13B50 : CellData where
  inverse := 572688397163849690870798
  bounds := fun _d => ⟨0, -1⟩

def cellA13B51 : CellData where
  inverse := 1290586384855702279641047
  bounds := fun _d => ⟨0, -1⟩

def cellA13B52 : CellData where
  inverse := 3444280347931260045951794
  bounds := fun _d => ⟨0, -1⟩

def cellA13B53 : CellData where
  inverse := 16366444126384606643816276
  bounds := fun _d => ⟨0, -1⟩

def cellA13B54 : CellData where
  inverse := 55132935461744646437409722
  bounds := fun _d => ⟨0, -1⟩

def cellA13B55 : CellData where
  inverse := 55132935461744646437409722
  bounds := fun _d => ⟨0, -1⟩

def cellA13B56 : CellData where
  inverse := 55132935461744646437409722
  bounds := fun _d => ⟨0, -1⟩

def cellA13B57 : CellData where
  inverse := 1101828201516465720864432764
  bounds := fun _d => ⟨0, -1⟩

def cellA13B58 : CellData where
  inverse := 2671871100598547332504967327
  bounds := fun _d => ⟨0, -1⟩

def cellA13B59 : CellData where
  inverse := 2671871100598547332504967327
  bounds := fun _d => ⟨0, -1⟩

def cellA13B60 : CellData where
  inverse := 16802257192337281837269778394
  bounds := fun _d => ⟨0, -1⟩

def cellA13B61 : CellData where
  inverse := 59193415467553485351564211595
  bounds := fun _d => ⟨0, -1⟩

def cellA13B62 : CellData where
  inverse := 59193415467553485351564211595
  bounds := fun _d => ⟨0, -1⟩

def cellA13B63 : CellData where
  inverse := 822234264421445148608864009213
  bounds := fun _d => ⟨0, -1⟩

def cellA13B64 : CellData where
  inverse := 3111356811283120138380763402067
  bounds := fun _d => ⟨0, -1⟩

def cellA13B65 : CellData where
  inverse := 6545040631575632623038612491348
  bounds := fun _d => ⟨0, -1⟩

def cellA13B66 : CellData where
  inverse := 6545040631575632623038612491348
  bounds := fun _d => ⟨0, -1⟩

def cellA13B67 : CellData where
  inverse := 37448195014208244984959254294877
  bounds := fun _d => ⟨0, -1⟩

def cellA13B68 : CellData where
  inverse := 37448195014208244984959254294877
  bounds := fun _d => ⟨0, -1⟩

def cellA14B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, 7244⟩

def cellA14B2 : CellData where
  inverse := 7
  bounds := fun _d => ⟨0, 7244⟩

def cellA14B3 : CellData where
  inverse := 16
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 7245⟩ else ⟨0, 7244⟩

def cellA14B4 : CellData where
  inverse := 70
  bounds := fun d => if d = (7 : ℤ) then ⟨0, 7245⟩ else ⟨0, 7244⟩

def cellA14B5 : CellData where
  inverse := 151
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 7245⟩ else ⟨0, 7244⟩

def cellA14B6 : CellData where
  inverse := 394
  bounds := fun _d => ⟨0, 7244⟩

def cellA14B7 : CellData where
  inverse := 1123
  bounds := fun d => if d = (2 : ℤ) then ⟨0, 7245⟩ else if d = (4 : ℤ) then ⟨0, 7245⟩ else ⟨0, 7244⟩

def cellA14B8 : CellData where
  inverse := 5497
  bounds := fun d => if d = (6 : ℤ) then ⟨0, 7245⟩ else ⟨0, 7244⟩

def cellA14B9 : CellData where
  inverse := 12058
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 6029⟩ else if d = (-5 : ℤ) then ⟨0, 6029⟩ else if d = (-2 : ℤ) then ⟨0, 6029⟩ else if d = (0 : ℤ) then ⟨0, 6029⟩ else if d = (3 : ℤ) then ⟨0, 6029⟩ else if d = (8 : ℤ) then ⟨0, 6029⟩ else ⟨0, 6030⟩

def cellA14B10 : CellData where
  inverse := 31741
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 2010⟩ else if d = (-7 : ℤ) then ⟨0, 2010⟩ else if d = (2 : ℤ) then ⟨0, 2010⟩ else if d = (4 : ℤ) then ⟨0, 2010⟩ else if d = (6 : ℤ) then ⟨0, 2010⟩ else ⟨0, 2009⟩

def cellA14B11 : CellData where
  inverse := 90790
  bounds := fun d => if d = (2 : ℤ) then ⟨0, 670⟩ else if d = (4 : ℤ) then ⟨0, 670⟩ else if d = (6 : ℤ) then ⟨0, 670⟩ else ⟨0, 669⟩

def cellA14B12 : CellData where
  inverse := 90790
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 223⟩ else if d = (-5 : ℤ) then ⟨0, 223⟩ else if d = (-4 : ℤ) then ⟨0, 223⟩ else if d = (1 : ℤ) then ⟨0, 223⟩ else if d = (2 : ℤ) then ⟨0, 223⟩ else if d = (6 : ℤ) then ⟨0, 223⟩ else if d = (7 : ℤ) then ⟨0, 223⟩ else ⟨0, 222⟩

def cellA14B13 : CellData where
  inverse := 90790
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 74⟩ else if d = (1 : ℤ) then ⟨0, 74⟩ else if d = (2 : ℤ) then ⟨0, 74⟩ else if d = (3 : ℤ) then ⟨0, 74⟩ else if d = (4 : ℤ) then ⟨0, 74⟩ else if d = (5 : ℤ) then ⟨0, 74⟩ else if d = (6 : ℤ) then ⟨0, 74⟩ else if d = (7 : ℤ) then ⟨0, 74⟩ else ⟨0, 73⟩

def cellA14B14 : CellData where
  inverse := 90790
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 23⟩ else if d = (-8 : ℤ) then ⟨0, 23⟩ else if d = (-7 : ℤ) then ⟨0, 23⟩ else if d = (-6 : ℤ) then ⟨0, 23⟩ else if d = (-5 : ℤ) then ⟨0, 23⟩ else if d = (-4 : ℤ) then ⟨0, 23⟩ else if d = (-3 : ℤ) then ⟨0, 23⟩ else if d = (-2 : ℤ) then ⟨0, 23⟩ else if d = (-1 : ℤ) then ⟨0, 23⟩ else if d = (0 : ℤ) then ⟨0, 23⟩ else ⟨0, 24⟩

def cellA14B15 : CellData where
  inverse := 4873759
  bounds := fun d => if d = (3 : ℤ) then ⟨0, 8⟩ else if d = (6 : ℤ) then ⟨0, 8⟩ else if d = (9 : ℤ) then ⟨0, 8⟩ else ⟨0, 7⟩

def cellA14B16 : CellData where
  inverse := 4873759
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1⟩ else if d = (-9 : ℤ) then ⟨0, 1⟩ else if d = (-2 : ℤ) then ⟨0, 1⟩ else if d = (-1 : ℤ) then ⟨0, 1⟩ else if d = (0 : ℤ) then ⟨0, 1⟩ else if d = (7 : ℤ) then ⟨0, 1⟩ else if d = (8 : ℤ) then ⟨0, 1⟩ else ⟨0, 2⟩

def cellA14B17 : CellData where
  inverse := 90967201
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (7 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA14B18 : CellData where
  inverse := 90967201
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA14B19 : CellData where
  inverse := 865808179
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA14B20 : CellData where
  inverse := 3190331113
  bounds := fun _d => ⟨0, -1⟩

def cellA14B21 : CellData where
  inverse := 3190331113
  bounds := fun _d => ⟨0, -1⟩

def cellA14B22 : CellData where
  inverse := 13650684316
  bounds := fun _d => ⟨0, -1⟩

def cellA14B23 : CellData where
  inverse := 45031743925
  bounds := fun _d => ⟨0, -1⟩

def cellA14B24 : CellData where
  inverse := 233318101579
  bounds := fun _d => ⟨0, -1⟩

def cellA14B25 : CellData where
  inverse := 515747638060
  bounds := fun _d => ⟨0, -1⟩

def cellA14B26 : CellData where
  inverse := 2210324856946
  bounds := fun _d => ⟨0, -1⟩

def cellA14B27 : CellData where
  inverse := 2210324856946
  bounds := fun _d => ⟨0, -1⟩

def cellA14B28 : CellData where
  inverse := 2210324856946
  bounds := fun _d => ⟨0, -1⟩

def cellA14B29 : CellData where
  inverse := 25087117311907
  bounds := fun _d => ⟨0, -1⟩

def cellA14B30 : CellData where
  inverse := 162347872041673
  bounds := fun _d => ⟨0, -1⟩

def cellA14B31 : CellData where
  inverse := 574130136230971
  bounds := fun _d => ⟨0, -1⟩

def cellA14B32 : CellData where
  inverse := 1809476928798865
  bounds := fun _d => ⟨0, -1⟩

def cellA14B33 : CellData where
  inverse := 1809476928798865
  bounds := fun _d => ⟨0, -1⟩

def cellA14B34 : CellData where
  inverse := 7368537495354388
  bounds := fun _d => ⟨0, -1⟩

def cellA14B35 : CellData where
  inverse := 7368537495354388
  bounds := fun _d => ⟨0, -1⟩

def cellA14B36 : CellData where
  inverse := 107431627693353802
  bounds := fun _d => ⟨0, -1⟩

def cellA14B37 : CellData where
  inverse := 107431627693353802
  bounds := fun _d => ⟨0, -1⟩

def cellA14B38 : CellData where
  inverse := 107431627693353802
  bounds := fun _d => ⟨0, -1⟩

def cellA14B39 : CellData where
  inverse := 2809135063039337980
  bounds := fun _d => ⟨0, -1⟩

def cellA14B40 : CellData where
  inverse := 6861690216058314247
  bounds := fun _d => ⟨0, -1⟩

def cellA14B41 : CellData where
  inverse := 31177021134172171849
  bounds := fun _d => ⟨0, -1⟩

def cellA14B42 : CellData where
  inverse := 104123013888513744655
  bounds := fun _d => ⟨0, -1⟩

def cellA14B43 : CellData where
  inverse := 104123013888513744655
  bounds := fun _d => ⟨0, -1⟩

def cellA14B44 : CellData where
  inverse := 760636948677587899909
  bounds := fun _d => ⟨0, -1⟩

def cellA14B45 : CellData where
  inverse := 2730178753044810365671
  bounds := fun _d => ⟨0, -1⟩

def cellA14B46 : CellData where
  inverse := 2730178753044810365671
  bounds := fun _d => ⟨0, -1⟩

def cellA14B47 : CellData where
  inverse := 20456054992349812557529
  bounds := fun _d => ⟨0, -1⟩

def cellA14B48 : CellData where
  inverse := 47044869351307315845316
  bounds := fun _d => ⟨0, -1⟩

def cellA14B49 : CellData where
  inverse := 47044869351307315845316
  bounds := fun _d => ⟨0, -1⟩

def cellA14B50 : CellData where
  inverse := 286344198581924845435399
  bounds := fun _d => ⟨0, -1⟩

def cellA14B51 : CellData where
  inverse := 1722140173965630022975897
  bounds := fun _d => ⟨0, -1⟩

def cellA14B52 : CellData where
  inverse := 1722140173965630022975897
  bounds := fun _d => ⟨0, -1⟩

def cellA14B53 : CellData where
  inverse := 8183222063192303321908138
  bounds := fun _d => ⟨0, -1⟩

def cellA14B54 : CellData where
  inverse := 27566467730872323218704861
  bounds := fun _d => ⟨0, -1⟩

def cellA14B55 : CellData where
  inverse := 27566467730872323218704861
  bounds := fun _d => ⟨0, -1⟩

def cellA14B56 : CellData where
  inverse := 27566467730872323218704861
  bounds := fun _d => ⟨0, -1⟩

def cellA14B57 : CellData where
  inverse := 550914100758232860432216382
  bounds := fun _d => ⟨0, -1⟩

def cellA14B58 : CellData where
  inverse := 3690999898922396083713285508
  bounds := fun _d => ⟨0, -1⟩

def cellA14B59 : CellData where
  inverse := 8401128596168640918634889197
  bounds := fun _d => ⟨0, -1⟩

def cellA14B60 : CellData where
  inverse := 8401128596168640918634889197
  bounds := fun _d => ⟨0, -1⟩

def cellA14B61 : CellData where
  inverse := 93183445146601047947223755599
  bounds := fun _d => ⟨0, -1⟩

def cellA14B62 : CellData where
  inverse := 220356919972249658490107055202
  bounds := fun _d => ⟨0, -1⟩

def cellA14B63 : CellData where
  inverse := 983397768926141321747406852820
  bounds := fun _d => ⟨0, -1⟩

def cellA14B64 : CellData where
  inverse := 3272520315787816311519306245674
  bounds := fun _d => ⟨0, -1⟩

def cellA14B65 : CellData where
  inverse := 3272520315787816311519306245674
  bounds := fun _d => ⟨0, -1⟩

def cellA14B66 : CellData where
  inverse := 3272520315787816311519306245674
  bounds := fun _d => ⟨0, -1⟩

def cellA14B67 : CellData where
  inverse := 65078829081053041035360589852732
  bounds := fun _d => ⟨0, -1⟩

def cellA14B68 : CellData where
  inverse := 157788292228950878121122515263319
  bounds := fun _d => ⟨0, -1⟩

def cellA15B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 3622⟩ else if d = (-7 : ℤ) then ⟨0, 3622⟩ else if d = (-4 : ℤ) then ⟨0, 3622⟩ else if d = (-1 : ℤ) then ⟨0, 3622⟩ else if d = (2 : ℤ) then ⟨0, 3622⟩ else if d = (5 : ℤ) then ⟨0, 3622⟩ else if d = (8 : ℤ) then ⟨0, 3622⟩ else ⟨0, 3621⟩

def cellA15B2 : CellData where
  inverse := 8
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 3622⟩ else if d = (-4 : ℤ) then ⟨0, 3622⟩ else if d = (-3 : ℤ) then ⟨0, 3622⟩ else if d = (-2 : ℤ) then ⟨0, 3622⟩ else if d = (-1 : ℤ) then ⟨0, 3622⟩ else if d = (5 : ℤ) then ⟨0, 3622⟩ else if d = (6 : ℤ) then ⟨0, 3622⟩ else if d = (7 : ℤ) then ⟨0, 3622⟩ else if d = (8 : ℤ) then ⟨0, 3622⟩ else ⟨0, 3621⟩

def cellA15B3 : CellData where
  inverse := 8
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 3621⟩ else if d = (-7 : ℤ) then ⟨0, 3621⟩ else if d = (-4 : ℤ) then ⟨0, 3621⟩ else if d = (-1 : ℤ) then ⟨0, 3621⟩ else if d = (0 : ℤ) then ⟨0, 3621⟩ else if d = (2 : ℤ) then ⟨0, 3621⟩ else if d = (3 : ℤ) then ⟨0, 3621⟩ else if d = (6 : ℤ) then ⟨0, 3621⟩ else if d = (9 : ℤ) then ⟨0, 3621⟩ else if d = (10 : ℤ) then ⟨0, 3621⟩ else ⟨0, 3622⟩

def cellA15B4 : CellData where
  inverse := 35
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 3622⟩ else if d = (-6 : ℤ) then ⟨0, 3622⟩ else if d = (-4 : ℤ) then ⟨0, 3622⟩ else if d = (-2 : ℤ) then ⟨0, 3622⟩ else if d = (1 : ℤ) then ⟨0, 3622⟩ else if d = (3 : ℤ) then ⟨0, 3622⟩ else if d = (5 : ℤ) then ⟨0, 3622⟩ else if d = (7 : ℤ) then ⟨0, 3622⟩ else if d = (8 : ℤ) then ⟨0, 3622⟩ else if d = (10 : ℤ) then ⟨0, 3622⟩ else ⟨0, 3621⟩

def cellA15B5 : CellData where
  inverse := 197
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 3621⟩ else if d = (-9 : ℤ) then ⟨0, 3621⟩ else if d = (-5 : ℤ) then ⟨0, 3621⟩ else if d = (-4 : ℤ) then ⟨0, 3621⟩ else if d = (-3 : ℤ) then ⟨0, 3621⟩ else if d = (0 : ℤ) then ⟨0, 3621⟩ else if d = (1 : ℤ) then ⟨0, 3621⟩ else if d = (2 : ℤ) then ⟨0, 3621⟩ else if d = (6 : ℤ) then ⟨0, 3621⟩ else if d = (7 : ℤ) then ⟨0, 3621⟩ else ⟨0, 3622⟩

def cellA15B6 : CellData where
  inverse := 197
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 3622⟩ else if d = (-7 : ℤ) then ⟨0, 3622⟩ else if d = (-6 : ℤ) then ⟨0, 3622⟩ else if d = (-3 : ℤ) then ⟨0, 3622⟩ else if d = (-2 : ℤ) then ⟨0, 3622⟩ else if d = (1 : ℤ) then ⟨0, 3622⟩ else if d = (4 : ℤ) then ⟨0, 3622⟩ else if d = (5 : ℤ) then ⟨0, 3622⟩ else if d = (8 : ℤ) then ⟨0, 3622⟩ else if d = (9 : ℤ) then ⟨0, 3622⟩ else ⟨0, 3621⟩

def cellA15B7 : CellData where
  inverse := 1655
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 3621⟩ else if d = (-7 : ℤ) then ⟨0, 3621⟩ else if d = (-4 : ℤ) then ⟨0, 3621⟩ else if d = (-3 : ℤ) then ⟨0, 3621⟩ else if d = (0 : ℤ) then ⟨0, 3621⟩ else if d = (1 : ℤ) then ⟨0, 3621⟩ else if d = (5 : ℤ) then ⟨0, 3621⟩ else if d = (6 : ℤ) then ⟨0, 3621⟩ else if d = (9 : ℤ) then ⟨0, 3621⟩ else if d = (10 : ℤ) then ⟨0, 3621⟩ else ⟨0, 3622⟩

def cellA15B8 : CellData where
  inverse := 6029
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 3621⟩ else if d = (-9 : ℤ) then ⟨0, 3621⟩ else if d = (-8 : ℤ) then ⟨0, 3621⟩ else if d = (-7 : ℤ) then ⟨0, 3621⟩ else if d = (0 : ℤ) then ⟨0, 3621⟩ else if d = (1 : ℤ) then ⟨0, 3621⟩ else if d = (2 : ℤ) then ⟨0, 3621⟩ else if d = (3 : ℤ) then ⟨0, 3621⟩ else if d = (4 : ℤ) then ⟨0, 3621⟩ else if d = (5 : ℤ) then ⟨0, 3621⟩ else ⟨0, 3622⟩

def cellA15B9 : CellData where
  inverse := 6029
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 3622⟩ else if d = (-6 : ℤ) then ⟨0, 3622⟩ else if d = (-5 : ℤ) then ⟨0, 3622⟩ else if d = (-3 : ℤ) then ⟨0, 3622⟩ else if d = (-2 : ℤ) then ⟨0, 3622⟩ else if d = (1 : ℤ) then ⟨0, 3622⟩ else if d = (4 : ℤ) then ⟨0, 3622⟩ else if d = (7 : ℤ) then ⟨0, 3622⟩ else if d = (8 : ℤ) then ⟨0, 3622⟩ else if d = (10 : ℤ) then ⟨0, 3622⟩ else ⟨0, 3621⟩

def cellA15B10 : CellData where
  inverse := 45395
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 2010⟩ else if d = (-5 : ℤ) then ⟨0, 2010⟩ else if d = (-1 : ℤ) then ⟨0, 2010⟩ else if d = (4 : ℤ) then ⟨0, 2010⟩ else if d = (8 : ℤ) then ⟨0, 2010⟩ else ⟨0, 2009⟩

def cellA15B11 : CellData where
  inverse := 45395
  bounds := fun d => if d = (4 : ℤ) then ⟨0, 670⟩ else if d = (8 : ℤ) then ⟨0, 670⟩ else ⟨0, 669⟩

def cellA15B12 : CellData where
  inverse := 45395
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 223⟩ else if d = (-9 : ℤ) then ⟨0, 223⟩ else if d = (-8 : ℤ) then ⟨0, 223⟩ else if d = (1 : ℤ) then ⟨0, 223⟩ else if d = (2 : ℤ) then ⟨0, 223⟩ else if d = (3 : ℤ) then ⟨0, 223⟩ else if d = (4 : ℤ) then ⟨0, 223⟩ else ⟨0, 222⟩

def cellA15B13 : CellData where
  inverse := 45395
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 74⟩ else if d = (2 : ℤ) then ⟨0, 74⟩ else if d = (3 : ℤ) then ⟨0, 74⟩ else if d = (4 : ℤ) then ⟨0, 74⟩ else if d = (5 : ℤ) then ⟨0, 74⟩ else if d = (6 : ℤ) then ⟨0, 74⟩ else if d = (7 : ℤ) then ⟨0, 74⟩ else if d = (8 : ℤ) then ⟨0, 74⟩ else if d = (9 : ℤ) then ⟨0, 74⟩ else if d = (10 : ℤ) then ⟨0, 74⟩ else ⟨0, 73⟩

def cellA15B14 : CellData where
  inverse := 45395
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 24⟩ else if d = (2 : ℤ) then ⟨0, 24⟩ else if d = (3 : ℤ) then ⟨0, 24⟩ else if d = (4 : ℤ) then ⟨0, 24⟩ else if d = (5 : ℤ) then ⟨0, 24⟩ else if d = (6 : ℤ) then ⟨0, 24⟩ else if d = (7 : ℤ) then ⟨0, 24⟩ else if d = (8 : ℤ) then ⟨0, 24⟩ else if d = (9 : ℤ) then ⟨0, 24⟩ else if d = (10 : ℤ) then ⟨0, 24⟩ else ⟨0, 23⟩

def cellA15B15 : CellData where
  inverse := 9611333
  bounds := fun d => if d = (3 : ℤ) then ⟨0, 8⟩ else if d = (6 : ℤ) then ⟨0, 8⟩ else if d = (9 : ℤ) then ⟨0, 8⟩ else ⟨0, 7⟩

def cellA15B16 : CellData where
  inverse := 23960240
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 1⟩ else if d = (-4 : ℤ) then ⟨0, 1⟩ else if d = (-2 : ℤ) then ⟨0, 1⟩ else if d = (0 : ℤ) then ⟨0, 1⟩ else if d = (5 : ℤ) then ⟨0, 1⟩ else if d = (7 : ℤ) then ⟨0, 1⟩ else ⟨0, 2⟩

def cellA15B17 : CellData where
  inverse := 110053682
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (7 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA15B18 : CellData where
  inverse := 239193845
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA15B19 : CellData where
  inverse := 1014034823
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA15B20 : CellData where
  inverse := 3338557757
  bounds := fun _d => ⟨0, -1⟩

def cellA15B21 : CellData where
  inverse := 6825342158
  bounds := fun _d => ⟨0, -1⟩

def cellA15B22 : CellData where
  inverse := 6825342158
  bounds := fun _d => ⟨0, -1⟩

def cellA15B23 : CellData where
  inverse := 69587461376
  bounds := fun _d => ⟨0, -1⟩

def cellA15B24 : CellData where
  inverse := 257873819030
  bounds := fun _d => ⟨0, -1⟩

def cellA15B25 : CellData where
  inverse := 257873819030
  bounds := fun _d => ⟨0, -1⟩

def cellA15B26 : CellData where
  inverse := 1105162428473
  bounds := fun _d => ⟨0, -1⟩

def cellA15B27 : CellData where
  inverse := 1105162428473
  bounds := fun _d => ⟨0, -1⟩

def cellA15B28 : CellData where
  inverse := 1105162428473
  bounds := fun _d => ⟨0, -1⟩

def cellA15B29 : CellData where
  inverse := 46858747338395
  bounds := fun _d => ⟨0, -1⟩

def cellA15B30 : CellData where
  inverse := 184119502068161
  bounds := fun _d => ⟨0, -1⟩

def cellA15B31 : CellData where
  inverse := 595901766257459
  bounds := fun _d => ⟨0, -1⟩

def cellA15B32 : CellData where
  inverse := 1831248558825353
  bounds := fun _d => ⟨0, -1⟩

def cellA15B33 : CellData where
  inverse := 3684268747677194
  bounds := fun _d => ⟨0, -1⟩

def cellA15B34 : CellData where
  inverse := 3684268747677194
  bounds := fun _d => ⟨0, -1⟩

def cellA15B35 : CellData where
  inverse := 3684268747677194
  bounds := fun _d => ⟨0, -1⟩

def cellA15B36 : CellData where
  inverse := 53715813846676901
  bounds := fun _d => ⟨0, -1⟩

def cellA15B37 : CellData where
  inverse := 53715813846676901
  bounds := fun _d => ⟨0, -1⟩

def cellA15B38 : CellData where
  inverse := 53715813846676901
  bounds := fun _d => ⟨0, -1⟩

def cellA15B39 : CellData where
  inverse := 1404567531519668990
  bounds := fun _d => ⟨0, -1⟩

def cellA15B40 : CellData where
  inverse := 9509677837557621524
  bounds := fun _d => ⟨0, -1⟩

def cellA15B41 : CellData where
  inverse := 33825008755671479126
  bounds := fun _d => ⟨0, -1⟩

def cellA15B42 : CellData where
  inverse := 106771001510013051932
  bounds := fun _d => ⟨0, -1⟩

def cellA15B43 : CellData where
  inverse := 216189990641525411141
  bounds := fun _d => ⟨0, -1⟩

def cellA15B44 : CellData where
  inverse := 872703925430599566395
  bounds := fun _d => ⟨0, -1⟩

def cellA15B45 : CellData where
  inverse := 2842245729797822032157
  bounds := fun _d => ⟨0, -1⟩

def cellA15B46 : CellData where
  inverse := 5796558436348655730800
  bounds := fun _d => ⟨0, -1⟩

def cellA15B47 : CellData where
  inverse := 23522434675653657922658
  bounds := fun _d => ⟨0, -1⟩

def cellA15B48 : CellData where
  inverse := 23522434675653657922658
  bounds := fun _d => ⟨0, -1⟩

def cellA15B49 : CellData where
  inverse := 23522434675653657922658
  bounds := fun _d => ⟨0, -1⟩

def cellA15B50 : CellData where
  inverse := 502121093136888717102824
  bounds := fun _d => ⟨0, -1⟩

def cellA15B51 : CellData where
  inverse := 1937917068520593894643322
  bounds := fun _d => ⟨0, -1⟩

def cellA15B52 : CellData where
  inverse := 4091611031596151660954069
  bounds := fun _d => ⟨0, -1⟩

def cellA15B53 : CellData where
  inverse := 4091611031596151660954069
  bounds := fun _d => ⟨0, -1⟩

def cellA15B54 : CellData where
  inverse := 42858102366956191454547515
  bounds := fun _d => ⟨0, -1⟩

def cellA15B55 : CellData where
  inverse := 101007839369996251144937684
  bounds := fun _d => ⟨0, -1⟩

def cellA15B56 : CellData where
  inverse := 275457050379116430216108191
  bounds := fun _d => ⟨0, -1⟩

def cellA15B57 : CellData where
  inverse := 275457050379116430216108191
  bounds := fun _d => ⟨0, -1⟩

def cellA15B58 : CellData where
  inverse := 1845499949461198041856642754
  bounds := fun _d => ⟨0, -1⟩

def cellA15B59 : CellData where
  inverse := 11265757343953687711699850132
  bounds := fun _d => ⟨0, -1⟩

def cellA15B60 : CellData where
  inverse := 25396143435692422216464661199
  bounds := fun _d => ⟨0, -1⟩

def cellA15B61 : CellData where
  inverse := 110178459986124829245053527601
  bounds := fun _d => ⟨0, -1⟩

def cellA15B62 : CellData where
  inverse := 110178459986124829245053527601
  bounds := fun _d => ⟨0, -1⟩

def cellA15B63 : CellData where
  inverse := 491698884463070660873703426410
  bounds := fun _d => ⟨0, -1⟩

def cellA15B64 : CellData where
  inverse := 1636260157893908155759653122837
  bounds := fun _d => ⟨0, -1⟩

def cellA15B65 : CellData where
  inverse := 1636260157893908155759653122837
  bounds := fun _d => ⟨0, -1⟩

def cellA15B66 : CellData where
  inverse := 1636260157893908155759653122837
  bounds := fun _d => ⟨0, -1⟩

def cellA15B67 : CellData where
  inverse := 32539414540526520517680294926366
  bounds := fun _d => ⟨0, -1⟩

def cellA15B68 : CellData where
  inverse := 217958340836322194689204145747540
  bounds := fun _d => ⟨0, -1⟩

def cellA16B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, 1810⟩

def cellA16B2 : CellData where
  inverse := 4
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 1811⟩ else if d = (-2 : ℤ) then ⟨0, 1811⟩ else if d = (5 : ℤ) then ⟨0, 1811⟩ else if d = (7 : ℤ) then ⟨0, 1811⟩ else ⟨0, 1810⟩

def cellA16B3 : CellData where
  inverse := 4
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 1811⟩ else if d = (-5 : ℤ) then ⟨0, 1811⟩ else if d = (1 : ℤ) then ⟨0, 1811⟩ else if d = (7 : ℤ) then ⟨0, 1811⟩ else if d = (8 : ℤ) then ⟨0, 1811⟩ else ⟨0, 1810⟩

def cellA16B4 : CellData where
  inverse := 58
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 1811⟩ else if d = (3 : ℤ) then ⟨0, 1811⟩ else if d = (7 : ℤ) then ⟨0, 1811⟩ else if d = (10 : ℤ) then ⟨0, 1811⟩ else ⟨0, 1810⟩

def cellA16B5 : CellData where
  inverse := 220
  bounds := fun d => if d = (-2 : ℤ) then ⟨0, 1811⟩ else if d = (-1 : ℤ) then ⟨0, 1811⟩ else if d = (8 : ℤ) then ⟨0, 1811⟩ else if d = (9 : ℤ) then ⟨0, 1811⟩ else if d = (10 : ℤ) then ⟨0, 1811⟩ else ⟨0, 1810⟩

def cellA16B6 : CellData where
  inverse := 463
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 1811⟩ else if d = (-3 : ℤ) then ⟨0, 1811⟩ else if d = (5 : ℤ) then ⟨0, 1811⟩ else if d = (8 : ℤ) then ⟨0, 1811⟩ else ⟨0, 1810⟩

def cellA16B7 : CellData where
  inverse := 1921
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1811⟩ else if d = (-9 : ℤ) then ⟨0, 1811⟩ else if d = (-2 : ℤ) then ⟨0, 1811⟩ else if d = (-1 : ℤ) then ⟨0, 1811⟩ else if d = (7 : ℤ) then ⟨0, 1811⟩ else if d = (8 : ℤ) then ⟨0, 1811⟩ else ⟨0, 1810⟩

def cellA16B8 : CellData where
  inverse := 6295
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 1811⟩ else if d = (-5 : ℤ) then ⟨0, 1811⟩ else if d = (-4 : ℤ) then ⟨0, 1811⟩ else if d = (-3 : ℤ) then ⟨0, 1811⟩ else if d = (-2 : ℤ) then ⟨0, 1811⟩ else if d = (-1 : ℤ) then ⟨0, 1811⟩ else ⟨0, 1810⟩

def cellA16B9 : CellData where
  inverse := 12856
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 1811⟩ else if d = (-6 : ℤ) then ⟨0, 1811⟩ else if d = (-3 : ℤ) then ⟨0, 1811⟩ else if d = (8 : ℤ) then ⟨0, 1811⟩ else ⟨0, 1810⟩

def cellA16B10 : CellData where
  inverse := 52222
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1811⟩ else if d = (-9 : ℤ) then ⟨0, 1811⟩ else if d = (-2 : ℤ) then ⟨0, 1811⟩ else if d = (-1 : ℤ) then ⟨0, 1811⟩ else if d = (7 : ℤ) then ⟨0, 1811⟩ else if d = (8 : ℤ) then ⟨0, 1811⟩ else ⟨0, 1810⟩

def cellA16B11 : CellData where
  inverse := 111271
  bounds := fun d => if d = (8 : ℤ) then ⟨0, 670⟩ else ⟨0, 669⟩

def cellA16B12 : CellData where
  inverse := 288418
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 223⟩ else if d = (-7 : ℤ) then ⟨0, 223⟩ else if d = (-5 : ℤ) then ⟨0, 223⟩ else if d = (2 : ℤ) then ⟨0, 223⟩ else if d = (4 : ℤ) then ⟨0, 223⟩ else if d = (6 : ℤ) then ⟨0, 223⟩ else if d = (8 : ℤ) then ⟨0, 223⟩ else ⟨0, 222⟩

def cellA16B13 : CellData where
  inverse := 819859
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 74⟩ else if d = (-7 : ℤ) then ⟨0, 74⟩ else if d = (-5 : ℤ) then ⟨0, 74⟩ else if d = (2 : ℤ) then ⟨0, 74⟩ else if d = (4 : ℤ) then ⟨0, 74⟩ else if d = (6 : ℤ) then ⟨0, 74⟩ else if d = (8 : ℤ) then ⟨0, 74⟩ else if d = (10 : ℤ) then ⟨0, 74⟩ else ⟨0, 73⟩

def cellA16B14 : CellData where
  inverse := 2414182
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 23⟩ else if d = (-8 : ℤ) then ⟨0, 23⟩ else if d = (-6 : ℤ) then ⟨0, 23⟩ else if d = (-4 : ℤ) then ⟨0, 23⟩ else if d = (-2 : ℤ) then ⟨0, 23⟩ else if d = (0 : ℤ) then ⟨0, 23⟩ else ⟨0, 24⟩

def cellA16B15 : CellData where
  inverse := 11980120
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 8⟩ else if d = (-1 : ℤ) then ⟨0, 8⟩ else if d = (5 : ℤ) then ⟨0, 8⟩ else if d = (6 : ℤ) then ⟨0, 8⟩ else ⟨0, 7⟩

def cellA16B16 : CellData where
  inverse := 11980120
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 1⟩ else if d = (-4 : ℤ) then ⟨0, 1⟩ else if d = (0 : ℤ) then ⟨0, 1⟩ else if d = (3 : ℤ) then ⟨0, 1⟩ else if d = (7 : ℤ) then ⟨0, 1⟩ else if d = (10 : ℤ) then ⟨0, 1⟩ else ⟨0, 2⟩

def cellA16B17 : CellData where
  inverse := 55026841
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (7 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA16B18 : CellData where
  inverse := 313307167
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA16B19 : CellData where
  inverse := 1088148145
  bounds := fun d => if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA16B20 : CellData where
  inverse := 3412671079
  bounds := fun d => if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA16B21 : CellData where
  inverse := 3412671079
  bounds := fun _d => ⟨0, -1⟩

def cellA16B22 : CellData where
  inverse := 3412671079
  bounds := fun _d => ⟨0, -1⟩

def cellA16B23 : CellData where
  inverse := 34793730688
  bounds := fun _d => ⟨0, -1⟩

def cellA16B24 : CellData where
  inverse := 128936909515
  bounds := fun _d => ⟨0, -1⟩

def cellA16B25 : CellData where
  inverse := 128936909515
  bounds := fun _d => ⟨0, -1⟩

def cellA16B26 : CellData where
  inverse := 1823514128401
  bounds := fun _d => ⟨0, -1⟩

def cellA16B27 : CellData where
  inverse := 4365379956730
  bounds := fun _d => ⟨0, -1⟩

def cellA16B28 : CellData where
  inverse := 11990977441717
  bounds := fun _d => ⟨0, -1⟩

def cellA16B29 : CellData where
  inverse := 57744562351639
  bounds := fun _d => ⟨0, -1⟩

def cellA16B30 : CellData where
  inverse := 195005317081405
  bounds := fun _d => ⟨0, -1⟩

def cellA16B31 : CellData where
  inverse := 606787581270703
  bounds := fun _d => ⟨0, -1⟩

def cellA16B32 : CellData where
  inverse := 1842134373838597
  bounds := fun _d => ⟨0, -1⟩

def cellA16B33 : CellData where
  inverse := 1842134373838597
  bounds := fun _d => ⟨0, -1⟩

def cellA16B34 : CellData where
  inverse := 1842134373838597
  bounds := fun _d => ⟨0, -1⟩

def cellA16B35 : CellData where
  inverse := 1842134373838597
  bounds := fun _d => ⟨0, -1⟩

def cellA16B36 : CellData where
  inverse := 101905224571838011
  bounds := fun _d => ⟨0, -1⟩

def cellA16B37 : CellData where
  inverse := 251999859868837132
  bounds := fun _d => ⟨0, -1⟩

def cellA16B38 : CellData where
  inverse := 702283765759834495
  bounds := fun _d => ⟨0, -1⟩

def cellA16B39 : CellData where
  inverse := 702283765759834495
  bounds := fun _d => ⟨0, -1⟩

def cellA16B40 : CellData where
  inverse := 4754838918778810762
  bounds := fun _d => ⟨0, -1⟩

def cellA16B41 : CellData where
  inverse := 16912504377835739563
  bounds := fun _d => ⟨0, -1⟩

def cellA16B42 : CellData where
  inverse := 53385500755006525966
  bounds := fun _d => ⟨0, -1⟩

def cellA16B43 : CellData where
  inverse := 272223479018031244384
  bounds := fun _d => ⟨0, -1⟩

def cellA16B44 : CellData where
  inverse := 928737413807105399638
  bounds := fun _d => ⟨0, -1⟩

def cellA16B45 : CellData where
  inverse := 2898279218174327865400
  bounds := fun _d => ⟨0, -1⟩

def cellA16B46 : CellData where
  inverse := 2898279218174327865400
  bounds := fun _d => ⟨0, -1⟩

def cellA16B47 : CellData where
  inverse := 11761217337826828961329
  bounds := fun _d => ⟨0, -1⟩

def cellA16B48 : CellData where
  inverse := 11761217337826828961329
  bounds := fun _d => ⟨0, -1⟩

def cellA16B49 : CellData where
  inverse := 11761217337826828961329
  bounds := fun _d => ⟨0, -1⟩

def cellA16B50 : CellData where
  inverse := 251060546568444358551412
  bounds := fun _d => ⟨0, -1⟩

def cellA16B51 : CellData where
  inverse := 968958534260296947321661
  bounds := fun _d => ⟨0, -1⟩

def cellA16B52 : CellData where
  inverse := 5276346460411412479943155
  bounds := fun _d => ⟨0, -1⟩

def cellA16B53 : CellData where
  inverse := 11737428349638085778875396
  bounds := fun _d => ⟨0, -1⟩

def cellA16B54 : CellData where
  inverse := 50503919684998125572468842
  bounds := fun _d => ⟨0, -1⟩

def cellA16B55 : CellData where
  inverse := 50503919684998125572468842
  bounds := fun _d => ⟨0, -1⟩

def cellA16B56 : CellData where
  inverse := 399402341703238483714809856
  bounds := fun _d => ⟨0, -1⟩

def cellA16B57 : CellData where
  inverse := 922749974730599020928321377
  bounds := fun _d => ⟨0, -1⟩

def cellA16B58 : CellData where
  inverse := 922749974730599020928321377
  bounds := fun _d => ⟨0, -1⟩

def cellA16B59 : CellData where
  inverse := 5632878671976843855849925066
  bounds := fun _d => ⟨0, -1⟩

def cellA16B60 : CellData where
  inverse := 33893650855454312865379547200
  bounds := fun _d => ⟨0, -1⟩

def cellA16B61 : CellData where
  inverse := 118675967405886719893968413602
  bounds := fun _d => ⟨0, -1⟩

def cellA16B62 : CellData where
  inverse := 245849442231535330436851713205
  bounds := fun _d => ⟨0, -1⟩

def cellA16B63 : CellData where
  inverse := 245849442231535330436851713205
  bounds := fun _d => ⟨0, -1⟩

def cellA16B64 : CellData where
  inverse := 2534971989093210320208751106059
  bounds := fun _d => ⟨0, -1⟩

def cellA16B65 : CellData where
  inverse := 5968655809385722804866600195340
  bounds := fun _d => ⟨0, -1⟩

def cellA16B66 : CellData where
  inverse := 16269707270263260258840147463183
  bounds := fun _d => ⟨0, -1⟩

def cellA16B67 : CellData where
  inverse := 16269707270263260258840147463183
  bounds := fun _d => ⟨0, -1⟩

def cellA16B68 : CellData where
  inverse := 108979170418161097344602072873770
  bounds := fun _d => ⟨0, -1⟩

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
  else if b = 47 then cellA9B47
  else if b = 48 then cellA9B48
  else if b = 49 then cellA9B49
  else if b = 50 then cellA9B50
  else if b = 51 then cellA9B51
  else if b = 52 then cellA9B52
  else if b = 53 then cellA9B53
  else if b = 54 then cellA9B54
  else if b = 55 then cellA9B55
  else if b = 56 then cellA9B56
  else if b = 57 then cellA9B57
  else if b = 58 then cellA9B58
  else if b = 59 then cellA9B59
  else if b = 60 then cellA9B60
  else if b = 61 then cellA9B61
  else if b = 62 then cellA9B62
  else if b = 63 then cellA9B63
  else if b = 64 then cellA9B64
  else if b = 65 then cellA9B65
  else if b = 66 then cellA9B66
  else if b = 67 then cellA9B67
  else if b = 68 then cellA9B68
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
  else if b = 47 then cellA10B47
  else if b = 48 then cellA10B48
  else if b = 49 then cellA10B49
  else if b = 50 then cellA10B50
  else if b = 51 then cellA10B51
  else if b = 52 then cellA10B52
  else if b = 53 then cellA10B53
  else if b = 54 then cellA10B54
  else if b = 55 then cellA10B55
  else if b = 56 then cellA10B56
  else if b = 57 then cellA10B57
  else if b = 58 then cellA10B58
  else if b = 59 then cellA10B59
  else if b = 60 then cellA10B60
  else if b = 61 then cellA10B61
  else if b = 62 then cellA10B62
  else if b = 63 then cellA10B63
  else if b = 64 then cellA10B64
  else if b = 65 then cellA10B65
  else if b = 66 then cellA10B66
  else if b = 67 then cellA10B67
  else if b = 68 then cellA10B68
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
  else if b = 47 then cellA11B47
  else if b = 48 then cellA11B48
  else if b = 49 then cellA11B49
  else if b = 50 then cellA11B50
  else if b = 51 then cellA11B51
  else if b = 52 then cellA11B52
  else if b = 53 then cellA11B53
  else if b = 54 then cellA11B54
  else if b = 55 then cellA11B55
  else if b = 56 then cellA11B56
  else if b = 57 then cellA11B57
  else if b = 58 then cellA11B58
  else if b = 59 then cellA11B59
  else if b = 60 then cellA11B60
  else if b = 61 then cellA11B61
  else if b = 62 then cellA11B62
  else if b = 63 then cellA11B63
  else if b = 64 then cellA11B64
  else if b = 65 then cellA11B65
  else if b = 66 then cellA11B66
  else if b = 67 then cellA11B67
  else if b = 68 then cellA11B68
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
  else if b = 47 then cellA12B47
  else if b = 48 then cellA12B48
  else if b = 49 then cellA12B49
  else if b = 50 then cellA12B50
  else if b = 51 then cellA12B51
  else if b = 52 then cellA12B52
  else if b = 53 then cellA12B53
  else if b = 54 then cellA12B54
  else if b = 55 then cellA12B55
  else if b = 56 then cellA12B56
  else if b = 57 then cellA12B57
  else if b = 58 then cellA12B58
  else if b = 59 then cellA12B59
  else if b = 60 then cellA12B60
  else if b = 61 then cellA12B61
  else if b = 62 then cellA12B62
  else if b = 63 then cellA12B63
  else if b = 64 then cellA12B64
  else if b = 65 then cellA12B65
  else if b = 66 then cellA12B66
  else if b = 67 then cellA12B67
  else if b = 68 then cellA12B68
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
  else if b = 47 then cellA13B47
  else if b = 48 then cellA13B48
  else if b = 49 then cellA13B49
  else if b = 50 then cellA13B50
  else if b = 51 then cellA13B51
  else if b = 52 then cellA13B52
  else if b = 53 then cellA13B53
  else if b = 54 then cellA13B54
  else if b = 55 then cellA13B55
  else if b = 56 then cellA13B56
  else if b = 57 then cellA13B57
  else if b = 58 then cellA13B58
  else if b = 59 then cellA13B59
  else if b = 60 then cellA13B60
  else if b = 61 then cellA13B61
  else if b = 62 then cellA13B62
  else if b = 63 then cellA13B63
  else if b = 64 then cellA13B64
  else if b = 65 then cellA13B65
  else if b = 66 then cellA13B66
  else if b = 67 then cellA13B67
  else if b = 68 then cellA13B68
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
  else if b = 47 then cellA14B47
  else if b = 48 then cellA14B48
  else if b = 49 then cellA14B49
  else if b = 50 then cellA14B50
  else if b = 51 then cellA14B51
  else if b = 52 then cellA14B52
  else if b = 53 then cellA14B53
  else if b = 54 then cellA14B54
  else if b = 55 then cellA14B55
  else if b = 56 then cellA14B56
  else if b = 57 then cellA14B57
  else if b = 58 then cellA14B58
  else if b = 59 then cellA14B59
  else if b = 60 then cellA14B60
  else if b = 61 then cellA14B61
  else if b = 62 then cellA14B62
  else if b = 63 then cellA14B63
  else if b = 64 then cellA14B64
  else if b = 65 then cellA14B65
  else if b = 66 then cellA14B66
  else if b = 67 then cellA14B67
  else if b = 68 then cellA14B68
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
  else if b = 47 then cellA15B47
  else if b = 48 then cellA15B48
  else if b = 49 then cellA15B49
  else if b = 50 then cellA15B50
  else if b = 51 then cellA15B51
  else if b = 52 then cellA15B52
  else if b = 53 then cellA15B53
  else if b = 54 then cellA15B54
  else if b = 55 then cellA15B55
  else if b = 56 then cellA15B56
  else if b = 57 then cellA15B57
  else if b = 58 then cellA15B58
  else if b = 59 then cellA15B59
  else if b = 60 then cellA15B60
  else if b = 61 then cellA15B61
  else if b = 62 then cellA15B62
  else if b = 63 then cellA15B63
  else if b = 64 then cellA15B64
  else if b = 65 then cellA15B65
  else if b = 66 then cellA15B66
  else if b = 67 then cellA15B67
  else if b = 68 then cellA15B68
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
  else if b = 47 then cellA16B47
  else if b = 48 then cellA16B48
  else if b = 49 then cellA16B49
  else if b = 50 then cellA16B50
  else if b = 51 then cellA16B51
  else if b = 52 then cellA16B52
  else if b = 53 then cellA16B53
  else if b = 54 then cellA16B54
  else if b = 55 then cellA16B55
  else if b = 56 then cellA16B56
  else if b = 57 then cellA16B57
  else if b = 58 then cellA16B58
  else if b = 59 then cellA16B59
  else if b = 60 then cellA16B60
  else if b = 61 then cellA16B61
  else if b = 62 then cellA16B62
  else if b = 63 then cellA16B63
  else if b = 64 then cellA16B64
  else if b = 65 then cellA16B65
  else if b = 66 then cellA16B66
  else if b = 67 then cellA16B67
  else if b = 68 then cellA16B68
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

theorem chunk_check :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper
      9 8 1 68 chunkData = true := by
  decide +kernel

end Math.B699.CRTStage0Pair23.Chunk001
#print axioms Math.B699.CRTStage0Pair23.Chunk001.chunk_check
