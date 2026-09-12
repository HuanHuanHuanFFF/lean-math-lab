import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage0Pair25.Chunk003
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA25B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 3⟩
    else if d = (-6 : ℤ) then ⟨0, 3⟩
    else if d = (-3 : ℤ) then ⟨0, 3⟩
    else if d = (-1 : ℤ) then ⟨0, 3⟩
    else if d = (2 : ℤ) then ⟨0, 3⟩
    else if d = (4 : ℤ) then ⟨0, 3⟩
    else if d = (7 : ℤ) then ⟨0, 3⟩
    else if d = (9 : ℤ) then ⟨0, 3⟩
    else ⟨0, 2⟩

def cellA25B2 : CellData where
  inverse := 18
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2⟩
    else if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (-6 : ℤ) then ⟨0, 2⟩
    else if d = (-3 : ℤ) then ⟨0, 2⟩
    else if d = (-2 : ℤ) then ⟨0, 2⟩
    else if d = (0 : ℤ) then ⟨0, 2⟩
    else if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (4 : ℤ) then ⟨0, 2⟩
    else if d = (5 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨0, 2⟩
    else ⟨0, 3⟩

def cellA25B3 : CellData where
  inverse := 68
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 3⟩
    else if d = (-7 : ℤ) then ⟨0, 3⟩
    else if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (-3 : ℤ) then ⟨0, 3⟩
    else if d = (-1 : ℤ) then ⟨0, 3⟩
    else if d = (2 : ℤ) then ⟨0, 3⟩
    else if d = (4 : ℤ) then ⟨0, 3⟩
    else if d = (6 : ℤ) then ⟨0, 3⟩
    else if d = (8 : ℤ) then ⟨0, 3⟩
    else if d = (10 : ℤ) then ⟨0, 3⟩
    else ⟨0, 2⟩

def cellA25B4 : CellData where
  inverse := 318
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2⟩
    else if d = (-8 : ℤ) then ⟨0, 2⟩
    else if d = (-6 : ℤ) then ⟨0, 2⟩
    else if d = (-4 : ℤ) then ⟨0, 2⟩
    else if d = (-2 : ℤ) then ⟨0, 2⟩
    else if d = (0 : ℤ) then ⟨0, 2⟩
    else if d = (5 : ℤ) then ⟨0, 2⟩
    else if d = (7 : ℤ) then ⟨0, 2⟩
    else if d = (9 : ℤ) then ⟨0, 2⟩
    else ⟨0, 3⟩

def cellA25B5 : CellData where
  inverse := 318
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2⟩
    else if d = (-4 : ℤ) then ⟨0, 2⟩
    else if d = (-3 : ℤ) then ⟨0, 2⟩
    else if d = (-2 : ℤ) then ⟨0, 2⟩
    else if d = (-1 : ℤ) then ⟨0, 2⟩
    else if d = (0 : ℤ) then ⟨0, 2⟩
    else if d = (6 : ℤ) then ⟨0, 2⟩
    else if d = (7 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨0, 2⟩
    else if d = (9 : ℤ) then ⟨0, 2⟩
    else ⟨0, 3⟩

def cellA25B6 : CellData where
  inverse := 9693
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2⟩
    else if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (-2 : ℤ) then ⟨0, 2⟩
    else if d = (0 : ℤ) then ⟨0, 2⟩
    else if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (3 : ℤ) then ⟨0, 2⟩
    else if d = (6 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨0, 2⟩
    else if d = (9 : ℤ) then ⟨0, 2⟩
    else ⟨0, 3⟩

def cellA25B7 : CellData where
  inverse := 56568
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2⟩
    else if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (-6 : ℤ) then ⟨0, 2⟩
    else if d = (-3 : ℤ) then ⟨0, 2⟩
    else if d = (-2 : ℤ) then ⟨0, 2⟩
    else if d = (0 : ℤ) then ⟨0, 2⟩
    else if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (4 : ℤ) then ⟨0, 2⟩
    else if d = (5 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨0, 2⟩
    else ⟨0, 3⟩

def cellA25B8 : CellData where
  inverse := 212818
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 3⟩
    else if d = (-7 : ℤ) then ⟨0, 3⟩
    else if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (-3 : ℤ) then ⟨0, 3⟩
    else if d = (-1 : ℤ) then ⟨0, 3⟩
    else if d = (2 : ℤ) then ⟨0, 3⟩
    else if d = (4 : ℤ) then ⟨0, 3⟩
    else if d = (6 : ℤ) then ⟨0, 3⟩
    else if d = (8 : ℤ) then ⟨0, 3⟩
    else if d = (10 : ℤ) then ⟨0, 3⟩
    else ⟨0, 2⟩

def cellA25B9 : CellData where
  inverse := 1775318
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (-4 : ℤ) then ⟨0, 3⟩
    else if d = (-3 : ℤ) then ⟨0, 3⟩
    else if d = (-2 : ℤ) then ⟨0, 3⟩
    else if d = (-1 : ℤ) then ⟨0, 3⟩
    else if d = (6 : ℤ) then ⟨0, 3⟩
    else if d = (7 : ℤ) then ⟨0, 3⟩
    else if d = (8 : ℤ) then ⟨0, 3⟩
    else if d = (9 : ℤ) then ⟨0, 3⟩
    else if d = (10 : ℤ) then ⟨0, 3⟩
    else ⟨0, 2⟩

def cellA25B10 : CellData where
  inverse := 5681568
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 2⟩
    else if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (-4 : ℤ) then ⟨0, 2⟩
    else if d = (-2 : ℤ) then ⟨0, 2⟩
    else if d = (0 : ℤ) then ⟨0, 2⟩
    else if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (3 : ℤ) then ⟨0, 2⟩
    else if d = (5 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨0, 2⟩
    else if d = (10 : ℤ) then ⟨0, 2⟩
    else ⟨0, 3⟩

def cellA25B11 : CellData where
  inverse := 34978443
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (-4 : ℤ) then ⟨0, 2⟩
    else if d = (-1 : ℤ) then ⟨0, 2⟩
    else if d = (3 : ℤ) then ⟨0, 2⟩
    else if d = (6 : ℤ) then ⟨0, 2⟩
    else if d = (7 : ℤ) then ⟨0, 2⟩
    else if d = (10 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA25B12 : CellData where
  inverse := 83806568
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA25B13 : CellData where
  inverse := 1060369068
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA25B14 : CellData where
  inverse := 2281072193
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA25B15 : CellData where
  inverse := 26695134693
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA25B16 : CellData where
  inverse := 87730290943
  bounds := fun _ => ⟨0, -1⟩

def cellA25B17 : CellData where
  inverse := 87730290943
  bounds := fun _ => ⟨0, -1⟩

def cellA25B18 : CellData where
  inverse := 2376548650318
  bounds := fun _ => ⟨0, -1⟩

def cellA25B19 : CellData where
  inverse := 6191245915943
  bounds := fun _ => ⟨0, -1⟩

def cellA25B20 : CellData where
  inverse := 6191245915943
  bounds := fun _ => ⟨0, -1⟩

def cellA25B21 : CellData where
  inverse := 196926109197193
  bounds := fun _ => ⟨0, -1⟩

def cellA25B22 : CellData where
  inverse := 673763267400318
  bounds := fun _ => ⟨0, -1⟩

def cellA25B23 : CellData where
  inverse := 673763267400318
  bounds := fun _ => ⟨0, -1⟩

def cellA25B24 : CellData where
  inverse := 673763267400318
  bounds := fun _ => ⟨0, -1⟩

def cellA25B25 : CellData where
  inverse := 673763267400318
  bounds := fun _ => ⟨0, -1⟩

def cellA25B26 : CellData where
  inverse := 894743434898259693
  bounds := fun _ => ⟨0, -1⟩

def cellA25B27 : CellData where
  inverse := 3874975673667790943
  bounds := fun _ => ⟨0, -1⟩

def cellA25B28 : CellData where
  inverse := 26226717464439275318
  bounds := fun _ => ⟨0, -1⟩

def cellA25B29 : CellData where
  inverse := 175238329402915837818
  bounds := fun _ => ⟨0, -1⟩

def cellA25B30 : CellData where
  inverse := 547767359249107244068
  bounds := fun _ => ⟨0, -1⟩

def cellA25B31 : CellData where
  inverse := 3341735083095542790943
  bounds := fun _ => ⟨0, -1⟩

def cellA25B32 : CellData where
  inverse := 17311573702327720525318
  bounds := fun _ => ⟨0, -1⟩

def cellA25B33 : CellData where
  inverse := 110443831163875572087818
  bounds := fun _ => ⟨0, -1⟩

def cellA25B34 : CellData where
  inverse := 576105118471614829900318
  bounds := fun _ => ⟨0, -1⟩

def cellA25B35 : CellData where
  inverse := 2322334945875637046697193
  bounds := fun _ => ⟨0, -1⟩

def cellA25B36 : CellData where
  inverse := 11053484082895748130681568
  bounds := fun _ => ⟨0, -1⟩

def cellA25B37 : CellData where
  inverse := 54709229767996303550603443
  bounds := fun _ => ⟨0, -1⟩

def cellA25B38 : CellData where
  inverse := 272987958193499080650212818
  bounds := fun _ => ⟨0, -1⟩

def cellA25B39 : CellData where
  inverse := 272987958193499080650212818
  bounds := fun _ => ⟨0, -1⟩

def cellA25B40 : CellData where
  inverse := 5729956168831068508140447193
  bounds := fun _ => ⟨0, -1⟩

def cellA25B41 : CellData where
  inverse := 42109744239748198024742009693
  bounds := fun _ => ⟨0, -1⟩

def cellA25B42 : CellData where
  inverse := 224008684594333845607749822193
  bounds := fun _ => ⟨0, -1⟩

def cellA25B43 : CellData where
  inverse := 1133503386367262083522788884693
  bounds := fun _ => ⟨0, -1⟩

def cellA25B44 : CellData where
  inverse := 1133503386367262083522788884693
  bounds := fun _ => ⟨0, -1⟩

def cellA25B45 : CellData where
  inverse := 6817845272448063570491783025318
  bounds := fun _ => ⟨0, -1⟩

def cellA25B46 : CellData where
  inverse := 63661264133256078440181724431568
  bounds := fun _ => ⟨0, -1⟩

def cellA26B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA26B2 : CellData where
  inverse := 9
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA26B3 : CellData where
  inverse := 34
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA26B4 : CellData where
  inverse := 159
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA26B5 : CellData where
  inverse := 159
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA26B6 : CellData where
  inverse := 12659
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA26B7 : CellData where
  inverse := 28284
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA26B8 : CellData where
  inverse := 106409
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA26B9 : CellData where
  inverse := 887659
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA26B10 : CellData where
  inverse := 2840784
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA26B11 : CellData where
  inverse := 41903284
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA26B12 : CellData where
  inverse := 41903284
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA26B13 : CellData where
  inverse := 530184534
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA26B14 : CellData where
  inverse := 4192293909
  bounds := fun _ => ⟨0, -1⟩

def cellA26B15 : CellData where
  inverse := 28606356409
  bounds := fun _ => ⟨0, -1⟩

def cellA26B16 : CellData where
  inverse := 120159090784
  bounds := fun _ => ⟨0, -1⟩

def cellA26B17 : CellData where
  inverse := 425334872034
  bounds := fun _ => ⟨0, -1⟩

def cellA26B18 : CellData where
  inverse := 1188274325159
  bounds := fun _ => ⟨0, -1⟩

def cellA26B19 : CellData where
  inverse := 12632366122034
  bounds := fun _ => ⟨0, -1⟩

def cellA26B20 : CellData where
  inverse := 50779338778284
  bounds := fun _ => ⟨0, -1⟩

def cellA26B21 : CellData where
  inverse := 336881633700159
  bounds := fun _ => ⟨0, -1⟩

def cellA26B22 : CellData where
  inverse := 336881633700159
  bounds := fun _ => ⟨0, -1⟩

def cellA26B23 : CellData where
  inverse := 336881633700159
  bounds := fun _ => ⟨0, -1⟩

def cellA26B24 : CellData where
  inverse := 336881633700159
  bounds := fun _ => ⟨0, -1⟩

def cellA26B25 : CellData where
  inverse := 336881633700159
  bounds := fun _ => ⟨0, -1⟩

def cellA26B26 : CellData where
  inverse := 1192429777141512659
  bounds := fun _ => ⟨0, -1⟩

def cellA26B27 : CellData where
  inverse := 5662778135295809534
  bounds := fun _ => ⟨0, -1⟩

def cellA26B28 : CellData where
  inverse := 13113358732219637659
  bounds := fun _ => ⟨0, -1⟩

def cellA26B29 : CellData where
  inverse := 87619164701457918909
  bounds := fun _ => ⟨0, -1⟩

def cellA26B30 : CellData where
  inverse := 273883679624553622034
  bounds := fun _ => ⟨0, -1⟩

def cellA26B31 : CellData where
  inverse := 3999173978086467684534
  bounds := fun _ => ⟨0, -1⟩

def cellA26B32 : CellData where
  inverse := 8655786851163860262659
  bounds := fun _ => ⟨0, -1⟩

def cellA26B33 : CellData where
  inverse := 55221915581937786043909
  bounds := fun _ => ⟨0, -1⟩

def cellA26B34 : CellData where
  inverse := 288052559235807414950159
  bounds := fun _ => ⟨0, -1⟩

def cellA26B35 : CellData where
  inverse := 2616358995774503704012659
  bounds := fun _ => ⟨0, -1⟩

def cellA26B36 : CellData where
  inverse := 5526742041447874065340784
  bounds := fun _ => ⟨0, -1⟩

def cellA26B37 : CellData where
  inverse := 63734402954915281291903284
  bounds := fun _ => ⟨0, -1⟩

def cellA26B38 : CellData where
  inverse := 136493979096749540325106409
  bounds := fun _ => ⟨0, -1⟩

def cellA26B39 : CellData where
  inverse := 136493979096749540325106409
  bounds := fun _ => ⟨0, -1⟩

def cellA26B40 : CellData where
  inverse := 7412451593280175443645418909
  bounds := fun _ => ⟨0, -1⟩

def cellA26B41 : CellData where
  inverse := 43792239664197304960246981409
  bounds := fun _ => ⟨0, -1⟩

def cellA26B42 : CellData where
  inverse := 225691180018782952543254793909
  bounds := fun _ => ⟨0, -1⟩

def cellA26B43 : CellData where
  inverse := 1135185881791711190458293856409
  bounds := fun _ => ⟨0, -1⟩

def cellA26B44 : CellData where
  inverse := 3408922636224031785245891512659
  bounds := fun _ => ⟨0, -1⟩

def cellA26B45 : CellData where
  inverse := 3408922636224031785245891512659
  bounds := fun _ => ⟨0, -1⟩

def cellA26B46 : CellData where
  inverse := 31830632066628039220090862215784
  bounds := fun _ => ⟨0, -1⟩

def cellA27B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨0, -1⟩
    else if d = (10 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA27B2 : CellData where
  inverse := 17
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (-3 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA27B3 : CellData where
  inverse := 17
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (7 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA27B4 : CellData where
  inverse := 392
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA27B5 : CellData where
  inverse := 1642
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (-2 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA27B6 : CellData where
  inverse := 14142
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA27B7 : CellData where
  inverse := 14142
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA27B8 : CellData where
  inverse := 248517
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA27B9 : CellData where
  inverse := 1420392
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA27B10 : CellData where
  inverse := 1420392
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA27B11 : CellData where
  inverse := 20951642
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA27B12 : CellData where
  inverse := 20951642
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA27B13 : CellData where
  inverse := 265092267
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA27B14 : CellData where
  inverse := 5147904767
  bounds := fun _ => ⟨0, -1⟩

def cellA27B15 : CellData where
  inverse := 29561967267
  bounds := fun _ => ⟨0, -1⟩

def cellA27B16 : CellData where
  inverse := 60079545392
  bounds := fun _ => ⟨0, -1⟩

def cellA27B17 : CellData where
  inverse := 212667436017
  bounds := fun _ => ⟨0, -1⟩

def cellA27B18 : CellData where
  inverse := 2501485795392
  bounds := fun _ => ⟨0, -1⟩

def cellA27B19 : CellData where
  inverse := 6316183061017
  bounds := fun _ => ⟨0, -1⟩

def cellA27B20 : CellData where
  inverse := 25389669389142
  bounds := fun _ => ⟨0, -1⟩

def cellA27B21 : CellData where
  inverse := 406859395951642
  bounds := fun _ => ⟨0, -1⟩

def cellA27B22 : CellData where
  inverse := 1360533712357892
  bounds := fun _ => ⟨0, -1⟩

def cellA27B23 : CellData where
  inverse := 6128905294389142
  bounds := fun _ => ⟨0, -1⟩

def cellA27B24 : CellData where
  inverse := 29970763204545392
  bounds := fun _ => ⟨0, -1⟩

def cellA27B25 : CellData where
  inverse := 149180052755326642
  bounds := fun _ => ⟨0, -1⟩

def cellA27B26 : CellData where
  inverse := 1341272948263139142
  bounds := fun _ => ⟨0, -1⟩

def cellA27B27 : CellData where
  inverse := 2831389067647904767
  bounds := fun _ => ⟨0, -1⟩

def cellA27B28 : CellData where
  inverse := 25183130858419389142
  bounds := fun _ => ⟨0, -1⟩

def cellA27B29 : CellData where
  inverse := 136941839812276811017
  bounds := fun _ => ⟨0, -1⟩

def cellA27B30 : CellData where
  inverse := 136941839812276811017
  bounds := fun _ => ⟨0, -1⟩

def cellA27B31 : CellData where
  inverse := 1999586989043233842267
  bounds := fun _ => ⟨0, -1⟩

def cellA27B32 : CellData where
  inverse := 15969425608275411576642
  bounds := fun _ => ⟨0, -1⟩

def cellA27B33 : CellData where
  inverse := 85818618704436300248517
  bounds := fun _ => ⟨0, -1⟩

def cellA27B34 : CellData where
  inverse := 435064584185240743607892
  bounds := fun _ => ⟨0, -1⟩

def cellA27B35 : CellData where
  inverse := 2763371020723937032670392
  bounds := fun _ => ⟨0, -1⟩

def cellA27B36 : CellData where
  inverse := 2763371020723937032670392
  bounds := fun _ => ⟨0, -1⟩

def cellA27B37 : CellData where
  inverse := 31867201477457640645951642
  bounds := fun _ => ⟨0, -1⟩

def cellA27B38 : CellData where
  inverse := 250145929902960417745561017
  bounds := fun _ => ⟨0, -1⟩

def cellA27B39 : CellData where
  inverse := 977741691321303008077592267
  bounds := fun _ => ⟨0, -1⟩

def cellA27B40 : CellData where
  inverse := 8253699305504728911397904767
  bounds := fun _ => ⟨0, -1⟩

def cellA27B41 : CellData where
  inverse := 44633487376421858427999467267
  bounds := fun _ => ⟨0, -1⟩

def cellA27B42 : CellData where
  inverse := 226532427731007506011007279767
  bounds := fun _ => ⟨0, -1⟩

def cellA27B43 : CellData where
  inverse := 1136027129503935743926046342267
  bounds := fun _ => ⟨0, -1⟩

def cellA27B44 : CellData where
  inverse := 4546632261152416636107442826642
  bounds := fun _ => ⟨0, -1⟩

def cellA27B45 : CellData where
  inverse := 15915316033314019610045431107892
  bounds := fun _ => ⟨0, -1⟩

def cellA27B46 : CellData where
  inverse := 15915316033314019610045431107892
  bounds := fun _ => ⟨0, -1⟩

def cellA28B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA28B2 : CellData where
  inverse := 21
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA28B3 : CellData where
  inverse := 71
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA28B4 : CellData where
  inverse := 196
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA28B5 : CellData where
  inverse := 821
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA28B6 : CellData where
  inverse := 7071
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA28B7 : CellData where
  inverse := 7071
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA28B8 : CellData where
  inverse := 319571
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA28B9 : CellData where
  inverse := 710196
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA28B10 : CellData where
  inverse := 710196
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA28B11 : CellData where
  inverse := 10475821
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA28B12 : CellData where
  inverse := 10475821
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

def cellA28B13 : CellData where
  inverse := 742897696
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA28B14 : CellData where
  inverse := 5625710196
  bounds := fun _ => ⟨0, -1⟩

def cellA28B15 : CellData where
  inverse := 30039772696
  bounds := fun _ => ⟨0, -1⟩

def cellA28B16 : CellData where
  inverse := 30039772696
  bounds := fun _ => ⟨0, -1⟩

def cellA28B17 : CellData where
  inverse := 487803444571
  bounds := fun _ => ⟨0, -1⟩

def cellA28B18 : CellData where
  inverse := 1250742897696
  bounds := fun _ => ⟨0, -1⟩

def cellA28B19 : CellData where
  inverse := 12694834694571
  bounds := fun _ => ⟨0, -1⟩

def cellA28B20 : CellData where
  inverse := 12694834694571
  bounds := fun _ => ⟨0, -1⟩

def cellA28B21 : CellData where
  inverse := 203429697975821
  bounds := fun _ => ⟨0, -1⟩

def cellA28B22 : CellData where
  inverse := 680266856178946
  bounds := fun _ => ⟨0, -1⟩

def cellA28B23 : CellData where
  inverse := 3064452647194571
  bounds := fun _ => ⟨0, -1⟩

def cellA28B24 : CellData where
  inverse := 14985381602272696
  bounds := fun _ => ⟨0, -1⟩

def cellA28B25 : CellData where
  inverse := 74590026377663321
  bounds := fun _ => ⟨0, -1⟩

def cellA28B26 : CellData where
  inverse := 670636474131569571
  bounds := fun _ => ⟨0, -1⟩

def cellA28B27 : CellData where
  inverse := 5140984832285866446
  bounds := fun _ => ⟨0, -1⟩

def cellA28B28 : CellData where
  inverse := 12591565429209694571
  bounds := fun _ => ⟨0, -1⟩

def cellA28B29 : CellData where
  inverse := 161603177367686257071
  bounds := fun _ => ⟨0, -1⟩

def cellA28B30 : CellData where
  inverse := 534132207213877663321
  bounds := fun _ => ⟨0, -1⟩

def cellA28B31 : CellData where
  inverse := 3328099931060313210196
  bounds := fun _ => ⟨0, -1⟩

def cellA28B32 : CellData where
  inverse := 7984712804137705788321
  bounds := fun _ => ⟨0, -1⟩

def cellA28B33 : CellData where
  inverse := 101116970265685557350821
  bounds := fun _ => ⟨0, -1⟩

def cellA28B34 : CellData where
  inverse := 217532292092620371803946
  bounds := fun _ => ⟨0, -1⟩

def cellA28B35 : CellData where
  inverse := 1381685510361968516335196
  bounds := fun _ => ⟨0, -1⟩

def cellA28B36 : CellData where
  inverse := 1381685510361968516335196
  bounds := fun _ => ⟨0, -1⟩

def cellA28B37 : CellData where
  inverse := 15933600738728820322975821
  bounds := fun _ => ⟨0, -1⟩

def cellA28B38 : CellData where
  inverse := 306971905306065856455788321
  bounds := fun _ => ⟨0, -1⟩

def cellA28B39 : CellData where
  inverse := 1398365547433579741953835196
  bounds := fun _ => ⟨0, -1⟩

def cellA28B40 : CellData where
  inverse := 8674323161617005645274147696
  bounds := fun _ => ⟨0, -1⟩

def cellA28B41 : CellData where
  inverse := 45054111232534135161875710196
  bounds := fun _ => ⟨0, -1⟩

def cellA28B42 : CellData where
  inverse := 226953051587119782744883522696
  bounds := fun _ => ⟨0, -1⟩

def cellA28B43 : CellData where
  inverse := 1136447753360048020659922585196
  bounds := fun _ => ⟨0, -1⟩

def cellA28B44 : CellData where
  inverse := 2273316130576208318053721413321
  bounds := fun _ => ⟨0, -1⟩

def cellA28B45 : CellData where
  inverse := 7957658016657009805022715553946
  bounds := fun _ => ⟨0, -1⟩

def cellA28B46 : CellData where
  inverse := 7957658016657009805022715553946
  bounds := fun _ => ⟨0, -1⟩

def cellA29B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA29B2 : CellData where
  inverse := 23
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA29B3 : CellData where
  inverse := 98
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA29B4 : CellData where
  inverse := 98
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA29B5 : CellData where
  inverse := 1973
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA29B6 : CellData where
  inverse := 11348
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA29B7 : CellData where
  inverse := 42598
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA29B8 : CellData where
  inverse := 355098
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA29B9 : CellData where
  inverse := 355098
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA29B10 : CellData where
  inverse := 355098
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA29B11 : CellData where
  inverse := 29651973
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA29B12 : CellData where
  inverse := 127308223
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA29B13 : CellData where
  inverse := 371448848
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA29B14 : CellData where
  inverse := 2812855098
  bounds := fun _ => ⟨0, -1⟩

def cellA29B15 : CellData where
  inverse := 15019886348
  bounds := fun _ => ⟨0, -1⟩

def cellA29B16 : CellData where
  inverse := 15019886348
  bounds := fun _ => ⟨0, -1⟩

def cellA29B17 : CellData where
  inverse := 625371448848
  bounds := fun _ => ⟨0, -1⟩

def cellA29B18 : CellData where
  inverse := 625371448848
  bounds := fun _ => ⟨0, -1⟩

def cellA29B19 : CellData where
  inverse := 15884160511348
  bounds := fun _ => ⟨0, -1⟩

def cellA29B20 : CellData where
  inverse := 54031133167598
  bounds := fun _ => ⟨0, -1⟩

def cellA29B21 : CellData where
  inverse := 340133428089473
  bounds := fun _ => ⟨0, -1⟩

def cellA29B22 : CellData where
  inverse := 340133428089473
  bounds := fun _ => ⟨0, -1⟩

def cellA29B23 : CellData where
  inverse := 7492690801136348
  bounds := fun _ => ⟨0, -1⟩

def cellA29B24 : CellData where
  inverse := 7492690801136348
  bounds := fun _ => ⟨0, -1⟩

def cellA29B25 : CellData where
  inverse := 186306625127308223
  bounds := fun _ => ⟨0, -1⟩

def cellA29B26 : CellData where
  inverse := 1080376296758167598
  bounds := fun _ => ⟨0, -1⟩

def cellA29B27 : CellData where
  inverse := 2570492416142933223
  bounds := fun _ => ⟨0, -1⟩

def cellA29B28 : CellData where
  inverse := 24922234206914417598
  bounds := fun _ => ⟨0, -1⟩

def cellA29B29 : CellData where
  inverse := 173933846145390980098
  bounds := fun _ => ⟨0, -1⟩

def cellA29B30 : CellData where
  inverse := 732727390914678089473
  bounds := fun _ => ⟨0, -1⟩

def cellA29B31 : CellData where
  inverse := 1664049965530156605098
  bounds := fun _ => ⟨0, -1⟩

def cellA29B32 : CellData where
  inverse := 15633888584762334339473
  bounds := fun _ => ⟨0, -1⟩

def cellA29B33 : CellData where
  inverse := 108766146046310185901973
  bounds := fun _ => ⟨0, -1⟩

def cellA29B34 : CellData where
  inverse := 108766146046310185901973
  bounds := fun _ => ⟨0, -1⟩

def cellA29B35 : CellData where
  inverse := 690842755180984258167598
  bounds := fun _ => ⟨0, -1⟩

def cellA29B36 : CellData where
  inverse := 690842755180984258167598
  bounds := fun _ => ⟨0, -1⟩

def cellA29B37 : CellData where
  inverse := 44346588440281539678089473
  bounds := fun _ => ⟨0, -1⟩

def cellA29B38 : CellData where
  inverse := 335384893007618575810901973
  bounds := fun _ => ⟨0, -1⟩

def cellA29B39 : CellData where
  inverse := 699182773716789870976917598
  bounds := fun _ => ⟨0, -1⟩

def cellA29B40 : CellData where
  inverse := 4337161580808502822637073848
  bounds := fun _ => ⟨0, -1⟩

def cellA29B41 : CellData where
  inverse := 22527055616267067580937855098
  bounds := fun _ => ⟨0, -1⟩

def cellA29B42 : CellData where
  inverse := 113476525793559891372441761348
  bounds := fun _ => ⟨0, -1⟩

def cellA29B43 : CellData where
  inverse := 568223876680024010329961292598
  bounds := fun _ => ⟨0, -1⟩

def cellA29B44 : CellData where
  inverse := 3978829008328504902511357776973
  bounds := fun _ => ⟨0, -1⟩

def cellA29B45 : CellData where
  inverse := 3978829008328504902511357776973
  bounds := fun _ => ⟨0, -1⟩

def cellA29B46 : CellData where
  inverse := 3978829008328504902511357776973
  bounds := fun _ => ⟨0, -1⟩

def cellA30B1 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, -1⟩

def cellA30B2 : CellData where
  inverse := 24
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA30B3 : CellData where
  inverse := 49
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA30B4 : CellData where
  inverse := 49
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA30B5 : CellData where
  inverse := 2549
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA30B6 : CellData where
  inverse := 5674
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA30B7 : CellData where
  inverse := 21299
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA30B8 : CellData where
  inverse := 177549
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA30B9 : CellData where
  inverse := 177549
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA30B10 : CellData where
  inverse := 177549
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA30B11 : CellData where
  inverse := 39240049
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA30B12 : CellData where
  inverse := 185724424
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA30B13 : CellData where
  inverse := 185724424
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA30B14 : CellData where
  inverse := 1406427549
  bounds := fun _ => ⟨0, -1⟩

def cellA30B15 : CellData where
  inverse := 7509943174
  bounds := fun _ => ⟨0, -1⟩

def cellA30B16 : CellData where
  inverse := 7509943174
  bounds := fun _ => ⟨0, -1⟩

def cellA30B17 : CellData where
  inverse := 312685724424
  bounds := fun _ => ⟨0, -1⟩

def cellA30B18 : CellData where
  inverse := 312685724424
  bounds := fun _ => ⟨0, -1⟩

def cellA30B19 : CellData where
  inverse := 7942080255674
  bounds := fun _ => ⟨0, -1⟩

def cellA30B20 : CellData where
  inverse := 27015566583799
  bounds := fun _ => ⟨0, -1⟩

def cellA30B21 : CellData where
  inverse := 408485293146299
  bounds := fun _ => ⟨0, -1⟩

def cellA30B22 : CellData where
  inverse := 1362159609552549
  bounds := fun _ => ⟨0, -1⟩

def cellA30B23 : CellData where
  inverse := 3746345400568174
  bounds := fun _ => ⟨0, -1⟩

def cellA30B24 : CellData where
  inverse := 3746345400568174
  bounds := fun _ => ⟨0, -1⟩

def cellA30B25 : CellData where
  inverse := 242164924502130674
  bounds := fun _ => ⟨0, -1⟩

def cellA30B26 : CellData where
  inverse := 540188148379083799
  bounds := fun _ => ⟨0, -1⟩

def cellA30B27 : CellData where
  inverse := 5010536506533380674
  bounds := fun _ => ⟨0, -1⟩

def cellA30B28 : CellData where
  inverse := 12461117103457208799
  bounds := fun _ => ⟨0, -1⟩

def cellA30B29 : CellData where
  inverse := 86966923072695490049
  bounds := fun _ => ⟨0, -1⟩

def cellA30B30 : CellData where
  inverse := 832024982765078302549
  bounds := fun _ => ⟨0, -1⟩

def cellA30B31 : CellData where
  inverse := 832024982765078302549
  bounds := fun _ => ⟨0, -1⟩

def cellA30B32 : CellData where
  inverse := 19458476475074648615049
  bounds := fun _ => ⟨0, -1⟩

def cellA30B33 : CellData where
  inverse := 112590733936622500177549
  bounds := fun _ => ⟨0, -1⟩

def cellA30B34 : CellData where
  inverse := 345421377590492129083799
  bounds := fun _ => ⟨0, -1⟩

def cellA30B35 : CellData where
  inverse := 345421377590492129083799
  bounds := fun _ => ⟨0, -1⟩

def cellA30B36 : CellData where
  inverse := 345421377590492129083799
  bounds := fun _ => ⟨0, -1⟩

def cellA30B37 : CellData where
  inverse := 58553082291057899355646299
  bounds := fun _ => ⟨0, -1⟩

def cellA30B38 : CellData where
  inverse := 349591386858394935488458799
  bounds := fun _ => ⟨0, -1⟩

def cellA30B39 : CellData where
  inverse := 349591386858394935488458799
  bounds := fun _ => ⟨0, -1⟩

def cellA30B40 : CellData where
  inverse := 2168580790404251411318536924
  bounds := fun _ => ⟨0, -1⟩

def cellA30B41 : CellData where
  inverse := 11263527808133533790468927549
  bounds := fun _ => ⟨0, -1⟩

def cellA30B42 : CellData where
  inverse := 56738262896779945686220880674
  bounds := fun _ => ⟨0, -1⟩

def cellA30B43 : CellData where
  inverse := 284111938340012005164980646299
  bounds := fun _ => ⟨0, -1⟩

def cellA30B44 : CellData where
  inverse := 4831585447204653194740175958799
  bounds := fun _ => ⟨0, -1⟩

def cellA30B45 : CellData where
  inverse := 16200269219366256168678164240049
  bounds := fun _ => ⟨0, -1⟩

def cellA30B46 : CellData where
  inverse := 73043688080174271038368105646299
  bounds := fun _ => ⟨0, -1⟩

def cellA31B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA31B2 : CellData where
  inverse := 12
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA31B3 : CellData where
  inverse := 87
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA31B4 : CellData where
  inverse := 337
  bounds := fun _ => ⟨0, -1⟩

def cellA31B5 : CellData where
  inverse := 2837
  bounds := fun _ => ⟨0, -1⟩

def cellA31B6 : CellData where
  inverse := 2837
  bounds := fun _ => ⟨0, -1⟩

def cellA31B7 : CellData where
  inverse := 49712
  bounds := fun _ => ⟨0, -1⟩

def cellA31B8 : CellData where
  inverse := 284087
  bounds := fun _ => ⟨0, -1⟩

def cellA31B9 : CellData where
  inverse := 1065337
  bounds := fun _ => ⟨0, -1⟩

def cellA31B10 : CellData where
  inverse := 4971587
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA31B11 : CellData where
  inverse := 44034087
  bounds := fun d =>
    if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA31B12 : CellData where
  inverse := 92862212
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA31B13 : CellData where
  inverse := 92862212
  bounds := fun _ => ⟨0, -1⟩

def cellA31B14 : CellData where
  inverse := 3754971587
  bounds := fun _ => ⟨0, -1⟩

def cellA31B15 : CellData where
  inverse := 3754971587
  bounds := fun _ => ⟨0, -1⟩

def cellA31B16 : CellData where
  inverse := 3754971587
  bounds := fun _ => ⟨0, -1⟩

def cellA31B17 : CellData where
  inverse := 156342862212
  bounds := fun _ => ⟨0, -1⟩

def cellA31B18 : CellData where
  inverse := 156342862212
  bounds := fun _ => ⟨0, -1⟩

def cellA31B19 : CellData where
  inverse := 3971040127837
  bounds := fun _ => ⟨0, -1⟩

def cellA31B20 : CellData where
  inverse := 61191499112212
  bounds := fun _ => ⟨0, -1⟩

def cellA31B21 : CellData where
  inverse := 442661225674712
  bounds := fun _ => ⟨0, -1⟩

def cellA31B22 : CellData where
  inverse := 1873172700284087
  bounds := fun _ => ⟨0, -1⟩

def cellA31B23 : CellData where
  inverse := 1873172700284087
  bounds := fun _ => ⟨0, -1⟩

def cellA31B24 : CellData where
  inverse := 1873172700284087
  bounds := fun _ => ⟨0, -1⟩

def cellA31B25 : CellData where
  inverse := 121082462251065337
  bounds := fun _ => ⟨0, -1⟩

def cellA31B26 : CellData where
  inverse := 1015152133881924712
  bounds := fun _ => ⟨0, -1⟩

def cellA31B27 : CellData where
  inverse := 2505268253266690337
  bounds := fun _ => ⟨0, -1⟩

def cellA31B28 : CellData where
  inverse := 24857010044038174712
  bounds := fun _ => ⟨0, -1⟩

def cellA31B29 : CellData where
  inverse := 136615718997895596587
  bounds := fun _ => ⟨0, -1⟩

def cellA31B30 : CellData where
  inverse := 881673778690278409087
  bounds := fun _ => ⟨0, -1⟩

def cellA31B31 : CellData where
  inverse := 2744318927921235440337
  bounds := fun _ => ⟨0, -1⟩

def cellA31B32 : CellData where
  inverse := 21370770420230805752837
  bounds := fun _ => ⟨0, -1⟩

def cellA31B33 : CellData where
  inverse := 114503027881778657315337
  bounds := fun _ => ⟨0, -1⟩

def cellA31B34 : CellData where
  inverse := 463748993362583100674712
  bounds := fun _ => ⟨0, -1⟩

def cellA31B35 : CellData where
  inverse := 1627902211631931245205962
  bounds := fun _ => ⟨0, -1⟩

def cellA31B36 : CellData where
  inverse := 7448668302978671967862212
  bounds := fun _ => ⟨0, -1⟩

def cellA31B37 : CellData where
  inverse := 65656329216446079194424712
  bounds := fun _ => ⟨0, -1⟩

def cellA31B38 : CellData where
  inverse := 356694633783783115327237212
  bounds := fun _ => ⟨0, -1⟩

def cellA31B39 : CellData where
  inverse := 1084290395202125705659268462
  bounds := fun _ => ⟨0, -1⟩

def cellA31B40 : CellData where
  inverse := 1084290395202125705659268462
  bounds := fun _ => ⟨0, -1⟩

def cellA31B41 : CellData where
  inverse := 28369131448389972843110440337
  bounds := fun _ => ⟨0, -1⟩

def cellA31B42 : CellData where
  inverse := 28369131448389972843110440337
  bounds := fun _ => ⟨0, -1⟩

def cellA31B43 : CellData where
  inverse := 710490157778086151279389737212
  bounds := fun _ => ⟨0, -1⟩

def cellA31B44 : CellData where
  inverse := 5257963666642727340854585049712
  bounds := fun _ => ⟨0, -1⟩

def cellA31B45 : CellData where
  inverse := 22310989324885131801761567471587
  bounds := fun _ => ⟨0, -1⟩

def cellA31B46 : CellData where
  inverse := 107576117616097154106296479580962
  bounds := fun _ => ⟨0, -1⟩

def cellA32B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA32B2 : CellData where
  inverse := 6
  bounds := fun _ => ⟨0, -1⟩

def cellA32B3 : CellData where
  inverse := 106
  bounds := fun _ => ⟨0, -1⟩

def cellA32B4 : CellData where
  inverse := 481
  bounds := fun _ => ⟨0, -1⟩

def cellA32B5 : CellData where
  inverse := 2981
  bounds := fun _ => ⟨0, -1⟩

def cellA32B6 : CellData where
  inverse := 9231
  bounds := fun _ => ⟨0, -1⟩

def cellA32B7 : CellData where
  inverse := 24856
  bounds := fun _ => ⟨0, -1⟩

def cellA32B8 : CellData where
  inverse := 337356
  bounds := fun _ => ⟨0, -1⟩

def cellA32B9 : CellData where
  inverse := 1509231
  bounds := fun _ => ⟨0, -1⟩

def cellA32B10 : CellData where
  inverse := 7368606
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA32B11 : CellData where
  inverse := 46431106
  bounds := fun _ => ⟨0, -1⟩

def cellA32B12 : CellData where
  inverse := 46431106
  bounds := fun _ => ⟨0, -1⟩

def cellA32B13 : CellData where
  inverse := 46431106
  bounds := fun _ => ⟨0, -1⟩

def cellA32B14 : CellData where
  inverse := 4929243606
  bounds := fun _ => ⟨0, -1⟩

def cellA32B15 : CellData where
  inverse := 17136274856
  bounds := fun _ => ⟨0, -1⟩

def cellA32B16 : CellData where
  inverse := 78171431106
  bounds := fun _ => ⟨0, -1⟩

def cellA32B17 : CellData where
  inverse := 78171431106
  bounds := fun _ => ⟨0, -1⟩

def cellA32B18 : CellData where
  inverse := 78171431106
  bounds := fun _ => ⟨0, -1⟩

def cellA32B19 : CellData where
  inverse := 11522263227981
  bounds := fun _ => ⟨0, -1⟩

def cellA32B20 : CellData where
  inverse := 30595749556106
  bounds := fun _ => ⟨0, -1⟩

def cellA32B21 : CellData where
  inverse := 221330612837356
  bounds := fun _ => ⟨0, -1⟩

def cellA32B22 : CellData where
  inverse := 2128679245649856
  bounds := fun _ => ⟨0, -1⟩

def cellA32B23 : CellData where
  inverse := 6897050827681106
  bounds := fun _ => ⟨0, -1⟩

def cellA32B24 : CellData where
  inverse := 30738908737837356
  bounds := fun _ => ⟨0, -1⟩

def cellA32B25 : CellData where
  inverse := 209552843064009231
  bounds := fun _ => ⟨0, -1⟩

def cellA32B26 : CellData where
  inverse := 507576066940962356
  bounds := fun _ => ⟨0, -1⟩

def cellA32B27 : CellData where
  inverse := 4977924425095259231
  bounds := fun _ => ⟨0, -1⟩

def cellA32B28 : CellData where
  inverse := 12428505022019087356
  bounds := fun _ => ⟨0, -1⟩

def cellA32B29 : CellData where
  inverse := 161440116960495649856
  bounds := fun _ => ⟨0, -1⟩

def cellA32B30 : CellData where
  inverse := 906498176652878462356
  bounds := fun _ => ⟨0, -1⟩

def cellA32B31 : CellData where
  inverse := 3700465900499314009231
  bounds := fun _ => ⟨0, -1⟩

def cellA32B32 : CellData where
  inverse := 22326917392808884321731
  bounds := fun _ => ⟨0, -1⟩

def cellA32B33 : CellData where
  inverse := 115459174854356735884231
  bounds := fun _ => ⟨0, -1⟩

def cellA32B34 : CellData where
  inverse := 231874496681291550337356
  bounds := fun _ => ⟨0, -1⟩

def cellA32B35 : CellData where
  inverse := 813951105815965622602981
  bounds := fun _ => ⟨0, -1⟩

def cellA32B36 : CellData where
  inverse := 3724334151489335983931106
  bounds := fun _ => ⟨0, -1⟩

def cellA32B37 : CellData where
  inverse := 32828164608223039597212356
  bounds := fun _ => ⟨0, -1⟩

def cellA32B38 : CellData where
  inverse := 178347316891891557663618606
  bounds := fun _ => ⟨0, -1⟩

def cellA32B39 : CellData where
  inverse := 542145197601062852829634231
  bounds := fun _ => ⟨0, -1⟩

def cellA32B40 : CellData where
  inverse := 542145197601062852829634231
  bounds := fun _ => ⟨0, -1⟩

def cellA32B41 : CellData where
  inverse := 36921933268518192369431196731
  bounds := fun _ => ⟨0, -1⟩

def cellA32B42 : CellData where
  inverse := 127871403445811016160935102981
  bounds := fun _ => ⟨0, -1⟩

def cellA32B43 : CellData where
  inverse := 355245078889043075639694868606
  bounds := fun _ => ⟨0, -1⟩

def cellA32B44 : CellData where
  inverse := 2628981833321363670427292524856
  bounds := fun _ => ⟨0, -1⟩

def cellA32B45 : CellData where
  inverse := 25366349377644569618303269087356
  bounds := fun _ => ⟨0, -1⟩

def cellA32B46 : CellData where
  inverse := 53788058808048577053148239790481
  bounds := fun _ => ⟨0, -1⟩

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

end Math.B699.CRTStage0Pair25.Chunk003
