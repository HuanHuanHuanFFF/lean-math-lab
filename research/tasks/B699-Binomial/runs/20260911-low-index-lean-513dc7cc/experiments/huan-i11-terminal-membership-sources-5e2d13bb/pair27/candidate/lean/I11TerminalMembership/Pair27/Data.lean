import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Candidates
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.Meta

/-! UNCOMPILED complete stage04 membership table; all21 shifts and complete
RowCell parameter ranges are retained. No whole-grid decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.I11TerminalMembership.Pair27
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 4
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 71⟩ else if d = (-8 : ℤ) then ⟨0, 71⟩ else if d = (-5 : ℤ) then ⟨0, 71⟩ else if d = (-3 : ℤ) then ⟨0, 71⟩ else if d = (-1 : ℤ) then ⟨0, 71⟩ else if d = (2 : ℤ) then ⟨1, 71⟩ else if d = (4 : ℤ) then ⟨1, 71⟩ else if d = (6 : ℤ) then ⟨1, 71⟩ else if d = (8 : ℤ) then ⟨1, 70⟩ else if d = (9 : ℤ) then ⟨1, 71⟩ else if d = (10 : ℤ) then ⟨1, 70⟩ else ⟨0, 70⟩

def cellA1B2 : CellData where
  inverse := 25
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 10⟩ else if d = (4 : ℤ) then ⟨1, 10⟩ else if d = (6 : ℤ) then ⟨1, 10⟩ else if d = (8 : ℤ) then ⟨1, 10⟩ else if d = (10 : ℤ) then ⟨1, 10⟩ else ⟨0, 9⟩

def cellA1B3 : CellData where
  inverse := 172
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 1⟩ else if d = (4 : ℤ) then ⟨1, 1⟩ else if d = (6 : ℤ) then ⟨1, 1⟩ else if d = (8 : ℤ) then ⟨1, 1⟩ else if d = (10 : ℤ) then ⟨1, 1⟩ else ⟨0, 0⟩

def cellA1B4 : CellData where
  inverse := 1201
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B5 : CellData where
  inverse := 8404
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B6 : CellData where
  inverse := 58825
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B7 : CellData where
  inverse := 411772
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B8 : CellData where
  inverse := 2882401
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 71⟩ else if d = (-9 : ℤ) then ⟨0, 71⟩ else if d = (-6 : ℤ) then ⟨0, 71⟩ else if d = (-3 : ℤ) then ⟨0, 71⟩ else if d = (-2 : ℤ) then ⟨0, 71⟩ else if d = (1 : ℤ) then ⟨0, 71⟩ else if d = (4 : ℤ) then ⟨1, 71⟩ else if d = (5 : ℤ) then ⟨0, 71⟩ else if d = (8 : ℤ) then ⟨1, 71⟩ else ⟨0, 70⟩

def cellA2B2 : CellData where
  inverse := 37
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 10⟩ else if d = (4 : ℤ) then ⟨1, 10⟩ else if d = (8 : ℤ) then ⟨1, 10⟩ else ⟨0, 9⟩

def cellA2B3 : CellData where
  inverse := 86
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 1⟩ else if d = (-3 : ℤ) then ⟨0, 1⟩ else if d = (1 : ℤ) then ⟨0, 1⟩ else if d = (4 : ℤ) then ⟨1, 1⟩ else if d = (5 : ℤ) then ⟨0, 1⟩ else if d = (8 : ℤ) then ⟨1, 1⟩ else if d = (9 : ℤ) then ⟨0, 1⟩ else ⟨0, 0⟩

def cellA2B4 : CellData where
  inverse := 1801
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B5 : CellData where
  inverse := 4202
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B6 : CellData where
  inverse := 88237
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B7 : CellData where
  inverse := 205886
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B8 : CellData where
  inverse := 4323601
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 62⟩ else if d = (-5 : ℤ) then ⟨0, 62⟩ else if d = (-4 : ℤ) then ⟨0, 62⟩ else if d = (1 : ℤ) then ⟨0, 62⟩ else if d = (2 : ℤ) then ⟨0, 62⟩ else if d = (3 : ℤ) then ⟨0, 62⟩ else if d = (4 : ℤ) then ⟨0, 62⟩ else if d = (8 : ℤ) then ⟨1, 62⟩ else if d = (9 : ℤ) then ⟨0, 62⟩ else if d = (10 : ℤ) then ⟨0, 62⟩ else ⟨0, 61⟩

def cellA3B2 : CellData where
  inverse := 43
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 10⟩ else if d = (-1 : ℤ) then ⟨0, 10⟩ else if d = (7 : ℤ) then ⟨0, 10⟩ else if d = (8 : ℤ) then ⟨1, 10⟩ else ⟨0, 9⟩

def cellA3B3 : CellData where
  inverse := 43
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 1⟩ else if d = (-6 : ℤ) then ⟨0, 1⟩ else if d = (-5 : ℤ) then ⟨0, 1⟩ else if d = (1 : ℤ) then ⟨0, 1⟩ else if d = (2 : ℤ) then ⟨0, 1⟩ else if d = (3 : ℤ) then ⟨0, 1⟩ else if d = (8 : ℤ) then ⟨1, 1⟩ else if d = (9 : ℤ) then ⟨0, 1⟩ else if d = (10 : ℤ) then ⟨0, 1⟩ else ⟨0, 0⟩

def cellA3B4 : CellData where
  inverse := 2101
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B5 : CellData where
  inverse := 2101
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B6 : CellData where
  inverse := 102943
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B7 : CellData where
  inverse := 102943
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B8 : CellData where
  inverse := 5044201
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 4
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 31⟩ else if d = (2 : ℤ) then ⟨0, 31⟩ else if d = (4 : ℤ) then ⟨0, 31⟩ else if d = (9 : ℤ) then ⟨0, 31⟩ else ⟨0, 30⟩

def cellA4B2 : CellData where
  inverse := 46
  bounds := fun d => if d = (-3 : ℤ) then ⟨0, 10⟩ else if d = (-2 : ℤ) then ⟨0, 10⟩ else if d = (-1 : ℤ) then ⟨0, 10⟩ else ⟨0, 9⟩

def cellA4B3 : CellData where
  inverse := 193
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1⟩ else if d = (-7 : ℤ) then ⟨0, 1⟩ else if d = (-5 : ℤ) then ⟨0, 1⟩ else if d = (-3 : ℤ) then ⟨0, 1⟩ else if d = (-1 : ℤ) then ⟨0, 1⟩ else if d = (2 : ℤ) then ⟨0, 1⟩ else if d = (4 : ℤ) then ⟨0, 1⟩ else if d = (6 : ℤ) then ⟨0, 1⟩ else if d = (9 : ℤ) then ⟨0, 1⟩ else ⟨0, 0⟩

def cellA4B4 : CellData where
  inverse := 2251
  bounds := fun d => if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA4B5 : CellData where
  inverse := 9454
  bounds := fun _d => ⟨0, -1⟩

def cellA4B6 : CellData where
  inverse := 110296
  bounds := fun _d => ⟨0, -1⟩

def cellA4B7 : CellData where
  inverse := 463243
  bounds := fun _d => ⟨0, -1⟩

def cellA4B8 : CellData where
  inverse := 5404501
  bounds := fun _d => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 14⟩ else if d = (-7 : ℤ) then ⟨0, 14⟩ else if d = (-4 : ℤ) then ⟨0, 14⟩ else if d = (-1 : ℤ) then ⟨0, 14⟩ else if d = (0 : ℤ) then ⟨0, 14⟩ else if d = (3 : ℤ) then ⟨0, 14⟩ else if d = (6 : ℤ) then ⟨0, 14⟩ else if d = (7 : ℤ) then ⟨0, 14⟩ else if d = (10 : ℤ) then ⟨0, 14⟩ else ⟨0, 15⟩

def cellA5B2 : CellData where
  inverse := 23
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 10⟩ else if d = (-4 : ℤ) then ⟨0, 10⟩ else if d = (-2 : ℤ) then ⟨0, 10⟩ else ⟨0, 9⟩

def cellA5B3 : CellData where
  inverse := 268
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1⟩ else if d = (-6 : ℤ) then ⟨0, 1⟩ else if d = (-5 : ℤ) then ⟨0, 1⟩ else if d = (-2 : ℤ) then ⟨0, 1⟩ else if d = (-1 : ℤ) then ⟨0, 1⟩ else if d = (3 : ℤ) then ⟨0, 1⟩ else if d = (4 : ℤ) then ⟨0, 1⟩ else if d = (8 : ℤ) then ⟨0, 1⟩ else if d = (9 : ℤ) then ⟨0, 1⟩ else ⟨0, 0⟩

def cellA5B4 : CellData where
  inverse := 2326
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA5B5 : CellData where
  inverse := 4727
  bounds := fun _d => ⟨0, -1⟩

def cellA5B6 : CellData where
  inverse := 55148
  bounds := fun _d => ⟨0, -1⟩

def cellA5B7 : CellData where
  inverse := 643393
  bounds := fun _d => ⟨0, -1⟩

def cellA5B8 : CellData where
  inverse := 5584651
  bounds := fun _d => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 6⟩ else if d = (-7 : ℤ) then ⟨0, 6⟩ else if d = (-1 : ℤ) then ⟨0, 6⟩ else if d = (0 : ℤ) then ⟨0, 6⟩ else if d = (6 : ℤ) then ⟨0, 6⟩ else if d = (7 : ℤ) then ⟨0, 6⟩ else ⟨0, 7⟩

def cellA6B2 : CellData where
  inverse := 36
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 6⟩ else if d = (0 : ℤ) then ⟨0, 6⟩ else if d = (4 : ℤ) then ⟨0, 6⟩ else if d = (8 : ℤ) then ⟨0, 6⟩ else ⟨0, 7⟩

def cellA6B3 : CellData where
  inverse := 134
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1⟩ else if d = (-7 : ℤ) then ⟨0, 1⟩ else if d = (-5 : ℤ) then ⟨0, 1⟩ else if d = (-4 : ℤ) then ⟨0, 1⟩ else if d = (-2 : ℤ) then ⟨0, 1⟩ else if d = (1 : ℤ) then ⟨0, 1⟩ else if d = (3 : ℤ) then ⟨0, 1⟩ else if d = (6 : ℤ) then ⟨0, 1⟩ else if d = (8 : ℤ) then ⟨0, 1⟩ else ⟨0, 0⟩

def cellA6B4 : CellData where
  inverse := 1163
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA6B5 : CellData where
  inverse := 10767
  bounds := fun _d => ⟨0, -1⟩

def cellA6B6 : CellData where
  inverse := 27574
  bounds := fun _d => ⟨0, -1⟩

def cellA6B7 : CellData where
  inverse := 733468
  bounds := fun _d => ⟨0, -1⟩

def cellA6B8 : CellData where
  inverse := 5674726
  bounds := fun _d => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 4
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 2⟩ else if d = (0 : ℤ) then ⟨0, 2⟩ else if d = (7 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA7B2 : CellData where
  inverse := 18
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 2⟩ else if d = (8 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA7B3 : CellData where
  inverse := 67
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1⟩ else if d = (-9 : ℤ) then ⟨0, 1⟩ else if d = (-8 : ℤ) then ⟨0, 1⟩ else if d = (-5 : ℤ) then ⟨0, 1⟩ else if d = (-4 : ℤ) then ⟨0, 1⟩ else if d = (-3 : ℤ) then ⟨0, 1⟩ else if d = (1 : ℤ) then ⟨0, 1⟩ else if d = (2 : ℤ) then ⟨0, 1⟩ else if d = (6 : ℤ) then ⟨0, 1⟩ else if d = (7 : ℤ) then ⟨0, 1⟩ else ⟨0, 0⟩

def cellA7B4 : CellData where
  inverse := 1782
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA7B5 : CellData where
  inverse := 13787
  bounds := fun _d => ⟨0, -1⟩

def cellA7B6 : CellData where
  inverse := 13787
  bounds := fun _d => ⟨0, -1⟩

def cellA7B7 : CellData where
  inverse := 366734
  bounds := fun _d => ⟨0, -1⟩

def cellA7B8 : CellData where
  inverse := 2837363
  bounds := fun _d => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA8B2 : CellData where
  inverse := 9
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA8B3 : CellData where
  inverse := 205
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1⟩ else if d = (-8 : ℤ) then ⟨0, 1⟩ else if d = (-6 : ℤ) then ⟨0, 1⟩ else if d = (-5 : ℤ) then ⟨0, 1⟩ else if d = (-3 : ℤ) then ⟨0, 1⟩ else if d = (-1 : ℤ) then ⟨0, 1⟩ else if d = (2 : ℤ) then ⟨0, 1⟩ else if d = (4 : ℤ) then ⟨0, 1⟩ else if d = (7 : ℤ) then ⟨0, 1⟩ else if d = (9 : ℤ) then ⟨0, 1⟩ else ⟨0, 0⟩

def cellA8B4 : CellData where
  inverse := 891
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA8B5 : CellData where
  inverse := 15297
  bounds := fun _d => ⟨0, -1⟩

def cellA8B6 : CellData where
  inverse := 65718
  bounds := fun _d => ⟨0, -1⟩

def cellA8B7 : CellData where
  inverse := 183367
  bounds := fun _d => ⟨0, -1⟩

def cellA8B8 : CellData where
  inverse := 4301082
  bounds := fun _d => ⟨0, -1⟩

def cellA9B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (7 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA9B2 : CellData where
  inverse := 29
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA9B3 : CellData where
  inverse := 274
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (5 : ℤ) then ⟨0, -1⟩ else if d = (10 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA9B4 : CellData where
  inverse := 1646
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA9B5 : CellData where
  inverse := 16052
  bounds := fun _d => ⟨0, -1⟩

def cellA9B6 : CellData where
  inverse := 32859
  bounds := fun _d => ⟨0, -1⟩

def cellA9B7 : CellData where
  inverse := 503455
  bounds := fun _d => ⟨0, -1⟩

def cellA9B8 : CellData where
  inverse := 2150541
  bounds := fun _d => ⟨0, -1⟩

def cellA10B1 : CellData where
  inverse := 4
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B2 : CellData where
  inverse := 39
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B3 : CellData where
  inverse := 137
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B4 : CellData where
  inverse := 823
  bounds := fun d => if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B5 : CellData where
  inverse := 8026
  bounds := fun _d => ⟨0, -1⟩

def cellA10B6 : CellData where
  inverse := 75254
  bounds := fun _d => ⟨0, -1⟩

def cellA10B7 : CellData where
  inverse := 663499
  bounds := fun _d => ⟨0, -1⟩

def cellA10B8 : CellData where
  inverse := 3957671
  bounds := fun _d => ⟨0, -1⟩

def cellA11B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B2 : CellData where
  inverse := 44
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B3 : CellData where
  inverse := 240
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B4 : CellData where
  inverse := 1612
  bounds := fun d => if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B5 : CellData where
  inverse := 4013
  bounds := fun _d => ⟨0, -1⟩

def cellA11B6 : CellData where
  inverse := 37627
  bounds := fun _d => ⟨0, -1⟩

def cellA11B7 : CellData where
  inverse := 743521
  bounds := fun _d => ⟨0, -1⟩

def cellA11B8 : CellData where
  inverse := 4861236
  bounds := fun _d => ⟨0, -1⟩

def cellA12B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA12B2 : CellData where
  inverse := 22
  bounds := fun d => if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B3 : CellData where
  inverse := 120
  bounds := fun d => if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B4 : CellData where
  inverse := 806
  bounds := fun d => if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B5 : CellData where
  inverse := 10410
  bounds := fun _d => ⟨0, -1⟩

def cellA12B6 : CellData where
  inverse := 77638
  bounds := fun _d => ⟨0, -1⟩

def cellA12B7 : CellData where
  inverse := 783532
  bounds := fun _d => ⟨0, -1⟩

def cellA12B8 : CellData where
  inverse := 2430618
  bounds := fun _d => ⟨0, -1⟩

def cellA13B1 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA13B2 : CellData where
  inverse := 11
  bounds := fun d => if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA13B3 : CellData where
  inverse := 60
  bounds := fun d => if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA13B4 : CellData where
  inverse := 403
  bounds := fun d => if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA13B5 : CellData where
  inverse := 5205
  bounds := fun _d => ⟨0, -1⟩

def cellA13B6 : CellData where
  inverse := 38819
  bounds := fun _d => ⟨0, -1⟩

def cellA13B7 : CellData where
  inverse := 391766
  bounds := fun _d => ⟨0, -1⟩

def cellA13B8 : CellData where
  inverse := 1215309
  bounds := fun _d => ⟨0, -1⟩

def cellA14B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA14B2 : CellData where
  inverse := 30
  bounds := fun _d => ⟨0, -1⟩

def cellA14B3 : CellData where
  inverse := 30
  bounds := fun _d => ⟨0, -1⟩

def cellA14B4 : CellData where
  inverse := 1402
  bounds := fun _d => ⟨0, -1⟩

def cellA14B5 : CellData where
  inverse := 11006
  bounds := fun _d => ⟨0, -1⟩

def cellA14B6 : CellData where
  inverse := 78234
  bounds := fun _d => ⟨0, -1⟩

def cellA14B7 : CellData where
  inverse := 195883
  bounds := fun _d => ⟨0, -1⟩

def cellA14B8 : CellData where
  inverse := 3490055
  bounds := fun _d => ⟨0, -1⟩

def cellA15B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA15B2 : CellData where
  inverse := 15
  bounds := fun _d => ⟨0, -1⟩

def cellA15B3 : CellData where
  inverse := 15
  bounds := fun _d => ⟨0, -1⟩

def cellA15B4 : CellData where
  inverse := 701
  bounds := fun _d => ⟨0, -1⟩

def cellA15B5 : CellData where
  inverse := 5503
  bounds := fun _d => ⟨0, -1⟩

def cellA15B6 : CellData where
  inverse := 39117
  bounds := fun d => if d = (-3 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA15B7 : CellData where
  inverse := 509713
  bounds := fun _d => ⟨0, -1⟩

def cellA15B8 : CellData where
  inverse := 4627428
  bounds := fun _d => ⟨0, -1⟩

def cellA16B1 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA16B2 : CellData where
  inverse := 32
  bounds := fun _d => ⟨0, -1⟩

def cellA16B3 : CellData where
  inverse := 179
  bounds := fun _d => ⟨0, -1⟩

def cellA16B4 : CellData where
  inverse := 1551
  bounds := fun _d => ⟨0, -1⟩

def cellA16B5 : CellData where
  inverse := 11155
  bounds := fun _d => ⟨0, -1⟩

def cellA16B6 : CellData where
  inverse := 78383
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA16B7 : CellData where
  inverse := 666628
  bounds := fun _d => ⟨0, -1⟩

def cellA16B8 : CellData where
  inverse := 2313714
  bounds := fun _d => ⟨0, -1⟩

def cellA17B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA17B2 : CellData where
  inverse := 16
  bounds := fun _d => ⟨0, -1⟩

def cellA17B3 : CellData where
  inverse := 261
  bounds := fun _d => ⟨0, -1⟩

def cellA17B4 : CellData where
  inverse := 1976
  bounds := fun _d => ⟨0, -1⟩

def cellA17B5 : CellData where
  inverse := 13981
  bounds := fun _d => ⟨0, -1⟩

def cellA17B6 : CellData where
  inverse := 98016
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA17B7 : CellData where
  inverse := 333314
  bounds := fun _d => ⟨0, -1⟩

def cellA17B8 : CellData where
  inverse := 1156857
  bounds := fun _d => ⟨0, -1⟩

def cellA18B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA18B2 : CellData where
  inverse := 8
  bounds := fun _d => ⟨0, -1⟩

def cellA18B3 : CellData where
  inverse := 302
  bounds := fun _d => ⟨0, -1⟩

def cellA18B4 : CellData where
  inverse := 988
  bounds := fun _d => ⟨0, -1⟩

def cellA18B5 : CellData where
  inverse := 15394
  bounds := fun _d => ⟨0, -1⟩

def cellA18B6 : CellData where
  inverse := 49008
  bounds := fun _d => ⟨0, -1⟩

def cellA18B7 : CellData where
  inverse := 166657
  bounds := fun _d => ⟨0, -1⟩

def cellA18B8 : CellData where
  inverse := 3460829
  bounds := fun _d => ⟨0, -1⟩

def cellA19B1 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA19B2 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA19B3 : CellData where
  inverse := 151
  bounds := fun _d => ⟨0, -1⟩

def cellA19B4 : CellData where
  inverse := 494
  bounds := fun _d => ⟨0, -1⟩

def cellA19B5 : CellData where
  inverse := 7697
  bounds := fun _d => ⟨0, -1⟩

def cellA19B6 : CellData where
  inverse := 24504
  bounds := fun _d => ⟨0, -1⟩

def cellA19B7 : CellData where
  inverse := 495100
  bounds := fun _d => ⟨0, -1⟩

def cellA19B8 : CellData where
  inverse := 4612815
  bounds := fun _d => ⟨0, -1⟩

def cellA20B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA20B2 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA20B3 : CellData where
  inverse := 247
  bounds := fun _d => ⟨0, -1⟩

def cellA20B4 : CellData where
  inverse := 247
  bounds := fun _d => ⟨0, -1⟩

def cellA20B5 : CellData where
  inverse := 12252
  bounds := fun _d => ⟨0, -1⟩

def cellA20B6 : CellData where
  inverse := 12252
  bounds := fun _d => ⟨0, -1⟩

def cellA20B7 : CellData where
  inverse := 247550
  bounds := fun _d => ⟨0, -1⟩

def cellA20B8 : CellData where
  inverse := 5188808
  bounds := fun _d => ⟨0, -1⟩

def cellA21B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA21B2 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA21B3 : CellData where
  inverse := 295
  bounds := fun _d => ⟨0, -1⟩

def cellA21B4 : CellData where
  inverse := 1324
  bounds := fun _d => ⟨0, -1⟩

def cellA21B5 : CellData where
  inverse := 6126
  bounds := fun _d => ⟨0, -1⟩

def cellA21B6 : CellData where
  inverse := 6126
  bounds := fun _d => ⟨0, -1⟩

def cellA21B7 : CellData where
  inverse := 123775
  bounds := fun _d => ⟨0, -1⟩

def cellA21B8 : CellData where
  inverse := 2594404
  bounds := fun _d => ⟨0, -1⟩

def cellA22B1 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA22B2 : CellData where
  inverse := 25
  bounds := fun _d => ⟨0, -1⟩

def cellA22B3 : CellData where
  inverse := 319
  bounds := fun _d => ⟨0, -1⟩

def cellA22B4 : CellData where
  inverse := 662
  bounds := fun _d => ⟨0, -1⟩

def cellA22B5 : CellData where
  inverse := 3063
  bounds := fun _d => ⟨0, -1⟩

def cellA22B6 : CellData where
  inverse := 3063
  bounds := fun _d => ⟨0, -1⟩

def cellA22B7 : CellData where
  inverse := 473659
  bounds := fun _d => ⟨0, -1⟩

def cellA22B8 : CellData where
  inverse := 1297202
  bounds := fun _d => ⟨0, -1⟩

def cellA23B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA23B2 : CellData where
  inverse := 37
  bounds := fun _d => ⟨0, -1⟩

def cellA23B3 : CellData where
  inverse := 331
  bounds := fun _d => ⟨0, -1⟩

def cellA23B4 : CellData where
  inverse := 331
  bounds := fun _d => ⟨0, -1⟩

def cellA23B5 : CellData where
  inverse := 9935
  bounds := fun _d => ⟨0, -1⟩

def cellA23B6 : CellData where
  inverse := 60356
  bounds := fun _d => ⟨0, -1⟩

def cellA23B7 : CellData where
  inverse := 648601
  bounds := fun _d => ⟨0, -1⟩

def cellA23B8 : CellData where
  inverse := 648601
  bounds := fun _d => ⟨0, -1⟩

def cellA24B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA24B2 : CellData where
  inverse := 43
  bounds := fun _d => ⟨0, -1⟩

def cellA24B3 : CellData where
  inverse := 337
  bounds := fun _d => ⟨0, -1⟩

def cellA24B4 : CellData where
  inverse := 1366
  bounds := fun _d => ⟨0, -1⟩

def cellA24B5 : CellData where
  inverse := 13371
  bounds := fun _d => ⟨0, -1⟩

def cellA24B6 : CellData where
  inverse := 30178
  bounds := fun _d => ⟨0, -1⟩

def cellA24B7 : CellData where
  inverse := 736072
  bounds := fun _d => ⟨0, -1⟩

def cellA24B8 : CellData where
  inverse := 3206701
  bounds := fun _d => ⟨0, -1⟩

def rowA1 (b : ℕ) : CellData :=
  if b = 1 then cellA1B1
  else if b = 2 then cellA1B2
  else if b = 3 then cellA1B3
  else if b = 4 then cellA1B4
  else if b = 5 then cellA1B5
  else if b = 6 then cellA1B6
  else if b = 7 then cellA1B7
  else if b = 8 then cellA1B8
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
  else outsideCell

def rowA9 (b : ℕ) : CellData :=
  if b = 1 then cellA9B1
  else if b = 2 then cellA9B2
  else if b = 3 then cellA9B3
  else if b = 4 then cellA9B4
  else if b = 5 then cellA9B5
  else if b = 6 then cellA9B6
  else if b = 7 then cellA9B7
  else if b = 8 then cellA9B8
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
  else outsideCell

def rowA17 (b : ℕ) : CellData :=
  if b = 1 then cellA17B1
  else if b = 2 then cellA17B2
  else if b = 3 then cellA17B3
  else if b = 4 then cellA17B4
  else if b = 5 then cellA17B5
  else if b = 6 then cellA17B6
  else if b = 7 then cellA17B7
  else if b = 8 then cellA17B8
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
  else outsideCell

def cells (a b : ℕ) : CellData :=
  if a = 1 then rowA1 b
  else if a = 2 then rowA2 b
  else if a = 3 then rowA3 b
  else if a = 4 then rowA4 b
  else if a = 5 then rowA5 b
  else if a = 6 then rowA6 b
  else if a = 7 then rowA7 b
  else if a = 8 then rowA8 b
  else if a = 9 then rowA9 b
  else if a = 10 then rowA10 b
  else if a = 11 then rowA11 b
  else if a = 12 then rowA12 b
  else if a = 13 then rowA13 b
  else if a = 14 then rowA14 b
  else if a = 15 then rowA15 b
  else if a = 16 then rowA16 b
  else if a = 17 then rowA17 b
  else if a = 18 then rowA18 b
  else if a = 19 then rowA19 b
  else if a = 20 then rowA20 b
  else if a = 21 then rowA21 b
  else if a = 22 then rowA22 b
  else if a = 23 then rowA23 b
  else if a = 24 then rowA24 b
  else outsideCell

end Math.B699.I11TerminalMembership.Pair27

#print axioms Math.B699.I11TerminalMembership.Pair27.outsideCell
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA1B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA1B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA1B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA1B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA1B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA1B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA1B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA1B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA2B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA2B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA2B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA2B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA2B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA2B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA2B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA2B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA3B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA3B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA3B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA3B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA3B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA3B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA3B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA3B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA4B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA4B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA4B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA4B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA4B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA4B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA4B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA4B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA5B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA5B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA5B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA5B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA5B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA5B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA5B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA5B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA6B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA6B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA6B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA6B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA6B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA6B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA6B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA6B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA7B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA7B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA7B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA7B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA7B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA7B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA7B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA7B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA8B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA8B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA8B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA8B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA8B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA8B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA8B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA8B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA9B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA9B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA9B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA9B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA9B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA9B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA9B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA9B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA10B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA10B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA10B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA10B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA10B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA10B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA10B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA10B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA11B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA11B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA11B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA11B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA11B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA11B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA11B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA11B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA12B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA12B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA12B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA12B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA12B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA12B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA12B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA12B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA13B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA13B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA13B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA13B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA13B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA13B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA13B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA13B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA14B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA14B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA14B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA14B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA14B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA14B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA14B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA14B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA15B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA15B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA15B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA15B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA15B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA15B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA15B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA15B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA16B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA16B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA16B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA16B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA16B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA16B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA16B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA16B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA17B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA17B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA17B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA17B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA17B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA17B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA17B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA17B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA18B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA18B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA18B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA18B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA18B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA18B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA18B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA18B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA19B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA19B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA19B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA19B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA19B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA19B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA19B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA19B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA20B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA20B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA20B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA20B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA20B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA20B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA20B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA20B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA21B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA21B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA21B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA21B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA21B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA21B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA21B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA21B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA22B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA22B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA22B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA22B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA22B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA22B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA22B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA22B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA23B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA23B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA23B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA23B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA23B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA23B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA23B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA23B8
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA24B1
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA24B2
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA24B3
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA24B4
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA24B5
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA24B6
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA24B7
#print axioms Math.B699.I11TerminalMembership.Pair27.cellA24B8
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA1
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA2
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA3
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA4
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA5
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA6
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA7
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA8
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA9
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA10
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA11
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA12
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA13
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA14
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA15
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA16
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA17
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA18
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA19
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA20
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA21
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA22
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA23
#print axioms Math.B699.I11TerminalMembership.Pair27.rowA24
#print axioms Math.B699.I11TerminalMembership.Pair27.cells
