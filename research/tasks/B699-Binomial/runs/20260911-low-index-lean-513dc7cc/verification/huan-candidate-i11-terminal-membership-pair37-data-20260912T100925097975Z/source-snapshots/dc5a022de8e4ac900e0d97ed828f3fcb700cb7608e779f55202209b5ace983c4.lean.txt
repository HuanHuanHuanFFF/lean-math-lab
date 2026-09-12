import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Candidates
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.Meta

/-! UNCOMPILED complete stage04 membership table; all21 shifts and complete
RowCell parameter ranges are retained. No whole-grid decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.I11TerminalMembership.Pair37
open Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair
open Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata

def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 5
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 71⟩ else if d = (-5 : ℤ) then ⟨0, 71⟩ else if d = (-4 : ℤ) then ⟨0, 71⟩ else if d = (-1 : ℤ) then ⟨0, 71⟩ else if d = (2 : ℤ) then ⟨0, 71⟩ else if d = (3 : ℤ) then ⟨1, 71⟩ else if d = (6 : ℤ) then ⟨1, 71⟩ else if d = (9 : ℤ) then ⟨1, 71⟩ else if d = (10 : ℤ) then ⟨1, 71⟩ else ⟨0, 70⟩

def cellA1B2 : CellData where
  inverse := 33
  bounds := fun d => if d = (3 : ℤ) then ⟨1, 10⟩ else if d = (6 : ℤ) then ⟨1, 10⟩ else if d = (9 : ℤ) then ⟨1, 10⟩ else ⟨0, 9⟩

def cellA1B3 : CellData where
  inverse := 229
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1⟩ else if d = (-7 : ℤ) then ⟨0, 1⟩ else if d = (-4 : ℤ) then ⟨0, 1⟩ else if d = (-1 : ℤ) then ⟨0, 1⟩ else if d = (2 : ℤ) then ⟨0, 1⟩ else if d = (3 : ℤ) then ⟨1, 1⟩ else if d = (5 : ℤ) then ⟨0, 1⟩ else if d = (6 : ℤ) then ⟨1, 1⟩ else if d = (8 : ℤ) then ⟨0, 1⟩ else if d = (9 : ℤ) then ⟨1, 1⟩ else ⟨0, 0⟩

def cellA1B4 : CellData where
  inverse := 1601
  bounds := fun d => if d = (3 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (9 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B5 : CellData where
  inverse := 11205
  bounds := fun d => if d = (3 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (9 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B6 : CellData where
  inverse := 78433
  bounds := fun d => if d = (3 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (9 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B7 : CellData where
  inverse := 549029
  bounds := fun d => if d = (3 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (9 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B8 : CellData where
  inverse := 3843201
  bounds := fun d => if d = (3 : ℤ) then ⟨1, 0⟩ else if d = (6 : ℤ) then ⟨1, 0⟩ else if d = (9 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B1 : CellData where
  inverse := 4
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 54⟩ else if d = (-7 : ℤ) then ⟨0, 54⟩ else if d = (-6 : ℤ) then ⟨0, 54⟩ else if d = (-4 : ℤ) then ⟨0, 54⟩ else if d = (-2 : ℤ) then ⟨0, 54⟩ else if d = (0 : ℤ) then ⟨0, 54⟩ else if d = (3 : ℤ) then ⟨0, 54⟩ else if d = (5 : ℤ) then ⟨0, 54⟩ else if d = (7 : ℤ) then ⟨0, 54⟩ else if d = (9 : ℤ) then ⟨1, 55⟩ else ⟨0, 55⟩

def cellA2B2 : CellData where
  inverse := 11
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 10⟩ else if d = (-4 : ℤ) then ⟨0, 10⟩ else if d = (5 : ℤ) then ⟨0, 10⟩ else if d = (9 : ℤ) then ⟨1, 10⟩ else ⟨0, 9⟩

def cellA2B3 : CellData where
  inverse := 305
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1⟩ else if d = (-4 : ℤ) then ⟨0, 1⟩ else if d = (-3 : ℤ) then ⟨0, 1⟩ else if d = (-2 : ℤ) then ⟨0, 1⟩ else if d = (-1 : ℤ) then ⟨0, 1⟩ else if d = (5 : ℤ) then ⟨0, 1⟩ else if d = (6 : ℤ) then ⟨0, 1⟩ else if d = (7 : ℤ) then ⟨0, 1⟩ else if d = (8 : ℤ) then ⟨0, 1⟩ else if d = (9 : ℤ) then ⟨1, 1⟩ else ⟨0, 0⟩

def cellA2B4 : CellData where
  inverse := 1334
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B5 : CellData where
  inverse := 3735
  bounds := fun d => if d = (9 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B6 : CellData where
  inverse := 104577
  bounds := fun d => if d = (9 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B7 : CellData where
  inverse := 457524
  bounds := fun d => if d = (9 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B8 : CellData where
  inverse := 1281067
  bounds := fun d => if d = (9 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 6
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 18⟩ else if d = (-9 : ℤ) then ⟨0, 18⟩ else if d = (-8 : ℤ) then ⟨0, 18⟩ else if d = (-3 : ℤ) then ⟨0, 18⟩ else if d = (-2 : ℤ) then ⟨0, 18⟩ else if d = (-1 : ℤ) then ⟨0, 18⟩ else if d = (4 : ℤ) then ⟨0, 18⟩ else if d = (5 : ℤ) then ⟨0, 18⟩ else if d = (6 : ℤ) then ⟨0, 18⟩ else if d = (10 : ℤ) then ⟨0, 18⟩ else ⟨0, 17⟩

def cellA3B2 : CellData where
  inverse := 20
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 10⟩ else if d = (-2 : ℤ) then ⟨0, 10⟩ else if d = (5 : ℤ) then ⟨0, 10⟩ else if d = (10 : ℤ) then ⟨0, 10⟩ else ⟨0, 9⟩

def cellA3B3 : CellData where
  inverse := 216
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 1⟩ else if d = (-6 : ℤ) then ⟨0, 1⟩ else if d = (-3 : ℤ) then ⟨0, 1⟩ else if d = (-1 : ℤ) then ⟨0, 1⟩ else if d = (2 : ℤ) then ⟨0, 1⟩ else if d = (5 : ℤ) then ⟨0, 1⟩ else if d = (7 : ℤ) then ⟨0, 1⟩ else if d = (8 : ℤ) then ⟨0, 1⟩ else if d = (10 : ℤ) then ⟨0, 1⟩ else ⟨0, 0⟩

def cellA3B4 : CellData where
  inverse := 1245
  bounds := fun d => if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA3B5 : CellData where
  inverse := 1245
  bounds := fun _d => ⟨0, -1⟩

def cellA3B6 : CellData where
  inverse := 34859
  bounds := fun _d => ⟨0, -1⟩

def cellA3B7 : CellData where
  inverse := 152508
  bounds := fun _d => ⟨0, -1⟩

def cellA3B8 : CellData where
  inverse := 4270223
  bounds := fun _d => ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 6⟩ else if d = (-3 : ℤ) then ⟨0, 6⟩ else if d = (4 : ℤ) then ⟨0, 6⟩ else ⟨0, 5⟩

def cellA4B2 : CellData where
  inverse := 23
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 6⟩ else if d = (-2 : ℤ) then ⟨0, 6⟩ else ⟨0, 5⟩

def cellA4B3 : CellData where
  inverse := 72
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 1⟩ else if d = (-8 : ℤ) then ⟨0, 1⟩ else if d = (-4 : ℤ) then ⟨0, 1⟩ else if d = (-3 : ℤ) then ⟨0, 1⟩ else if d = (1 : ℤ) then ⟨0, 1⟩ else if d = (2 : ℤ) then ⟨0, 1⟩ else if d = (5 : ℤ) then ⟨0, 1⟩ else if d = (6 : ℤ) then ⟨0, 1⟩ else if d = (10 : ℤ) then ⟨0, 1⟩ else ⟨0, 0⟩

def cellA4B4 : CellData where
  inverse := 415
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA4B5 : CellData where
  inverse := 415
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA4B6 : CellData where
  inverse := 50836
  bounds := fun _d => ⟨0, -1⟩

def cellA4B7 : CellData where
  inverse := 50836
  bounds := fun _d => ⟨0, -1⟩

def cellA4B8 : CellData where
  inverse := 3345008
  bounds := fun _d => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 3
  bounds := fun _d => ⟨0, 1⟩

def cellA5B2 : CellData where
  inverse := 24
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 2⟩ else if d = (-2 : ℤ) then ⟨0, 2⟩ else ⟨0, 1⟩

def cellA5B3 : CellData where
  inverse := 24
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 1⟩ else if d = (-9 : ℤ) then ⟨0, 1⟩ else if d = (-8 : ℤ) then ⟨0, 1⟩ else if d = (1 : ℤ) then ⟨0, 1⟩ else if d = (2 : ℤ) then ⟨0, 1⟩ else if d = (3 : ℤ) then ⟨0, 1⟩ else if d = (4 : ℤ) then ⟨0, 1⟩ else if d = (5 : ℤ) then ⟨0, 1⟩ else if d = (6 : ℤ) then ⟨0, 1⟩ else ⟨0, 0⟩

def cellA5B4 : CellData where
  inverse := 1739
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA5B5 : CellData where
  inverse := 11343
  bounds := fun d => if d = (3 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA5B6 : CellData where
  inverse := 95378
  bounds := fun _d => ⟨0, -1⟩

def cellA5B7 : CellData where
  inverse := 565974
  bounds := fun _d => ⟨0, -1⟩

def cellA5B8 : CellData where
  inverse := 3036603
  bounds := fun _d => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 1
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, -1⟩ else if d = (-8 : ℤ) then ⟨0, -1⟩ else if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (-2 : ℤ) then ⟨0, -1⟩ else if d = (-1 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (5 : ℤ) then ⟨0, -1⟩ else if d = (6 : ℤ) then ⟨0, -1⟩ else if d = (7 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA6B2 : CellData where
  inverse := 8
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, -1⟩ else if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (-1 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (5 : ℤ) then ⟨0, -1⟩ else if d = (6 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA6B3 : CellData where
  inverse := 8
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA6B4 : CellData where
  inverse := 1380
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (7 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA6B5 : CellData where
  inverse := 3781
  bounds := fun d => if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA6B6 : CellData where
  inverse := 71009
  bounds := fun _d => ⟨0, -1⟩

def cellA6B7 : CellData where
  inverse := 188658
  bounds := fun _d => ⟨0, -1⟩

def cellA6B8 : CellData where
  inverse := 1012201
  bounds := fun _d => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 5
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA7B2 : CellData where
  inverse := 19
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (8 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA7B3 : CellData where
  inverse := 117
  bounds := fun d => if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA7B4 : CellData where
  inverse := 460
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA7B5 : CellData where
  inverse := 12465
  bounds := fun _d => ⟨0, -1⟩

def cellA7B6 : CellData where
  inverse := 62886
  bounds := fun _d => ⟨0, -1⟩

def cellA7B7 : CellData where
  inverse := 62886
  bounds := fun _d => ⟨0, -1⟩

def cellA7B8 : CellData where
  inverse := 4180601
  bounds := fun _d => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA8B2 : CellData where
  inverse := 39
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA8B3 : CellData where
  inverse := 39
  bounds := fun d => if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA8B4 : CellData where
  inverse := 1754
  bounds := fun _d => ⟨0, -1⟩

def cellA8B5 : CellData where
  inverse := 4155
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA8B6 : CellData where
  inverse := 20962
  bounds := fun _d => ⟨0, -1⟩

def cellA8B7 : CellData where
  inverse := 20962
  bounds := fun _d => ⟨0, -1⟩

def cellA8B8 : CellData where
  inverse := 3315134
  bounds := fun _d => ⟨0, -1⟩

def cellA9B1 : CellData where
  inverse := 6
  bounds := fun _d => ⟨0, -1⟩

def cellA9B2 : CellData where
  inverse := 13
  bounds := fun _d => ⟨0, -1⟩

def cellA9B3 : CellData where
  inverse := 13
  bounds := fun _d => ⟨0, -1⟩

def cellA9B4 : CellData where
  inverse := 1385
  bounds := fun _d => ⟨0, -1⟩

def cellA9B5 : CellData where
  inverse := 1385
  bounds := fun _d => ⟨0, -1⟩

def cellA9B6 : CellData where
  inverse := 85420
  bounds := fun _d => ⟨0, -1⟩

def cellA9B7 : CellData where
  inverse := 556016
  bounds := fun _d => ⟨0, -1⟩

def cellA9B8 : CellData where
  inverse := 3026645
  bounds := fun _d => ⟨0, -1⟩

def cellA10B1 : CellData where
  inverse := 2
  bounds := fun _d => ⟨0, -1⟩

def cellA10B2 : CellData where
  inverse := 37
  bounds := fun _d => ⟨0, -1⟩

def cellA10B3 : CellData where
  inverse := 233
  bounds := fun _d => ⟨0, -1⟩

def cellA10B4 : CellData where
  inverse := 1262
  bounds := fun _d => ⟨0, -1⟩

def cellA10B5 : CellData where
  inverse := 6064
  bounds := fun _d => ⟨0, -1⟩

def cellA10B6 : CellData where
  inverse := 106906
  bounds := fun _d => ⟨0, -1⟩

def cellA10B7 : CellData where
  inverse := 459853
  bounds := fun _d => ⟨0, -1⟩

def cellA10B8 : CellData where
  inverse := 2930482
  bounds := fun _d => ⟨0, -1⟩

def cellA11B1 : CellData where
  inverse := 3
  bounds := fun _d => ⟨0, -1⟩

def cellA11B2 : CellData where
  inverse := 45
  bounds := fun _d => ⟨0, -1⟩

def cellA11B3 : CellData where
  inverse := 192
  bounds := fun _d => ⟨0, -1⟩

def cellA11B4 : CellData where
  inverse := 1221
  bounds := fun _d => ⟨0, -1⟩

def cellA11B5 : CellData where
  inverse := 13226
  bounds := fun _d => ⟨0, -1⟩

def cellA11B6 : CellData where
  inverse := 114068
  bounds := fun _d => ⟨0, -1⟩

def cellA11B7 : CellData where
  inverse := 702313
  bounds := fun _d => ⟨0, -1⟩

def cellA11B8 : CellData where
  inverse := 4820028
  bounds := fun _d => ⟨0, -1⟩

def cellA12B1 : CellData where
  inverse := 1
  bounds := fun _d => ⟨0, -1⟩

def cellA12B2 : CellData where
  inverse := 15
  bounds := fun _d => ⟨0, -1⟩

def cellA12B3 : CellData where
  inverse := 64
  bounds := fun _d => ⟨0, -1⟩

def cellA12B4 : CellData where
  inverse := 407
  bounds := fun _d => ⟨0, -1⟩

def cellA12B5 : CellData where
  inverse := 10011
  bounds := fun _d => ⟨0, -1⟩

def cellA12B6 : CellData where
  inverse := 77239
  bounds := fun _d => ⟨0, -1⟩

def cellA12B7 : CellData where
  inverse := 783133
  bounds := fun _d => ⟨0, -1⟩

def cellA12B8 : CellData where
  inverse := 1606676
  bounds := fun _d => ⟨0, -1⟩

def cellA13B1 : CellData where
  inverse := 5
  bounds := fun _d => ⟨0, -1⟩

def cellA13B2 : CellData where
  inverse := 5
  bounds := fun _d => ⟨0, -1⟩

def cellA13B3 : CellData where
  inverse := 250
  bounds := fun _d => ⟨0, -1⟩

def cellA13B4 : CellData where
  inverse := 936
  bounds := fun _d => ⟨0, -1⟩

def cellA13B5 : CellData where
  inverse := 3337
  bounds := fun _d => ⟨0, -1⟩

def cellA13B6 : CellData where
  inverse := 104179
  bounds := fun _d => ⟨0, -1⟩

def cellA13B7 : CellData where
  inverse := 810073
  bounds := fun _d => ⟨0, -1⟩

def cellA13B8 : CellData where
  inverse := 2457159
  bounds := fun _d => ⟨0, -1⟩

def cellA14B1 : CellData where
  inverse := 4
  bounds := fun _d => ⟨0, -1⟩

def cellA14B2 : CellData where
  inverse := 18
  bounds := fun _d => ⟨0, -1⟩

def cellA14B3 : CellData where
  inverse := 312
  bounds := fun _d => ⟨0, -1⟩

def cellA14B4 : CellData where
  inverse := 312
  bounds := fun _d => ⟨0, -1⟩

def cellA14B5 : CellData where
  inverse := 12317
  bounds := fun _d => ⟨0, -1⟩

def cellA14B6 : CellData where
  inverse := 113159
  bounds := fun _d => ⟨0, -1⟩

def cellA14B7 : CellData where
  inverse := 819053
  bounds := fun _d => ⟨0, -1⟩

def cellA14B8 : CellData where
  inverse := 819053
  bounds := fun _d => ⟨0, -1⟩

def cellA15B1 : CellData where
  inverse := 6
  bounds := fun _d => ⟨0, -1⟩

def cellA15B2 : CellData where
  inverse := 6
  bounds := fun _d => ⟨0, -1⟩

def cellA15B3 : CellData where
  inverse := 104
  bounds := fun _d => ⟨0, -1⟩

def cellA15B4 : CellData where
  inverse := 104
  bounds := fun _d => ⟨0, -1⟩

def cellA15B5 : CellData where
  inverse := 9708
  bounds := fun _d => ⟨0, -1⟩

def cellA15B6 : CellData where
  inverse := 76936
  bounds := fun _d => ⟨0, -1⟩

def cellA15B7 : CellData where
  inverse := 547532
  bounds := fun _d => ⟨0, -1⟩

def cellA15B8 : CellData where
  inverse := 2194618
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
  else outsideCell

end Math.B699.I11TerminalMembership.Pair37

#print axioms Math.B699.I11TerminalMembership.Pair37.outsideCell
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA1B1
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA1B2
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA1B3
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA1B4
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA1B5
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA1B6
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA1B7
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA1B8
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA2B1
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA2B2
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA2B3
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA2B4
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA2B5
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA2B6
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA2B7
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA2B8
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA3B1
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA3B2
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA3B3
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA3B4
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA3B5
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA3B6
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA3B7
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA3B8
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA4B1
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA4B2
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA4B3
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA4B4
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA4B5
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA4B6
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA4B7
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA4B8
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA5B1
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA5B2
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA5B3
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA5B4
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA5B5
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA5B6
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA5B7
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA5B8
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA6B1
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA6B2
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA6B3
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA6B4
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA6B5
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA6B6
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA6B7
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA6B8
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA7B1
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA7B2
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA7B3
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA7B4
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA7B5
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA7B6
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA7B7
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA7B8
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA8B1
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA8B2
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA8B3
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA8B4
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA8B5
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA8B6
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA8B7
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA8B8
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA9B1
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA9B2
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA9B3
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA9B4
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA9B5
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA9B6
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA9B7
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA9B8
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA10B1
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA10B2
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA10B3
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA10B4
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA10B5
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA10B6
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA10B7
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA10B8
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA11B1
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA11B2
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA11B3
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA11B4
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA11B5
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA11B6
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA11B7
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA11B8
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA12B1
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA12B2
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA12B3
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA12B4
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA12B5
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA12B6
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA12B7
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA12B8
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA13B1
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA13B2
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA13B3
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA13B4
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA13B5
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA13B6
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA13B7
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA13B8
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA14B1
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA14B2
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA14B3
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA14B4
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA14B5
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA14B6
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA14B7
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA14B8
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA15B1
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA15B2
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA15B3
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA15B4
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA15B5
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA15B6
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA15B7
#print axioms Math.B699.I11TerminalMembership.Pair37.cellA15B8
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA1
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA2
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA3
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA4
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA5
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA6
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA7
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA8
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA9
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA10
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA11
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA12
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA13
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA14
#print axioms Math.B699.I11TerminalMembership.Pair37.rowA15
#print axioms Math.B699.I11TerminalMembership.Pair37.cells
