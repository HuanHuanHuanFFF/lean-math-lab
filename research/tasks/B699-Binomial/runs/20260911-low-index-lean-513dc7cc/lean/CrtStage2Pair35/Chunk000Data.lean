import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair35.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 709⟩
    else if d = (6 : ℤ) then ⟨1, 709⟩
    else if d = (8 : ℤ) then ⟨1, 709⟩
    else if d = (9 : ℤ) then ⟨1, 709⟩
    else ⟨0, 709⟩

def cellA1B2 : CellData where
  inverse := 17
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 141⟩
    else if d = (6 : ℤ) then ⟨1, 141⟩
    else if d = (9 : ℤ) then ⟨1, 141⟩
    else ⟨0, 141⟩

def cellA1B3 : CellData where
  inverse := 42
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 28⟩
    else if d = (-5 : ℤ) then ⟨0, 28⟩
    else if d = (-2 : ℤ) then ⟨0, 28⟩
    else if d = (1 : ℤ) then ⟨0, 28⟩
    else if d = (3 : ℤ) then ⟨1, 28⟩
    else if d = (4 : ℤ) then ⟨0, 28⟩
    else if d = (6 : ℤ) then ⟨1, 28⟩
    else if d = (7 : ℤ) then ⟨0, 28⟩
    else if d = (9 : ℤ) then ⟨1, 28⟩
    else if d = (10 : ℤ) then ⟨0, 28⟩
    else ⟨0, 27⟩

def cellA1B4 : CellData where
  inverse := 417
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-6 : ℤ) then ⟨0, 4⟩
    else if d = (-3 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨1, 5⟩
    else if d = (6 : ℤ) then ⟨1, 5⟩
    else if d = (9 : ℤ) then ⟨1, 5⟩
    else ⟨0, 5⟩

def cellA1B5 : CellData where
  inverse := 1042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 1⟩
    else if d = (6 : ℤ) then ⟨1, 1⟩
    else if d = (9 : ℤ) then ⟨1, 1⟩
    else ⟨0, 0⟩

def cellA1B6 : CellData where
  inverse := 10417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B7 : CellData where
  inverse := 26042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B8 : CellData where
  inverse := 260417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B9 : CellData where
  inverse := 651042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B10 : CellData where
  inverse := 6510417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B11 : CellData where
  inverse := 16276042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B12 : CellData where
  inverse := 162760417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B13 : CellData where
  inverse := 406901042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B14 : CellData where
  inverse := 4069010417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B15 : CellData where
  inverse := 10172526042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B16 : CellData where
  inverse := 101725260417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 394⟩
    else if d = (-2 : ℤ) then ⟨0, 394⟩
    else if d = (-1 : ℤ) then ⟨0, 394⟩
    else if d = (3 : ℤ) then ⟨0, 394⟩
    else if d = (4 : ℤ) then ⟨0, 394⟩
    else if d = (7 : ℤ) then ⟨0, 394⟩
    else if d = (8 : ℤ) then ⟨0, 394⟩
    else if d = (9 : ℤ) then ⟨1, 394⟩
    else ⟨0, 393⟩

def cellA2B2 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 141⟩
    else ⟨0, 141⟩

def cellA2B3 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 28⟩
    else if d = (-7 : ℤ) then ⟨0, 28⟩
    else if d = (-6 : ℤ) then ⟨0, 28⟩
    else if d = (1 : ℤ) then ⟨0, 28⟩
    else if d = (2 : ℤ) then ⟨0, 28⟩
    else if d = (3 : ℤ) then ⟨0, 28⟩
    else if d = (9 : ℤ) then ⟨1, 28⟩
    else if d = (10 : ℤ) then ⟨0, 28⟩
    else ⟨0, 27⟩

def cellA2B4 : CellData where
  inverse := 139
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4⟩
    else if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-5 : ℤ) then ⟨0, 4⟩
    else if d = (-1 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (4 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨1, 5⟩
    else ⟨0, 5⟩

def cellA2B5 : CellData where
  inverse := 1389
  bounds := fun d =>
    if d = (-2 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else if d = (9 : ℤ) then ⟨1, 1⟩
    else ⟨0, 0⟩

def cellA2B6 : CellData where
  inverse := 13889
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B7 : CellData where
  inverse := 60764
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B8 : CellData where
  inverse := 217014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B9 : CellData where
  inverse := 217014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B10 : CellData where
  inverse := 2170139
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B11 : CellData where
  inverse := 21701389
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B12 : CellData where
  inverse := 217013889
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B13 : CellData where
  inverse := 949435764
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B14 : CellData where
  inverse := 3390842014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B15 : CellData where
  inverse := 3390842014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B16 : CellData where
  inverse := 33908420139
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 131⟩
    else if d = (-6 : ℤ) then ⟨0, 131⟩
    else if d = (-3 : ℤ) then ⟨0, 131⟩
    else if d = (-1 : ℤ) then ⟨0, 131⟩
    else if d = (2 : ℤ) then ⟨0, 131⟩
    else if d = (4 : ℤ) then ⟨0, 131⟩
    else if d = (7 : ℤ) then ⟨0, 131⟩
    else if d = (9 : ℤ) then ⟨0, 131⟩
    else ⟨0, 130⟩

def cellA3B2 : CellData where
  inverse := 13
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 131⟩
    else if d = (-7 : ℤ) then ⟨0, 131⟩
    else if d = (-5 : ℤ) then ⟨0, 131⟩
    else if d = (-3 : ℤ) then ⟨0, 131⟩
    else if d = (-1 : ℤ) then ⟨0, 131⟩
    else if d = (2 : ℤ) then ⟨0, 131⟩
    else if d = (4 : ℤ) then ⟨0, 131⟩
    else if d = (6 : ℤ) then ⟨0, 131⟩
    else if d = (8 : ℤ) then ⟨0, 131⟩
    else if d = (10 : ℤ) then ⟨0, 131⟩
    else ⟨0, 130⟩

def cellA3B3 : CellData where
  inverse := 88
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 28⟩
    else if d = (-7 : ℤ) then ⟨0, 28⟩
    else if d = (-4 : ℤ) then ⟨0, 28⟩
    else if d = (-1 : ℤ) then ⟨0, 28⟩
    else if d = (3 : ℤ) then ⟨0, 28⟩
    else if d = (6 : ℤ) then ⟨0, 28⟩
    else if d = (9 : ℤ) then ⟨0, 28⟩
    else if d = (10 : ℤ) then ⟨0, 28⟩
    else ⟨0, 27⟩

def cellA3B4 : CellData where
  inverse := 463
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 4⟩
    else if d = (-3 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (1 : ℤ) then ⟨0, 4⟩
    else if d = (4 : ℤ) then ⟨0, 4⟩
    else if d = (5 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA3B5 : CellData where
  inverse := 463
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 1⟩
    else if d = (7 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA3B6 : CellData where
  inverse := 9838
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA3B7 : CellData where
  inverse := 72338
  bounds := fun _ => ⟨0, -1⟩

def cellA3B8 : CellData where
  inverse := 72338
  bounds := fun _ => ⟨0, -1⟩

def cellA3B9 : CellData where
  inverse := 72338
  bounds := fun _ => ⟨0, -1⟩

def cellA3B10 : CellData where
  inverse := 3978588
  bounds := fun _ => ⟨0, -1⟩

def cellA3B11 : CellData where
  inverse := 23509838
  bounds := fun _ => ⟨0, -1⟩

def cellA3B12 : CellData where
  inverse := 72337963
  bounds := fun _ => ⟨0, -1⟩

def cellA3B13 : CellData where
  inverse := 316478588
  bounds := fun _ => ⟨0, -1⟩

def cellA3B14 : CellData where
  inverse := 5199291088
  bounds := fun _ => ⟨0, -1⟩

def cellA3B15 : CellData where
  inverse := 11302806713
  bounds := fun _ => ⟨0, -1⟩

def cellA3B16 : CellData where
  inverse := 11302806713
  bounds := fun _ => ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 42⟩
    else if d = (-5 : ℤ) then ⟨0, 42⟩
    else if d = (0 : ℤ) then ⟨0, 42⟩
    else if d = (5 : ℤ) then ⟨0, 42⟩
    else if d = (10 : ℤ) then ⟨0, 42⟩
    else ⟨0, 43⟩

def cellA4B2 : CellData where
  inverse := 21
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 42⟩
    else if d = (0 : ℤ) then ⟨0, 42⟩
    else if d = (1 : ℤ) then ⟨0, 42⟩
    else if d = (7 : ℤ) then ⟨0, 42⟩
    else ⟨0, 43⟩

def cellA4B3 : CellData where
  inverse := 71
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 28⟩
    else if d = (-7 : ℤ) then ⟨0, 28⟩
    else if d = (-5 : ℤ) then ⟨0, 28⟩
    else if d = (-3 : ℤ) then ⟨0, 28⟩
    else if d = (2 : ℤ) then ⟨0, 28⟩
    else if d = (4 : ℤ) then ⟨0, 28⟩
    else if d = (9 : ℤ) then ⟨0, 28⟩
    else ⟨0, 27⟩

def cellA4B4 : CellData where
  inverse := 571
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4⟩
    else if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-8 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (1 : ℤ) then ⟨0, 4⟩
    else if d = (2 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA4B5 : CellData where
  inverse := 1196
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 1⟩
    else if d = (8 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA4B6 : CellData where
  inverse := 13696
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B7 : CellData where
  inverse := 76196
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B8 : CellData where
  inverse := 154321
  bounds := fun _ => ⟨0, -1⟩

def cellA4B9 : CellData where
  inverse := 1326196
  bounds := fun _ => ⟨0, -1⟩

def cellA4B10 : CellData where
  inverse := 1326196
  bounds := fun _ => ⟨0, -1⟩

def cellA4B11 : CellData where
  inverse := 40388696
  bounds := fun _ => ⟨0, -1⟩

def cellA4B12 : CellData where
  inverse := 186873071
  bounds := fun _ => ⟨0, -1⟩

def cellA4B13 : CellData where
  inverse := 919294946
  bounds := fun _ => ⟨0, -1⟩

def cellA4B14 : CellData where
  inverse := 5802107446
  bounds := fun _ => ⟨0, -1⟩

def cellA4B15 : CellData where
  inverse := 24112654321
  bounds := fun _ => ⟨0, -1⟩

def cellA4B16 : CellData where
  inverse := 54630232446
  bounds := fun _ => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 13⟩
    else if d = (-8 : ℤ) then ⟨0, 13⟩
    else if d = (-5 : ℤ) then ⟨0, 13⟩
    else if d = (-3 : ℤ) then ⟨0, 13⟩
    else if d = (0 : ℤ) then ⟨0, 13⟩
    else if d = (2 : ℤ) then ⟨0, 13⟩
    else if d = (5 : ℤ) then ⟨0, 13⟩
    else if d = (7 : ℤ) then ⟨0, 13⟩
    else if d = (10 : ℤ) then ⟨0, 13⟩
    else ⟨0, 14⟩

def cellA5B2 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 13⟩
    else if d = (-4 : ℤ) then ⟨0, 13⟩
    else if d = (-1 : ℤ) then ⟨0, 13⟩
    else if d = (0 : ℤ) then ⟨0, 13⟩
    else if d = (3 : ℤ) then ⟨0, 13⟩
    else if d = (6 : ℤ) then ⟨0, 13⟩
    else if d = (7 : ℤ) then ⟨0, 13⟩
    else if d = (10 : ℤ) then ⟨0, 13⟩
    else ⟨0, 14⟩

def cellA5B3 : CellData where
  inverse := 107
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 13⟩
    else if d = (-5 : ℤ) then ⟨0, 13⟩
    else if d = (0 : ℤ) then ⟨0, 13⟩
    else if d = (1 : ℤ) then ⟨0, 13⟩
    else if d = (2 : ℤ) then ⟨0, 13⟩
    else if d = (7 : ℤ) then ⟨0, 13⟩
    else if d = (8 : ℤ) then ⟨0, 13⟩
    else if d = (9 : ℤ) then ⟨0, 13⟩
    else ⟨0, 14⟩

def cellA5B4 : CellData where
  inverse := 607
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 5⟩
    else if d = (-9 : ℤ) then ⟨0, 5⟩
    else if d = (-8 : ℤ) then ⟨0, 5⟩
    else if d = (-7 : ℤ) then ⟨0, 5⟩
    else if d = (-6 : ℤ) then ⟨0, 5⟩
    else if d = (-5 : ℤ) then ⟨0, 5⟩
    else if d = (-4 : ℤ) then ⟨0, 5⟩
    else if d = (-3 : ℤ) then ⟨0, 5⟩
    else if d = (-2 : ℤ) then ⟨0, 5⟩
    else if d = (-1 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA5B5 : CellData where
  inverse := 2482
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA5B6 : CellData where
  inverse := 14982
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B7 : CellData where
  inverse := 77482
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B8 : CellData where
  inverse := 311857
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B9 : CellData where
  inverse := 1093107
  bounds := fun _ => ⟨0, -1⟩

def cellA5B10 : CellData where
  inverse := 6952482
  bounds := fun _ => ⟨0, -1⟩

def cellA5B11 : CellData where
  inverse := 46014982
  bounds := fun _ => ⟨0, -1⟩

def cellA5B12 : CellData where
  inverse := 143671232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B13 : CellData where
  inverse := 1120233732
  bounds := fun _ => ⟨0, -1⟩

def cellA5B14 : CellData where
  inverse := 6003046232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B15 : CellData where
  inverse := 18210077482
  bounds := fun _ => ⟨0, -1⟩

def cellA5B16 : CellData where
  inverse := 18210077482
  bounds := fun _ => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3⟩
    else if d = (-5 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (5 : ℤ) then ⟨0, 3⟩
    else if d = (10 : ℤ) then ⟨0, 3⟩
    else ⟨0, 4⟩

def cellA6B2 : CellData where
  inverse := 19
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 3⟩
    else if d = (-4 : ℤ) then ⟨0, 3⟩
    else if d = (0 : ℤ) then ⟨0, 3⟩
    else ⟨0, 4⟩

def cellA6B3 : CellData where
  inverse := 119
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 3⟩
    else if d = (1 : ℤ) then ⟨0, 3⟩
    else if d = (2 : ℤ) then ⟨0, 3⟩
    else ⟨0, 4⟩

def cellA6B4 : CellData where
  inverse := 619
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4⟩
    else if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-8 : ℤ) then ⟨0, 4⟩
    else if d = (-7 : ℤ) then ⟨0, 4⟩
    else if d = (-6 : ℤ) then ⟨0, 4⟩
    else if d = (-5 : ℤ) then ⟨0, 4⟩
    else if d = (-4 : ℤ) then ⟨0, 4⟩
    else if d = (-3 : ℤ) then ⟨0, 4⟩
    else if d = (-2 : ℤ) then ⟨0, 4⟩
    else if d = (-1 : ℤ) then ⟨0, 4⟩
    else ⟨0, 3⟩

def cellA6B5 : CellData where
  inverse := 1869
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA6B6 : CellData where
  inverse := 4994
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B7 : CellData where
  inverse := 51869
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B8 : CellData where
  inverse := 364369
  bounds := fun _ => ⟨0, -1⟩

def cellA6B9 : CellData where
  inverse := 364369
  bounds := fun _ => ⟨0, -1⟩

def cellA6B10 : CellData where
  inverse := 2317494
  bounds := fun _ => ⟨0, -1⟩

def cellA6B11 : CellData where
  inverse := 31614369
  bounds := fun _ => ⟨0, -1⟩

def cellA6B12 : CellData where
  inverse := 129270619
  bounds := fun _ => ⟨0, -1⟩

def cellA6B13 : CellData where
  inverse := 373411244
  bounds := fun _ => ⟨0, -1⟩

def cellA6B14 : CellData where
  inverse := 4035520619
  bounds := fun _ => ⟨0, -1⟩

def cellA6B15 : CellData where
  inverse := 16242551869
  bounds := fun _ => ⟨0, -1⟩

def cellA6B16 : CellData where
  inverse := 107795286244
  bounds := fun _ => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA7B2 : CellData where
  inverse := 23
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (0 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, 1⟩

def cellA7B3 : CellData where
  inverse := 123
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

def cellA7B4 : CellData where
  inverse := 623
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

def cellA7B5 : CellData where
  inverse := 623
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1⟩
    else if d = (-5 : ℤ) then ⟨0, 1⟩
    else ⟨0, 0⟩

def cellA7B6 : CellData where
  inverse := 6873
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B7 : CellData where
  inverse := 69373
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B8 : CellData where
  inverse := 381873
  bounds := fun _ => ⟨0, -1⟩

def cellA7B9 : CellData where
  inverse := 772498
  bounds := fun _ => ⟨0, -1⟩

def cellA7B10 : CellData where
  inverse := 772498
  bounds := fun _ => ⟨0, -1⟩

def cellA7B11 : CellData where
  inverse := 10538123
  bounds := fun _ => ⟨0, -1⟩

def cellA7B12 : CellData where
  inverse := 205850623
  bounds := fun _ => ⟨0, -1⟩

def cellA7B13 : CellData where
  inverse := 938272498
  bounds := fun _ => ⟨0, -1⟩

def cellA7B14 : CellData where
  inverse := 3379678748
  bounds := fun _ => ⟨0, -1⟩

def cellA7B15 : CellData where
  inverse := 15586709998
  bounds := fun _ => ⟨0, -1⟩

def cellA7B16 : CellData where
  inverse := 137657022498
  bounds := fun _ => ⟨0, -1⟩

def cellA8B1 : CellData where
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

def cellA8B2 : CellData where
  inverse := 16
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-8 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (-2 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA8B3 : CellData where
  inverse := 41
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

def cellA8B4 : CellData where
  inverse := 416
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

def cellA8B5 : CellData where
  inverse := 2291
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-7 : ℤ) then ⟨0, -1⟩
    else if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (-3 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (4 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA8B6 : CellData where
  inverse := 2291
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B7 : CellData where
  inverse := 49166
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B8 : CellData where
  inverse := 127291
  bounds := fun _ => ⟨0, -1⟩

def cellA8B9 : CellData where
  inverse := 908541
  bounds := fun _ => ⟨0, -1⟩

def cellA8B10 : CellData where
  inverse := 6767916
  bounds := fun _ => ⟨0, -1⟩

def cellA8B11 : CellData where
  inverse := 36064791
  bounds := fun _ => ⟨0, -1⟩

def cellA8B12 : CellData where
  inverse := 231377291
  bounds := fun _ => ⟨0, -1⟩

def cellA8B13 : CellData where
  inverse := 719658541
  bounds := fun _ => ⟨0, -1⟩

def cellA8B14 : CellData where
  inverse := 3161064791
  bounds := fun _ => ⟨0, -1⟩

def cellA8B15 : CellData where
  inverse := 15368096041
  bounds := fun _ => ⟨0, -1⟩

def cellA8B16 : CellData where
  inverse := 45885674166
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

end Math.B699.CRTStage2Pair35.Chunk000
