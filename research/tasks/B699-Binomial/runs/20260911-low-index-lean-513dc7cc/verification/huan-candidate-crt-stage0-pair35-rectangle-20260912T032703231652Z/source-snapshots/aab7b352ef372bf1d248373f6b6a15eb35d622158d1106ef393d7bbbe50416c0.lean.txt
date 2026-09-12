import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage0Pair35.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA17B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨0, -1⟩
    else if d = (10 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B2 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B3 : CellData where
  inverse := 102
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B4 : CellData where
  inverse := 602
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (2 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B5 : CellData where
  inverse := 602
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨0, -1⟩
    else if d = (10 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B6 : CellData where
  inverse := 9977
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B7 : CellData where
  inverse := 9977
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B8 : CellData where
  inverse := 88102
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B9 : CellData where
  inverse := 478727
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B10 : CellData where
  inverse := 6338102
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B11 : CellData where
  inverse := 35634977
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA17B12 : CellData where
  inverse := 35634977
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA17B13 : CellData where
  inverse := 35634977
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA17B14 : CellData where
  inverse := 1256338102
  bounds := fun _ => ⟨0, -1⟩

def cellA17B15 : CellData where
  inverse := 13463369352
  bounds := fun _ => ⟨0, -1⟩

def cellA17B16 : CellData where
  inverse := 43980947477
  bounds := fun _ => ⟨0, -1⟩

def cellA17B17 : CellData where
  inverse := 501744619352
  bounds := fun _ => ⟨0, -1⟩

def cellA17B18 : CellData where
  inverse := 3553502431852
  bounds := fun _ => ⟨0, -1⟩

def cellA17B19 : CellData where
  inverse := 14997594228727
  bounds := fun _ => ⟨0, -1⟩

def cellA17B20 : CellData where
  inverse := 91291539541227
  bounds := fun _ => ⟨0, -1⟩

def cellA17B21 : CellData where
  inverse := 282026402822477
  bounds := fun _ => ⟨0, -1⟩

def cellA17B22 : CellData where
  inverse := 2189375035634977
  bounds := fun _ => ⟨0, -1⟩

def cellA17B23 : CellData where
  inverse := 11726118199697477
  bounds := fun _ => ⟨0, -1⟩

def cellA17B24 : CellData where
  inverse := 47488905064931852
  bounds := fun _ => ⟨0, -1⟩

def cellA17B25 : CellData where
  inverse := 226302839391103727
  bounds := fun _ => ⟨0, -1⟩

def cellA17B26 : CellData where
  inverse := 1418395734898916227
  bounds := fun _ => ⟨0, -1⟩

def cellA17B27 : CellData where
  inverse := 2908511854283681852
  bounds := fun _ => ⟨0, -1⟩

def cellA17B28 : CellData where
  inverse := 32710834241978994352
  bounds := fun _ => ⟨0, -1⟩

def cellA17B29 : CellData where
  inverse := 107216640211217275602
  bounds := fun _ => ⟨0, -1⟩

def cellA17B30 : CellData where
  inverse := 479745670057408681852
  bounds := fun _ => ⟨0, -1⟩

def cellA17B31 : CellData where
  inverse := 1411068244672887197477
  bounds := fun _ => ⟨0, -1⟩

def cellA17B32 : CellData where
  inverse := 15380906863905064931852
  bounds := fun _ => ⟨0, -1⟩

def cellA17B33 : CellData where
  inverse := 38663971229292027822477
  bounds := fun _ => ⟨0, -1⟩

def cellA17B34 : CellData where
  inverse := 504325258537031285634977
  bounds := fun _ => ⟨0, -1⟩

def cellA17B35 : CellData where
  inverse := 1086401867671705357900602
  bounds := fun _ => ⟨0, -1⟩

def cellA17B36 : CellData where
  inverse := 1086401867671705357900602
  bounds := fun _ => ⟨0, -1⟩

def cellA17B37 : CellData where
  inverse := 59294062781139112584463102
  bounds := fun _ => ⟨0, -1⟩

def cellA17B38 : CellData where
  inverse := 350332367348476148717275602
  bounds := fun _ => ⟨0, -1⟩

def cellA17B39 : CellData where
  inverse := 350332367348476148717275602
  bounds := fun _ => ⟨0, -1⟩

def cellA17B40 : CellData where
  inverse := 5807300577986045576207509977
  bounds := fun _ => ⟨0, -1⟩

def cellA17B41 : CellData where
  inverse := 33092141631173892713658681852
  bounds := fun _ => ⟨0, -1⟩

def cellA17B42 : CellData where
  inverse := 124041611808466716505162588102
  bounds := fun _ => ⟨0, -1⟩

def cellA17B43 : CellData where
  inverse := 124041611808466716505162588102
  bounds := fun _ => ⟨0, -1⟩

def cellA17B44 : CellData where
  inverse := 124041611808466716505162588102
  bounds := fun _ => ⟨0, -1⟩

def cellA17B45 : CellData where
  inverse := 11492725383970069690443150869352
  bounds := fun _ => ⟨0, -1⟩

def cellA17B46 : CellData where
  inverse := 11492725383970069690443150869352
  bounds := fun _ => ⟨0, -1⟩

def cellA18B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B2 : CellData where
  inverse := 9
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B3 : CellData where
  inverse := 34
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B4 : CellData where
  inverse := 409
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B5 : CellData where
  inverse := 2284
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B6 : CellData where
  inverse := 8534
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B7 : CellData where
  inverse := 55409
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B8 : CellData where
  inverse := 289784
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B9 : CellData where
  inverse := 1461659
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B10 : CellData where
  inverse := 5367909
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B11 : CellData where
  inverse := 44430409
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B12 : CellData where
  inverse := 93258534
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B13 : CellData where
  inverse := 825680409
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B14 : CellData where
  inverse := 4487789784
  bounds := fun _ => ⟨0, -1⟩

def cellA18B15 : CellData where
  inverse := 4487789784
  bounds := fun _ => ⟨0, -1⟩

def cellA18B16 : CellData where
  inverse := 65522946034
  bounds := fun _ => ⟨0, -1⟩

def cellA18B17 : CellData where
  inverse := 675874508534
  bounds := fun _ => ⟨0, -1⟩

def cellA18B18 : CellData where
  inverse := 3727632321034
  bounds := fun _ => ⟨0, -1⟩

def cellA18B19 : CellData where
  inverse := 11357026852284
  bounds := fun _ => ⟨0, -1⟩

def cellA18B20 : CellData where
  inverse := 30430513180409
  bounds := fun _ => ⟨0, -1⟩

def cellA18B21 : CellData where
  inverse := 411900239742909
  bounds := fun _ => ⟨0, -1⟩

def cellA18B22 : CellData where
  inverse := 2319248872555409
  bounds := fun _ => ⟨0, -1⟩

def cellA18B23 : CellData where
  inverse := 11855992036617909
  bounds := fun _ => ⟨0, -1⟩

def cellA18B24 : CellData where
  inverse := 35697849946774159
  bounds := fun _ => ⟨0, -1⟩

def cellA18B25 : CellData where
  inverse := 274116429048336659
  bounds := fun _ => ⟨0, -1⟩

def cellA18B26 : CellData where
  inverse := 1466209324556149159
  bounds := fun _ => ⟨0, -1⟩

def cellA18B27 : CellData where
  inverse := 5936557682710446034
  bounds := fun _ => ⟨0, -1⟩

def cellA18B28 : CellData where
  inverse := 35738880070405758534
  bounds := fun _ => ⟨0, -1⟩

def cellA18B29 : CellData where
  inverse := 35738880070405758534
  bounds := fun _ => ⟨0, -1⟩

def cellA18B30 : CellData where
  inverse := 780796939762788571034
  bounds := fun _ => ⟨0, -1⟩

def cellA18B31 : CellData where
  inverse := 3574764663609224117909
  bounds := fun _ => ⟨0, -1⟩

def cellA18B32 : CellData where
  inverse := 12887990409764009274159
  bounds := fun _ => ⟨0, -1⟩

def cellA18B33 : CellData where
  inverse := 12887990409764009274159
  bounds := fun _ => ⟨0, -1⟩

def cellA18B34 : CellData where
  inverse := 362133955890568452633534
  bounds := fun _ => ⟨0, -1⟩

def cellA18B35 : CellData where
  inverse := 362133955890568452633534
  bounds := fun _ => ⟨0, -1⟩

def cellA18B36 : CellData where
  inverse := 362133955890568452633534
  bounds := fun _ => ⟨0, -1⟩

def cellA18B37 : CellData where
  inverse := 44017879640991123872555409
  bounds := fun _ => ⟨0, -1⟩

def cellA18B38 : CellData where
  inverse := 116777455782825382905758534
  bounds := fun _ => ⟨0, -1⟩

def cellA18B39 : CellData where
  inverse := 116777455782825382905758534
  bounds := fun _ => ⟨0, -1⟩

def cellA18B40 : CellData where
  inverse := 1935766859328681858735836659
  bounds := fun _ => ⟨0, -1⟩

def cellA18B41 : CellData where
  inverse := 11030713877057964237886227284
  bounds := fun _ => ⟨0, -1⟩

def cellA18B42 : CellData where
  inverse := 192929654231643611820894039784
  bounds := fun _ => ⟨0, -1⟩

def cellA18B43 : CellData where
  inverse := 420303329674875671299653805409
  bounds := fun _ => ⟨0, -1⟩

def cellA18B44 : CellData where
  inverse := 3830908461323356563481050289784
  bounds := fun _ => ⟨0, -1⟩

def cellA18B45 : CellData where
  inverse := 3830908461323356563481050289784
  bounds := fun _ => ⟨0, -1⟩

def cellA18B46 : CellData where
  inverse := 3830908461323356563481050289784
  bounds := fun _ => ⟨0, -1⟩

def cellA19B1 : CellData where
  inverse := 3
  bounds := fun _ => ⟨0, -1⟩

def cellA19B2 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B3 : CellData where
  inverse := 53
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B4 : CellData where
  inverse := 553
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B5 : CellData where
  inverse := 1803
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B6 : CellData where
  inverse := 8053
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B7 : CellData where
  inverse := 70553
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B8 : CellData where
  inverse := 226803
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B9 : CellData where
  inverse := 1789303
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B10 : CellData where
  inverse := 1789303
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B11 : CellData where
  inverse := 31086178
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B12 : CellData where
  inverse := 31086178
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B13 : CellData where
  inverse := 275226803
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA19B14 : CellData where
  inverse := 1495929928
  bounds := fun _ => ⟨0, -1⟩

def cellA19B15 : CellData where
  inverse := 1495929928
  bounds := fun _ => ⟨0, -1⟩

def cellA19B16 : CellData where
  inverse := 123566242428
  bounds := fun _ => ⟨0, -1⟩

def cellA19B17 : CellData where
  inverse := 733917804928
  bounds := fun _ => ⟨0, -1⟩

def cellA19B18 : CellData where
  inverse := 3785675617428
  bounds := fun _ => ⟨0, -1⟩

def cellA19B19 : CellData where
  inverse := 3785675617428
  bounds := fun _ => ⟨0, -1⟩

def cellA19B20 : CellData where
  inverse := 41932648273678
  bounds := fun _ => ⟨0, -1⟩

def cellA19B21 : CellData where
  inverse := 137300079914303
  bounds := fun _ => ⟨0, -1⟩

def cellA19B22 : CellData where
  inverse := 1567811554523678
  bounds := fun _ => ⟨0, -1⟩

def cellA19B23 : CellData where
  inverse := 3951997345539303
  bounds := fun _ => ⟨0, -1⟩

def cellA19B24 : CellData where
  inverse := 51635713165851803
  bounds := fun _ => ⟨0, -1⟩

def cellA19B25 : CellData where
  inverse := 290054292267414303
  bounds := fun _ => ⟨0, -1⟩

def cellA19B26 : CellData where
  inverse := 1482147187775226803
  bounds := fun _ => ⟨0, -1⟩

def cellA19B27 : CellData where
  inverse := 4462379426544758053
  bounds := fun _ => ⟨0, -1⟩

def cellA19B28 : CellData where
  inverse := 11912960023468586178
  bounds := fun _ => ⟨0, -1⟩

def cellA19B29 : CellData where
  inverse := 11912960023468586178
  bounds := fun _ => ⟨0, -1⟩

def cellA19B30 : CellData where
  inverse := 570706504792755695553
  bounds := fun _ => ⟨0, -1⟩

def cellA19B31 : CellData where
  inverse := 4295996803254669758053
  bounds := fun _ => ⟨0, -1⟩

def cellA19B32 : CellData where
  inverse := 4295996803254669758053
  bounds := fun _ => ⟨0, -1⟩

def cellA19B33 : CellData where
  inverse := 4295996803254669758053
  bounds := fun _ => ⟨0, -1⟩

def cellA19B34 : CellData where
  inverse := 120711318630189484211178
  bounds := fun _ => ⟨0, -1⟩

def cellA19B35 : CellData where
  inverse := 120711318630189484211178
  bounds := fun _ => ⟨0, -1⟩

def cellA19B36 : CellData where
  inverse := 120711318630189484211178
  bounds := fun _ => ⟨0, -1⟩

def cellA19B37 : CellData where
  inverse := 14672626546997041290851803
  bounds := fun _ => ⟨0, -1⟩

def cellA19B38 : CellData where
  inverse := 160191778830665559357258053
  bounds := fun _ => ⟨0, -1⟩

def cellA19B39 : CellData where
  inverse := 1251585420958179444855304928
  bounds := fun _ => ⟨0, -1⟩

def cellA19B40 : CellData where
  inverse := 6708553631595748872345539303
  bounds := fun _ => ⟨0, -1⟩

def cellA19B41 : CellData where
  inverse := 33993394684783596009796711178
  bounds := fun _ => ⟨0, -1⟩

def cellA19B42 : CellData where
  inverse := 215892335039369243592804523678
  bounds := fun _ => ⟨0, -1⟩

def cellA19B43 : CellData where
  inverse := 898013361369065422029083820553
  bounds := fun _ => ⟨0, -1⟩

def cellA19B44 : CellData where
  inverse := 3171750115801386016816681476803
  bounds := fun _ => ⟨0, -1⟩

def cellA19B45 : CellData where
  inverse := 20224775774043790477723663898678
  bounds := fun _ => ⟨0, -1⟩

def cellA19B46 : CellData where
  inverse := 48646485204447797912568634601803
  bounds := fun _ => ⟨0, -1⟩

def cellA20B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA20B2 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA20B3 : CellData where
  inverse := 101
  bounds := fun _ => ⟨0, -1⟩

def cellA20B4 : CellData where
  inverse := 601
  bounds := fun _ => ⟨0, -1⟩

def cellA20B5 : CellData where
  inverse := 601
  bounds := fun _ => ⟨0, -1⟩

def cellA20B6 : CellData where
  inverse := 13101
  bounds := fun d =>
    if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA20B7 : CellData where
  inverse := 75601
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA20B8 : CellData where
  inverse := 75601
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA20B9 : CellData where
  inverse := 1247476
  bounds := fun _ => ⟨0, -1⟩

def cellA20B10 : CellData where
  inverse := 7106851
  bounds := fun _ => ⟨0, -1⟩

def cellA20B11 : CellData where
  inverse := 26638101
  bounds := fun _ => ⟨0, -1⟩

def cellA20B12 : CellData where
  inverse := 173122476
  bounds := fun _ => ⟨0, -1⟩

def cellA20B13 : CellData where
  inverse := 905544351
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA20B14 : CellData where
  inverse := 4567653726
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA20B15 : CellData where
  inverse := 10671169351
  bounds := fun _ => ⟨0, -1⟩

def cellA20B16 : CellData where
  inverse := 41188747476
  bounds := fun _ => ⟨0, -1⟩

def cellA20B17 : CellData where
  inverse := 498952419351
  bounds := fun _ => ⟨0, -1⟩

def cellA20B18 : CellData where
  inverse := 1261891872476
  bounds := fun _ => ⟨0, -1⟩

def cellA20B19 : CellData where
  inverse := 1261891872476
  bounds := fun _ => ⟨0, -1⟩

def cellA20B20 : CellData where
  inverse := 77555837184976
  bounds := fun _ => ⟨0, -1⟩

def cellA20B21 : CellData where
  inverse := 363658132106851
  bounds := fun _ => ⟨0, -1⟩

def cellA20B22 : CellData where
  inverse := 1317332448513101
  bounds := fun _ => ⟨0, -1⟩

def cellA20B23 : CellData where
  inverse := 1317332448513101
  bounds := fun _ => ⟨0, -1⟩

def cellA20B24 : CellData where
  inverse := 37080119313747476
  bounds := fun _ => ⟨0, -1⟩

def cellA20B25 : CellData where
  inverse := 96684764089138101
  bounds := fun _ => ⟨0, -1⟩

def cellA20B26 : CellData where
  inverse := 990754435719997476
  bounds := fun _ => ⟨0, -1⟩

def cellA20B27 : CellData where
  inverse := 3970986674489528726
  bounds := fun _ => ⟨0, -1⟩

def cellA20B28 : CellData where
  inverse := 3970986674489528726
  bounds := fun _ => ⟨0, -1⟩

def cellA20B29 : CellData where
  inverse := 3970986674489528726
  bounds := fun _ => ⟨0, -1⟩

def cellA20B30 : CellData where
  inverse := 190235501597585231851
  bounds := fun _ => ⟨0, -1⟩

def cellA20B31 : CellData where
  inverse := 2984203225444020778726
  bounds := fun _ => ⟨0, -1⟩

def cellA20B32 : CellData where
  inverse := 16954041844676198513101
  bounds := fun _ => ⟨0, -1⟩

def cellA20B33 : CellData where
  inverse := 40237106210063161403726
  bounds := fun _ => ⟨0, -1⟩

def cellA20B34 : CellData where
  inverse := 40237106210063161403726
  bounds := fun _ => ⟨0, -1⟩

def cellA20B35 : CellData where
  inverse := 40237106210063161403726
  bounds := fun _ => ⟨0, -1⟩

def cellA20B36 : CellData where
  inverse := 40237106210063161403726
  bounds := fun _ => ⟨0, -1⟩

def cellA20B37 : CellData where
  inverse := 29144067562943766774684976
  bounds := fun _ => ⟨0, -1⟩

def cellA20B38 : CellData where
  inverse := 174663219846612284841091226
  bounds := fun _ => ⟨0, -1⟩

def cellA20B39 : CellData where
  inverse := 1629854742683297465505153726
  bounds := fun _ => ⟨0, -1⟩

def cellA20B40 : CellData where
  inverse := 5267833549775010417165309976
  bounds := fun _ => ⟨0, -1⟩

def cellA20B41 : CellData where
  inverse := 41647621620692139933766872476
  bounds := fun _ => ⟨0, -1⟩

def cellA20B42 : CellData where
  inverse := 223546561975277787516774684976
  bounds := fun _ => ⟨0, -1⟩

def cellA20B43 : CellData where
  inverse := 678293912861741906474294216226
  bounds := fun _ => ⟨0, -1⟩

def cellA20B44 : CellData where
  inverse := 2952030667294062501261891872476
  bounds := fun _ => ⟨0, -1⟩

def cellA20B45 : CellData where
  inverse := 25689398211617268449137868434976
  bounds := fun _ => ⟨0, -1⟩

def cellA20B46 : CellData where
  inverse := 110954526502829290753672780544351
  bounds := fun _ => ⟨0, -1⟩

def cellA21B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA21B2 : CellData where
  inverse := 17
  bounds := fun _ => ⟨0, -1⟩

def cellA21B3 : CellData where
  inverse := 117
  bounds := fun _ => ⟨0, -1⟩

def cellA21B4 : CellData where
  inverse := 617
  bounds := fun _ => ⟨0, -1⟩

def cellA21B5 : CellData where
  inverse := 1242
  bounds := fun _ => ⟨0, -1⟩

def cellA21B6 : CellData where
  inverse := 4367
  bounds := fun _ => ⟨0, -1⟩

def cellA21B7 : CellData where
  inverse := 51242
  bounds := fun _ => ⟨0, -1⟩

def cellA21B8 : CellData where
  inverse := 285617
  bounds := fun _ => ⟨0, -1⟩

def cellA21B9 : CellData where
  inverse := 1066867
  bounds := fun _ => ⟨0, -1⟩

def cellA21B10 : CellData where
  inverse := 8879367
  bounds := fun _ => ⟨0, -1⟩

def cellA21B11 : CellData where
  inverse := 8879367
  bounds := fun _ => ⟨0, -1⟩

def cellA21B12 : CellData where
  inverse := 57707492
  bounds := fun _ => ⟨0, -1⟩

def cellA21B13 : CellData where
  inverse := 301848117
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA21B14 : CellData where
  inverse := 1522551242
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA21B15 : CellData where
  inverse := 13729582492
  bounds := fun _ => ⟨0, -1⟩

def cellA21B16 : CellData where
  inverse := 13729582492
  bounds := fun _ => ⟨0, -1⟩

def cellA21B17 : CellData where
  inverse := 166317473117
  bounds := fun _ => ⟨0, -1⟩

def cellA21B18 : CellData where
  inverse := 1692196379367
  bounds := fun _ => ⟨0, -1⟩

def cellA21B19 : CellData where
  inverse := 13136288176242
  bounds := fun _ => ⟨0, -1⟩

def cellA21B20 : CellData where
  inverse := 89430233488742
  bounds := fun _ => ⟨0, -1⟩

def cellA21B21 : CellData where
  inverse := 280165096769992
  bounds := fun _ => ⟨0, -1⟩

def cellA21B22 : CellData where
  inverse := 1233839413176242
  bounds := fun _ => ⟨0, -1⟩

def cellA21B23 : CellData where
  inverse := 8386396786223117
  bounds := fun _ => ⟨0, -1⟩

def cellA21B24 : CellData where
  inverse := 32228254696379367
  bounds := fun _ => ⟨0, -1⟩

def cellA21B25 : CellData where
  inverse := 32228254696379367
  bounds := fun _ => ⟨0, -1⟩

def cellA21B26 : CellData where
  inverse := 330251478573332492
  bounds := fun _ => ⟨0, -1⟩

def cellA21B27 : CellData where
  inverse := 6290715956112394992
  bounds := fun _ => ⟨0, -1⟩

def cellA21B28 : CellData where
  inverse := 13741296553036223117
  bounds := fun _ => ⟨0, -1⟩

def cellA21B29 : CellData where
  inverse := 125500005506893644992
  bounds := fun _ => ⟨0, -1⟩

def cellA21B30 : CellData where
  inverse := 684293550276180754367
  bounds := fun _ => ⟨0, -1⟩

def cellA21B31 : CellData where
  inverse := 2546938699507137785617
  bounds := fun _ => ⟨0, -1⟩

def cellA21B32 : CellData where
  inverse := 21173390191816708098117
  bounds := fun _ => ⟨0, -1⟩

def cellA21B33 : CellData where
  inverse := 91022583287977596769992
  bounds := fun _ => ⟨0, -1⟩

def cellA21B34 : CellData where
  inverse := 207437905114912411223117
  bounds := fun _ => ⟨0, -1⟩

def cellA21B35 : CellData where
  inverse := 1953667732518934628019992
  bounds := fun _ => ⟨0, -1⟩

def cellA21B36 : CellData where
  inverse := 4864050778192304989348117
  bounds := fun _ => ⟨0, -1⟩

def cellA21B37 : CellData where
  inverse := 33967881234926008602629367
  bounds := fun _ => ⟨0, -1⟩

def cellA21B38 : CellData where
  inverse := 179487033518594526669035617
  bounds := fun _ => ⟨0, -1⟩

def cellA21B39 : CellData where
  inverse := 543284914227765821835051242
  bounds := fun _ => ⟨0, -1⟩

def cellA21B40 : CellData where
  inverse := 7819242528411191725155363742
  bounds := fun _ => ⟨0, -1⟩

def cellA21B41 : CellData where
  inverse := 44199030599328321241756926242
  bounds := fun _ => ⟨0, -1⟩

def cellA21B42 : CellData where
  inverse := 226097970953913968824764738742
  bounds := fun _ => ⟨0, -1⟩

def cellA21B43 : CellData where
  inverse := 226097970953913968824764738742
  bounds := fun _ => ⟨0, -1⟩

def cellA21B44 : CellData where
  inverse := 4773571479818555158399960051242
  bounds := fun _ => ⟨0, -1⟩

def cellA21B45 : CellData where
  inverse := 27510939024141761106275936613742
  bounds := fun _ => ⟨0, -1⟩

def cellA21B46 : CellData where
  inverse := 84354357884949775975965878019992
  bounds := fun _ => ⟨0, -1⟩

def cellA22B1 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, -1⟩

def cellA22B2 : CellData where
  inverse := 14
  bounds := fun _ => ⟨0, -1⟩

def cellA22B3 : CellData where
  inverse := 39
  bounds := fun _ => ⟨0, -1⟩

def cellA22B4 : CellData where
  inverse := 414
  bounds := fun _ => ⟨0, -1⟩

def cellA22B5 : CellData where
  inverse := 414
  bounds := fun _ => ⟨0, -1⟩

def cellA22B6 : CellData where
  inverse := 6664
  bounds := fun _ => ⟨0, -1⟩

def cellA22B7 : CellData where
  inverse := 69164
  bounds := fun _ => ⟨0, -1⟩

def cellA22B8 : CellData where
  inverse := 225414
  bounds := fun _ => ⟨0, -1⟩

def cellA22B9 : CellData where
  inverse := 1006664
  bounds := fun _ => ⟨0, -1⟩

def cellA22B10 : CellData where
  inverse := 2959789
  bounds := fun _ => ⟨0, -1⟩

def cellA22B11 : CellData where
  inverse := 2959789
  bounds := fun _ => ⟨0, -1⟩

def cellA22B12 : CellData where
  inverse := 100616039
  bounds := fun _ => ⟨0, -1⟩

def cellA22B13 : CellData where
  inverse := 100616039
  bounds := fun _ => ⟨0, -1⟩

def cellA22B14 : CellData where
  inverse := 2542022289
  bounds := fun _ => ⟨0, -1⟩

def cellA22B15 : CellData where
  inverse := 14749053539
  bounds := fun _ => ⟨0, -1⟩

def cellA22B16 : CellData where
  inverse := 106301787914
  bounds := fun _ => ⟨0, -1⟩

def cellA22B17 : CellData where
  inverse := 564065459789
  bounds := fun _ => ⟨0, -1⟩

def cellA22B18 : CellData where
  inverse := 564065459789
  bounds := fun _ => ⟨0, -1⟩

def cellA22B19 : CellData where
  inverse := 4378762725414
  bounds := fun _ => ⟨0, -1⟩

def cellA22B20 : CellData where
  inverse := 61599221709789
  bounds := fun _ => ⟨0, -1⟩

def cellA22B21 : CellData where
  inverse := 252334084991039
  bounds := fun _ => ⟨0, -1⟩

def cellA22B22 : CellData where
  inverse := 1206008401397289
  bounds := fun _ => ⟨0, -1⟩

def cellA22B23 : CellData where
  inverse := 10742751565459789
  bounds := fun _ => ⟨0, -1⟩

def cellA22B24 : CellData where
  inverse := 10742751565459789
  bounds := fun _ => ⟨0, -1⟩

def cellA22B25 : CellData where
  inverse := 10742751565459789
  bounds := fun _ => ⟨0, -1⟩

def cellA22B26 : CellData where
  inverse := 606789199319366039
  bounds := fun _ => ⟨0, -1⟩

def cellA22B27 : CellData where
  inverse := 2096905318704131664
  bounds := fun _ => ⟨0, -1⟩

def cellA22B28 : CellData where
  inverse := 16998066512551787914
  bounds := fun _ => ⟨0, -1⟩

def cellA22B29 : CellData where
  inverse := 166009678451028350414
  bounds := fun _ => ⟨0, -1⟩

def cellA22B30 : CellData where
  inverse := 538538708297219756664
  bounds := fun _ => ⟨0, -1⟩

def cellA22B31 : CellData where
  inverse := 2401183857528176787914
  bounds := fun _ => ⟨0, -1⟩

def cellA22B32 : CellData where
  inverse := 7057796730605569366039
  bounds := fun _ => ⟨0, -1⟩

def cellA22B33 : CellData where
  inverse := 30340861095992532256664
  bounds := fun _ => ⟨0, -1⟩

def cellA22B34 : CellData where
  inverse := 263171504749862161162914
  bounds := fun _ => ⟨0, -1⟩

def cellA22B35 : CellData where
  inverse := 2591477941288558450225414
  bounds := fun _ => ⟨0, -1⟩

def cellA22B36 : CellData where
  inverse := 11322627078308669534209789
  bounds := fun _ => ⟨0, -1⟩

def cellA22B37 : CellData where
  inverse := 11322627078308669534209789
  bounds := fun _ => ⟨0, -1⟩

def cellA22B38 : CellData where
  inverse := 302360931645645705667022289
  bounds := fun _ => ⟨0, -1⟩

def cellA22B39 : CellData where
  inverse := 1393754573773159591165069164
  bounds := fun _ => ⟨0, -1⟩

def cellA22B40 : CellData where
  inverse := 8669712187956585494485381664
  bounds := fun _ => ⟨0, -1⟩

def cellA22B41 : CellData where
  inverse := 45049500258873715011086944164
  bounds := fun _ => ⟨0, -1⟩

def cellA22B42 : CellData where
  inverse := 226948440613459362594094756664
  bounds := fun _ => ⟨0, -1⟩

def cellA22B43 : CellData where
  inverse := 454322116056691422072854522289
  bounds := fun _ => ⟨0, -1⟩

def cellA22B44 : CellData where
  inverse := 1591190493272851719466653350414
  bounds := fun _ => ⟨0, -1⟩

def cellA22B45 : CellData where
  inverse := 18644216151515256180373635772289
  bounds := fun _ => ⟨0, -1⟩

def cellA22B46 : CellData where
  inverse := 75487635012323271050063577178539
  bounds := fun _ => ⟨0, -1⟩

def cellA23B1 : CellData where
  inverse := 3
  bounds := fun _ => ⟨0, -1⟩

def cellA23B2 : CellData where
  inverse := 13
  bounds := fun _ => ⟨0, -1⟩

def cellA23B3 : CellData where
  inverse := 13
  bounds := fun _ => ⟨0, -1⟩

def cellA23B4 : CellData where
  inverse := 138
  bounds := fun _ => ⟨0, -1⟩

def cellA23B5 : CellData where
  inverse := 138
  bounds := fun _ => ⟨0, -1⟩

def cellA23B6 : CellData where
  inverse := 12638
  bounds := fun _ => ⟨0, -1⟩

def cellA23B7 : CellData where
  inverse := 75138
  bounds := fun _ => ⟨0, -1⟩

def cellA23B8 : CellData where
  inverse := 75138
  bounds := fun _ => ⟨0, -1⟩

def cellA23B9 : CellData where
  inverse := 1637638
  bounds := fun _ => ⟨0, -1⟩

def cellA23B10 : CellData where
  inverse := 7497013
  bounds := fun _ => ⟨0, -1⟩

def cellA23B11 : CellData where
  inverse := 17262638
  bounds := fun _ => ⟨0, -1⟩

def cellA23B12 : CellData where
  inverse := 114918888
  bounds := fun _ => ⟨0, -1⟩

def cellA23B13 : CellData where
  inverse := 847340763
  bounds := fun _ => ⟨0, -1⟩

def cellA23B14 : CellData where
  inverse := 847340763
  bounds := fun _ => ⟨0, -1⟩

def cellA23B15 : CellData where
  inverse := 25261403263
  bounds := fun _ => ⟨0, -1⟩

def cellA23B16 : CellData where
  inverse := 86296559513
  bounds := fun _ => ⟨0, -1⟩

def cellA23B17 : CellData where
  inverse := 696648122013
  bounds := fun _ => ⟨0, -1⟩

def cellA23B18 : CellData where
  inverse := 1459587575138
  bounds := fun _ => ⟨0, -1⟩

def cellA23B19 : CellData where
  inverse := 1459587575138
  bounds := fun _ => ⟨0, -1⟩

def cellA23B20 : CellData where
  inverse := 20533073903263
  bounds := fun _ => ⟨0, -1⟩

def cellA23B21 : CellData where
  inverse := 402002800465763
  bounds := fun _ => ⟨0, -1⟩

def cellA23B22 : CellData where
  inverse := 402002800465763
  bounds := fun _ => ⟨0, -1⟩

def cellA23B23 : CellData where
  inverse := 7554560173512638
  bounds := fun _ => ⟨0, -1⟩

def cellA23B24 : CellData where
  inverse := 43317347038747013
  bounds := fun _ => ⟨0, -1⟩

def cellA23B25 : CellData where
  inverse := 102921991814137638
  bounds := fun _ => ⟨0, -1⟩

def cellA23B26 : CellData where
  inverse := 698968439568043888
  bounds := fun _ => ⟨0, -1⟩

def cellA23B27 : CellData where
  inverse := 698968439568043888
  bounds := fun _ => ⟨0, -1⟩

def cellA23B28 : CellData where
  inverse := 30501290827263356388
  bounds := fun _ => ⟨0, -1⟩

def cellA23B29 : CellData where
  inverse := 179512902765739918888
  bounds := fun _ => ⟨0, -1⟩

def cellA23B30 : CellData where
  inverse := 179512902765739918888
  bounds := fun _ => ⟨0, -1⟩

def cellA23B31 : CellData where
  inverse := 3904803201227653981388
  bounds := fun _ => ⟨0, -1⟩

def cellA23B32 : CellData where
  inverse := 17874641820459831715763
  bounds := fun _ => ⟨0, -1⟩

def cellA23B33 : CellData where
  inverse := 87723834916620720387638
  bounds := fun _ => ⟨0, -1⟩

def cellA23B34 : CellData where
  inverse := 87723834916620720387638
  bounds := fun _ => ⟨0, -1⟩

def cellA23B35 : CellData where
  inverse := 1833953662320642937184513
  bounds := fun _ => ⟨0, -1⟩

def cellA23B36 : CellData where
  inverse := 13475485845014124382497013
  bounds := fun _ => ⟨0, -1⟩

def cellA23B37 : CellData where
  inverse := 28027401073380976189137638
  bounds := fun _ => ⟨0, -1⟩

def cellA23B38 : CellData where
  inverse := 100786977215215235222340763
  bounds := fun _ => ⟨0, -1⟩

def cellA23B39 : CellData where
  inverse := 464584857924386530388356388
  bounds := fun _ => ⟨0, -1⟩

def cellA23B40 : CellData where
  inverse := 5921553068561955957878590763
  bounds := fun _ => ⟨0, -1⟩

def cellA23B41 : CellData where
  inverse := 15016500086291238337028981388
  bounds := fun _ => ⟨0, -1⟩

def cellA23B42 : CellData where
  inverse := 151440705352230474024284840763
  bounds := fun _ => ⟨0, -1⟩

def cellA23B43 : CellData where
  inverse := 151440705352230474024284840763
  bounds := fun _ => ⟨0, -1⟩

def cellA23B44 : CellData where
  inverse := 2425177459784551068811882497013
  bounds := fun _ => ⟨0, -1⟩

def cellA23B45 : CellData where
  inverse := 25162545004107757016687859059513
  bounds := fun _ => ⟨0, -1⟩

def cellA23B46 : CellData where
  inverse := 25162545004107757016687859059513
  bounds := fun _ => ⟨0, -1⟩

def cellA24B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA24B2 : CellData where
  inverse := 21
  bounds := fun _ => ⟨0, -1⟩

def cellA24B3 : CellData where
  inverse := 46
  bounds := fun _ => ⟨0, -1⟩

def cellA24B4 : CellData where
  inverse := 46
  bounds := fun _ => ⟨0, -1⟩

def cellA24B5 : CellData where
  inverse := 46
  bounds := fun _ => ⟨0, -1⟩

def cellA24B6 : CellData where
  inverse := 9421
  bounds := fun _ => ⟨0, -1⟩

def cellA24B7 : CellData where
  inverse := 25046
  bounds := fun _ => ⟨0, -1⟩

def cellA24B8 : CellData where
  inverse := 25046
  bounds := fun _ => ⟨0, -1⟩

def cellA24B9 : CellData where
  inverse := 1196921
  bounds := fun _ => ⟨0, -1⟩

def cellA24B10 : CellData where
  inverse := 9009421
  bounds := fun _ => ⟨0, -1⟩

def cellA24B11 : CellData where
  inverse := 38306296
  bounds := fun _ => ⟨0, -1⟩

def cellA24B12 : CellData where
  inverse := 38306296
  bounds := fun _ => ⟨0, -1⟩

def cellA24B13 : CellData where
  inverse := 282446921
  bounds := fun _ => ⟨0, -1⟩

def cellA24B14 : CellData where
  inverse := 282446921
  bounds := fun _ => ⟨0, -1⟩

def cellA24B15 : CellData where
  inverse := 18592993796
  bounds := fun _ => ⟨0, -1⟩

def cellA24B16 : CellData where
  inverse := 79628150046
  bounds := fun _ => ⟨0, -1⟩

def cellA24B17 : CellData where
  inverse := 232216040671
  bounds := fun _ => ⟨0, -1⟩

def cellA24B18 : CellData where
  inverse := 1758094946921
  bounds := fun _ => ⟨0, -1⟩

def cellA24B19 : CellData where
  inverse := 13202186743796
  bounds := fun _ => ⟨0, -1⟩

def cellA24B20 : CellData where
  inverse := 70422645728171
  bounds := fun _ => ⟨0, -1⟩

def cellA24B21 : CellData where
  inverse := 451892372290671
  bounds := fun _ => ⟨0, -1⟩

def cellA24B22 : CellData where
  inverse := 928729530493796
  bounds := fun _ => ⟨0, -1⟩

def cellA24B23 : CellData where
  inverse := 10465472694556296
  bounds := fun _ => ⟨0, -1⟩

def cellA24B24 : CellData where
  inverse := 34307330604712546
  bounds := fun _ => ⟨0, -1⟩

def cellA24B25 : CellData where
  inverse := 34307330604712546
  bounds := fun _ => ⟨0, -1⟩

def cellA24B26 : CellData where
  inverse := 1226400226112525046
  bounds := fun _ => ⟨0, -1⟩

def cellA24B27 : CellData where
  inverse := 2716516345497290671
  bounds := fun _ => ⟨0, -1⟩

def cellA24B28 : CellData where
  inverse := 10167096942421118796
  bounds := fun _ => ⟨0, -1⟩

def cellA24B29 : CellData where
  inverse := 121925805896278540671
  bounds := fun _ => ⟨0, -1⟩

def cellA24B30 : CellData where
  inverse := 680719350665565650046
  bounds := fun _ => ⟨0, -1⟩

def cellA24B31 : CellData where
  inverse := 4406009649127479712546
  bounds := fun _ => ⟨0, -1⟩

def cellA24B32 : CellData where
  inverse := 13719235395282264868796
  bounds := fun _ => ⟨0, -1⟩

def cellA24B33 : CellData where
  inverse := 106851492856830116431296
  bounds := fun _ => ⟨0, -1⟩

def cellA24B34 : CellData where
  inverse := 223266814683764930884421
  bounds := fun _ => ⟨0, -1⟩

def cellA24B35 : CellData where
  inverse := 2551573251222461219946921
  bounds := fun _ => ⟨0, -1⟩

def cellA24B36 : CellData where
  inverse := 14193105433915942665259421
  bounds := fun _ => ⟨0, -1⟩

def cellA24B37 : CellData where
  inverse := 57848851119016498085181296
  bounds := fun _ => ⟨0, -1⟩

def cellA24B38 : CellData where
  inverse := 276127579544519275184790671
  bounds := fun _ => ⟨0, -1⟩

def cellA24B39 : CellData where
  inverse := 1367521221672033160682837546
  bounds := fun _ => ⟨0, -1⟩

def cellA24B40 : CellData where
  inverse := 5005500028763746112342993796
  bounds := fun _ => ⟨0, -1⟩

def cellA24B41 : CellData where
  inverse := 5005500028763746112342993796
  bounds := fun _ => ⟨0, -1⟩

def cellA24B42 : CellData where
  inverse := 50480235117410158008094946921
  bounds := fun _ => ⟨0, -1⟩

def cellA24B43 : CellData where
  inverse := 50480235117410158008094946921
  bounds := fun _ => ⟨0, -1⟩

def cellA24B44 : CellData where
  inverse := 4597953743982051347583290259421
  bounds := fun _ => ⟨0, -1⟩

def cellA24B45 : CellData where
  inverse := 27335321288305257295459266821921
  bounds := fun _ => ⟨0, -1⟩

def cellA24B46 : CellData where
  inverse := 55757030718709264730304237525046
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
  else if b = 39 then cellA17B39
  else if b = 40 then cellA17B40
  else if b = 41 then cellA17B41
  else if b = 42 then cellA17B42
  else if b = 43 then cellA17B43
  else if b = 44 then cellA17B44
  else if b = 45 then cellA17B45
  else if b = 46 then cellA17B46
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
  else if b = 39 then cellA18B39
  else if b = 40 then cellA18B40
  else if b = 41 then cellA18B41
  else if b = 42 then cellA18B42
  else if b = 43 then cellA18B43
  else if b = 44 then cellA18B44
  else if b = 45 then cellA18B45
  else if b = 46 then cellA18B46
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
  else if b = 39 then cellA19B39
  else if b = 40 then cellA19B40
  else if b = 41 then cellA19B41
  else if b = 42 then cellA19B42
  else if b = 43 then cellA19B43
  else if b = 44 then cellA19B44
  else if b = 45 then cellA19B45
  else if b = 46 then cellA19B46
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
  else if b = 39 then cellA20B39
  else if b = 40 then cellA20B40
  else if b = 41 then cellA20B41
  else if b = 42 then cellA20B42
  else if b = 43 then cellA20B43
  else if b = 44 then cellA20B44
  else if b = 45 then cellA20B45
  else if b = 46 then cellA20B46
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
  else if b = 39 then cellA21B39
  else if b = 40 then cellA21B40
  else if b = 41 then cellA21B41
  else if b = 42 then cellA21B42
  else if b = 43 then cellA21B43
  else if b = 44 then cellA21B44
  else if b = 45 then cellA21B45
  else if b = 46 then cellA21B46
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
  else if b = 39 then cellA22B39
  else if b = 40 then cellA22B40
  else if b = 41 then cellA22B41
  else if b = 42 then cellA22B42
  else if b = 43 then cellA22B43
  else if b = 44 then cellA22B44
  else if b = 45 then cellA22B45
  else if b = 46 then cellA22B46
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
  else if b = 39 then cellA23B39
  else if b = 40 then cellA23B40
  else if b = 41 then cellA23B41
  else if b = 42 then cellA23B42
  else if b = 43 then cellA23B43
  else if b = 44 then cellA23B44
  else if b = 45 then cellA23B45
  else if b = 46 then cellA23B46
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
  else if b = 39 then cellA24B39
  else if b = 40 then cellA24B40
  else if b = 41 then cellA24B41
  else if b = 42 then cellA24B42
  else if b = 43 then cellA24B43
  else if b = 44 then cellA24B44
  else if b = 45 then cellA24B45
  else if b = 46 then cellA24B46
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

end Math.B699.CRTStage0Pair35.Chunk002
