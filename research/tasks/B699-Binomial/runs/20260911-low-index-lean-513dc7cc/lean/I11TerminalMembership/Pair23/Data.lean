import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Candidates
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.Meta

/-! UNCOMPILED complete stage04 membership table; all21 shifts and complete
RowCell parameter ranges are retained. No whole-grid decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.I11TerminalMembership.Pair23
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 165⟩ else if d = (-6 : ℤ) then ⟨0, 165⟩ else if d = (-3 : ℤ) then ⟨0, 165⟩ else if d = (0 : ℤ) then ⟨0, 165⟩ else if d = (2 : ℤ) then ⟨1, 166⟩ else if d = (3 : ℤ) then ⟨0, 165⟩ else if d = (4 : ℤ) then ⟨1, 166⟩ else if d = (5 : ℤ) then ⟨1, 166⟩ else if d = (6 : ℤ) then ⟨1, 165⟩ else if d = (7 : ℤ) then ⟨1, 166⟩ else if d = (8 : ℤ) then ⟨2, 166⟩ else if d = (9 : ℤ) then ⟨1, 165⟩ else if d = (10 : ℤ) then ⟨2, 166⟩ else ⟨0, 166⟩

def cellA1B2 : CellData where
  inverse := 5
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 55⟩ else if d = (-8 : ℤ) then ⟨0, 55⟩ else if d = (-7 : ℤ) then ⟨0, 55⟩ else if d = (-5 : ℤ) then ⟨0, 55⟩ else if d = (-3 : ℤ) then ⟨0, 55⟩ else if d = (-1 : ℤ) then ⟨0, 55⟩ else if d = (1 : ℤ) then ⟨0, 55⟩ else if d = (2 : ℤ) then ⟨1, 55⟩ else if d = (4 : ℤ) then ⟨1, 55⟩ else if d = (6 : ℤ) then ⟨1, 55⟩ else if d = (8 : ℤ) then ⟨1, 55⟩ else if d = (10 : ℤ) then ⟨1, 55⟩ else ⟨0, 54⟩

def cellA1B3 : CellData where
  inverse := 14
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 18⟩ else if d = (-7 : ℤ) then ⟨0, 18⟩ else if d = (-5 : ℤ) then ⟨0, 18⟩ else if d = (-3 : ℤ) then ⟨0, 18⟩ else if d = (-1 : ℤ) then ⟨0, 18⟩ else if d = (1 : ℤ) then ⟨0, 18⟩ else if d = (2 : ℤ) then ⟨1, 18⟩ else if d = (4 : ℤ) then ⟨1, 18⟩ else if d = (6 : ℤ) then ⟨1, 18⟩ else if d = (8 : ℤ) then ⟨1, 18⟩ else if d = (10 : ℤ) then ⟨1, 18⟩ else ⟨0, 17⟩

def cellA1B4 : CellData where
  inverse := 41
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 6⟩ else if d = (4 : ℤ) then ⟨1, 6⟩ else if d = (6 : ℤ) then ⟨1, 6⟩ else if d = (8 : ℤ) then ⟨1, 6⟩ else if d = (10 : ℤ) then ⟨1, 6⟩ else ⟨0, 5⟩

def cellA1B5 : CellData where
  inverse := 122
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 2⟩ else if d = (4 : ℤ) then ⟨1, 2⟩ else if d = (6 : ℤ) then ⟨1, 2⟩ else if d = (8 : ℤ) then ⟨1, 2⟩ else if d = (10 : ℤ) then ⟨1, 2⟩ else ⟨0, 1⟩

def cellA1B6 : CellData where
  inverse := 365
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, -1⟩ else if d = (-8 : ℤ) then ⟨0, -1⟩ else if d = (-6 : ℤ) then ⟨0, -1⟩ else if d = (-4 : ℤ) then ⟨0, -1⟩ else if d = (-2 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, 0⟩

def cellA1B7 : CellData where
  inverse := 1094
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B8 : CellData where
  inverse := 3281
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B9 : CellData where
  inverse := 9842
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B10 : CellData where
  inverse := 29525
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B11 : CellData where
  inverse := 88574
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B12 : CellData where
  inverse := 265721
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B13 : CellData where
  inverse := 797162
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B14 : CellData where
  inverse := 2391485
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B15 : CellData where
  inverse := 7174454
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 0⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 123⟩ else if d = (-9 : ℤ) then ⟨0, 123⟩ else if d = (-7 : ℤ) then ⟨0, 123⟩ else if d = (-6 : ℤ) then ⟨0, 123⟩ else if d = (-3 : ℤ) then ⟨0, 123⟩ else if d = (4 : ℤ) then ⟨1, 125⟩ else if d = (7 : ℤ) then ⟨1, 125⟩ else if d = (8 : ℤ) then ⟨1, 125⟩ else if d = (10 : ℤ) then ⟨1, 125⟩ else ⟨0, 124⟩

def cellA2B2 : CellData where
  inverse := 7
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 55⟩ else if d = (-7 : ℤ) then ⟨0, 55⟩ else if d = (-6 : ℤ) then ⟨0, 55⟩ else if d = (-5 : ℤ) then ⟨0, 55⟩ else if d = (-2 : ℤ) then ⟨0, 55⟩ else if d = (-1 : ℤ) then ⟨0, 55⟩ else if d = (2 : ℤ) then ⟨0, 55⟩ else if d = (3 : ℤ) then ⟨0, 55⟩ else if d = (4 : ℤ) then ⟨1, 55⟩ else if d = (7 : ℤ) then ⟨0, 55⟩ else if d = (8 : ℤ) then ⟨1, 55⟩ else ⟨0, 54⟩

def cellA2B3 : CellData where
  inverse := 7
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 18⟩ else if d = (-7 : ℤ) then ⟨0, 18⟩ else if d = (-6 : ℤ) then ⟨0, 18⟩ else if d = (-3 : ℤ) then ⟨0, 18⟩ else if d = (-2 : ℤ) then ⟨0, 18⟩ else if d = (1 : ℤ) then ⟨0, 18⟩ else if d = (2 : ℤ) then ⟨0, 18⟩ else if d = (4 : ℤ) then ⟨1, 18⟩ else if d = (5 : ℤ) then ⟨0, 18⟩ else if d = (8 : ℤ) then ⟨1, 18⟩ else if d = (9 : ℤ) then ⟨0, 18⟩ else ⟨0, 17⟩

def cellA2B4 : CellData where
  inverse := 61
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 6⟩ else if d = (8 : ℤ) then ⟨1, 6⟩ else ⟨0, 5⟩

def cellA2B5 : CellData where
  inverse := 61
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 2⟩ else if d = (8 : ℤ) then ⟨1, 2⟩ else ⟨0, 1⟩

def cellA2B6 : CellData where
  inverse := 547
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, -1⟩ else if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (-4 : ℤ) then ⟨0, -1⟩ else if d = (-3 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (1 : ℤ) then ⟨0, -1⟩ else if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (5 : ℤ) then ⟨0, -1⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA2B7 : CellData where
  inverse := 547
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B8 : CellData where
  inverse := 4921
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B9 : CellData where
  inverse := 4921
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B10 : CellData where
  inverse := 44287
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B11 : CellData where
  inverse := 44287
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B12 : CellData where
  inverse := 398581
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B13 : CellData where
  inverse := 398581
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B14 : CellData where
  inverse := 3587227
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B15 : CellData where
  inverse := 3587227
  bounds := fun d => if d = (4 : ℤ) then ⟨1, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 62⟩ else if d = (-1 : ℤ) then ⟨0, 62⟩ else if d = (2 : ℤ) then ⟨0, 62⟩ else if d = (4 : ℤ) then ⟨0, 62⟩ else if d = (5 : ℤ) then ⟨0, 62⟩ else if d = (7 : ℤ) then ⟨0, 62⟩ else if d = (8 : ℤ) then ⟨1, 62⟩ else if d = (10 : ℤ) then ⟨0, 62⟩ else ⟨0, 61⟩

def cellA3B2 : CellData where
  inverse := 8
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 54⟩ else if d = (-8 : ℤ) then ⟨0, 54⟩ else if d = (-7 : ℤ) then ⟨0, 54⟩ else if d = (-6 : ℤ) then ⟨0, 54⟩ else if d = (0 : ℤ) then ⟨0, 54⟩ else if d = (1 : ℤ) then ⟨0, 54⟩ else if d = (2 : ℤ) then ⟨0, 54⟩ else if d = (3 : ℤ) then ⟨0, 54⟩ else if d = (8 : ℤ) then ⟨1, 55⟩ else if d = (9 : ℤ) then ⟨0, 54⟩ else if d = (10 : ℤ) then ⟨0, 54⟩ else ⟨0, 55⟩

def cellA3B3 : CellData where
  inverse := 17
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 18⟩ else if d = (-6 : ℤ) then ⟨0, 18⟩ else if d = (-4 : ℤ) then ⟨0, 18⟩ else if d = (-3 : ℤ) then ⟨0, 18⟩ else if d = (-1 : ℤ) then ⟨0, 18⟩ else if d = (2 : ℤ) then ⟨0, 18⟩ else if d = (4 : ℤ) then ⟨0, 18⟩ else if d = (5 : ℤ) then ⟨0, 18⟩ else if d = (7 : ℤ) then ⟨0, 18⟩ else if d = (8 : ℤ) then ⟨1, 18⟩ else if d = (10 : ℤ) then ⟨0, 18⟩ else ⟨0, 17⟩

def cellA3B4 : CellData where
  inverse := 71
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 6⟩ else if d = (-1 : ℤ) then ⟨0, 6⟩ else if d = (7 : ℤ) then ⟨0, 6⟩ else if d = (8 : ℤ) then ⟨1, 6⟩ else ⟨0, 5⟩

def cellA3B5 : CellData where
  inverse := 152
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 2⟩ else ⟨0, 1⟩

def cellA3B6 : CellData where
  inverse := 638
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, -1⟩ else if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (-6 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (1 : ℤ) then ⟨0, -1⟩ else if d = (2 : ℤ) then ⟨0, -1⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else if d = (10 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA3B7 : CellData where
  inverse := 1367
  bounds := fun d => if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B8 : CellData where
  inverse := 5741
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B9 : CellData where
  inverse := 12302
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B10 : CellData where
  inverse := 51668
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B11 : CellData where
  inverse := 110717
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B12 : CellData where
  inverse := 465011
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B13 : CellData where
  inverse := 996452
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B14 : CellData where
  inverse := 4185098
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B15 : CellData where
  inverse := 8968067
  bounds := fun d => if d = (8 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (4 : ℤ) then ⟨0, 31⟩ else if d = (7 : ℤ) then ⟨0, 31⟩ else if d = (10 : ℤ) then ⟨0, 31⟩ else ⟨0, 30⟩

def cellA4B2 : CellData where
  inverse := 4
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 31⟩ else if d = (-2 : ℤ) then ⟨0, 31⟩ else if d = (5 : ℤ) then ⟨0, 31⟩ else if d = (7 : ℤ) then ⟨0, 31⟩ else ⟨0, 30⟩

def cellA4B3 : CellData where
  inverse := 22
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 17⟩ else if d = (-9 : ℤ) then ⟨0, 17⟩ else if d = (-5 : ℤ) then ⟨0, 17⟩ else if d = (-4 : ℤ) then ⟨0, 17⟩ else if d = (-3 : ℤ) then ⟨0, 17⟩ else if d = (0 : ℤ) then ⟨0, 17⟩ else if d = (1 : ℤ) then ⟨0, 17⟩ else if d = (2 : ℤ) then ⟨0, 17⟩ else if d = (6 : ℤ) then ⟨0, 17⟩ else if d = (7 : ℤ) then ⟨0, 17⟩ else ⟨0, 18⟩

def cellA4B4 : CellData where
  inverse := 76
  bounds := fun d => if d = (-2 : ℤ) then ⟨0, 6⟩ else if d = (-1 : ℤ) then ⟨0, 6⟩ else ⟨0, 5⟩

def cellA4B5 : CellData where
  inverse := 76
  bounds := fun _d => ⟨0, 1⟩

def cellA4B6 : CellData where
  inverse := 319
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (-5 : ℤ) then ⟨0, -1⟩ else if d = (-3 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (2 : ℤ) then ⟨0, -1⟩ else if d = (4 : ℤ) then ⟨0, -1⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA4B7 : CellData where
  inverse := 1777
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA4B8 : CellData where
  inverse := 6151
  bounds := fun d => if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA4B9 : CellData where
  inverse := 6151
  bounds := fun _d => ⟨0, -1⟩

def cellA4B10 : CellData where
  inverse := 25834
  bounds := fun _d => ⟨0, -1⟩

def cellA4B11 : CellData where
  inverse := 143932
  bounds := fun _d => ⟨0, -1⟩

def cellA4B12 : CellData where
  inverse := 498226
  bounds := fun _d => ⟨0, -1⟩

def cellA4B13 : CellData where
  inverse := 498226
  bounds := fun _d => ⟨0, -1⟩

def cellA4B14 : CellData where
  inverse := 2092549
  bounds := fun _d => ⟨0, -1⟩

def cellA4B15 : CellData where
  inverse := 11658487
  bounds := fun _d => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 15⟩ else if d = (-7 : ℤ) then ⟨0, 15⟩ else if d = (-4 : ℤ) then ⟨0, 15⟩ else if d = (-1 : ℤ) then ⟨0, 15⟩ else if d = (2 : ℤ) then ⟨0, 15⟩ else if d = (4 : ℤ) then ⟨0, 15⟩ else if d = (5 : ℤ) then ⟨0, 15⟩ else if d = (7 : ℤ) then ⟨0, 15⟩ else if d = (8 : ℤ) then ⟨0, 15⟩ else if d = (10 : ℤ) then ⟨0, 15⟩ else ⟨0, 14⟩

def cellA5B2 : CellData where
  inverse := 2
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 14⟩ else if d = (-9 : ℤ) then ⟨0, 14⟩ else if d = (-6 : ℤ) then ⟨0, 14⟩ else if d = (-5 : ℤ) then ⟨0, 14⟩ else if d = (-1 : ℤ) then ⟨0, 14⟩ else if d = (0 : ℤ) then ⟨0, 14⟩ else if d = (3 : ℤ) then ⟨0, 14⟩ else if d = (4 : ℤ) then ⟨0, 14⟩ else if d = (8 : ℤ) then ⟨0, 14⟩ else if d = (9 : ℤ) then ⟨0, 14⟩ else ⟨0, 15⟩

def cellA5B3 : CellData where
  inverse := 11
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 14⟩ else if d = (-8 : ℤ) then ⟨0, 14⟩ else if d = (-5 : ℤ) then ⟨0, 14⟩ else if d = (-3 : ℤ) then ⟨0, 14⟩ else if d = (0 : ℤ) then ⟨0, 14⟩ else if d = (2 : ℤ) then ⟨0, 14⟩ else if d = (7 : ℤ) then ⟨0, 14⟩ else if d = (9 : ℤ) then ⟨0, 14⟩ else ⟨0, 15⟩

def cellA5B4 : CellData where
  inverse := 38
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 6⟩ else if d = (-2 : ℤ) then ⟨0, 6⟩ else ⟨0, 5⟩

def cellA5B5 : CellData where
  inverse := 38
  bounds := fun _d => ⟨0, 1⟩

def cellA5B6 : CellData where
  inverse := 524
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, -1⟩ else if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (-6 : ℤ) then ⟨0, -1⟩ else if d = (-3 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (1 : ℤ) then ⟨0, -1⟩ else if d = (4 : ℤ) then ⟨0, -1⟩ else if d = (8 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA5B7 : CellData where
  inverse := 1982
  bounds := fun d => if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA5B8 : CellData where
  inverse := 6356
  bounds := fun d => if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA5B9 : CellData where
  inverse := 12917
  bounds := fun _d => ⟨0, -1⟩

def cellA5B10 : CellData where
  inverse := 12917
  bounds := fun _d => ⟨0, -1⟩

def cellA5B11 : CellData where
  inverse := 71966
  bounds := fun _d => ⟨0, -1⟩

def cellA5B12 : CellData where
  inverse := 249113
  bounds := fun _d => ⟨0, -1⟩

def cellA5B13 : CellData where
  inverse := 249113
  bounds := fun _d => ⟨0, -1⟩

def cellA5B14 : CellData where
  inverse := 3437759
  bounds := fun _d => ⟨0, -1⟩

def cellA5B15 : CellData where
  inverse := 13003697
  bounds := fun _d => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 6⟩ else if d = (-6 : ℤ) then ⟨0, 6⟩ else if d = (-3 : ℤ) then ⟨0, 6⟩ else if d = (0 : ℤ) then ⟨0, 6⟩ else if d = (3 : ℤ) then ⟨0, 6⟩ else if d = (6 : ℤ) then ⟨0, 6⟩ else if d = (9 : ℤ) then ⟨0, 6⟩ else ⟨0, 7⟩

def cellA6B2 : CellData where
  inverse := 1
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 6⟩ else if d = (-9 : ℤ) then ⟨0, 6⟩ else if d = (-1 : ℤ) then ⟨0, 6⟩ else if d = (0 : ℤ) then ⟨0, 6⟩ else if d = (8 : ℤ) then ⟨0, 6⟩ else if d = (9 : ℤ) then ⟨0, 6⟩ else ⟨0, 7⟩

def cellA6B3 : CellData where
  inverse := 19
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 6⟩ else if d = (-3 : ℤ) then ⟨0, 6⟩ else if d = (0 : ℤ) then ⟨0, 6⟩ else if d = (7 : ℤ) then ⟨0, 6⟩ else ⟨0, 7⟩

def cellA6B4 : CellData where
  inverse := 19
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 6⟩ else if d = (-4 : ℤ) then ⟨0, 6⟩ else if d = (5 : ℤ) then ⟨0, 6⟩ else if d = (9 : ℤ) then ⟨0, 6⟩ else ⟨0, 5⟩

def cellA6B5 : CellData where
  inverse := 19
  bounds := fun _d => ⟨0, 1⟩

def cellA6B6 : CellData where
  inverse := 262
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, -1⟩ else if d = (-6 : ℤ) then ⟨0, -1⟩ else if d = (-3 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (2 : ℤ) then ⟨0, -1⟩ else if d = (5 : ℤ) then ⟨0, -1⟩ else if d = (8 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA6B7 : CellData where
  inverse := 991
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA6B8 : CellData where
  inverse := 3178
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA6B9 : CellData where
  inverse := 16300
  bounds := fun _d => ⟨0, -1⟩

def cellA6B10 : CellData where
  inverse := 35983
  bounds := fun _d => ⟨0, -1⟩

def cellA6B11 : CellData where
  inverse := 35983
  bounds := fun _d => ⟨0, -1⟩

def cellA6B12 : CellData where
  inverse := 390277
  bounds := fun _d => ⟨0, -1⟩

def cellA6B13 : CellData where
  inverse := 921718
  bounds := fun _d => ⟨0, -1⟩

def cellA6B14 : CellData where
  inverse := 4110364
  bounds := fun _d => ⟨0, -1⟩

def cellA6B15 : CellData where
  inverse := 13676302
  bounds := fun _d => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 2⟩ else if d = (-6 : ℤ) then ⟨0, 2⟩ else if d = (-3 : ℤ) then ⟨0, 2⟩ else if d = (0 : ℤ) then ⟨0, 2⟩ else if d = (3 : ℤ) then ⟨0, 2⟩ else if d = (6 : ℤ) then ⟨0, 2⟩ else if d = (9 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA7B2 : CellData where
  inverse := 5
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 2⟩ else if d = (0 : ℤ) then ⟨0, 2⟩ else if d = (9 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA7B3 : CellData where
  inverse := 23
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 2⟩ else if d = (7 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA7B4 : CellData where
  inverse := 50
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 2⟩ else if d = (0 : ℤ) then ⟨0, 2⟩ else if d = (8 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA7B5 : CellData where
  inverse := 131
  bounds := fun _d => ⟨0, 1⟩

def cellA7B6 : CellData where
  inverse := 131
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (-6 : ℤ) then ⟨0, -1⟩ else if d = (-1 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (4 : ℤ) then ⟨0, -1⟩ else if d = (5 : ℤ) then ⟨0, -1⟩ else if d = (10 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA7B7 : CellData where
  inverse := 1589
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA7B8 : CellData where
  inverse := 1589
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA7B9 : CellData where
  inverse := 8150
  bounds := fun _d => ⟨0, -1⟩

def cellA7B10 : CellData where
  inverse := 47516
  bounds := fun _d => ⟨0, -1⟩

def cellA7B11 : CellData where
  inverse := 106565
  bounds := fun _d => ⟨0, -1⟩

def cellA7B12 : CellData where
  inverse := 460859
  bounds := fun _d => ⟨0, -1⟩

def cellA7B13 : CellData where
  inverse := 460859
  bounds := fun _d => ⟨0, -1⟩

def cellA7B14 : CellData where
  inverse := 2055182
  bounds := fun _d => ⟨0, -1⟩

def cellA7B15 : CellData where
  inverse := 6838151
  bounds := fun _d => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA8B2 : CellData where
  inverse := 7
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (0 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA8B3 : CellData where
  inverse := 25
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA8B4 : CellData where
  inverse := 25
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA8B5 : CellData where
  inverse := 187
  bounds := fun d => if d = (0 : ℤ) then ⟨0, 0⟩ else ⟨0, 1⟩

def cellA8B6 : CellData where
  inverse := 430
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, -1⟩ else if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (-2 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (3 : ℤ) then ⟨0, -1⟩ else if d = (5 : ℤ) then ⟨0, -1⟩ else if d = (8 : ℤ) then ⟨0, -1⟩ else if d = (10 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA8B7 : CellData where
  inverse := 1888
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA8B8 : CellData where
  inverse := 4075
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA8B9 : CellData where
  inverse := 4075
  bounds := fun _d => ⟨0, -1⟩

def cellA8B10 : CellData where
  inverse := 23758
  bounds := fun _d => ⟨0, -1⟩

def cellA8B11 : CellData where
  inverse := 141856
  bounds := fun _d => ⟨0, -1⟩

def cellA8B12 : CellData where
  inverse := 496150
  bounds := fun _d => ⟨0, -1⟩

def cellA8B13 : CellData where
  inverse := 1027591
  bounds := fun _d => ⟨0, -1⟩

def cellA8B14 : CellData where
  inverse := 1027591
  bounds := fun _d => ⟨0, -1⟩

def cellA8B15 : CellData where
  inverse := 10593529
  bounds := fun _d => ⟨0, -1⟩

def cellA9B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, -1⟩ else if d = (-6 : ℤ) then ⟨0, -1⟩ else if d = (-3 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (3 : ℤ) then ⟨0, -1⟩ else if d = (6 : ℤ) then ⟨0, -1⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA9B2 : CellData where
  inverse := 8
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA9B3 : CellData where
  inverse := 26
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA9B4 : CellData where
  inverse := 53
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA9B5 : CellData where
  inverse := 215
  bounds := fun d => if d = (0 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA9B6 : CellData where
  inverse := 215
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (-4 : ℤ) then ⟨0, -1⟩ else if d = (-1 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (3 : ℤ) then ⟨0, -1⟩ else if d = (6 : ℤ) then ⟨0, -1⟩ else if d = (10 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA9B7 : CellData where
  inverse := 944
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA9B8 : CellData where
  inverse := 5318
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA9B9 : CellData where
  inverse := 11879
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA9B10 : CellData where
  inverse := 11879
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA9B11 : CellData where
  inverse := 70928
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA9B12 : CellData where
  inverse := 248075
  bounds := fun _d => ⟨0, -1⟩

def cellA9B13 : CellData where
  inverse := 1310957
  bounds := fun _d => ⟨0, -1⟩

def cellA9B14 : CellData where
  inverse := 2905280
  bounds := fun _d => ⟨0, -1⟩

def cellA9B15 : CellData where
  inverse := 12471218
  bounds := fun _d => ⟨0, -1⟩

def cellA10B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B2 : CellData where
  inverse := 4
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B3 : CellData where
  inverse := 13
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B4 : CellData where
  inverse := 67
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B5 : CellData where
  inverse := 229
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B6 : CellData where
  inverse := 472
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B7 : CellData where
  inverse := 472
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B8 : CellData where
  inverse := 2659
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B9 : CellData where
  inverse := 15781
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B10 : CellData where
  inverse := 35464
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B11 : CellData where
  inverse := 35464
  bounds := fun d => if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA10B12 : CellData where
  inverse := 389758
  bounds := fun _d => ⟨0, -1⟩

def cellA10B13 : CellData where
  inverse := 1452640
  bounds := fun _d => ⟨0, -1⟩

def cellA10B14 : CellData where
  inverse := 1452640
  bounds := fun _d => ⟨0, -1⟩

def cellA10B15 : CellData where
  inverse := 6235609
  bounds := fun _d => ⟨0, -1⟩

def cellA11B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA11B2 : CellData where
  inverse := 2
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B3 : CellData where
  inverse := 20
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B4 : CellData where
  inverse := 74
  bounds := fun d => if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B5 : CellData where
  inverse := 236
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B6 : CellData where
  inverse := 236
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B7 : CellData where
  inverse := 236
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B8 : CellData where
  inverse := 4610
  bounds := fun d => if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B9 : CellData where
  inverse := 17732
  bounds := fun d => if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B10 : CellData where
  inverse := 17732
  bounds := fun d => if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B11 : CellData where
  inverse := 17732
  bounds := fun d => if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA11B12 : CellData where
  inverse := 194879
  bounds := fun _d => ⟨0, -1⟩

def cellA11B13 : CellData where
  inverse := 726320
  bounds := fun _d => ⟨0, -1⟩

def cellA11B14 : CellData where
  inverse := 726320
  bounds := fun _d => ⟨0, -1⟩

def cellA11B15 : CellData where
  inverse := 10292258
  bounds := fun _d => ⟨0, -1⟩

def cellA12B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA12B2 : CellData where
  inverse := 1
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B3 : CellData where
  inverse := 10
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B4 : CellData where
  inverse := 37
  bounds := fun d => if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B5 : CellData where
  inverse := 118
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B6 : CellData where
  inverse := 118
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B7 : CellData where
  inverse := 118
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B8 : CellData where
  inverse := 2305
  bounds := fun d => if d = (3 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA12B9 : CellData where
  inverse := 8866
  bounds := fun _d => ⟨0, -1⟩

def cellA12B10 : CellData where
  inverse := 8866
  bounds := fun _d => ⟨0, -1⟩

def cellA12B11 : CellData where
  inverse := 8866
  bounds := fun _d => ⟨0, -1⟩

def cellA12B12 : CellData where
  inverse := 363160
  bounds := fun _d => ⟨0, -1⟩

def cellA12B13 : CellData where
  inverse := 363160
  bounds := fun _d => ⟨0, -1⟩

def cellA12B14 : CellData where
  inverse := 363160
  bounds := fun _d => ⟨0, -1⟩

def cellA12B15 : CellData where
  inverse := 5146129
  bounds := fun _d => ⟨0, -1⟩

def cellA13B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA13B2 : CellData where
  inverse := 5
  bounds := fun _d => ⟨0, -1⟩

def cellA13B3 : CellData where
  inverse := 5
  bounds := fun _d => ⟨0, -1⟩

def cellA13B4 : CellData where
  inverse := 59
  bounds := fun _d => ⟨0, -1⟩

def cellA13B5 : CellData where
  inverse := 59
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA13B6 : CellData where
  inverse := 59
  bounds := fun _d => ⟨0, -1⟩

def cellA13B7 : CellData where
  inverse := 59
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA13B8 : CellData where
  inverse := 4433
  bounds := fun d => if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA13B9 : CellData where
  inverse := 4433
  bounds := fun _d => ⟨0, -1⟩

def cellA13B10 : CellData where
  inverse := 4433
  bounds := fun _d => ⟨0, -1⟩

def cellA13B11 : CellData where
  inverse := 4433
  bounds := fun _d => ⟨0, -1⟩

def cellA13B12 : CellData where
  inverse := 181580
  bounds := fun _d => ⟨0, -1⟩

def cellA13B13 : CellData where
  inverse := 181580
  bounds := fun _d => ⟨0, -1⟩

def cellA13B14 : CellData where
  inverse := 181580
  bounds := fun _d => ⟨0, -1⟩

def cellA13B15 : CellData where
  inverse := 9747518
  bounds := fun _d => ⟨0, -1⟩

def cellA14B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA14B2 : CellData where
  inverse := 7
  bounds := fun _d => ⟨0, -1⟩

def cellA14B3 : CellData where
  inverse := 16
  bounds := fun _d => ⟨0, -1⟩

def cellA14B4 : CellData where
  inverse := 70
  bounds := fun _d => ⟨0, -1⟩

def cellA14B5 : CellData where
  inverse := 151
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA14B6 : CellData where
  inverse := 394
  bounds := fun _d => ⟨0, -1⟩

def cellA14B7 : CellData where
  inverse := 1123
  bounds := fun d => if d = (2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA14B8 : CellData where
  inverse := 5497
  bounds := fun d => if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA14B9 : CellData where
  inverse := 12058
  bounds := fun _d => ⟨0, -1⟩

def cellA14B10 : CellData where
  inverse := 31741
  bounds := fun _d => ⟨0, -1⟩

def cellA14B11 : CellData where
  inverse := 90790
  bounds := fun _d => ⟨0, -1⟩

def cellA14B12 : CellData where
  inverse := 90790
  bounds := fun _d => ⟨0, -1⟩

def cellA14B13 : CellData where
  inverse := 90790
  bounds := fun _d => ⟨0, -1⟩

def cellA14B14 : CellData where
  inverse := 90790
  bounds := fun _d => ⟨0, -1⟩

def cellA14B15 : CellData where
  inverse := 4873759
  bounds := fun _d => ⟨0, -1⟩

def cellA15B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA15B2 : CellData where
  inverse := 8
  bounds := fun _d => ⟨0, -1⟩

def cellA15B3 : CellData where
  inverse := 8
  bounds := fun _d => ⟨0, -1⟩

def cellA15B4 : CellData where
  inverse := 35
  bounds := fun _d => ⟨0, -1⟩

def cellA15B5 : CellData where
  inverse := 197
  bounds := fun _d => ⟨0, -1⟩

def cellA15B6 : CellData where
  inverse := 197
  bounds := fun _d => ⟨0, -1⟩

def cellA15B7 : CellData where
  inverse := 1655
  bounds := fun _d => ⟨0, -1⟩

def cellA15B8 : CellData where
  inverse := 6029
  bounds := fun _d => ⟨0, -1⟩

def cellA15B9 : CellData where
  inverse := 6029
  bounds := fun _d => ⟨0, -1⟩

def cellA15B10 : CellData where
  inverse := 45395
  bounds := fun _d => ⟨0, -1⟩

def cellA15B11 : CellData where
  inverse := 45395
  bounds := fun _d => ⟨0, -1⟩

def cellA15B12 : CellData where
  inverse := 45395
  bounds := fun _d => ⟨0, -1⟩

def cellA15B13 : CellData where
  inverse := 45395
  bounds := fun _d => ⟨0, -1⟩

def cellA15B14 : CellData where
  inverse := 45395
  bounds := fun _d => ⟨0, -1⟩

def cellA15B15 : CellData where
  inverse := 9611333
  bounds := fun _d => ⟨0, -1⟩

def cellA16B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA16B2 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA16B3 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA16B4 : CellData where
  inverse := 58
  bounds := fun _d => ⟨0, -1⟩

def cellA16B5 : CellData where
  inverse := 220
  bounds := fun _d => ⟨0, -1⟩

def cellA16B6 : CellData where
  inverse := 463
  bounds := fun _d => ⟨0, -1⟩

def cellA16B7 : CellData where
  inverse := 1921
  bounds := fun _d => ⟨0, -1⟩

def cellA16B8 : CellData where
  inverse := 6295
  bounds := fun _d => ⟨0, -1⟩

def cellA16B9 : CellData where
  inverse := 12856
  bounds := fun _d => ⟨0, -1⟩

def cellA16B10 : CellData where
  inverse := 52222
  bounds := fun _d => ⟨0, -1⟩

def cellA16B11 : CellData where
  inverse := 111271
  bounds := fun _d => ⟨0, -1⟩

def cellA16B12 : CellData where
  inverse := 288418
  bounds := fun _d => ⟨0, -1⟩

def cellA16B13 : CellData where
  inverse := 819859
  bounds := fun _d => ⟨0, -1⟩

def cellA16B14 : CellData where
  inverse := 2414182
  bounds := fun _d => ⟨0, -1⟩

def cellA16B15 : CellData where
  inverse := 11980120
  bounds := fun _d => ⟨0, -1⟩

def cellA17B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA17B2 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA17B3 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA17B4 : CellData where
  inverse := 29
  bounds := fun _d => ⟨0, -1⟩

def cellA17B5 : CellData where
  inverse := 110
  bounds := fun _d => ⟨0, -1⟩

def cellA17B6 : CellData where
  inverse := 596
  bounds := fun _d => ⟨0, -1⟩

def cellA17B7 : CellData where
  inverse := 2054
  bounds := fun _d => ⟨0, -1⟩

def cellA17B8 : CellData where
  inverse := 6428
  bounds := fun _d => ⟨0, -1⟩

def cellA17B9 : CellData where
  inverse := 6428
  bounds := fun _d => ⟨0, -1⟩

def cellA17B10 : CellData where
  inverse := 26111
  bounds := fun _d => ⟨0, -1⟩

def cellA17B11 : CellData where
  inverse := 144209
  bounds := fun _d => ⟨0, -1⟩

def cellA17B12 : CellData where
  inverse := 144209
  bounds := fun _d => ⟨0, -1⟩

def cellA17B13 : CellData where
  inverse := 1207091
  bounds := fun _d => ⟨0, -1⟩

def cellA17B14 : CellData where
  inverse := 1207091
  bounds := fun _d => ⟨0, -1⟩

def cellA17B15 : CellData where
  inverse := 5990060
  bounds := fun _d => ⟨0, -1⟩

def cellA18B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA18B2 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA18B3 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA18B4 : CellData where
  inverse := 55
  bounds := fun _d => ⟨0, -1⟩

def cellA18B5 : CellData where
  inverse := 55
  bounds := fun _d => ⟨0, -1⟩

def cellA18B6 : CellData where
  inverse := 298
  bounds := fun _d => ⟨0, -1⟩

def cellA18B7 : CellData where
  inverse := 1027
  bounds := fun _d => ⟨0, -1⟩

def cellA18B8 : CellData where
  inverse := 3214
  bounds := fun _d => ⟨0, -1⟩

def cellA18B9 : CellData where
  inverse := 3214
  bounds := fun _d => ⟨0, -1⟩

def cellA18B10 : CellData where
  inverse := 42580
  bounds := fun _d => ⟨0, -1⟩

def cellA18B11 : CellData where
  inverse := 160678
  bounds := fun _d => ⟨0, -1⟩

def cellA18B12 : CellData where
  inverse := 337825
  bounds := fun _d => ⟨0, -1⟩

def cellA18B13 : CellData where
  inverse := 1400707
  bounds := fun _d => ⟨0, -1⟩

def cellA18B14 : CellData where
  inverse := 2995030
  bounds := fun _d => ⟨0, -1⟩

def cellA18B15 : CellData where
  inverse := 2995030
  bounds := fun _d => ⟨0, -1⟩

def cellA19B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA19B2 : CellData where
  inverse := 5
  bounds := fun _d => ⟨0, -1⟩

def cellA19B3 : CellData where
  inverse := 14
  bounds := fun _d => ⟨0, -1⟩

def cellA19B4 : CellData where
  inverse := 68
  bounds := fun _d => ⟨0, -1⟩

def cellA19B5 : CellData where
  inverse := 149
  bounds := fun _d => ⟨0, -1⟩

def cellA19B6 : CellData where
  inverse := 149
  bounds := fun _d => ⟨0, -1⟩

def cellA19B7 : CellData where
  inverse := 1607
  bounds := fun _d => ⟨0, -1⟩

def cellA19B8 : CellData where
  inverse := 1607
  bounds := fun _d => ⟨0, -1⟩

def cellA19B9 : CellData where
  inverse := 1607
  bounds := fun _d => ⟨0, -1⟩

def cellA19B10 : CellData where
  inverse := 21290
  bounds := fun _d => ⟨0, -1⟩

def cellA19B11 : CellData where
  inverse := 80339
  bounds := fun _d => ⟨0, -1⟩

def cellA19B12 : CellData where
  inverse := 434633
  bounds := fun _d => ⟨0, -1⟩

def cellA19B13 : CellData where
  inverse := 1497515
  bounds := fun _d => ⟨0, -1⟩

def cellA19B14 : CellData where
  inverse := 1497515
  bounds := fun _d => ⟨0, -1⟩

def cellA19B15 : CellData where
  inverse := 1497515
  bounds := fun _d => ⟨0, -1⟩

def cellA20B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA20B2 : CellData where
  inverse := 7
  bounds := fun _d => ⟨0, -1⟩

def cellA20B3 : CellData where
  inverse := 7
  bounds := fun _d => ⟨0, -1⟩

def cellA20B4 : CellData where
  inverse := 34
  bounds := fun _d => ⟨0, -1⟩

def cellA20B5 : CellData where
  inverse := 196
  bounds := fun _d => ⟨0, -1⟩

def cellA20B6 : CellData where
  inverse := 439
  bounds := fun _d => ⟨0, -1⟩

def cellA20B7 : CellData where
  inverse := 1897
  bounds := fun _d => ⟨0, -1⟩

def cellA20B8 : CellData where
  inverse := 4084
  bounds := fun _d => ⟨0, -1⟩

def cellA20B9 : CellData where
  inverse := 10645
  bounds := fun _d => ⟨0, -1⟩

def cellA20B10 : CellData where
  inverse := 10645
  bounds := fun _d => ⟨0, -1⟩

def cellA20B11 : CellData where
  inverse := 128743
  bounds := fun _d => ⟨0, -1⟩

def cellA20B12 : CellData where
  inverse := 483037
  bounds := fun _d => ⟨0, -1⟩

def cellA20B13 : CellData where
  inverse := 1545919
  bounds := fun _d => ⟨0, -1⟩

def cellA20B14 : CellData where
  inverse := 3140242
  bounds := fun _d => ⟨0, -1⟩

def cellA20B15 : CellData where
  inverse := 7923211
  bounds := fun _d => ⟨0, -1⟩

def cellA21B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA21B2 : CellData where
  inverse := 8
  bounds := fun _d => ⟨0, -1⟩

def cellA21B3 : CellData where
  inverse := 17
  bounds := fun _d => ⟨0, -1⟩

def cellA21B4 : CellData where
  inverse := 17
  bounds := fun _d => ⟨0, -1⟩

def cellA21B5 : CellData where
  inverse := 98
  bounds := fun _d => ⟨0, -1⟩

def cellA21B6 : CellData where
  inverse := 584
  bounds := fun _d => ⟨0, -1⟩

def cellA21B7 : CellData where
  inverse := 2042
  bounds := fun _d => ⟨0, -1⟩

def cellA21B8 : CellData where
  inverse := 2042
  bounds := fun _d => ⟨0, -1⟩

def cellA21B9 : CellData where
  inverse := 15164
  bounds := fun _d => ⟨0, -1⟩

def cellA21B10 : CellData where
  inverse := 34847
  bounds := fun _d => ⟨0, -1⟩

def cellA21B11 : CellData where
  inverse := 152945
  bounds := fun _d => ⟨0, -1⟩

def cellA21B12 : CellData where
  inverse := 507239
  bounds := fun _d => ⟨0, -1⟩

def cellA21B13 : CellData where
  inverse := 1570121
  bounds := fun _d => ⟨0, -1⟩

def cellA21B14 : CellData where
  inverse := 1570121
  bounds := fun _d => ⟨0, -1⟩

def cellA21B15 : CellData where
  inverse := 11136059
  bounds := fun _d => ⟨0, -1⟩

def cellA22B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA22B2 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA22B3 : CellData where
  inverse := 22
  bounds := fun _d => ⟨0, -1⟩

def cellA22B4 : CellData where
  inverse := 49
  bounds := fun _d => ⟨0, -1⟩

def cellA22B5 : CellData where
  inverse := 49
  bounds := fun _d => ⟨0, -1⟩

def cellA22B6 : CellData where
  inverse := 292
  bounds := fun _d => ⟨0, -1⟩

def cellA22B7 : CellData where
  inverse := 1021
  bounds := fun _d => ⟨0, -1⟩

def cellA22B8 : CellData where
  inverse := 1021
  bounds := fun _d => ⟨0, -1⟩

def cellA22B9 : CellData where
  inverse := 7582
  bounds := fun _d => ⟨0, -1⟩

def cellA22B10 : CellData where
  inverse := 46948
  bounds := fun _d => ⟨0, -1⟩

def cellA22B11 : CellData where
  inverse := 165046
  bounds := fun _d => ⟨0, -1⟩

def cellA22B12 : CellData where
  inverse := 519340
  bounds := fun _d => ⟨0, -1⟩

def cellA22B13 : CellData where
  inverse := 1582222
  bounds := fun _d => ⟨0, -1⟩

def cellA22B14 : CellData where
  inverse := 3176545
  bounds := fun _d => ⟨0, -1⟩

def cellA22B15 : CellData where
  inverse := 12742483
  bounds := fun _d => ⟨0, -1⟩

def cellA23B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA23B2 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA23B3 : CellData where
  inverse := 11
  bounds := fun _d => ⟨0, -1⟩

def cellA23B4 : CellData where
  inverse := 65
  bounds := fun _d => ⟨0, -1⟩

def cellA23B5 : CellData where
  inverse := 146
  bounds := fun _d => ⟨0, -1⟩

def cellA23B6 : CellData where
  inverse := 146
  bounds := fun _d => ⟨0, -1⟩

def cellA23B7 : CellData where
  inverse := 1604
  bounds := fun _d => ⟨0, -1⟩

def cellA23B8 : CellData where
  inverse := 3791
  bounds := fun _d => ⟨0, -1⟩

def cellA23B9 : CellData where
  inverse := 3791
  bounds := fun _d => ⟨0, -1⟩

def cellA23B10 : CellData where
  inverse := 23474
  bounds := fun _d => ⟨0, -1⟩

def cellA23B11 : CellData where
  inverse := 82523
  bounds := fun _d => ⟨0, -1⟩

def cellA23B12 : CellData where
  inverse := 259670
  bounds := fun _d => ⟨0, -1⟩

def cellA23B13 : CellData where
  inverse := 791111
  bounds := fun _d => ⟨0, -1⟩

def cellA23B14 : CellData where
  inverse := 3979757
  bounds := fun _d => ⟨0, -1⟩

def cellA23B15 : CellData where
  inverse := 13545695
  bounds := fun _d => ⟨0, -1⟩

def cellA24B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA24B2 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA24B3 : CellData where
  inverse := 19
  bounds := fun _d => ⟨0, -1⟩

def cellA24B4 : CellData where
  inverse := 73
  bounds := fun _d => ⟨0, -1⟩

def cellA24B5 : CellData where
  inverse := 73
  bounds := fun _d => ⟨0, -1⟩

def cellA24B6 : CellData where
  inverse := 73
  bounds := fun _d => ⟨0, -1⟩

def cellA24B7 : CellData where
  inverse := 802
  bounds := fun _d => ⟨0, -1⟩

def cellA24B8 : CellData where
  inverse := 5176
  bounds := fun _d => ⟨0, -1⟩

def cellA24B9 : CellData where
  inverse := 11737
  bounds := fun _d => ⟨0, -1⟩

def cellA24B10 : CellData where
  inverse := 11737
  bounds := fun _d => ⟨0, -1⟩

def cellA24B11 : CellData where
  inverse := 129835
  bounds := fun _d => ⟨0, -1⟩

def cellA24B12 : CellData where
  inverse := 129835
  bounds := fun _d => ⟨0, -1⟩

def cellA24B13 : CellData where
  inverse := 1192717
  bounds := fun _d => ⟨0, -1⟩

def cellA24B14 : CellData where
  inverse := 4381363
  bounds := fun _d => ⟨0, -1⟩

def cellA24B15 : CellData where
  inverse := 13947301
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
  else if b = 11 then cellA1B11
  else if b = 12 then cellA1B12
  else if b = 13 then cellA1B13
  else if b = 14 then cellA1B14
  else if b = 15 then cellA1B15
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
  else if b = 11 then cellA9B11
  else if b = 12 then cellA9B12
  else if b = 13 then cellA9B13
  else if b = 14 then cellA9B14
  else if b = 15 then cellA9B15
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
  else if b = 11 then cellA17B11
  else if b = 12 then cellA17B12
  else if b = 13 then cellA17B13
  else if b = 14 then cellA17B14
  else if b = 15 then cellA17B15
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

end Math.B699.I11TerminalMembership.Pair23

#print axioms Math.B699.I11TerminalMembership.Pair23.outsideCell
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA1B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA1B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA1B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA1B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA1B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA1B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA1B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA1B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA1B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA1B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA1B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA1B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA1B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA1B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA1B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA2B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA3B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA4B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA5B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA5B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA5B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA5B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA5B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA5B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA5B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA5B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA5B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA5B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA5B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA5B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA5B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA5B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA5B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA6B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA6B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA6B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA6B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA6B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA6B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA6B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA6B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA6B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA6B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA6B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA6B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA6B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA6B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA6B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA7B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA7B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA7B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA7B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA7B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA7B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA7B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA7B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA7B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA7B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA7B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA7B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA7B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA7B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA7B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA8B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA9B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA9B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA9B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA9B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA9B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA9B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA9B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA9B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA9B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA9B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA9B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA9B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA9B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA9B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA9B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA10B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA11B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA12B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA12B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA12B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA12B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA12B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA12B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA12B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA12B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA12B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA12B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA12B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA12B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA12B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA12B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA12B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA13B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA14B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA14B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA14B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA14B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA14B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA14B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA14B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA14B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA14B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA14B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA14B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA14B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA14B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA14B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA14B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA15B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA16B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA17B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA18B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA18B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA18B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA18B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA18B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA18B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA18B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA18B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA18B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA18B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA18B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA18B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA18B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA18B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA18B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA19B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA19B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA19B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA19B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA19B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA19B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA19B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA19B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA19B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA19B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA19B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA19B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA19B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA19B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA19B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA20B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA21B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA21B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA21B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA21B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA21B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA21B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA21B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA21B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA21B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA21B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA21B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA21B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA21B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA21B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA21B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA22B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA23B15
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA24B1
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA24B2
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA24B3
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA24B4
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA24B5
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA24B6
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA24B7
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA24B8
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA24B9
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA24B10
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA24B11
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA24B12
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA24B13
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA24B14
#print axioms Math.B699.I11TerminalMembership.Pair23.cellA24B15
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA1
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA2
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA3
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA4
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA5
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA6
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA7
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA8
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA9
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA10
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA11
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA12
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA13
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA14
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA15
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA16
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA17
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA18
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA19
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA20
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA21
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA22
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA23
#print axioms Math.B699.I11TerminalMembership.Pair23.rowA24
#print axioms Math.B699.I11TerminalMembership.Pair23.cells
