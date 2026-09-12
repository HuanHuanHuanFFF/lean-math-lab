import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Candidates
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.Meta

/-! UNCOMPILED complete stage04 membership table; all21 shifts and complete
RowCell parameter ranges are retained. No whole-grid decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.I11TerminalMembership.Pair25
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 3
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 99⟩ else if d = (4 : ℤ) then ⟨1, 99⟩ else if d = (6 : ℤ) then ⟨1, 99⟩ else if d = (7 : ℤ) then ⟨1, 99⟩ else if d = (8 : ℤ) then ⟨1, 99⟩ else if d = (9 : ℤ) then ⟨1, 99⟩ else if d = (10 : ℤ) then ⟨1, 99⟩ else ⟨0, 99⟩

def cellA1B2 : CellData where
  inverse := 13
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 19⟩ else if d = (4 : ℤ) then ⟨1, 19⟩ else if d = (6 : ℤ) then ⟨1, 19⟩ else if d = (8 : ℤ) then ⟨1, 19⟩ else if d = (10 : ℤ) then ⟨1, 19⟩ else ⟨0, 19⟩

def cellA1B3 : CellData where
  inverse := 63
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 3⟩ else if d = (4 : ℤ) then ⟨1, 3⟩ else if d = (6 : ℤ) then ⟨1, 3⟩ else if d = (8 : ℤ) then ⟨1, 3⟩ else if d = (10 : ℤ) then ⟨1, 3⟩ else ⟨0, 3⟩

def cellA1B4 : CellData where
  inverse := 313
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, -1⟩ else if d = (-8 : ℤ) then ⟨0, -1⟩ else if d = (-6 : ℤ) then ⟨0, -1⟩ else if d = (-4 : ℤ) then ⟨0, -1⟩ else if d = (-2 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, 0⟩

def cellA1B5 : CellData where
  inverse := 1563
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B6 : CellData where
  inverse := 7813
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B7 : CellData where
  inverse := 39063
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B8 : CellData where
  inverse := 195313
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B9 : CellData where
  inverse := 976563
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B10 : CellData where
  inverse := 4882813
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B1 : CellData where
  inverse := 4
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 99⟩ else if d = (8 : ℤ) then ⟨1, 99⟩ else if d = (9 : ℤ) then ⟨1, 99⟩ else ⟨0, 99⟩

def cellA2B2 : CellData where
  inverse := 19
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 19⟩ else if d = (8 : ℤ) then ⟨1, 19⟩ else ⟨0, 19⟩

def cellA2B3 : CellData where
  inverse := 94
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 3⟩ else if d = (8 : ℤ) then ⟨1, 3⟩ else ⟨0, 3⟩

def cellA2B4 : CellData where
  inverse := 469
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, -1⟩ else if d = (-4 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, 0⟩

def cellA2B5 : CellData where
  inverse := 2344
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B6 : CellData where
  inverse := 11719
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B7 : CellData where
  inverse := 58594
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B8 : CellData where
  inverse := 292969
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B9 : CellData where
  inverse := 1464844
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B10 : CellData where
  inverse := 7324219
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 62⟩ else if d = (-4 : ℤ) then ⟨0, 62⟩ else if d = (-2 : ℤ) then ⟨0, 62⟩ else if d = (1 : ℤ) then ⟨0, 62⟩ else if d = (3 : ℤ) then ⟨0, 62⟩ else if d = (4 : ℤ) then ⟨0, 62⟩ else if d = (6 : ℤ) then ⟨0, 62⟩ else if d = (8 : ℤ) then ⟨1, 62⟩ else if d = (9 : ℤ) then ⟨0, 62⟩ else ⟨0, 61⟩

def cellA3B2 : CellData where
  inverse := 22
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 19⟩ else ⟨0, 19⟩

def cellA3B3 : CellData where
  inverse := 47
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 3⟩ else ⟨0, 3⟩

def cellA3B4 : CellData where
  inverse := 547
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, -1⟩ else if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (1 : ℤ) then ⟨0, -1⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA3B5 : CellData where
  inverse := 1172
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B6 : CellData where
  inverse := 13672
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B7 : CellData where
  inverse := 29297
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B8 : CellData where
  inverse := 341797
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B9 : CellData where
  inverse := 732422
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B10 : CellData where
  inverse := 8544922
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 31⟩ else if d = (1 : ℤ) then ⟨0, 31⟩ else if d = (6 : ℤ) then ⟨0, 31⟩ else ⟨0, 30⟩

def cellA4B2 : CellData where
  inverse := 11
  bounds := fun _d => ⟨0, 19⟩

def cellA4B3 : CellData where
  inverse := 86
  bounds := fun _d => ⟨0, 3⟩

def cellA4B4 : CellData where
  inverse := 586
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (1 : ℤ) then ⟨0, -1⟩ else if d = (2 : ℤ) then ⟨0, -1⟩ else if d = (3 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA4B5 : CellData where
  inverse := 586
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA4B6 : CellData where
  inverse := 6836
  bounds := fun _d => ⟨0, -1⟩

def cellA4B7 : CellData where
  inverse := 53711
  bounds := fun _d => ⟨0, -1⟩

def cellA4B8 : CellData where
  inverse := 366211
  bounds := fun _d => ⟨0, -1⟩

def cellA4B9 : CellData where
  inverse := 366211
  bounds := fun _d => ⟨0, -1⟩

def cellA4B10 : CellData where
  inverse := 4272461
  bounds := fun _d => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 3
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 14⟩ else if d = (-9 : ℤ) then ⟨0, 14⟩ else if d = (-7 : ℤ) then ⟨0, 14⟩ else if d = (-5 : ℤ) then ⟨0, 14⟩ else if d = (-2 : ℤ) then ⟨0, 14⟩ else if d = (0 : ℤ) then ⟨0, 14⟩ else if d = (3 : ℤ) then ⟨0, 14⟩ else if d = (5 : ℤ) then ⟨0, 14⟩ else if d = (8 : ℤ) then ⟨0, 14⟩ else if d = (10 : ℤ) then ⟨0, 14⟩ else ⟨0, 15⟩

def cellA5B2 : CellData where
  inverse := 18
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 14⟩ else if d = (-7 : ℤ) then ⟨0, 14⟩ else if d = (-6 : ℤ) then ⟨0, 14⟩ else if d = (-3 : ℤ) then ⟨0, 14⟩ else if d = (0 : ℤ) then ⟨0, 14⟩ else if d = (1 : ℤ) then ⟨0, 14⟩ else if d = (4 : ℤ) then ⟨0, 14⟩ else if d = (8 : ℤ) then ⟨0, 14⟩ else ⟨0, 15⟩

def cellA5B3 : CellData where
  inverse := 43
  bounds := fun _d => ⟨0, 3⟩

def cellA5B4 : CellData where
  inverse := 293
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (2 : ℤ) then ⟨0, -1⟩ else if d = (4 : ℤ) then ⟨0, -1⟩ else if d = (6 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA5B5 : CellData where
  inverse := 293
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA5B6 : CellData where
  inverse := 3418
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA5B7 : CellData where
  inverse := 65918
  bounds := fun _d => ⟨0, -1⟩

def cellA5B8 : CellData where
  inverse := 378418
  bounds := fun _d => ⟨0, -1⟩

def cellA5B9 : CellData where
  inverse := 1159668
  bounds := fun _d => ⟨0, -1⟩

def cellA5B10 : CellData where
  inverse := 7019043
  bounds := fun _d => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 4
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 6⟩ else if d = (-9 : ℤ) then ⟨0, 6⟩ else if d = (-5 : ℤ) then ⟨0, 6⟩ else if d = (0 : ℤ) then ⟨0, 6⟩ else if d = (5 : ℤ) then ⟨0, 6⟩ else if d = (10 : ℤ) then ⟨0, 6⟩ else ⟨0, 7⟩

def cellA6B2 : CellData where
  inverse := 9
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 6⟩ else if d = (-3 : ℤ) then ⟨0, 6⟩ else if d = (0 : ℤ) then ⟨0, 6⟩ else if d = (8 : ℤ) then ⟨0, 6⟩ else ⟨0, 7⟩

def cellA6B3 : CellData where
  inverse := 84
  bounds := fun _d => ⟨0, 3⟩

def cellA6B4 : CellData where
  inverse := 459
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (4 : ℤ) then ⟨0, -1⟩ else if d = (8 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA6B5 : CellData where
  inverse := 1709
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA6B6 : CellData where
  inverse := 1709
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA6B7 : CellData where
  inverse := 32959
  bounds := fun _d => ⟨0, -1⟩

def cellA6B8 : CellData where
  inverse := 189209
  bounds := fun _d => ⟨0, -1⟩

def cellA6B9 : CellData where
  inverse := 579834
  bounds := fun _d => ⟨0, -1⟩

def cellA6B10 : CellData where
  inverse := 8392334
  bounds := fun _d => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 2⟩ else if d = (-5 : ℤ) then ⟨0, 2⟩ else if d = (0 : ℤ) then ⟨0, 2⟩ else if d = (5 : ℤ) then ⟨0, 2⟩ else if d = (10 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA7B2 : CellData where
  inverse := 17
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 2⟩ else if d = (-3 : ℤ) then ⟨0, 2⟩ else if d = (0 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA7B3 : CellData where
  inverse := 42
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 2⟩ else if d = (-6 : ℤ) then ⟨0, 2⟩ else if d = (-3 : ℤ) then ⟨0, 2⟩ else if d = (0 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA7B4 : CellData where
  inverse := 542
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (1 : ℤ) then ⟨0, -1⟩ else if d = (8 : ℤ) then ⟨0, -1⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA7B5 : CellData where
  inverse := 2417
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA7B6 : CellData where
  inverse := 8667
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA7B7 : CellData where
  inverse := 55542
  bounds := fun _d => ⟨0, -1⟩

def cellA7B8 : CellData where
  inverse := 289917
  bounds := fun _d => ⟨0, -1⟩

def cellA7B9 : CellData where
  inverse := 289917
  bounds := fun _d => ⟨0, -1⟩

def cellA7B10 : CellData where
  inverse := 4196167
  bounds := fun _d => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA8B2 : CellData where
  inverse := 21
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (0 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA8B3 : CellData where
  inverse := 21
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (0 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA8B4 : CellData where
  inverse := 271
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (-5 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (2 : ℤ) then ⟨0, -1⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA8B5 : CellData where
  inverse := 2771
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA8B6 : CellData where
  inverse := 12146
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA8B7 : CellData where
  inverse := 27771
  bounds := fun _d => ⟨0, -1⟩

def cellA8B8 : CellData where
  inverse := 340271
  bounds := fun _d => ⟨0, -1⟩

def cellA8B9 : CellData where
  inverse := 1121521
  bounds := fun _d => ⟨0, -1⟩

def cellA8B10 : CellData where
  inverse := 6980896
  bounds := fun _d => ⟨0, -1⟩

def cellA9B1 : CellData where
  inverse := 3
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, -1⟩ else if d = (-5 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (5 : ℤ) then ⟨0, -1⟩ else if d = (10 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA9B2 : CellData where
  inverse := 23
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA9B3 : CellData where
  inverse := 73
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA9B4 : CellData where
  inverse := 448
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, -1⟩ else if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (-3 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (4 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA9B5 : CellData where
  inverse := 2948
  bounds := fun d => if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA9B6 : CellData where
  inverse := 6073
  bounds := fun _d => ⟨0, -1⟩

def cellA9B7 : CellData where
  inverse := 52948
  bounds := fun _d => ⟨0, -1⟩

def cellA9B8 : CellData where
  inverse := 365448
  bounds := fun _d => ⟨0, -1⟩

def cellA9B9 : CellData where
  inverse := 1537323
  bounds := fun _d => ⟨0, -1⟩

def cellA9B10 : CellData where
  inverse := 3490448
  bounds := fun _d => ⟨0, -1⟩

def cellA10B1 : CellData where
  inverse := 4
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B2 : CellData where
  inverse := 24
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B3 : CellData where
  inverse := 99
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B4 : CellData where
  inverse := 224
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B5 : CellData where
  inverse := 1474
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B6 : CellData where
  inverse := 10849
  bounds := fun _d => ⟨0, -1⟩

def cellA10B7 : CellData where
  inverse := 26474
  bounds := fun _d => ⟨0, -1⟩

def cellA10B8 : CellData where
  inverse := 182724
  bounds := fun _d => ⟨0, -1⟩

def cellA10B9 : CellData where
  inverse := 1745224
  bounds := fun _d => ⟨0, -1⟩

def cellA10B10 : CellData where
  inverse := 1745224
  bounds := fun _d => ⟨0, -1⟩

def cellA11B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B2 : CellData where
  inverse := 12
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B3 : CellData where
  inverse := 112
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B4 : CellData where
  inverse := 112
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B5 : CellData where
  inverse := 737
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B6 : CellData where
  inverse := 13237
  bounds := fun _d => ⟨0, -1⟩

def cellA11B7 : CellData where
  inverse := 13237
  bounds := fun _d => ⟨0, -1⟩

def cellA11B8 : CellData where
  inverse := 91362
  bounds := fun _d => ⟨0, -1⟩

def cellA11B9 : CellData where
  inverse := 872612
  bounds := fun _d => ⟨0, -1⟩

def cellA11B10 : CellData where
  inverse := 872612
  bounds := fun _d => ⟨0, -1⟩

def cellA12B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA12B2 : CellData where
  inverse := 6
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B3 : CellData where
  inverse := 56
  bounds := fun d => if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B4 : CellData where
  inverse := 56
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B5 : CellData where
  inverse := 1931
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B6 : CellData where
  inverse := 14431
  bounds := fun _d => ⟨0, -1⟩

def cellA12B7 : CellData where
  inverse := 45681
  bounds := fun _d => ⟨0, -1⟩

def cellA12B8 : CellData where
  inverse := 45681
  bounds := fun _d => ⟨0, -1⟩

def cellA12B9 : CellData where
  inverse := 436306
  bounds := fun _d => ⟨0, -1⟩

def cellA12B10 : CellData where
  inverse := 436306
  bounds := fun _d => ⟨0, -1⟩

def cellA13B1 : CellData where
  inverse := 3
  bounds := fun _d => ⟨0, -1⟩

def cellA13B2 : CellData where
  inverse := 3
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA13B3 : CellData where
  inverse := 28
  bounds := fun d => if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA13B4 : CellData where
  inverse := 28
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA13B5 : CellData where
  inverse := 2528
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA13B6 : CellData where
  inverse := 15028
  bounds := fun _d => ⟨0, -1⟩

def cellA13B7 : CellData where
  inverse := 61903
  bounds := fun _d => ⟨0, -1⟩

def cellA13B8 : CellData where
  inverse := 218153
  bounds := fun _d => ⟨0, -1⟩

def cellA13B9 : CellData where
  inverse := 218153
  bounds := fun _d => ⟨0, -1⟩

def cellA13B10 : CellData where
  inverse := 218153
  bounds := fun _d => ⟨0, -1⟩

def cellA14B1 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA14B2 : CellData where
  inverse := 14
  bounds := fun _d => ⟨0, -1⟩

def cellA14B3 : CellData where
  inverse := 14
  bounds := fun d => if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA14B4 : CellData where
  inverse := 14
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA14B5 : CellData where
  inverse := 1264
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA14B6 : CellData where
  inverse := 7514
  bounds := fun _d => ⟨0, -1⟩

def cellA14B7 : CellData where
  inverse := 70014
  bounds := fun _d => ⟨0, -1⟩

def cellA14B8 : CellData where
  inverse := 304389
  bounds := fun _d => ⟨0, -1⟩

def cellA14B9 : CellData where
  inverse := 1085639
  bounds := fun _d => ⟨0, -1⟩

def cellA14B10 : CellData where
  inverse := 4991889
  bounds := fun _d => ⟨0, -1⟩

def cellA15B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA15B2 : CellData where
  inverse := 7
  bounds := fun _d => ⟨0, -1⟩

def cellA15B3 : CellData where
  inverse := 7
  bounds := fun _d => ⟨0, -1⟩

def cellA15B4 : CellData where
  inverse := 7
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA15B5 : CellData where
  inverse := 632
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA15B6 : CellData where
  inverse := 3757
  bounds := fun _d => ⟨0, -1⟩

def cellA15B7 : CellData where
  inverse := 35007
  bounds := fun _d => ⟨0, -1⟩

def cellA15B8 : CellData where
  inverse := 347507
  bounds := fun _d => ⟨0, -1⟩

def cellA15B9 : CellData where
  inverse := 1519382
  bounds := fun _d => ⟨0, -1⟩

def cellA15B10 : CellData where
  inverse := 7378757
  bounds := fun _d => ⟨0, -1⟩

def cellA16B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA16B2 : CellData where
  inverse := 16
  bounds := fun _d => ⟨0, -1⟩

def cellA16B3 : CellData where
  inverse := 66
  bounds := fun _d => ⟨0, -1⟩

def cellA16B4 : CellData where
  inverse := 316
  bounds := fun _d => ⟨0, -1⟩

def cellA16B5 : CellData where
  inverse := 316
  bounds := fun _d => ⟨0, -1⟩

def cellA16B6 : CellData where
  inverse := 9691
  bounds := fun _d => ⟨0, -1⟩

def cellA16B7 : CellData where
  inverse := 56566
  bounds := fun _d => ⟨0, -1⟩

def cellA16B8 : CellData where
  inverse := 369066
  bounds := fun _d => ⟨0, -1⟩

def cellA16B9 : CellData where
  inverse := 759691
  bounds := fun _d => ⟨0, -1⟩

def cellA16B10 : CellData where
  inverse := 8572191
  bounds := fun _d => ⟨0, -1⟩

def cellA17B1 : CellData where
  inverse := 3
  bounds := fun _d => ⟨0, -1⟩

def cellA17B2 : CellData where
  inverse := 8
  bounds := fun _d => ⟨0, -1⟩

def cellA17B3 : CellData where
  inverse := 33
  bounds := fun _d => ⟨0, -1⟩

def cellA17B4 : CellData where
  inverse := 158
  bounds := fun _d => ⟨0, -1⟩

def cellA17B5 : CellData where
  inverse := 158
  bounds := fun _d => ⟨0, -1⟩

def cellA17B6 : CellData where
  inverse := 12658
  bounds := fun _d => ⟨0, -1⟩

def cellA17B7 : CellData where
  inverse := 28283
  bounds := fun _d => ⟨0, -1⟩

def cellA17B8 : CellData where
  inverse := 184533
  bounds := fun _d => ⟨0, -1⟩

def cellA17B9 : CellData where
  inverse := 1356408
  bounds := fun _d => ⟨0, -1⟩

def cellA17B10 : CellData where
  inverse := 9168908
  bounds := fun _d => ⟨0, -1⟩

def cellA18B1 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA18B2 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA18B3 : CellData where
  inverse := 79
  bounds := fun _d => ⟨0, -1⟩

def cellA18B4 : CellData where
  inverse := 79
  bounds := fun _d => ⟨0, -1⟩

def cellA18B5 : CellData where
  inverse := 79
  bounds := fun _d => ⟨0, -1⟩

def cellA18B6 : CellData where
  inverse := 6329
  bounds := fun _d => ⟨0, -1⟩

def cellA18B7 : CellData where
  inverse := 53204
  bounds := fun _d => ⟨0, -1⟩

def cellA18B8 : CellData where
  inverse := 287579
  bounds := fun _d => ⟨0, -1⟩

def cellA18B9 : CellData where
  inverse := 678204
  bounds := fun _d => ⟨0, -1⟩

def cellA18B10 : CellData where
  inverse := 4584454
  bounds := fun _d => ⟨0, -1⟩

def cellA19B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA19B2 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA19B3 : CellData where
  inverse := 102
  bounds := fun _d => ⟨0, -1⟩

def cellA19B4 : CellData where
  inverse := 352
  bounds := fun _d => ⟨0, -1⟩

def cellA19B5 : CellData where
  inverse := 1602
  bounds := fun _d => ⟨0, -1⟩

def cellA19B6 : CellData where
  inverse := 10977
  bounds := fun _d => ⟨0, -1⟩

def cellA19B7 : CellData where
  inverse := 26602
  bounds := fun _d => ⟨0, -1⟩

def cellA19B8 : CellData where
  inverse := 339102
  bounds := fun _d => ⟨0, -1⟩

def cellA19B9 : CellData where
  inverse := 339102
  bounds := fun _d => ⟨0, -1⟩

def cellA19B10 : CellData where
  inverse := 2292227
  bounds := fun _d => ⟨0, -1⟩

def cellA20B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA20B2 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA20B3 : CellData where
  inverse := 51
  bounds := fun _d => ⟨0, -1⟩

def cellA20B4 : CellData where
  inverse := 176
  bounds := fun _d => ⟨0, -1⟩

def cellA20B5 : CellData where
  inverse := 801
  bounds := fun _d => ⟨0, -1⟩

def cellA20B6 : CellData where
  inverse := 13301
  bounds := fun _d => ⟨0, -1⟩

def cellA20B7 : CellData where
  inverse := 13301
  bounds := fun _d => ⟨0, -1⟩

def cellA20B8 : CellData where
  inverse := 169551
  bounds := fun _d => ⟨0, -1⟩

def cellA20B9 : CellData where
  inverse := 169551
  bounds := fun _d => ⟨0, -1⟩

def cellA20B10 : CellData where
  inverse := 6028926
  bounds := fun _d => ⟨0, -1⟩

def cellA21B1 : CellData where
  inverse := 3
  bounds := fun _d => ⟨0, -1⟩

def cellA21B2 : CellData where
  inverse := 13
  bounds := fun _d => ⟨0, -1⟩

def cellA21B3 : CellData where
  inverse := 88
  bounds := fun _d => ⟨0, -1⟩

def cellA21B4 : CellData where
  inverse := 88
  bounds := fun _d => ⟨0, -1⟩

def cellA21B5 : CellData where
  inverse := 1963
  bounds := fun _d => ⟨0, -1⟩

def cellA21B6 : CellData where
  inverse := 14463
  bounds := fun _d => ⟨0, -1⟩

def cellA21B7 : CellData where
  inverse := 45713
  bounds := fun _d => ⟨0, -1⟩

def cellA21B8 : CellData where
  inverse := 280088
  bounds := fun _d => ⟨0, -1⟩

def cellA21B9 : CellData where
  inverse := 1061338
  bounds := fun _d => ⟨0, -1⟩

def cellA21B10 : CellData where
  inverse := 3014463
  bounds := fun _d => ⟨0, -1⟩

def cellA22B1 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA22B2 : CellData where
  inverse := 19
  bounds := fun _d => ⟨0, -1⟩

def cellA22B3 : CellData where
  inverse := 44
  bounds := fun _d => ⟨0, -1⟩

def cellA22B4 : CellData where
  inverse := 44
  bounds := fun _d => ⟨0, -1⟩

def cellA22B5 : CellData where
  inverse := 2544
  bounds := fun _d => ⟨0, -1⟩

def cellA22B6 : CellData where
  inverse := 15044
  bounds := fun _d => ⟨0, -1⟩

def cellA22B7 : CellData where
  inverse := 61919
  bounds := fun _d => ⟨0, -1⟩

def cellA22B8 : CellData where
  inverse := 140044
  bounds := fun _d => ⟨0, -1⟩

def cellA22B9 : CellData where
  inverse := 530669
  bounds := fun _d => ⟨0, -1⟩

def cellA22B10 : CellData where
  inverse := 6390044
  bounds := fun _d => ⟨0, -1⟩

def cellA23B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA23B2 : CellData where
  inverse := 22
  bounds := fun _d => ⟨0, -1⟩

def cellA23B3 : CellData where
  inverse := 22
  bounds := fun _d => ⟨0, -1⟩

def cellA23B4 : CellData where
  inverse := 22
  bounds := fun _d => ⟨0, -1⟩

def cellA23B5 : CellData where
  inverse := 1272
  bounds := fun _d => ⟨0, -1⟩

def cellA23B6 : CellData where
  inverse := 7522
  bounds := fun _d => ⟨0, -1⟩

def cellA23B7 : CellData where
  inverse := 70022
  bounds := fun _d => ⟨0, -1⟩

def cellA23B8 : CellData where
  inverse := 70022
  bounds := fun _d => ⟨0, -1⟩

def cellA23B9 : CellData where
  inverse := 1241897
  bounds := fun _d => ⟨0, -1⟩

def cellA23B10 : CellData where
  inverse := 3195022
  bounds := fun _d => ⟨0, -1⟩

def cellA24B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA24B2 : CellData where
  inverse := 11
  bounds := fun _d => ⟨0, -1⟩

def cellA24B3 : CellData where
  inverse := 11
  bounds := fun _d => ⟨0, -1⟩

def cellA24B4 : CellData where
  inverse := 11
  bounds := fun _d => ⟨0, -1⟩

def cellA24B5 : CellData where
  inverse := 636
  bounds := fun _d => ⟨0, -1⟩

def cellA24B6 : CellData where
  inverse := 3761
  bounds := fun _d => ⟨0, -1⟩

def cellA24B7 : CellData where
  inverse := 35011
  bounds := fun _d => ⟨0, -1⟩

def cellA24B8 : CellData where
  inverse := 35011
  bounds := fun _d => ⟨0, -1⟩

def cellA24B9 : CellData where
  inverse := 1597511
  bounds := fun _d => ⟨0, -1⟩

def cellA24B10 : CellData where
  inverse := 1597511
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
  else if b = 9 then cellA1B9
  else if b = 10 then cellA1B10
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
  else if b = 9 then cellA9B9
  else if b = 10 then cellA9B10
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
  else if b = 9 then cellA17B9
  else if b = 10 then cellA17B10
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

end Math.B699.I11TerminalMembership.Pair25

#print axioms Math.B699.I11TerminalMembership.Pair25.outsideCell
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA1B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA1B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA1B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA1B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA1B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA1B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA1B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA1B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA1B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA1B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA2B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA2B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA2B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA2B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA2B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA2B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA2B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA2B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA2B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA2B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA3B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA3B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA3B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA3B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA3B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA3B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA3B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA3B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA3B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA3B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA4B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA4B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA4B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA4B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA4B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA4B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA4B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA4B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA4B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA4B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA5B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA5B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA5B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA5B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA5B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA5B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA5B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA5B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA5B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA5B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA6B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA6B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA6B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA6B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA6B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA6B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA6B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA6B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA6B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA6B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA7B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA7B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA7B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA7B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA7B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA7B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA7B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA7B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA7B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA7B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA8B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA8B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA8B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA8B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA8B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA8B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA8B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA8B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA8B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA8B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA9B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA9B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA9B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA9B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA9B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA9B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA9B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA9B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA9B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA9B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA10B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA10B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA10B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA10B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA10B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA10B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA10B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA10B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA10B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA10B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA11B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA11B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA11B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA11B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA11B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA11B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA11B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA11B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA11B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA11B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA12B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA12B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA12B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA12B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA12B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA12B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA12B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA12B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA12B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA12B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA13B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA13B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA13B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA13B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA13B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA13B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA13B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA13B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA13B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA13B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA14B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA14B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA14B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA14B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA14B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA14B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA14B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA14B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA14B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA14B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA15B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA16B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA16B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA16B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA16B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA16B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA16B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA16B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA16B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA16B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA16B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA17B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA17B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA17B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA17B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA17B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA17B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA17B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA17B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA17B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA17B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA18B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA19B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA19B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA19B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA19B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA19B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA19B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA19B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA19B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA19B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA19B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA20B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA21B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA21B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA21B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA21B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA21B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA21B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA21B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA21B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA21B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA21B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA22B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA22B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA22B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA22B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA22B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA22B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA22B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA22B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA22B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA22B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA23B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA23B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA23B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA23B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA23B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA23B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA23B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA23B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA23B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA23B10
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B1
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B2
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B3
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B4
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B5
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B6
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B7
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B8
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B9
#print axioms Math.B699.I11TerminalMembership.Pair25.cellA24B10
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA1
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA2
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA3
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA4
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA5
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA6
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA7
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA8
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA9
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA10
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA11
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA12
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA13
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA14
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA15
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA16
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA17
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA18
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA19
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA20
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA21
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA22
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA23
#print axioms Math.B699.I11TerminalMembership.Pair25.rowA24
#print axioms Math.B699.I11TerminalMembership.Pair25.cells
