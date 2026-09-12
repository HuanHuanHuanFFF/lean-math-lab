import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair57.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 507⟩
    else if d = (-2 : ℤ) then ⟨0, 507⟩
    else if d = (5 : ℤ) then ⟨1, 507⟩
    else if d = (10 : ℤ) then ⟨1, 506⟩
    else ⟨0, 506⟩

def cellA1B2 : CellData where
  inverse := 10
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 72⟩
    else if d = (-8 : ℤ) then ⟨0, 72⟩
    else if d = (-4 : ℤ) then ⟨0, 72⟩
    else if d = (-3 : ℤ) then ⟨0, 72⟩
    else if d = (1 : ℤ) then ⟨0, 72⟩
    else if d = (2 : ℤ) then ⟨0, 72⟩
    else if d = (5 : ℤ) then ⟨1, 72⟩
    else if d = (6 : ℤ) then ⟨0, 72⟩
    else if d = (7 : ℤ) then ⟨0, 72⟩
    else if d = (10 : ℤ) then ⟨1, 72⟩
    else ⟨0, 71⟩

def cellA1B3 : CellData where
  inverse := 206
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 10⟩
    else if d = (-3 : ℤ) then ⟨0, 10⟩
    else if d = (2 : ℤ) then ⟨0, 10⟩
    else if d = (5 : ℤ) then ⟨1, 10⟩
    else if d = (7 : ℤ) then ⟨0, 10⟩
    else if d = (10 : ℤ) then ⟨1, 10⟩
    else ⟨0, 9⟩

def cellA1B4 : CellData where
  inverse := 1921
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (3 : ℤ) then ⟨0, 1⟩
    else if d = (4 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨1, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨1, 1⟩
    else ⟨0, 0⟩

def cellA1B5 : CellData where
  inverse := 6723
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B6 : CellData where
  inverse := 23530
  bounds := fun d =>
    if d = (5 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

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

def cellA2B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 140⟩
    else ⟨0, 141⟩

def cellA2B2 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 72⟩
    else if d = (2 : ℤ) then ⟨0, 72⟩
    else if d = (3 : ℤ) then ⟨0, 72⟩
    else if d = (4 : ℤ) then ⟨0, 72⟩
    else if d = (5 : ℤ) then ⟨0, 72⟩
    else if d = (6 : ℤ) then ⟨0, 72⟩
    else if d = (7 : ℤ) then ⟨0, 72⟩
    else if d = (8 : ℤ) then ⟨0, 72⟩
    else if d = (9 : ℤ) then ⟨0, 72⟩
    else if d = (10 : ℤ) then ⟨0, 72⟩
    else ⟨0, 71⟩

def cellA2B3 : CellData where
  inverse := 247
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 10⟩
    else if d = (-4 : ℤ) then ⟨0, 10⟩
    else if d = (-1 : ℤ) then ⟨0, 10⟩
    else if d = (3 : ℤ) then ⟨0, 10⟩
    else if d = (6 : ℤ) then ⟨0, 10⟩
    else if d = (7 : ℤ) then ⟨0, 10⟩
    else if d = (10 : ℤ) then ⟨0, 10⟩
    else ⟨0, 9⟩

def cellA2B4 : CellData where
  inverse := 2305
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

def cellA2B5 : CellData where
  inverse := 4706
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA2B6 : CellData where
  inverse := 4706
  bounds := fun _ => ⟨0, -1⟩

def cellA2B7 : CellData where
  inverse := 592951
  bounds := fun _ => ⟨0, -1⟩

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

def cellA3B1 : CellData where
  inverse := 6
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 28⟩
    else if d = (-8 : ℤ) then ⟨0, 28⟩
    else if d = (-2 : ℤ) then ⟨0, 28⟩
    else if d = (-1 : ℤ) then ⟨0, 28⟩
    else if d = (5 : ℤ) then ⟨0, 28⟩
    else if d = (6 : ℤ) then ⟨0, 28⟩
    else ⟨0, 27⟩

def cellA3B2 : CellData where
  inverse := 20
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 28⟩
    else if d = (-7 : ℤ) then ⟨0, 28⟩
    else if d = (-4 : ℤ) then ⟨0, 28⟩
    else if d = (-2 : ℤ) then ⟨0, 28⟩
    else if d = (3 : ℤ) then ⟨0, 28⟩
    else if d = (5 : ℤ) then ⟨0, 28⟩
    else if d = (8 : ℤ) then ⟨0, 28⟩
    else if d = (10 : ℤ) then ⟨0, 28⟩
    else ⟨0, 27⟩

def cellA3B3 : CellData where
  inverse := 118
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 10⟩
    else if d = (-5 : ℤ) then ⟨0, 10⟩
    else if d = (-2 : ℤ) then ⟨0, 10⟩
    else if d = (1 : ℤ) then ⟨0, 10⟩
    else if d = (3 : ℤ) then ⟨0, 10⟩
    else if d = (6 : ℤ) then ⟨0, 10⟩
    else if d = (9 : ℤ) then ⟨0, 10⟩
    else ⟨0, 9⟩

def cellA3B4 : CellData where
  inverse := 461
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (1 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA3B5 : CellData where
  inverse := 7664
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA3B6 : CellData where
  inverse := 24471
  bounds := fun _ => ⟨0, -1⟩

def cellA3B7 : CellData where
  inverse := 612716
  bounds := fun _ => ⟨0, -1⟩

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

def cellA4B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-7 : ℤ) then ⟨0, 4⟩
    else if d = (-4 : ℤ) then ⟨0, 4⟩
    else if d = (-2 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨0, 4⟩
    else if d = (5 : ℤ) then ⟨0, 4⟩
    else if d = (7 : ℤ) then ⟨0, 4⟩
    else if d = (10 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA4B2 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 4⟩
    else if d = (-2 : ℤ) then ⟨0, 4⟩
    else if d = (-1 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨0, 4⟩
    else if d = (10 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA4B3 : CellData where
  inverse := 298
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 4⟩
    else if d = (-6 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (1 : ℤ) then ⟨0, 4⟩
    else if d = (2 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨0, 4⟩
    else if d = (10 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA4B4 : CellData where
  inverse := 2013
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1⟩
    else if d = (-8 : ℤ) then ⟨0, 1⟩
    else if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else if d = (4 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else if d = (6 : ℤ) then ⟨0, 1⟩
    else if d = (10 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA4B5 : CellData where
  inverse := 11617
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B6 : CellData where
  inverse := 28424
  bounds := fun _ => ⟨0, -1⟩

def cellA4B7 : CellData where
  inverse := 616669
  bounds := fun _ => ⟨0, -1⟩

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

def cellA5B1 : CellData where
  inverse := 5
  bounds := fun _ => ⟨0, 0⟩

def cellA5B2 : CellData where
  inverse := 40
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (5 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA5B3 : CellData where
  inverse := 334
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (-4 : ℤ) then ⟨0, 1⟩
    else if d = (-3 : ℤ) then ⟨0, 1⟩
    else if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (-1 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA5B4 : CellData where
  inverse := 1363
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 1⟩
    else if d = (2 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA5B5 : CellData where
  inverse := 15769
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B6 : CellData where
  inverse := 99804
  bounds := fun _ => ⟨0, -1⟩

def cellA5B7 : CellData where
  inverse := 452751
  bounds := fun _ => ⟨0, -1⟩

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

def cellA6B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B2 : CellData where
  inverse := 8
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B3 : CellData where
  inverse := 204
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B4 : CellData where
  inverse := 1233
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B5 : CellData where
  inverse := 13238
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B6 : CellData where
  inverse := 114080
  bounds := fun _ => ⟨0, -1⟩

def cellA6B7 : CellData where
  inverse := 584676
  bounds := fun _ => ⟨0, -1⟩

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

def cellA7B1 : CellData where
  inverse := 3
  bounds := fun _ => ⟨0, -1⟩

def cellA7B2 : CellData where
  inverse := 31
  bounds := fun _ => ⟨0, -1⟩

def cellA7B3 : CellData where
  inverse := 178
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B4 : CellData where
  inverse := 1207
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B5 : CellData where
  inverse := 6009
  bounds := fun _ => ⟨0, -1⟩

def cellA7B6 : CellData where
  inverse := 22816
  bounds := fun _ => ⟨0, -1⟩

def cellA7B7 : CellData where
  inverse := 611061
  bounds := fun _ => ⟨0, -1⟩

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

def cellA8B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA8B2 : CellData where
  inverse := 16
  bounds := fun _ => ⟨0, -1⟩

def cellA8B3 : CellData where
  inverse := 310
  bounds := fun _ => ⟨0, -1⟩

def cellA8B4 : CellData where
  inverse := 1682
  bounds := fun d =>
    if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B5 : CellData where
  inverse := 11286
  bounds := fun _ => ⟨0, -1⟩

def cellA8B6 : CellData where
  inverse := 28093
  bounds := fun _ => ⟨0, -1⟩

def cellA8B7 : CellData where
  inverse := 616338
  bounds := fun _ => ⟨0, -1⟩

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

end Math.B699.CRTStage2Pair57.Chunk000
