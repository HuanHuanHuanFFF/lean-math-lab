import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage1Pair37.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 5
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 13247⟩
    else if d = (-4 : ℤ) then ⟨0, 13247⟩
    else if d = (-1 : ℤ) then ⟨0, 13247⟩
    else if d = (3 : ℤ) then ⟨1, 13247⟩
    else if d = (6 : ℤ) then ⟨1, 13247⟩
    else if d = (9 : ℤ) then ⟨1, 13246⟩
    else if d = (10 : ℤ) then ⟨1, 13247⟩
    else ⟨0, 13246⟩

def cellA1B2 : CellData where
  inverse := 33
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1892⟩
    else if d = (-7 : ℤ) then ⟨0, 1892⟩
    else if d = (-4 : ℤ) then ⟨0, 1892⟩
    else if d = (-1 : ℤ) then ⟨0, 1892⟩
    else if d = (2 : ℤ) then ⟨0, 1892⟩
    else if d = (3 : ℤ) then ⟨1, 1892⟩
    else if d = (5 : ℤ) then ⟨0, 1892⟩
    else if d = (6 : ℤ) then ⟨1, 1892⟩
    else if d = (8 : ℤ) then ⟨0, 1892⟩
    else if d = (9 : ℤ) then ⟨1, 1892⟩
    else ⟨0, 1891⟩

def cellA1B3 : CellData where
  inverse := 229
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 270⟩
    else if d = (-7 : ℤ) then ⟨0, 270⟩
    else if d = (-4 : ℤ) then ⟨0, 270⟩
    else if d = (-1 : ℤ) then ⟨0, 270⟩
    else if d = (2 : ℤ) then ⟨0, 270⟩
    else if d = (3 : ℤ) then ⟨1, 270⟩
    else if d = (5 : ℤ) then ⟨0, 270⟩
    else if d = (6 : ℤ) then ⟨1, 270⟩
    else if d = (8 : ℤ) then ⟨0, 270⟩
    else if d = (9 : ℤ) then ⟨1, 270⟩
    else ⟨0, 269⟩

def cellA1B4 : CellData where
  inverse := 1601
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 38⟩
    else if d = (-7 : ℤ) then ⟨0, 38⟩
    else if d = (-4 : ℤ) then ⟨0, 38⟩
    else if d = (-1 : ℤ) then ⟨0, 38⟩
    else if d = (2 : ℤ) then ⟨0, 38⟩
    else if d = (3 : ℤ) then ⟨1, 38⟩
    else if d = (5 : ℤ) then ⟨0, 38⟩
    else if d = (6 : ℤ) then ⟨1, 38⟩
    else if d = (8 : ℤ) then ⟨0, 38⟩
    else if d = (9 : ℤ) then ⟨1, 38⟩
    else ⟨0, 37⟩

def cellA1B5 : CellData where
  inverse := 11205
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 5⟩
    else if d = (-7 : ℤ) then ⟨0, 5⟩
    else if d = (-4 : ℤ) then ⟨0, 5⟩
    else if d = (-1 : ℤ) then ⟨0, 5⟩
    else if d = (2 : ℤ) then ⟨0, 5⟩
    else if d = (3 : ℤ) then ⟨1, 5⟩
    else if d = (5 : ℤ) then ⟨0, 5⟩
    else if d = (6 : ℤ) then ⟨1, 5⟩
    else if d = (8 : ℤ) then ⟨0, 5⟩
    else if d = (9 : ℤ) then ⟨1, 5⟩
    else ⟨0, 4⟩

def cellA1B6 : CellData where
  inverse := 78433
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (-3 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, 0⟩

def cellA1B7 : CellData where
  inverse := 549029
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B8 : CellData where
  inverse := 3843201
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B9 : CellData where
  inverse := 26902405
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B10 : CellData where
  inverse := 188316833
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B11 : CellData where
  inverse := 1318217829
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B12 : CellData where
  inverse := 9227524801
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B13 : CellData where
  inverse := 64592673605
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B14 : CellData where
  inverse := 452148715233
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B15 : CellData where
  inverse := 3165041006629
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B16 : CellData where
  inverse := 22155287046401
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B17 : CellData where
  inverse := 155087009324805
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B18 : CellData where
  inverse := 1085609065273633
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B19 : CellData where
  inverse := 7599263456915429
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B20 : CellData where
  inverse := 53194844198408001
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B21 : CellData where
  inverse := 372363909388856005
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 10303⟩
    else if d = (-5 : ℤ) then ⟨0, 10303⟩
    else if d = (-3 : ℤ) then ⟨0, 10303⟩
    else if d = (-1 : ℤ) then ⟨0, 10303⟩
    else if d = (2 : ℤ) then ⟨0, 10303⟩
    else if d = (4 : ℤ) then ⟨0, 10303⟩
    else if d = (6 : ℤ) then ⟨0, 10303⟩
    else if d = (8 : ℤ) then ⟨0, 10303⟩
    else if d = (9 : ℤ) then ⟨1, 10303⟩
    else ⟨0, 10302⟩

def cellA2B2 : CellData where
  inverse := 11
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1892⟩
    else if d = (-7 : ℤ) then ⟨0, 1892⟩
    else if d = (-4 : ℤ) then ⟨0, 1892⟩
    else if d = (-3 : ℤ) then ⟨0, 1892⟩
    else if d = (1 : ℤ) then ⟨0, 1892⟩
    else if d = (2 : ℤ) then ⟨0, 1892⟩
    else if d = (5 : ℤ) then ⟨0, 1892⟩
    else if d = (6 : ℤ) then ⟨0, 1892⟩
    else if d = (9 : ℤ) then ⟨1, 1892⟩
    else if d = (10 : ℤ) then ⟨0, 1892⟩
    else ⟨0, 1891⟩

def cellA2B3 : CellData where
  inverse := 305
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 270⟩
    else if d = (-3 : ℤ) then ⟨0, 270⟩
    else if d = (-2 : ℤ) then ⟨0, 270⟩
    else if d = (-1 : ℤ) then ⟨0, 270⟩
    else if d = (6 : ℤ) then ⟨0, 270⟩
    else if d = (7 : ℤ) then ⟨0, 270⟩
    else if d = (8 : ℤ) then ⟨0, 270⟩
    else if d = (9 : ℤ) then ⟨1, 270⟩
    else ⟨0, 269⟩

def cellA2B4 : CellData where
  inverse := 1334
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 37⟩
    else if d = (-6 : ℤ) then ⟨0, 37⟩
    else if d = (-4 : ℤ) then ⟨0, 37⟩
    else if d = (-2 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (3 : ℤ) then ⟨0, 37⟩
    else if d = (5 : ℤ) then ⟨0, 37⟩
    else if d = (7 : ℤ) then ⟨0, 37⟩
    else if d = (9 : ℤ) then ⟨1, 38⟩
    else ⟨0, 38⟩

def cellA2B5 : CellData where
  inverse := 3735
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 5⟩
    else if d = (-7 : ℤ) then ⟨0, 5⟩
    else if d = (-4 : ℤ) then ⟨0, 5⟩
    else if d = (-3 : ℤ) then ⟨0, 5⟩
    else if d = (1 : ℤ) then ⟨0, 5⟩
    else if d = (2 : ℤ) then ⟨0, 5⟩
    else if d = (5 : ℤ) then ⟨0, 5⟩
    else if d = (6 : ℤ) then ⟨0, 5⟩
    else if d = (9 : ℤ) then ⟨1, 5⟩
    else if d = (10 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA2B6 : CellData where
  inverse := 104577
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, -1⟩
    else if d = (-8 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA2B7 : CellData where
  inverse := 457524
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B8 : CellData where
  inverse := 1281067
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B9 : CellData where
  inverse := 35869873
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B10 : CellData where
  inverse := 156930694
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B11 : CellData where
  inverse := 439405943
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B12 : CellData where
  inverse := 12303366401
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B13 : CellData where
  inverse := 53827228004
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B14 : CellData where
  inverse := 150716238411
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B15 : CellData where
  inverse := 4220054675505
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B16 : CellData where
  inverse := 18462739205334
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B17 : CellData where
  inverse := 51695669774935
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B18 : CellData where
  inverse := 1447478753698177
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B19 : CellData where
  inverse := 6332719547429524
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B20 : CellData where
  inverse := 17731614732802667
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B21 : CellData where
  inverse := 496485212518474673
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 6
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3434⟩
    else if d = (-9 : ℤ) then ⟨0, 3434⟩
    else if d = (-8 : ℤ) then ⟨0, 3434⟩
    else if d = (-3 : ℤ) then ⟨0, 3434⟩
    else if d = (-2 : ℤ) then ⟨0, 3434⟩
    else if d = (-1 : ℤ) then ⟨0, 3434⟩
    else if d = (4 : ℤ) then ⟨0, 3434⟩
    else if d = (5 : ℤ) then ⟨0, 3434⟩
    else if d = (6 : ℤ) then ⟨0, 3434⟩
    else ⟨0, 3433⟩

def cellA3B2 : CellData where
  inverse := 20
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1892⟩
    else if d = (-7 : ℤ) then ⟨0, 1892⟩
    else if d = (-4 : ℤ) then ⟨0, 1892⟩
    else if d = (-2 : ℤ) then ⟨0, 1892⟩
    else if d = (1 : ℤ) then ⟨0, 1892⟩
    else if d = (3 : ℤ) then ⟨0, 1892⟩
    else if d = (5 : ℤ) then ⟨0, 1892⟩
    else if d = (6 : ℤ) then ⟨0, 1892⟩
    else if d = (8 : ℤ) then ⟨0, 1892⟩
    else if d = (10 : ℤ) then ⟨0, 1892⟩
    else ⟨0, 1891⟩

def cellA3B3 : CellData where
  inverse := 216
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 270⟩
    else if d = (-6 : ℤ) then ⟨0, 270⟩
    else if d = (-3 : ℤ) then ⟨0, 270⟩
    else if d = (2 : ℤ) then ⟨0, 270⟩
    else if d = (5 : ℤ) then ⟨0, 270⟩
    else if d = (8 : ℤ) then ⟨0, 270⟩
    else if d = (10 : ℤ) then ⟨0, 270⟩
    else ⟨0, 269⟩

def cellA3B4 : CellData where
  inverse := 1245
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 37⟩
    else if d = (-8 : ℤ) then ⟨0, 37⟩
    else if d = (-6 : ℤ) then ⟨0, 37⟩
    else if d = (-4 : ℤ) then ⟨0, 37⟩
    else if d = (-2 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (7 : ℤ) then ⟨0, 37⟩
    else if d = (9 : ℤ) then ⟨0, 37⟩
    else ⟨0, 38⟩

def cellA3B5 : CellData where
  inverse := 1245
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 5⟩
    else if d = (-9 : ℤ) then ⟨0, 5⟩
    else if d = (-8 : ℤ) then ⟨0, 5⟩
    else if d = (-7 : ℤ) then ⟨0, 5⟩
    else if d = (1 : ℤ) then ⟨0, 5⟩
    else if d = (2 : ℤ) then ⟨0, 5⟩
    else if d = (3 : ℤ) then ⟨0, 5⟩
    else if d = (4 : ℤ) then ⟨0, 5⟩
    else if d = (5 : ℤ) then ⟨0, 5⟩
    else if d = (6 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA3B6 : CellData where
  inverse := 34859
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, -1⟩
    else if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (10 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA3B7 : CellData where
  inverse := 152508
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA3B8 : CellData where
  inverse := 4270223
  bounds := fun _ => ⟨0, -1⟩

def cellA3B9 : CellData where
  inverse := 38859029
  bounds := fun _ => ⟨0, -1⟩

def cellA3B10 : CellData where
  inverse := 240627064
  bounds := fun _ => ⟨0, -1⟩

def cellA3B11 : CellData where
  inverse := 805577562
  bounds := fun _ => ⟨0, -1⟩

def cellA3B12 : CellData where
  inverse := 8714884534
  bounds := fun _ => ⟨0, -1⟩

def cellA3B13 : CellData where
  inverse := 50238746137
  bounds := fun _ => ⟨0, -1⟩

def cellA3B14 : CellData where
  inverse := 50238746137
  bounds := fun _ => ⟨0, -1⟩

def cellA3B15 : CellData where
  inverse := 1406684891835
  bounds := fun _ => ⟨0, -1⟩

def cellA3B16 : CellData where
  inverse := 6154246401778
  bounds := fun _ => ⟨0, -1⟩

def cellA3B17 : CellData where
  inverse := 172318899249783
  bounds := fun _ => ⟨0, -1⟩

def cellA3B18 : CellData where
  inverse := 1568101983173025
  bounds := fun _ => ⟨0, -1⟩

def cellA3B19 : CellData where
  inverse := 9710169972725270
  bounds := fun _ => ⟨0, -1⟩

def cellA3B20 : CellData where
  inverse := 32507960343471556
  bounds := fun _ => ⟨0, -1⟩

def cellA3B21 : CellData where
  inverse := 351677025533919560
  bounds := fun _ => ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 1143⟩
    else if d = (-4 : ℤ) then ⟨0, 1143⟩
    else if d = (0 : ℤ) then ⟨0, 1143⟩
    else if d = (3 : ℤ) then ⟨0, 1143⟩
    else if d = (7 : ℤ) then ⟨0, 1143⟩
    else if d = (10 : ℤ) then ⟨0, 1143⟩
    else ⟨0, 1144⟩

def cellA4B2 : CellData where
  inverse := 23
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 1143⟩
    else if d = (2 : ℤ) then ⟨0, 1143⟩
    else if d = (4 : ℤ) then ⟨0, 1143⟩
    else ⟨0, 1144⟩

def cellA4B3 : CellData where
  inverse := 72
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 270⟩
    else if d = (-8 : ℤ) then ⟨0, 270⟩
    else if d = (-4 : ℤ) then ⟨0, 270⟩
    else if d = (1 : ℤ) then ⟨0, 270⟩
    else if d = (5 : ℤ) then ⟨0, 270⟩
    else if d = (6 : ℤ) then ⟨0, 270⟩
    else if d = (10 : ℤ) then ⟨0, 270⟩
    else ⟨0, 269⟩

def cellA4B4 : CellData where
  inverse := 415
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 37⟩
    else if d = (-6 : ℤ) then ⟨0, 37⟩
    else if d = (-2 : ℤ) then ⟨0, 37⟩
    else if d = (-1 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (4 : ℤ) then ⟨0, 37⟩
    else if d = (5 : ℤ) then ⟨0, 37⟩
    else if d = (10 : ℤ) then ⟨0, 37⟩
    else ⟨0, 38⟩

def cellA4B5 : CellData where
  inverse := 415
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 5⟩
    else if d = (2 : ℤ) then ⟨0, 5⟩
    else if d = (3 : ℤ) then ⟨0, 5⟩
    else if d = (4 : ℤ) then ⟨0, 5⟩
    else if d = (5 : ℤ) then ⟨0, 5⟩
    else if d = (6 : ℤ) then ⟨0, 5⟩
    else if d = (7 : ℤ) then ⟨0, 5⟩
    else if d = (8 : ℤ) then ⟨0, 5⟩
    else if d = (9 : ℤ) then ⟨0, 5⟩
    else if d = (10 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA4B6 : CellData where
  inverse := 50836
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (2 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA4B7 : CellData where
  inverse := 50836
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B8 : CellData where
  inverse := 3345008
  bounds := fun _ => ⟨0, -1⟩

def cellA4B9 : CellData where
  inverse := 26404212
  bounds := fun _ => ⟨0, -1⟩

def cellA4B10 : CellData where
  inverse := 268525854
  bounds := fun _ => ⟨0, -1⟩

def cellA4B11 : CellData where
  inverse := 268525854
  bounds := fun _ => ⟨0, -1⟩

def cellA4B12 : CellData where
  inverse := 12132486312
  bounds := fun _ => ⟨0, -1⟩

def cellA4B13 : CellData where
  inverse := 81338922317
  bounds := fun _ => ⟨0, -1⟩

def cellA4B14 : CellData where
  inverse := 468894963945
  bounds := fun _ => ⟨0, -1⟩

def cellA4B15 : CellData where
  inverse := 468894963945
  bounds := fun _ => ⟨0, -1⟩

def cellA4B16 : CellData where
  inverse := 24206702513660
  bounds := fun _ => ⟨0, -1⟩

def cellA4B17 : CellData where
  inverse := 57439633083261
  bounds := fun _ => ⟨0, -1⟩

def cellA4B18 : CellData where
  inverse := 522700661057675
  bounds := fun _ => ⟨0, -1⟩

def cellA4B19 : CellData where
  inverse := 7036355052699471
  bounds := fun _ => ⟨0, -1⟩

def cellA4B20 : CellData where
  inverse := 64030830979565186
  bounds := fun _ => ⟨0, -1⟩

def cellA4B21 : CellData where
  inverse := 303407629872401189
  bounds := fun _ => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 380⟩
    else if d = (-7 : ℤ) then ⟨0, 380⟩
    else if d = (-5 : ℤ) then ⟨0, 380⟩
    else if d = (-3 : ℤ) then ⟨0, 380⟩
    else if d = (0 : ℤ) then ⟨0, 380⟩
    else if d = (2 : ℤ) then ⟨0, 380⟩
    else if d = (4 : ℤ) then ⟨0, 380⟩
    else if d = (7 : ℤ) then ⟨0, 380⟩
    else if d = (9 : ℤ) then ⟨0, 380⟩
    else ⟨0, 381⟩

def cellA5B2 : CellData where
  inverse := 24
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 380⟩
    else if d = (2 : ℤ) then ⟨0, 380⟩
    else if d = (4 : ℤ) then ⟨0, 380⟩
    else if d = (6 : ℤ) then ⟨0, 380⟩
    else if d = (8 : ℤ) then ⟨0, 380⟩
    else if d = (10 : ℤ) then ⟨0, 380⟩
    else ⟨0, 381⟩

def cellA5B3 : CellData where
  inverse := 24
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 270⟩
    else if d = (1 : ℤ) then ⟨0, 270⟩
    else if d = (2 : ℤ) then ⟨0, 270⟩
    else if d = (3 : ℤ) then ⟨0, 270⟩
    else if d = (4 : ℤ) then ⟨0, 270⟩
    else if d = (5 : ℤ) then ⟨0, 270⟩
    else ⟨0, 269⟩

def cellA5B4 : CellData where
  inverse := 1739
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 37⟩
    else if d = (-7 : ℤ) then ⟨0, 37⟩
    else if d = (-6 : ℤ) then ⟨0, 37⟩
    else if d = (-3 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (1 : ℤ) then ⟨0, 37⟩
    else if d = (4 : ℤ) then ⟨0, 37⟩
    else if d = (8 : ℤ) then ⟨0, 37⟩
    else ⟨0, 38⟩

def cellA5B5 : CellData where
  inverse := 11343
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 5⟩
    else if d = (-7 : ℤ) then ⟨0, 5⟩
    else if d = (-4 : ℤ) then ⟨0, 5⟩
    else if d = (-1 : ℤ) then ⟨0, 5⟩
    else if d = (2 : ℤ) then ⟨0, 5⟩
    else if d = (3 : ℤ) then ⟨0, 5⟩
    else if d = (5 : ℤ) then ⟨0, 5⟩
    else if d = (6 : ℤ) then ⟨0, 5⟩
    else if d = (8 : ℤ) then ⟨0, 5⟩
    else if d = (9 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA5B6 : CellData where
  inverse := 95378
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (1 : ℤ) then ⟨0, -1⟩
    else if d = (6 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA5B7 : CellData where
  inverse := 565974
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B8 : CellData where
  inverse := 3036603
  bounds := fun _ => ⟨0, -1⟩

def cellA5B9 : CellData where
  inverse := 8801404
  bounds := fun _ => ⟨0, -1⟩

def cellA5B10 : CellData where
  inverse := 89508618
  bounds := fun _ => ⟨0, -1⟩

def cellA5B11 : CellData where
  inverse := 89508618
  bounds := fun _ => ⟨0, -1⟩

def cellA5B12 : CellData where
  inverse := 4044162104
  bounds := fun _ => ⟨0, -1⟩

def cellA5B13 : CellData where
  inverse := 59409310908
  bounds := fun _ => ⟨0, -1⟩

def cellA5B14 : CellData where
  inverse := 156298321315
  bounds := fun _ => ⟨0, -1⟩

def cellA5B15 : CellData where
  inverse := 156298321315
  bounds := fun _ => ⟨0, -1⟩

def cellA5B16 : CellData where
  inverse := 19146544361087
  bounds := fun _ => ⟨0, -1⟩

def cellA5B17 : CellData where
  inverse := 19146544361087
  bounds := fun _ => ⟨0, -1⟩

def cellA5B18 : CellData where
  inverse := 717038086322708
  bounds := fun _ => ⟨0, -1⟩

def cellA5B19 : CellData where
  inverse := 2345451684233157
  bounds := fun _ => ⟨0, -1⟩

def cellA5B20 : CellData where
  inverse := 47941032425725729
  bounds := fun _ => ⟨0, -1⟩

def cellA5B21 : CellData where
  inverse := 287317831318561732
  bounds := fun _ => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 127⟩
    else if d = (1 : ℤ) then ⟨0, 127⟩
    else if d = (8 : ℤ) then ⟨0, 127⟩
    else ⟨0, 126⟩

def cellA6B2 : CellData where
  inverse := 8
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 127⟩
    else if d = (-5 : ℤ) then ⟨0, 127⟩
    else if d = (1 : ℤ) then ⟨0, 127⟩
    else if d = (7 : ℤ) then ⟨0, 127⟩
    else ⟨0, 126⟩

def cellA6B3 : CellData where
  inverse := 8
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 127⟩
    else if d = (2 : ℤ) then ⟨0, 127⟩
    else if d = (3 : ℤ) then ⟨0, 127⟩
    else if d = (4 : ℤ) then ⟨0, 127⟩
    else if d = (5 : ℤ) then ⟨0, 127⟩
    else if d = (6 : ℤ) then ⟨0, 127⟩
    else if d = (7 : ℤ) then ⟨0, 127⟩
    else if d = (8 : ℤ) then ⟨0, 127⟩
    else ⟨0, 126⟩

def cellA6B4 : CellData where
  inverse := 1380
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 37⟩
    else if d = (-7 : ℤ) then ⟨0, 37⟩
    else if d = (-4 : ℤ) then ⟨0, 37⟩
    else if d = (-2 : ℤ) then ⟨0, 37⟩
    else if d = (0 : ℤ) then ⟨0, 37⟩
    else if d = (3 : ℤ) then ⟨0, 37⟩
    else if d = (5 : ℤ) then ⟨0, 37⟩
    else if d = (10 : ℤ) then ⟨0, 37⟩
    else ⟨0, 38⟩

def cellA6B5 : CellData where
  inverse := 3781
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 5⟩
    else if d = (-7 : ℤ) then ⟨0, 5⟩
    else if d = (-4 : ℤ) then ⟨0, 5⟩
    else if d = (-3 : ℤ) then ⟨0, 5⟩
    else if d = (1 : ℤ) then ⟨0, 5⟩
    else if d = (2 : ℤ) then ⟨0, 5⟩
    else if d = (5 : ℤ) then ⟨0, 5⟩
    else if d = (6 : ℤ) then ⟨0, 5⟩
    else if d = (9 : ℤ) then ⟨0, 5⟩
    else if d = (10 : ℤ) then ⟨0, 5⟩
    else ⟨0, 4⟩

def cellA6B6 : CellData where
  inverse := 71009
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, -1⟩
    else if d = (-5 : ℤ) then ⟨0, -1⟩
    else if d = (-2 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (3 : ℤ) then ⟨0, -1⟩
    else if d = (8 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA6B7 : CellData where
  inverse := 188658
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B8 : CellData where
  inverse := 1012201
  bounds := fun _ => ⟨0, -1⟩

def cellA6B9 : CellData where
  inverse := 29836206
  bounds := fun _ => ⟨0, -1⟩

def cellA6B10 : CellData where
  inverse := 29836206
  bounds := fun _ => ⟨0, -1⟩

def cellA6B11 : CellData where
  inverse := 29836206
  bounds := fun _ => ⟨0, -1⟩

def cellA6B12 : CellData where
  inverse := 5961816435
  bounds := fun _ => ⟨0, -1⟩

def cellA6B13 : CellData where
  inverse := 19803103636
  bounds := fun _ => ⟨0, -1⟩

def cellA6B14 : CellData where
  inverse := 504248155671
  bounds := fun _ => ⟨0, -1⟩

def cellA6B15 : CellData where
  inverse := 3217140447067
  bounds := fun _ => ⟨0, -1⟩

def cellA6B16 : CellData where
  inverse := 17459824976896
  bounds := fun _ => ⟨0, -1⟩

def cellA6B17 : CellData where
  inverse := 83925686116098
  bounds := fun _ => ⟨0, -1⟩

def cellA6B18 : CellData where
  inverse := 781817228077719
  bounds := fun _ => ⟨0, -1⟩

def cellA6B19 : CellData where
  inverse := 781817228077719
  bounds := fun _ => ⟨0, -1⟩

def cellA6B20 : CellData where
  inverse := 69175188340316577
  bounds := fun _ => ⟨0, -1⟩

def cellA6B21 : CellData where
  inverse := 468136519828376582
  bounds := fun _ => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 5
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 42⟩
    else if d = (-4 : ℤ) then ⟨0, 42⟩
    else if d = (-1 : ℤ) then ⟨0, 42⟩
    else if d = (3 : ℤ) then ⟨0, 42⟩
    else if d = (6 : ℤ) then ⟨0, 42⟩
    else if d = (10 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA7B2 : CellData where
  inverse := 19
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 42⟩
    else if d = (-7 : ℤ) then ⟨0, 42⟩
    else if d = (-5 : ℤ) then ⟨0, 42⟩
    else if d = (-2 : ℤ) then ⟨0, 42⟩
    else if d = (1 : ℤ) then ⟨0, 42⟩
    else if d = (3 : ℤ) then ⟨0, 42⟩
    else if d = (6 : ℤ) then ⟨0, 42⟩
    else if d = (8 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA7B3 : CellData where
  inverse := 117
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 42⟩
    else if d = (-5 : ℤ) then ⟨0, 42⟩
    else if d = (-2 : ℤ) then ⟨0, 42⟩
    else if d = (1 : ℤ) then ⟨0, 42⟩
    else if d = (3 : ℤ) then ⟨0, 42⟩
    else if d = (4 : ℤ) then ⟨0, 42⟩
    else if d = (6 : ℤ) then ⟨0, 42⟩
    else if d = (7 : ℤ) then ⟨0, 42⟩
    else if d = (9 : ℤ) then ⟨0, 42⟩
    else ⟨0, 41⟩

def cellA7B4 : CellData where
  inverse := 460
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

def cellA7B5 : CellData where
  inverse := 12465
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4⟩
    else if d = (-7 : ℤ) then ⟨0, 4⟩
    else if d = (-6 : ℤ) then ⟨0, 4⟩
    else if d = (-3 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (1 : ℤ) then ⟨0, 4⟩
    else if d = (4 : ℤ) then ⟨0, 4⟩
    else if d = (5 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨0, 4⟩
    else if d = (9 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA7B6 : CellData where
  inverse := 62886
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (-4 : ℤ) then ⟨0, -1⟩
    else if d = (-2 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (9 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA7B7 : CellData where
  inverse := 62886
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B8 : CellData where
  inverse := 4180601
  bounds := fun _ => ⟨0, -1⟩

def cellA7B9 : CellData where
  inverse := 9945402
  bounds := fun _ => ⟨0, -1⟩

def cellA7B10 : CellData where
  inverse := 9945402
  bounds := fun _ => ⟨0, -1⟩

def cellA7B11 : CellData where
  inverse := 9945402
  bounds := fun _ => ⟨0, -1⟩

def cellA7B12 : CellData where
  inverse := 1987272145
  bounds := fun _ => ⟨0, -1⟩

def cellA7B13 : CellData where
  inverse := 71193708150
  bounds := fun _ => ⟨0, -1⟩

def cellA7B14 : CellData where
  inverse := 168082718557
  bounds := fun _ => ⟨0, -1⟩

def cellA7B15 : CellData where
  inverse := 4237421155651
  bounds := fun _ => ⟨0, -1⟩

def cellA7B16 : CellData where
  inverse := 27975228705366
  bounds := fun _ => ⟨0, -1⟩

def cellA7B17 : CellData where
  inverse := 27975228705366
  bounds := fun _ => ⟨0, -1⟩

def cellA7B18 : CellData where
  inverse := 260605742692573
  bounds := fun _ => ⟨0, -1⟩

def cellA7B19 : CellData where
  inverse := 260605742692573
  bounds := fun _ => ⟨0, -1⟩

def cellA7B20 : CellData where
  inverse := 23058396113438859
  bounds := fun _ => ⟨0, -1⟩

def cellA7B21 : CellData where
  inverse := 342227461303886863
  bounds := fun _ => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, 13⟩

def cellA8B2 : CellData where
  inverse := 39
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 14⟩
    else if d = (-5 : ℤ) then ⟨0, 14⟩
    else ⟨0, 13⟩

def cellA8B3 : CellData where
  inverse := 39
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 14⟩
    else if d = (1 : ℤ) then ⟨0, 14⟩
    else if d = (9 : ℤ) then ⟨0, 14⟩
    else ⟨0, 13⟩

def cellA8B4 : CellData where
  inverse := 1754
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 14⟩
    else if d = (7 : ℤ) then ⟨0, 14⟩
    else ⟨0, 13⟩

def cellA8B5 : CellData where
  inverse := 4155
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4⟩
    else if d = (-9 : ℤ) then ⟨0, 4⟩
    else if d = (-5 : ℤ) then ⟨0, 4⟩
    else if d = (-1 : ℤ) then ⟨0, 4⟩
    else if d = (0 : ℤ) then ⟨0, 4⟩
    else if d = (3 : ℤ) then ⟨0, 4⟩
    else if d = (4 : ℤ) then ⟨0, 4⟩
    else if d = (7 : ℤ) then ⟨0, 4⟩
    else if d = (8 : ℤ) then ⟨0, 4⟩
    else ⟨0, 5⟩

def cellA8B6 : CellData where
  inverse := 20962
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, -1⟩
    else if d = (-1 : ℤ) then ⟨0, -1⟩
    else if d = (0 : ℤ) then ⟨0, -1⟩
    else if d = (5 : ℤ) then ⟨0, -1⟩
    else ⟨0, 0⟩

def cellA8B7 : CellData where
  inverse := 20962
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B8 : CellData where
  inverse := 3315134
  bounds := fun _ => ⟨0, -1⟩

def cellA8B9 : CellData where
  inverse := 3315134
  bounds := fun _ => ⟨0, -1⟩

def cellA8B10 : CellData where
  inverse := 3315134
  bounds := fun _ => ⟨0, -1⟩

def cellA8B11 : CellData where
  inverse := 3315134
  bounds := fun _ => ⟨0, -1⟩

def cellA8B12 : CellData where
  inverse := 9889948849
  bounds := fun _ => ⟨0, -1⟩

def cellA8B13 : CellData where
  inverse := 23731236050
  bounds := fun _ => ⟨0, -1⟩

def cellA8B14 : CellData where
  inverse := 508176288085
  bounds := fun _ => ⟨0, -1⟩

def cellA8B15 : CellData where
  inverse := 4577514725179
  bounds := fun _ => ⟨0, -1⟩

def cellA8B16 : CellData where
  inverse := 9325076235122
  bounds := fun _ => ⟨0, -1⟩

def cellA8B17 : CellData where
  inverse := 9325076235122
  bounds := fun _ => ⟨0, -1⟩

def cellA8B18 : CellData where
  inverse := 1172477646171157
  bounds := fun _ => ⟨0, -1⟩

def cellA8B19 : CellData where
  inverse := 7686132037812953
  bounds := fun _ => ⟨0, -1⟩

def cellA8B20 : CellData where
  inverse := 7686132037812953
  bounds := fun _ => ⟨0, -1⟩

def cellA8B21 : CellData where
  inverse := 486439729823484959
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

end Math.B699.CRTStage1Pair37.Chunk000
