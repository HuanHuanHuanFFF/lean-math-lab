import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage1Pair57.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 13247⟩
    else if d = (-4 : ℤ) then ⟨0, 13247⟩
    else if d = (-2 : ℤ) then ⟨0, 13247⟩
    else if d = (3 : ℤ) then ⟨0, 13247⟩
    else if d = (5 : ℤ) then ⟨1, 13247⟩
    else if d = (10 : ℤ) then ⟨1, 13247⟩
    else ⟨0, 13246⟩

def cellA1B2 : CellData where
  inverse := 10
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1892⟩
    else if d = (-8 : ℤ) then ⟨0, 1892⟩
    else if d = (-4 : ℤ) then ⟨0, 1892⟩
    else if d = (-3 : ℤ) then ⟨0, 1892⟩
    else if d = (1 : ℤ) then ⟨0, 1892⟩
    else if d = (2 : ℤ) then ⟨0, 1892⟩
    else if d = (5 : ℤ) then ⟨1, 1892⟩
    else if d = (6 : ℤ) then ⟨0, 1892⟩
    else if d = (7 : ℤ) then ⟨0, 1892⟩
    else if d = (10 : ℤ) then ⟨1, 1892⟩
    else ⟨0, 1891⟩

def cellA1B3 : CellData where
  inverse := 206
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 270⟩
    else if d = (-3 : ℤ) then ⟨0, 270⟩
    else if d = (2 : ℤ) then ⟨0, 270⟩
    else if d = (5 : ℤ) then ⟨1, 270⟩
    else if d = (7 : ℤ) then ⟨0, 270⟩
    else if d = (10 : ℤ) then ⟨1, 270⟩
    else ⟨0, 269⟩

def cellA1B4 : CellData where
  inverse := 1921
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 37⟩
    else if d = (-9 : ℤ) then ⟨0, 37⟩
    else if d = (-5 : ℤ) then ⟨0, 37⟩
    else if d = (-4 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (1 : ℤ) then ⟨0, 37⟩
    else if d = (5 : ℤ) then ⟨1, 38⟩
    else if d = (6 : ℤ) then ⟨0, 37⟩
    else if d = (10 : ℤ) then ⟨1, 38⟩
    else ⟨0, 38⟩

def cellA1B5 : CellData where
  inverse := 6723
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 5⟩
    else if d = (-7 : ℤ) then ⟨0, 5⟩
    else if d = (-4 : ℤ) then ⟨0, 5⟩
    else if d = (-2 : ℤ) then ⟨0, 5⟩
    else if d = (1 : ℤ) then ⟨0, 5⟩
    else if d = (3 : ℤ) then ⟨0, 5⟩
    else if d = (5 : ℤ) then ⟨1, 5⟩
    else if d = (6 : ℤ) then ⟨0, 5⟩
    else if d = (8 : ℤ) then ⟨0, 5⟩
    else if d = (10 : ℤ) then ⟨1, 5⟩
    else ⟨0, 4⟩

def cellA1B6 : CellData where
  inverse := 23530
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (-1 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, 0⟩

def cellA1B7 : CellData where
  inverse := 494126
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B8 : CellData where
  inverse := 4611841
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B9 : CellData where
  inverse := 16141443
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B10 : CellData where
  inverse := 56495050
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
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

def cellA2B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3709⟩
    else if d = (-3 : ℤ) then ⟨0, 3709⟩
    else if d = (4 : ℤ) then ⟨0, 3709⟩
    else if d = (8 : ℤ) then ⟨0, 3709⟩
    else ⟨0, 3708⟩

def cellA2B2 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 1892⟩
    else if d = (2 : ℤ) then ⟨0, 1892⟩
    else if d = (3 : ℤ) then ⟨0, 1892⟩
    else if d = (4 : ℤ) then ⟨0, 1892⟩
    else if d = (5 : ℤ) then ⟨0, 1892⟩
    else if d = (6 : ℤ) then ⟨0, 1892⟩
    else if d = (7 : ℤ) then ⟨0, 1892⟩
    else if d = (8 : ℤ) then ⟨0, 1892⟩
    else if d = (9 : ℤ) then ⟨0, 1892⟩
    else if d = (10 : ℤ) then ⟨0, 1892⟩
    else ⟨0, 1891⟩

def cellA2B3 : CellData where
  inverse := 247
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 270⟩
    else if d = (-4 : ℤ) then ⟨0, 270⟩
    else if d = (-1 : ℤ) then ⟨0, 270⟩
    else if d = (3 : ℤ) then ⟨0, 270⟩
    else if d = (6 : ℤ) then ⟨0, 270⟩
    else if d = (7 : ℤ) then ⟨0, 270⟩
    else if d = (10 : ℤ) then ⟨0, 270⟩
    else ⟨0, 269⟩

def cellA2B4 : CellData where
  inverse := 2305
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (1 : ℤ) then ⟨0, 37⟩
    else if d = (2 : ℤ) then ⟨0, 37⟩
    else if d = (3 : ℤ) then ⟨0, 37⟩
    else if d = (4 : ℤ) then ⟨0, 37⟩
    else if d = (5 : ℤ) then ⟨0, 37⟩
    else if d = (6 : ℤ) then ⟨0, 37⟩
    else if d = (7 : ℤ) then ⟨0, 37⟩
    else if d = (8 : ℤ) then ⟨0, 37⟩
    else if d = (9 : ℤ) then ⟨0, 37⟩
    else ⟨0, 38⟩

def cellA2B5 : CellData where
  inverse := 4706
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 5⟩
    else if d = (-9 : ℤ) then ⟨0, 5⟩
    else if d = (-7 : ℤ) then ⟨0, 5⟩
    else if d = (-6 : ℤ) then ⟨0, 5⟩
    else if d = (-3 : ℤ) then ⟨0, 5⟩
    else if d = (-2 : ℤ) then ⟨0, 5⟩
    else if d = (1 : ℤ) then ⟨0, 5⟩
    else if d = (4 : ℤ) then ⟨0, 5⟩
    else if d = (5 : ℤ) then ⟨0, 5⟩
    else if d = (8 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA2B6 : CellData where
  inverse := 4706
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (-3 : ℤ) then ⟨0, -1⟩
    else if d = (-2 : ℤ) then ⟨0, -1⟩
    else if d = (-1 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA2B7 : CellData where
  inverse := 592951
  bounds := fun d =>
    if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA2B8 : CellData where
  inverse := 5534209
  bounds := fun _ => ⟨0, -1⟩

def cellA2B9 : CellData where
  inverse := 11299010
  bounds := fun _ => ⟨0, -1⟩

def cellA2B10 : CellData where
  inverse := 11299010
  bounds := fun _ => ⟨0, -1⟩

def cellA2B11 : CellData where
  inverse := 1423675255
  bounds := fun _ => ⟨0, -1⟩

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

def cellA3B1 : CellData where
  inverse := 6
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 740⟩
    else if d = (-6 : ℤ) then ⟨0, 740⟩
    else if d = (0 : ℤ) then ⟨0, 740⟩
    else if d = (1 : ℤ) then ⟨0, 740⟩
    else if d = (7 : ℤ) then ⟨0, 740⟩
    else ⟨0, 741⟩

def cellA3B2 : CellData where
  inverse := 20
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 740⟩
    else if d = (-5 : ℤ) then ⟨0, 740⟩
    else if d = (0 : ℤ) then ⟨0, 740⟩
    else if d = (7 : ℤ) then ⟨0, 740⟩
    else ⟨0, 741⟩

def cellA3B3 : CellData where
  inverse := 118
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 270⟩
    else if d = (-5 : ℤ) then ⟨0, 270⟩
    else if d = (-2 : ℤ) then ⟨0, 270⟩
    else if d = (1 : ℤ) then ⟨0, 270⟩
    else if d = (3 : ℤ) then ⟨0, 270⟩
    else if d = (6 : ℤ) then ⟨0, 270⟩
    else if d = (9 : ℤ) then ⟨0, 270⟩
    else ⟨0, 269⟩

def cellA3B4 : CellData where
  inverse := 461
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 37⟩
    else if d = (-6 : ℤ) then ⟨0, 37⟩
    else if d = (-1 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (4 : ℤ) then ⟨0, 37⟩
    else if d = (5 : ℤ) then ⟨0, 37⟩
    else if d = (9 : ℤ) then ⟨0, 37⟩
    else if d = (10 : ℤ) then ⟨0, 37⟩
    else ⟨0, 38⟩

def cellA3B5 : CellData where
  inverse := 7664
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

def cellA3B6 : CellData where
  inverse := 24471
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (-1 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA3B7 : CellData where
  inverse := 612716
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA3B8 : CellData where
  inverse := 2259802
  bounds := fun _ => ⟨0, -1⟩

def cellA3B9 : CellData where
  inverse := 2259802
  bounds := fun _ => ⟨0, -1⟩

def cellA3B10 : CellData where
  inverse := 2259802
  bounds := fun _ => ⟨0, -1⟩

def cellA3B11 : CellData where
  inverse := 284735051
  bounds := fun _ => ⟨0, -1⟩

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

def cellA4B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 148⟩
    else if d = (-5 : ℤ) then ⟨0, 148⟩
    else if d = (-3 : ℤ) then ⟨0, 148⟩
    else if d = (2 : ℤ) then ⟨0, 148⟩
    else if d = (4 : ℤ) then ⟨0, 148⟩
    else if d = (9 : ℤ) then ⟨0, 148⟩
    else ⟨0, 147⟩

def cellA4B2 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 148⟩
    else if d = (-9 : ℤ) then ⟨0, 148⟩
    else if d = (-8 : ℤ) then ⟨0, 148⟩
    else if d = (1 : ℤ) then ⟨0, 148⟩
    else if d = (2 : ℤ) then ⟨0, 148⟩
    else if d = (3 : ℤ) then ⟨0, 148⟩
    else if d = (4 : ℤ) then ⟨0, 148⟩
    else ⟨0, 147⟩

def cellA4B3 : CellData where
  inverse := 298
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 148⟩
    else if d = (-9 : ℤ) then ⟨0, 148⟩
    else if d = (-8 : ℤ) then ⟨0, 148⟩
    else if d = (-2 : ℤ) then ⟨0, 148⟩
    else if d = (-1 : ℤ) then ⟨0, 148⟩
    else if d = (5 : ℤ) then ⟨0, 148⟩
    else if d = (6 : ℤ) then ⟨0, 148⟩
    else if d = (7 : ℤ) then ⟨0, 148⟩
    else ⟨0, 147⟩

def cellA4B4 : CellData where
  inverse := 2013
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 37⟩
    else if d = (-5 : ℤ) then ⟨0, 37⟩
    else if d = (-4 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (1 : ℤ) then ⟨0, 37⟩
    else if d = (2 : ℤ) then ⟨0, 37⟩
    else if d = (7 : ℤ) then ⟨0, 37⟩
    else if d = (8 : ℤ) then ⟨0, 37⟩
    else ⟨0, 38⟩

def cellA4B5 : CellData where
  inverse := 11617
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 5⟩
    else if d = (-8 : ℤ) then ⟨0, 5⟩
    else if d = (-7 : ℤ) then ⟨0, 5⟩
    else if d = (-4 : ℤ) then ⟨0, 5⟩
    else if d = (-1 : ℤ) then ⟨0, 5⟩
    else if d = (2 : ℤ) then ⟨0, 5⟩
    else if d = (3 : ℤ) then ⟨0, 5⟩
    else if d = (5 : ℤ) then ⟨0, 5⟩
    else if d = (6 : ℤ) then ⟨0, 5⟩
    else if d = (9 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA4B6 : CellData where
  inverse := 28424
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA4B7 : CellData where
  inverse := 616669
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B8 : CellData where
  inverse := 3910841
  bounds := fun _ => ⟨0, -1⟩

def cellA4B9 : CellData where
  inverse := 32734846
  bounds := fun _ => ⟨0, -1⟩

def cellA4B10 : CellData where
  inverse := 113442060
  bounds := fun _ => ⟨0, -1⟩

def cellA4B11 : CellData where
  inverse := 1243343056
  bounds := fun _ => ⟨0, -1⟩

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

def cellA5B1 : CellData where
  inverse := 5
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 28⟩
    else if d = (-7 : ℤ) then ⟨0, 28⟩
    else if d = (-6 : ℤ) then ⟨0, 28⟩
    else if d = (-3 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (1 : ℤ) then ⟨0, 28⟩
    else if d = (4 : ℤ) then ⟨0, 28⟩
    else if d = (7 : ℤ) then ⟨0, 28⟩
    else if d = (8 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA5B2 : CellData where
  inverse := 40
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 28⟩
    else if d = (-5 : ℤ) then ⟨0, 28⟩
    else if d = (-4 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (1 : ℤ) then ⟨0, 28⟩
    else if d = (6 : ℤ) then ⟨0, 28⟩
    else if d = (7 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA5B3 : CellData where
  inverse := 334
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 29⟩
    else if d = (-9 : ℤ) then ⟨0, 29⟩
    else if d = (-8 : ℤ) then ⟨0, 29⟩
    else if d = (-7 : ℤ) then ⟨0, 29⟩
    else if d = (-6 : ℤ) then ⟨0, 29⟩
    else if d = (-5 : ℤ) then ⟨0, 29⟩
    else if d = (-4 : ℤ) then ⟨0, 29⟩
    else if d = (-3 : ℤ) then ⟨0, 29⟩
    else if d = (-2 : ℤ) then ⟨0, 29⟩
    else if d = (-1 : ℤ) then ⟨0, 29⟩
    else ⟨0, 28⟩

def cellA5B4 : CellData where
  inverse := 1363
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 28⟩
    else if d = (-4 : ℤ) then ⟨0, 28⟩
    else if d = (-2 : ℤ) then ⟨0, 28⟩
    else if d = (0 : ℤ) then ⟨0, 28⟩
    else if d = (3 : ℤ) then ⟨0, 28⟩
    else if d = (5 : ℤ) then ⟨0, 28⟩
    else if d = (7 : ℤ) then ⟨0, 28⟩
    else if d = (10 : ℤ) then ⟨0, 28⟩
    else ⟨0, 29⟩

def cellA5B5 : CellData where
  inverse := 15769
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4⟩
    else if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (1 : ℤ) then ⟨0, 4⟩
    else if d = (2 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨0, 4⟩
    else if d = (4 : ℤ) then ⟨0, 4⟩
    else if d = (5 : ℤ) then ⟨0, 4⟩
    else if d = (6 : ℤ) then ⟨0, 4⟩
    else if d = (7 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA5B6 : CellData where
  inverse := 99804
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (7 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA5B7 : CellData where
  inverse := 452751
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B8 : CellData where
  inverse := 5394009
  bounds := fun _ => ⟨0, -1⟩

def cellA5B9 : CellData where
  inverse := 22688412
  bounds := fun _ => ⟨0, -1⟩

def cellA5B10 : CellData where
  inverse := 22688412
  bounds := fun _ => ⟨0, -1⟩

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

def cellA6B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (7 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA6B2 : CellData where
  inverse := 8
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (6 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA6B3 : CellData where
  inverse := 204
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (5 : ℤ) then ⟨0, 4⟩
    else if d = (10 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA6B4 : CellData where
  inverse := 1233
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 4⟩
    else if d = (-2 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA6B5 : CellData where
  inverse := 13238
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-8 : ℤ) then ⟨0, 4⟩
    else if d = (-4 : ℤ) then ⟨0, 4⟩
    else if d = (-3 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (1 : ℤ) then ⟨0, 4⟩
    else if d = (2 : ℤ) then ⟨0, 4⟩
    else if d = (5 : ℤ) then ⟨0, 4⟩
    else if d = (6 : ℤ) then ⟨0, 4⟩
    else if d = (10 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA6B6 : CellData where
  inverse := 114080
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (2 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA6B7 : CellData where
  inverse := 584676
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B8 : CellData where
  inverse := 2231762
  bounds := fun _ => ⟨0, -1⟩

def cellA6B9 : CellData where
  inverse := 36820568
  bounds := fun _ => ⟨0, -1⟩

def cellA6B10 : CellData where
  inverse := 117527782
  bounds := fun _ => ⟨0, -1⟩

def cellA6B11 : CellData where
  inverse := 682478280
  bounds := fun _ => ⟨0, -1⟩

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

def cellA7B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA7B2 : CellData where
  inverse := 31
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA7B3 : CellData where
  inverse := 178
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (4 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA7B4 : CellData where
  inverse := 1207
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (4 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA7B5 : CellData where
  inverse := 6009
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA7B6 : CellData where
  inverse := 22816
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (-1 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨0, -1⟩
    else if d = (10 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA7B7 : CellData where
  inverse := 611061
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B8 : CellData where
  inverse := 3905233
  bounds := fun _ => ⟨0, -1⟩

def cellA7B9 : CellData where
  inverse := 15434835
  bounds := fun _ => ⟨0, -1⟩

def cellA7B10 : CellData where
  inverse := 136495656
  bounds := fun _ => ⟨0, -1⟩

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

def cellA8B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B2 : CellData where
  inverse := 16
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B3 : CellData where
  inverse := 310
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B4 : CellData where
  inverse := 1682
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B5 : CellData where
  inverse := 11286
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B6 : CellData where
  inverse := 28093
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B7 : CellData where
  inverse := 616338
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B8 : CellData where
  inverse := 3086967
  bounds := fun _ => ⟨0, -1⟩

def cellA8B9 : CellData where
  inverse := 3086967
  bounds := fun _ => ⟨0, -1⟩

def cellA8B10 : CellData where
  inverse := 83794181
  bounds := fun _ => ⟨0, -1⟩

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

end Math.B699.CRTStage1Pair57.Chunk000
