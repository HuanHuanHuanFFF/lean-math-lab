import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage0Pair57.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 16957574⟩
    else if d = (-5 : ℤ) then ⟨0, 16957574⟩
    else if d = (0 : ℤ) then ⟨0, 16957574⟩
    else if d = (2 : ℤ) then ⟨0, 16957574⟩
    else if d = (5 : ℤ) then ⟨1, 16957575⟩
    else if d = (7 : ℤ) then ⟨0, 16957574⟩
    else if d = (9 : ℤ) then ⟨0, 16957574⟩
    else if d = (10 : ℤ) then ⟨1, 16957575⟩
    else ⟨0, 16957575⟩

def cellA1B2 : CellData where
  inverse := 10
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2422509⟩
    else if d = (-5 : ℤ) then ⟨0, 2422509⟩
    else if d = (0 : ℤ) then ⟨0, 2422509⟩
    else if d = (5 : ℤ) then ⟨1, 2422510⟩
    else if d = (9 : ℤ) then ⟨0, 2422509⟩
    else if d = (10 : ℤ) then ⟨1, 2422510⟩
    else ⟨0, 2422510⟩

def cellA1B3 : CellData where
  inverse := 206
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 346071⟩
    else if d = (-5 : ℤ) then ⟨0, 346071⟩
    else if d = (0 : ℤ) then ⟨0, 346071⟩
    else if d = (5 : ℤ) then ⟨1, 346072⟩
    else if d = (10 : ℤ) then ⟨1, 346072⟩
    else ⟨0, 346072⟩

def cellA1B4 : CellData where
  inverse := 1921
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 49437⟩
    else if d = (-5 : ℤ) then ⟨0, 49437⟩
    else if d = (0 : ℤ) then ⟨0, 49437⟩
    else if d = (5 : ℤ) then ⟨1, 49438⟩
    else if d = (10 : ℤ) then ⟨1, 49438⟩
    else ⟨0, 49438⟩

def cellA1B5 : CellData where
  inverse := 6723
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 7061⟩
    else if d = (-8 : ℤ) then ⟨0, 7061⟩
    else if d = (-5 : ℤ) then ⟨0, 7061⟩
    else if d = (-3 : ℤ) then ⟨0, 7061⟩
    else if d = (0 : ℤ) then ⟨0, 7061⟩
    else if d = (2 : ℤ) then ⟨0, 7061⟩
    else if d = (5 : ℤ) then ⟨1, 7062⟩
    else if d = (7 : ℤ) then ⟨0, 7061⟩
    else if d = (10 : ℤ) then ⟨1, 7062⟩
    else ⟨0, 7062⟩

def cellA1B6 : CellData where
  inverse := 23530
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1007⟩
    else if d = (-5 : ℤ) then ⟨0, 1007⟩
    else if d = (0 : ℤ) then ⟨0, 1007⟩
    else if d = (5 : ℤ) then ⟨1, 1008⟩
    else if d = (10 : ℤ) then ⟨1, 1008⟩
    else ⟨0, 1008⟩

def cellA1B7 : CellData where
  inverse := 494126
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 144⟩
    else if d = (10 : ℤ) then ⟨1, 144⟩
    else ⟨0, 143⟩

def cellA1B8 : CellData where
  inverse := 4611841
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 20⟩
    else if d = (-6 : ℤ) then ⟨0, 20⟩
    else if d = (-2 : ℤ) then ⟨0, 20⟩
    else if d = (-1 : ℤ) then ⟨0, 20⟩
    else if d = (3 : ℤ) then ⟨0, 20⟩
    else if d = (4 : ℤ) then ⟨0, 20⟩
    else if d = (5 : ℤ) then ⟨1, 20⟩
    else if d = (8 : ℤ) then ⟨0, 20⟩
    else if d = (9 : ℤ) then ⟨0, 20⟩
    else if d = (10 : ℤ) then ⟨1, 20⟩
    else ⟨0, 19⟩

def cellA1B9 : CellData where
  inverse := 16141443
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨1, 2⟩
    else if d = (10 : ℤ) then ⟨1, 2⟩
    else ⟨0, 2⟩

def cellA1B10 : CellData where
  inverse := 56495050
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B11 : CellData where
  inverse := 1186396046
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B12 : CellData where
  inverse := 11073029761
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B13 : CellData where
  inverse := 38755604163
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B14 : CellData where
  inverse := 135644614570
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B15 : CellData where
  inverse := 2848536905966
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B16 : CellData where
  inverse := 26586344455681
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B17 : CellData where
  inverse := 93052205594883
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B18 : CellData where
  inverse := 325682719582090
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B19 : CellData where
  inverse := 6839337111223886
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B20 : CellData where
  inverse := 63833813038089601
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B21 : CellData where
  inverse := 223418345633313603
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B22 : CellData where
  inverse := 781964209716597610
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B23 : CellData where
  inverse := 16421248404048549806
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B24 : CellData where
  inverse := 153264985104453131521
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B25 : CellData where
  inverse := 536427447865585960323
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B26 : CellData where
  inverse := 1877496067529550861130
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B27 : CellData where
  inverse := 39427417418120568083726
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B28 : CellData where
  inverse := 367989229235791968781441
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B29 : CellData where
  inverse := 1287962302325271890735043
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B30 : CellData where
  inverse := 4507868058138451617572650
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B31 : CellData where
  inverse := 94665229220907483969025646
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B32 : CellData where
  inverse := 883542139395136517044239361
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B33 : CellData where
  inverse := 3092397487882977809654837763
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B34 : CellData where
  inverse := 10823391207590422333791932170
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B35 : CellData where
  inverse := 227291215359398869009630575566
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B36 : CellData where
  inverse := 2121384676687722777423218705281
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B37 : CellData where
  inverse := 7424846368407029720981265468483
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B38 : CellData where
  inverse := 25986962289424604023434429139690
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4748121⟩
    else if d = (-3 : ℤ) then ⟨0, 4748121⟩
    else if d = (4 : ℤ) then ⟨0, 4748121⟩
    else ⟨0, 4748120⟩

def cellA2B2 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 2422509⟩
    else if d = (-3 : ℤ) then ⟨0, 2422509⟩
    else if d = (-2 : ℤ) then ⟨0, 2422509⟩
    else if d = (-1 : ℤ) then ⟨0, 2422509⟩
    else if d = (0 : ℤ) then ⟨0, 2422509⟩
    else ⟨0, 2422510⟩

def cellA2B3 : CellData where
  inverse := 247
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 346071⟩
    else ⟨0, 346072⟩

def cellA2B4 : CellData where
  inverse := 2305
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 49437⟩
    else ⟨0, 49438⟩

def cellA2B5 : CellData where
  inverse := 4706
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 7061⟩
    else if d = (-4 : ℤ) then ⟨0, 7061⟩
    else if d = (-1 : ℤ) then ⟨0, 7061⟩
    else if d = (0 : ℤ) then ⟨0, 7061⟩
    else if d = (3 : ℤ) then ⟨0, 7061⟩
    else if d = (7 : ℤ) then ⟨0, 7061⟩
    else if d = (10 : ℤ) then ⟨0, 7061⟩
    else ⟨0, 7062⟩

def cellA2B6 : CellData where
  inverse := 4706
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 1007⟩
    else if d = (0 : ℤ) then ⟨0, 1007⟩
    else ⟨0, 1008⟩

def cellA2B7 : CellData where
  inverse := 592951
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 144⟩
    else if d = (7 : ℤ) then ⟨0, 144⟩
    else ⟨0, 143⟩

def cellA2B8 : CellData where
  inverse := 5534209
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

def cellA2B9 : CellData where
  inverse := 11299010
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA2B10 : CellData where
  inverse := 11299010
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

def cellA2B11 : CellData where
  inverse := 1423675255
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA2B12 : CellData where
  inverse := 13287635713
  bounds := fun _ => ⟨0, -1⟩

def cellA2B13 : CellData where
  inverse := 27128922914
  bounds := fun _ => ⟨0, -1⟩

def cellA2B14 : CellData where
  inverse := 27128922914
  bounds := fun _ => ⟨0, -1⟩

def cellA2B15 : CellData where
  inverse := 3418244287159
  bounds := fun _ => ⟨0, -1⟩

def cellA2B16 : CellData where
  inverse := 31903613346817
  bounds := fun _ => ⟨0, -1⟩

def cellA2B17 : CellData where
  inverse := 65136543916418
  bounds := fun _ => ⟨0, -1⟩

def cellA2B18 : CellData where
  inverse := 65136543916418
  bounds := fun _ => ⟨0, -1⟩

def cellA2B19 : CellData where
  inverse := 8207204533468663
  bounds := fun _ => ⟨0, -1⟩

def cellA2B20 : CellData where
  inverse := 76600575645707521
  bounds := fun _ => ⟨0, -1⟩

def cellA2B21 : CellData where
  inverse := 156392841943319522
  bounds := fun _ => ⟨0, -1⟩

def cellA2B22 : CellData where
  inverse := 156392841943319522
  bounds := fun _ => ⟨0, -1⟩

def cellA2B23 : CellData where
  inverse := 19705498084858259767
  bounds := fun _ => ⟨0, -1⟩

def cellA2B24 : CellData where
  inverse := 183917982125343757825
  bounds := fun _ => ⟨0, -1⟩

def cellA2B25 : CellData where
  inverse := 375499213505910172226
  bounds := fun _ => ⟨0, -1⟩

def cellA2B26 : CellData where
  inverse := 375499213505910172226
  bounds := fun _ => ⟨0, -1⟩

def cellA2B27 : CellData where
  inverse := 47312900901744681700471
  bounds := fun _ => ⟨0, -1⟩

def cellA2B28 : CellData where
  inverse := 441587075082950362537729
  bounds := fun _ => ⟨0, -1⟩

def cellA2B29 : CellData where
  inverse := 901573611627690323514530
  bounds := fun _ => ⟨0, -1⟩

def cellA2B30 : CellData where
  inverse := 901573611627690323514530
  bounds := fun _ => ⟨0, -1⟩

def cellA2B31 : CellData where
  inverse := 113598275065088980762830775
  bounds := fun _ => ⟨0, -1⟩

def cellA2B32 : CellData where
  inverse := 1060250567274163820453087233
  bounds := fun _ => ⟨0, -1⟩

def cellA2B33 : CellData where
  inverse := 2164678241518084466758386434
  bounds := fun _ => ⟨0, -1⟩

def cellA2B34 : CellData where
  inverse := 2164678241518084466758386434
  bounds := fun _ => ⟨0, -1⟩

def cellA2B35 : CellData where
  inverse := 272749458431278642811556690679
  bounds := fun _ => ⟨0, -1⟩

def cellA2B36 : CellData where
  inverse := 2545661612025267332907862446337
  bounds := fun _ => ⟨0, -1⟩

def cellA2B37 : CellData where
  inverse := 5197392457884920804686885827938
  bounds := fun _ => ⟨0, -1⟩

def cellA2B38 : CellData where
  inverse := 5197392457884920804686885827938
  bounds := fun _ => ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 6
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 949624⟩
    else if d = (-1 : ℤ) then ⟨0, 949624⟩
    else if d = (6 : ℤ) then ⟨0, 949624⟩
    else ⟨0, 949623⟩

def cellA3B2 : CellData where
  inverse := 20
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 949624⟩
    else if d = (-2 : ℤ) then ⟨0, 949624⟩
    else if d = (3 : ℤ) then ⟨0, 949624⟩
    else if d = (5 : ℤ) then ⟨0, 949624⟩
    else if d = (10 : ℤ) then ⟨0, 949624⟩
    else ⟨0, 949623⟩

def cellA3B3 : CellData where
  inverse := 118
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 346071⟩
    else ⟨0, 346072⟩

def cellA3B4 : CellData where
  inverse := 461
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 49437⟩
    else ⟨0, 49438⟩

def cellA3B5 : CellData where
  inverse := 7664
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 7061⟩
    else if d = (-7 : ℤ) then ⟨0, 7061⟩
    else if d = (-5 : ℤ) then ⟨0, 7061⟩
    else if d = (0 : ℤ) then ⟨0, 7061⟩
    else if d = (2 : ℤ) then ⟨0, 7061⟩
    else if d = (4 : ℤ) then ⟨0, 7061⟩
    else if d = (6 : ℤ) then ⟨0, 7061⟩
    else ⟨0, 7062⟩

def cellA3B6 : CellData where
  inverse := 24471
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 1007⟩
    else if d = (0 : ℤ) then ⟨0, 1007⟩
    else ⟨0, 1008⟩

def cellA3B7 : CellData where
  inverse := 612716
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 144⟩
    else if d = (-4 : ℤ) then ⟨0, 144⟩
    else ⟨0, 143⟩

def cellA3B8 : CellData where
  inverse := 2259802
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 19⟩
    else if d = (-6 : ℤ) then ⟨0, 19⟩
    else if d = (-3 : ℤ) then ⟨0, 19⟩
    else if d = (-1 : ℤ) then ⟨0, 19⟩
    else if d = (0 : ℤ) then ⟨0, 19⟩
    else if d = (2 : ℤ) then ⟨0, 19⟩
    else if d = (5 : ℤ) then ⟨0, 19⟩
    else if d = (7 : ℤ) then ⟨0, 19⟩
    else if d = (10 : ℤ) then ⟨0, 19⟩
    else ⟨0, 20⟩

def cellA3B9 : CellData where
  inverse := 2259802
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA3B10 : CellData where
  inverse := 2259802
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

def cellA3B11 : CellData where
  inverse := 284735051
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA3B12 : CellData where
  inverse := 8194042023
  bounds := fun _ => ⟨0, -1⟩

def cellA3B13 : CellData where
  inverse := 63559190827
  bounds := fun _ => ⟨0, -1⟩

def cellA3B14 : CellData where
  inverse := 548004242862
  bounds := fun _ => ⟨0, -1⟩

def cellA3B15 : CellData where
  inverse := 2582673461409
  bounds := fun _ => ⟨0, -1⟩

def cellA3B16 : CellData where
  inverse := 26320481011124
  bounds := fun _ => ⟨0, -1⟩

def cellA3B17 : CellData where
  inverse := 59553411580725
  bounds := fun _ => ⟨0, -1⟩

def cellA3B18 : CellData where
  inverse := 990075467529553
  bounds := fun _ => ⟨0, -1⟩

def cellA3B19 : CellData where
  inverse := 10760557054992247
  bounds := fun _ => ⟨0, -1⟩

def cellA3B20 : CellData where
  inverse := 79153928167231105
  bounds := fun _ => ⟨0, -1⟩

def cellA3B21 : CellData where
  inverse := 478115259655291110
  bounds := fun _ => ⟨0, -1⟩

def cellA3B22 : CellData where
  inverse := 1595206987821859124
  bounds := fun _ => ⟨0, -1⟩

def cellA3B23 : CellData where
  inverse := 9414849084987835222
  bounds := fun _ => ⟨0, -1⟩

def cellA3B24 : CellData where
  inverse := 36783596425068751565
  bounds := fun _ => ⟨0, -1⟩

def cellA3B25 : CellData where
  inverse := 611527290566767994768
  bounds := fun _ => ⟨0, -1⟩

def cellA3B26 : CellData where
  inverse := 1952595910230732895575
  bounds := fun _ => ⟨0, -1⟩

def cellA3B27 : CellData where
  inverse := 48889997598469504423820
  bounds := fun _ => ⟨0, -1⟩

def cellA3B28 : CellData where
  inverse := 180314722325538064702906
  bounds := fun _ => ⟨0, -1⟩

def cellA3B29 : CellData where
  inverse := 180314722325538064702906
  bounds := fun _ => ⟨0, -1⟩

def cellA3B30 : CellData where
  inverse := 180314722325538064702906
  bounds := fun _ => ⟨0, -1⟩

def cellA3B31 : CellData where
  inverse := 22719655013017796152566155
  bounds := fun _ => ⟨0, -1⟩

def cellA3B32 : CellData where
  inverse := 653821183152401022612737127
  bounds := fun _ => ⟨0, -1⟩

def cellA3B33 : CellData where
  inverse := 5071531880128083607833933931
  bounds := fun _ => ⟨0, -1⟩

def cellA3B34 : CellData where
  inverse := 43726500478665306228519405966
  bounds := fun _ => ⟨0, -1⟩

def cellA3B35 : CellData where
  inverse := 206077368592521641235398388513
  bounds := fun _ => ⟨0, -1⟩

def cellA3B36 : CellData where
  inverse := 2100170829920845549648986518228
  bounds := fun _ => ⟨0, -1⟩

def cellA3B37 : CellData where
  inverse := 4751901675780499021428009899829
  bounds := fun _ => ⟨0, -1⟩

def cellA3B38 : CellData where
  inverse := 79000365359850796231240664584657
  bounds := fun _ => ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 189923⟩
    else if d = (-7 : ℤ) then ⟨0, 189923⟩
    else if d = (-2 : ℤ) then ⟨0, 189923⟩
    else if d = (0 : ℤ) then ⟨0, 189923⟩
    else if d = (5 : ℤ) then ⟨0, 189923⟩
    else if d = (7 : ℤ) then ⟨0, 189923⟩
    else ⟨0, 189924⟩

def cellA4B2 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 189923⟩
    else if d = (0 : ℤ) then ⟨0, 189923⟩
    else ⟨0, 189924⟩

def cellA4B3 : CellData where
  inverse := 298
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 189923⟩
    else if d = (0 : ℤ) then ⟨0, 189923⟩
    else if d = (1 : ℤ) then ⟨0, 189923⟩
    else if d = (8 : ℤ) then ⟨0, 189923⟩
    else ⟨0, 189924⟩

def cellA4B4 : CellData where
  inverse := 2013
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 49437⟩
    else ⟨0, 49438⟩

def cellA4B5 : CellData where
  inverse := 11617
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 7061⟩
    else if d = (-6 : ℤ) then ⟨0, 7061⟩
    else if d = (-3 : ℤ) then ⟨0, 7061⟩
    else if d = (0 : ℤ) then ⟨0, 7061⟩
    else if d = (4 : ℤ) then ⟨0, 7061⟩
    else if d = (7 : ℤ) then ⟨0, 7061⟩
    else if d = (10 : ℤ) then ⟨0, 7061⟩
    else ⟨0, 7062⟩

def cellA4B6 : CellData where
  inverse := 28424
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1007⟩
    else if d = (4 : ℤ) then ⟨0, 1007⟩
    else ⟨0, 1008⟩

def cellA4B7 : CellData where
  inverse := 616669
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 144⟩
    else if d = (-4 : ℤ) then ⟨0, 144⟩
    else ⟨0, 143⟩

def cellA4B8 : CellData where
  inverse := 3910841
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 19⟩
    else if d = (-6 : ℤ) then ⟨0, 19⟩
    else if d = (-5 : ℤ) then ⟨0, 19⟩
    else if d = (-3 : ℤ) then ⟨0, 19⟩
    else if d = (-2 : ℤ) then ⟨0, 19⟩
    else if d = (0 : ℤ) then ⟨0, 19⟩
    else if d = (1 : ℤ) then ⟨0, 19⟩
    else if d = (4 : ℤ) then ⟨0, 19⟩
    else if d = (7 : ℤ) then ⟨0, 19⟩
    else if d = (10 : ℤ) then ⟨0, 19⟩
    else ⟨0, 20⟩

def cellA4B9 : CellData where
  inverse := 32734846
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA4B10 : CellData where
  inverse := 113442060
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

def cellA4B11 : CellData where
  inverse := 1243343056
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B12 : CellData where
  inverse := 7175323285
  bounds := fun _ => ⟨0, -1⟩

def cellA4B13 : CellData where
  inverse := 90223046491
  bounds := fun _ => ⟨0, -1⟩

def cellA4B14 : CellData where
  inverse := 380890077712
  bounds := fun _ => ⟨0, -1⟩

def cellA4B15 : CellData where
  inverse := 2415559296259
  bounds := fun _ => ⟨0, -1⟩

def cellA4B16 : CellData where
  inverse := 11910682316145
  bounds := fun _ => ⟨0, -1⟩

def cellA4B17 : CellData where
  inverse := 11910682316145
  bounds := fun _ => ⟨0, -1⟩

def cellA4B18 : CellData where
  inverse := 1175063252252180
  bounds := fun _ => ⟨0, -1⟩

def cellA4B19 : CellData where
  inverse := 4431890448073078
  bounds := fun _ => ⟨0, -1⟩

def cellA4B20 : CellData where
  inverse := 15830785633446221
  bounds := fun _ => ⟨0, -1⟩

def cellA4B21 : CellData where
  inverse := 95623051931058222
  bounds := fun _ => ⟨0, -1⟩

def cellA4B22 : CellData where
  inverse := 3446898236430762264
  bounds := fun _ => ⟨0, -1⟩

def cellA4B23 : CellData where
  inverse := 7356719285013750313
  bounds := fun _ => ⟨0, -1⟩

def cellA4B24 : CellData where
  inverse := 7356719285013750313
  bounds := fun _ => ⟨0, -1⟩

def cellA4B25 : CellData where
  inverse := 390519182046146579115
  bounds := fun _ => ⟨0, -1⟩

def cellA4B26 : CellData where
  inverse := 390519182046146579115
  bounds := fun _ => ⟨0, -1⟩

def cellA4B27 : CellData where
  inverse := 9777999519693900884764
  bounds := fun _ => ⟨0, -1⟩

def cellA4B28 : CellData where
  inverse := 404052173700899581722022
  bounds := fun _ => ⟨0, -1⟩

def cellA4B29 : CellData where
  inverse := 1324025246790379503675624
  bounds := fun _ => ⟨0, -1⟩

def cellA4B30 : CellData where
  inverse := 4543931002603559230513231
  bounds := fun _ => ⟨0, -1⟩

def cellA4B31 : CellData where
  inverse := 4543931002603559230513231
  bounds := fun _ => ⟨0, -1⟩

def cellA4B32 : CellData where
  inverse := 793420841176832592305726946
  bounds := fun _ => ⟨0, -1⟩

def cellA4B33 : CellData where
  inverse := 4106703863908594531221624549
  bounds := fun _ => ⟨0, -1⟩

def cellA4B34 : CellData where
  inverse := 19568691303323483579495813363
  bounds := fun _ => ⟨0, -1⟩

def cellA4B35 : CellData where
  inverse := 344270427531036153593253778457
  bounds := fun _ => ⟨0, -1⟩

def cellA4B36 : CellData where
  inverse := 1480726504328030498641406656286
  bounds := fun _ => ⟨0, -1⟩

def cellA4B37 : CellData where
  inverse := 12087649887766644385757500182690
  bounds := fun _ => ⟨0, -1⟩

def cellA4B38 : CellData where
  inverse := 67773997650819367293116991196311
  bounds := fun _ => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 5
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 37983⟩
    else if d = (0 : ℤ) then ⟨0, 37983⟩
    else if d = (7 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA5B2 : CellData where
  inverse := 40
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA5B3 : CellData where
  inverse := 334
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37983⟩
    else if d = (1 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA5B4 : CellData where
  inverse := 1363
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37983⟩
    else if d = (7 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA5B5 : CellData where
  inverse := 15769
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7061⟩
    else if d = (1 : ℤ) then ⟨0, 7061⟩
    else if d = (2 : ℤ) then ⟨0, 7061⟩
    else if d = (3 : ℤ) then ⟨0, 7061⟩
    else if d = (4 : ℤ) then ⟨0, 7061⟩
    else ⟨0, 7062⟩

def cellA5B6 : CellData where
  inverse := 99804
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1007⟩
    else ⟨0, 1008⟩

def cellA5B7 : CellData where
  inverse := 452751
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 144⟩
    else if d = (2 : ℤ) then ⟨0, 144⟩
    else ⟨0, 143⟩

def cellA5B8 : CellData where
  inverse := 5394009
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

def cellA5B9 : CellData where
  inverse := 22688412
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA5B10 : CellData where
  inverse := 22688412
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B11 : CellData where
  inverse := 1435064657
  bounds := fun _ => ⟨0, -1⟩

def cellA5B12 : CellData where
  inverse := 1435064657
  bounds := fun _ => ⟨0, -1⟩

def cellA5B13 : CellData where
  inverse := 56800213461
  bounds := fun _ => ⟨0, -1⟩

def cellA5B14 : CellData where
  inverse := 347467244682
  bounds := fun _ => ⟨0, -1⟩

def cellA5B15 : CellData where
  inverse := 2382136463229
  bounds := fun _ => ⟨0, -1⟩

def cellA5B16 : CellData where
  inverse := 2382136463229
  bounds := fun _ => ⟨0, -1⟩

def cellA5B17 : CellData where
  inverse := 2382136463229
  bounds := fun _ => ⟨0, -1⟩

def cellA5B18 : CellData where
  inverse := 235012650450436
  bounds := fun _ => ⟨0, -1⟩

def cellA5B19 : CellData where
  inverse := 10005494237913130
  bounds := fun _ => ⟨0, -1⟩

def cellA5B20 : CellData where
  inverse := 66999970164778845
  bounds := fun _ => ⟨0, -1⟩

def cellA5B21 : CellData where
  inverse := 465961301652838850
  bounds := fun _ => ⟨0, -1⟩

def cellA5B22 : CellData where
  inverse := 3817236486152542892
  bounds := fun _ => ⟨0, -1⟩

def cellA5B23 : CellData where
  inverse := 23366341729067483137
  bounds := fun _ => ⟨0, -1⟩

def cellA5B24 : CellData where
  inverse := 78103836409229315823
  bounds := fun _ => ⟨0, -1⟩

def cellA5B25 : CellData where
  inverse := 78103836409229315823
  bounds := fun _ => ⟨0, -1⟩

def cellA5B26 : CellData where
  inverse := 78103836409229315823
  bounds := fun _ => ⟨0, -1⟩

def cellA5B27 : CellData where
  inverse := 28240544849352492232770
  bounds := fun _ => ⟨0, -1⟩

def cellA5B28 : CellData where
  inverse := 356802356667023892930485
  bounds := fun _ => ⟨0, -1⟩

def cellA5B29 : CellData where
  inverse := 2196748502845983736837689
  bounds := fun _ => ⟨0, -1⟩

def cellA5B30 : CellData where
  inverse := 5416654258659163463675296
  bounds := fun _ => ⟨0, -1⟩

def cellA5B31 : CellData where
  inverse := 95574015421428195815128292
  bounds := fun _ => ⟨0, -1⟩

def cellA5B32 : CellData where
  inverse := 1042226307630503035505384750
  bounds := fun _ => ⟨0, -1⟩

def cellA5B33 : CellData where
  inverse := 5459937004606185620726581554
  bounds := fun _ => ⟨0, -1⟩

def cellA5B34 : CellData where
  inverse := 36383911883435963717274959182
  bounds := fun _ => ⟨0, -1⟩

def cellA5B35 : CellData where
  inverse := 144617823959340187055194280880
  bounds := fun _ => ⟨0, -1⟩

def cellA5B36 : CellData where
  inverse := 2417529977553328877151500036538
  bounds := fun _ => ⟨0, -1⟩

def cellA5B37 : CellData where
  inverse := 2417529977553328877151500036538
  bounds := fun _ => ⟨0, -1⟩

def cellA5B38 : CellData where
  inverse := 39541761819588477482057827378952
  bounds := fun _ => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 7595⟩
    else if d = (0 : ℤ) then ⟨0, 7595⟩
    else if d = (7 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA6B2 : CellData where
  inverse := 8
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA6B3 : CellData where
  inverse := 204
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA6B4 : CellData where
  inverse := 1233
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA6B5 : CellData where
  inverse := 13238
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 7061⟩
    else if d = (-4 : ℤ) then ⟨0, 7061⟩
    else if d = (0 : ℤ) then ⟨0, 7061⟩
    else if d = (1 : ℤ) then ⟨0, 7061⟩
    else if d = (5 : ℤ) then ⟨0, 7061⟩
    else if d = (6 : ℤ) then ⟨0, 7061⟩
    else if d = (10 : ℤ) then ⟨0, 7061⟩
    else ⟨0, 7062⟩

def cellA6B6 : CellData where
  inverse := 114080
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1007⟩
    else if d = (1 : ℤ) then ⟨0, 1007⟩
    else ⟨0, 1008⟩

def cellA6B7 : CellData where
  inverse := 584676
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 144⟩
    else if d = (3 : ℤ) then ⟨0, 144⟩
    else if d = (10 : ℤ) then ⟨0, 144⟩
    else ⟨0, 143⟩

def cellA6B8 : CellData where
  inverse := 2231762
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 19⟩
    else if d = (-6 : ℤ) then ⟨0, 19⟩
    else if d = (-3 : ℤ) then ⟨0, 19⟩
    else if d = (-1 : ℤ) then ⟨0, 19⟩
    else if d = (0 : ℤ) then ⟨0, 19⟩
    else if d = (2 : ℤ) then ⟨0, 19⟩
    else if d = (5 : ℤ) then ⟨0, 19⟩
    else if d = (7 : ℤ) then ⟨0, 19⟩
    else if d = (10 : ℤ) then ⟨0, 19⟩
    else ⟨0, 20⟩

def cellA6B9 : CellData where
  inverse := 36820568
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA6B10 : CellData where
  inverse := 117527782
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B11 : CellData where
  inverse := 682478280
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B12 : CellData where
  inverse := 8591785252
  bounds := fun _ => ⟨0, -1⟩

def cellA6B13 : CellData where
  inverse := 50115646855
  bounds := fun _ => ⟨0, -1⟩

def cellA6B14 : CellData where
  inverse := 340782678076
  bounds := fun _ => ⟨0, -1⟩

def cellA6B15 : CellData where
  inverse := 2375451896623
  bounds := fun _ => ⟨0, -1⟩

def cellA6B16 : CellData where
  inverse := 7123013406566
  bounds := fun _ => ⟨0, -1⟩

def cellA6B17 : CellData where
  inverse := 140054735684970
  bounds := fun _ => ⟨0, -1⟩

def cellA6B18 : CellData where
  inverse := 372685249672177
  bounds := fun _ => ⟨0, -1⟩

def cellA6B19 : CellData where
  inverse := 2001098847582626
  bounds := fun _ => ⟨0, -1⟩

def cellA6B20 : CellData where
  inverse := 13399994032955769
  bounds := fun _ => ⟨0, -1⟩

def cellA6B21 : CellData where
  inverse := 93192260330567770
  bounds := fun _ => ⟨0, -1⟩

def cellA6B22 : CellData where
  inverse := 2327375716663703798
  bounds := fun _ => ⟨0, -1⟩

def cellA6B23 : CellData where
  inverse := 10147017813829679896
  bounds := fun _ => ⟨0, -1⟩

def cellA6B24 : CellData where
  inverse := 92253259834072428925
  bounds := fun _ => ⟨0, -1⟩

def cellA6B25 : CellData where
  inverse := 283834491214638843326
  bounds := fun _ => ⟨0, -1⟩

def cellA6B26 : CellData where
  inverse := 5648108969870498446554
  bounds := fun _ => ⟨0, -1⟩

def cellA6B27 : CellData where
  inverse := 5648108969870498446554
  bounds := fun _ => ⟨0, -1⟩

def cellA6B28 : CellData where
  inverse := 71360471333404778586097
  bounds := fun _ => ⟨0, -1⟩

def cellA6B29 : CellData where
  inverse := 2371293154057104583470102
  bounds := fun _ => ⟨0, -1⟩

def cellA6B30 : CellData where
  inverse := 5591198909870284310307709
  bounds := fun _ => ⟨0, -1⟩

def cellA6B31 : CellData where
  inverse := 50669879491254800486034207
  bounds := fun _ => ⟨0, -1⟩

def cellA6B32 : CellData where
  inverse := 208445261526100607101076950
  bounds := fun _ => ⟨0, -1⟩

def cellA6B33 : CellData where
  inverse := 5730583632745703838627572955
  bounds := fun _ => ⟨0, -1⟩

def cellA6B34 : CellData where
  inverse := 28923564791868037411038856176
  bounds := fun _ => ⟨0, -1⟩

def cellA6B35 : CellData where
  inverse := 28923564791868037411038856176
  bounds := fun _ => ⟨0, -1⟩

def cellA6B36 : CellData where
  inverse := 1544198333854527164141909359948
  bounds := fun _ => ⟨0, -1⟩

def cellA6B37 : CellData where
  inverse := 4195929179714180635920932741549
  bounds := fun _ => ⟨0, -1⟩

def cellA6B38 : CellData where
  inverse := 59882276942766903543280423755170
  bounds := fun _ => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1519⟩
    else if d = (-4 : ℤ) then ⟨0, 1519⟩
    else if d = (-2 : ℤ) then ⟨0, 1519⟩
    else if d = (3 : ℤ) then ⟨0, 1519⟩
    else if d = (5 : ℤ) then ⟨0, 1519⟩
    else if d = (10 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA7B2 : CellData where
  inverse := 31
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1519⟩
    else if d = (-6 : ℤ) then ⟨0, 1519⟩
    else if d = (-3 : ℤ) then ⟨0, 1519⟩
    else if d = (-1 : ℤ) then ⟨0, 1519⟩
    else if d = (2 : ℤ) then ⟨0, 1519⟩
    else if d = (5 : ℤ) then ⟨0, 1519⟩
    else if d = (8 : ℤ) then ⟨0, 1519⟩
    else if d = (10 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA7B3 : CellData where
  inverse := 178
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1519⟩
    else if d = (-7 : ℤ) then ⟨0, 1519⟩
    else if d = (2 : ℤ) then ⟨0, 1519⟩
    else if d = (4 : ℤ) then ⟨0, 1519⟩
    else if d = (6 : ℤ) then ⟨0, 1519⟩
    else if d = (8 : ℤ) then ⟨0, 1519⟩
    else if d = (10 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA7B4 : CellData where
  inverse := 1207
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 1519⟩
    else if d = (4 : ℤ) then ⟨0, 1519⟩
    else if d = (6 : ℤ) then ⟨0, 1519⟩
    else if d = (8 : ℤ) then ⟨0, 1519⟩
    else if d = (10 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA7B5 : CellData where
  inverse := 6009
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1519⟩
    else if d = (-5 : ℤ) then ⟨0, 1519⟩
    else if d = (-2 : ℤ) then ⟨0, 1519⟩
    else if d = (1 : ℤ) then ⟨0, 1519⟩
    else if d = (3 : ℤ) then ⟨0, 1519⟩
    else if d = (6 : ℤ) then ⟨0, 1519⟩
    else if d = (9 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA7B6 : CellData where
  inverse := 22816
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1007⟩
    else if d = (5 : ℤ) then ⟨0, 1007⟩
    else ⟨0, 1008⟩

def cellA7B7 : CellData where
  inverse := 611061
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 144⟩
    else if d = (-4 : ℤ) then ⟨0, 144⟩
    else ⟨0, 143⟩

def cellA7B8 : CellData where
  inverse := 3905233
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 19⟩
    else if d = (-6 : ℤ) then ⟨0, 19⟩
    else if d = (-5 : ℤ) then ⟨0, 19⟩
    else if d = (-3 : ℤ) then ⟨0, 19⟩
    else if d = (-2 : ℤ) then ⟨0, 19⟩
    else if d = (0 : ℤ) then ⟨0, 19⟩
    else if d = (1 : ℤ) then ⟨0, 19⟩
    else if d = (4 : ℤ) then ⟨0, 19⟩
    else if d = (7 : ℤ) then ⟨0, 19⟩
    else if d = (10 : ℤ) then ⟨0, 19⟩
    else ⟨0, 20⟩

def cellA7B9 : CellData where
  inverse := 15434835
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA7B10 : CellData where
  inverse := 136495656
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

def cellA7B11 : CellData where
  inverse := 136495656
  bounds := fun _ => ⟨0, -1⟩

def cellA7B12 : CellData where
  inverse := 10023129371
  bounds := fun _ => ⟨0, -1⟩

def cellA7B13 : CellData where
  inverse := 10023129371
  bounds := fun _ => ⟨0, -1⟩

def cellA7B14 : CellData where
  inverse := 203801150185
  bounds := fun _ => ⟨0, -1⟩

def cellA7B15 : CellData where
  inverse := 4273139587279
  bounds := fun _ => ⟨0, -1⟩

def cellA7B16 : CellData where
  inverse := 28010947136994
  bounds := fun _ => ⟨0, -1⟩

def cellA7B17 : CellData where
  inverse := 28010947136994
  bounds := fun _ => ⟨0, -1⟩

def cellA7B18 : CellData where
  inverse := 725902489098615
  bounds := fun _ => ⟨0, -1⟩

def cellA7B19 : CellData where
  inverse := 7239556880740411
  bounds := fun _ => ⟨0, -1⟩

def cellA7B20 : CellData where
  inverse := 18638452066113554
  bounds := fun _ => ⟨0, -1⟩

def cellA7B21 : CellData where
  inverse := 18638452066113554
  bounds := fun _ => ⟨0, -1⟩

def cellA7B22 : CellData where
  inverse := 2811367772482533589
  bounds := fun _ => ⟨0, -1⟩

def cellA7B23 : CellData where
  inverse := 18450651966814485785
  bounds := fun _ => ⟨0, -1⟩

def cellA7B24 : CellData where
  inverse := 18450651966814485785
  bounds := fun _ => ⟨0, -1⟩

def cellA7B25 : CellData where
  inverse := 593194346108513728988
  bounds := fun _ => ⟨0, -1⟩

def cellA7B26 : CellData where
  inverse := 8639606064092303133830
  bounds := fun _ => ⟨0, -1⟩

def cellA7B27 : CellData where
  inverse := 27414566739387811745128
  bounds := fun _ => ⟨0, -1⟩

def cellA7B28 : CellData where
  inverse := 290264016193524932303300
  bounds := fun _ => ⟨0, -1⟩

def cellA7B29 : CellData where
  inverse := 3050183235461964698164106
  bounds := fun _ => ⟨0, -1⟩

def cellA7B30 : CellData where
  inverse := 19149712014527863332352141
  bounds := fun _ => ⟨0, -1⟩

def cellA7B31 : CellData where
  inverse := 41689052305220121420215390
  bounds := fun _ => ⟨0, -1⟩

def cellA7B32 : CellData where
  inverse := 41689052305220121420215390
  bounds := fun _ => ⟨0, -1⟩

def cellA7B33 : CellData where
  inverse := 1146116726549140767725514591
  bounds := fun _ => ⟨0, -1⟩

def cellA7B34 : CellData where
  inverse := 16608104165964029815999703405
  bounds := fun _ => ⟨0, -1⟩

def cellA7B35 : CellData where
  inverse := 233075928317772476491838346801
  bounds := fun _ => ⟨0, -1⟩

def cellA7B36 : CellData where
  inverse := 1369532005114766821539991224630
  bounds := fun _ => ⟨0, -1⟩

def cellA7B37 : CellData where
  inverse := 11976455388553380708656084751034
  bounds := fun _ => ⟨0, -1⟩

def cellA7B38 : CellData where
  inverse := 11976455388553380708656084751034
  bounds := fun _ => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 302⟩
    else if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (7 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA8B2 : CellData where
  inverse := 16
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (3 : ℤ) then ⟨0, 302⟩
    else if d = (6 : ℤ) then ⟨0, 302⟩
    else if d = (9 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA8B3 : CellData where
  inverse := 310
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 302⟩
    else if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (1 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA8B4 : CellData where
  inverse := 1682
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 302⟩
    else if d = (-3 : ℤ) then ⟨0, 302⟩
    else if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (7 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA8B5 : CellData where
  inverse := 11286
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 302⟩
    else if d = (-6 : ℤ) then ⟨0, 302⟩
    else if d = (-3 : ℤ) then ⟨0, 302⟩
    else if d = (0 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA8B6 : CellData where
  inverse := 28093
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (4 : ℤ) then ⟨0, 302⟩
    else if d = (8 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA8B7 : CellData where
  inverse := 616338
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 144⟩
    else if d = (-4 : ℤ) then ⟨0, 144⟩
    else ⟨0, 143⟩

def cellA8B8 : CellData where
  inverse := 3086967
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 19⟩
    else if d = (-8 : ℤ) then ⟨0, 19⟩
    else if d = (-6 : ℤ) then ⟨0, 19⟩
    else if d = (-4 : ℤ) then ⟨0, 19⟩
    else if d = (-2 : ℤ) then ⟨0, 19⟩
    else if d = (0 : ℤ) then ⟨0, 19⟩
    else if d = (3 : ℤ) then ⟨0, 19⟩
    else if d = (5 : ℤ) then ⟨0, 19⟩
    else if d = (7 : ℤ) then ⟨0, 19⟩
    else if d = (9 : ℤ) then ⟨0, 19⟩
    else ⟨0, 20⟩

def cellA8B9 : CellData where
  inverse := 3086967
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1⟩
    else ⟨0, 2⟩

def cellA8B10 : CellData where
  inverse := 83794181
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B11 : CellData where
  inverse := 1213695177
  bounds := fun _ => ⟨0, -1⟩

def cellA8B12 : CellData where
  inverse := 13077655635
  bounds := fun _ => ⟨0, -1⟩

def cellA8B13 : CellData where
  inverse := 40760230037
  bounds := fun _ => ⟨0, -1⟩

def cellA8B14 : CellData where
  inverse := 40760230037
  bounds := fun _ => ⟨0, -1⟩

def cellA8B15 : CellData where
  inverse := 2753652521433
  bounds := fun _ => ⟨0, -1⟩

def cellA8B16 : CellData where
  inverse := 12248775541319
  bounds := fun _ => ⟨0, -1⟩

def cellA8B17 : CellData where
  inverse := 145180497819723
  bounds := fun _ => ⟨0, -1⟩

def cellA8B18 : CellData where
  inverse := 145180497819723
  bounds := fun _ => ⟨0, -1⟩

def cellA8B19 : CellData where
  inverse := 8287248487371968
  bounds := fun _ => ⟨0, -1⟩

def cellA8B20 : CellData where
  inverse := 19686143672745111
  bounds := fun _ => ⟨0, -1⟩

def cellA8B21 : CellData where
  inverse := 338855208863193115
  bounds := fun _ => ⟨0, -1⟩

def cellA8B22 : CellData where
  inverse := 3690130393362897157
  bounds := fun _ => ⟨0, -1⟩

def cellA8B23 : CellData where
  inverse := 3690130393362897157
  bounds := fun _ => ⟨0, -1⟩

def cellA8B24 : CellData where
  inverse := 3690130393362897157
  bounds := fun _ => ⟨0, -1⟩

def cellA8B25 : CellData where
  inverse := 386852593154495725959
  bounds := fun _ => ⟨0, -1⟩

def cellA8B26 : CellData where
  inverse := 1727921212818460626766
  bounds := fun _ => ⟨0, -1⟩

def cellA8B27 : CellData where
  inverse := 58052803238704986460660
  bounds := fun _ => ⟨0, -1⟩

def cellA8B28 : CellData where
  inverse := 58052803238704986460660
  bounds := fun _ => ⟨0, -1⟩

def cellA8B29 : CellData where
  inverse := 1897998949417664830367864
  bounds := fun _ => ⟨0, -1⟩

def cellA8B30 : CellData where
  inverse := 8337810461044024284043078
  bounds := fun _ => ⟨0, -1⟩

def cellA8B31 : CellData where
  inverse := 8337810461044024284043078
  bounds := fun _ => ⟨0, -1⟩

def cellA8B32 : CellData where
  inverse := 8337810461044024284043078
  bounds := fun _ => ⟨0, -1⟩

def cellA8B33 : CellData where
  inverse := 3321620833192805963199940681
  bounds := fun _ => ⟨0, -1⟩

def cellA8B34 : CellData where
  inverse := 3321620833192805963199940681
  bounds := fun _ => ⟨0, -1⟩

def cellA8B35 : CellData where
  inverse := 273906401022953364307998244926
  bounds := fun _ => ⟨0, -1⟩

def cellA8B36 : CellData where
  inverse := 273906401022953364307998244926
  bounds := fun _ => ⟨0, -1⟩

def cellA8B37 : CellData where
  inverse := 13532560630321220723203115152931
  bounds := fun _ => ⟨0, -1⟩

def cellA8B38 : CellData where
  inverse := 106343140235409092235468933508966
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

end Math.B699.CRTStage0Pair57.Chunk000
