import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid

/-! Numeric pilot only. Data is generated from the exact CRT affine bounds;
the default CellData is outside the checked rectangle and is not coverage. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTGrid.PilotStage4_57_Rectangle
open Math.B699.CRTPairMax

def stageH : ℕ := 29294603
def stageM : ℕ := 500
def stageT : ℕ := 29294602
def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 3
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 71⟩ else if d = (-6 : ℤ) then ⟨0, 71⟩ else if d = (-4 : ℤ) then ⟨0, 71⟩ else if d = (-2 : ℤ) then ⟨0, 71⟩ else if d = (1 : ℤ) then ⟨0, 71⟩ else if d = (3 : ℤ) then ⟨0, 71⟩ else if d = (5 : ℤ) then ⟨1, 71⟩ else if d = (8 : ℤ) then ⟨0, 71⟩ else if d = (10 : ℤ) then ⟨1, 71⟩ else ⟨0, 70⟩

def cellA1B2 : CellData where
  inverse := 10
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 10⟩ else if d = (-4 : ℤ) then ⟨0, 10⟩ else if d = (1 : ℤ) then ⟨0, 10⟩ else if d = (5 : ℤ) then ⟨1, 10⟩ else if d = (10 : ℤ) then ⟨1, 10⟩ else ⟨0, 9⟩

def cellA1B3 : CellData where
  inverse := 206
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 1⟩ else if d = (-6 : ℤ) then ⟨0, 1⟩ else if d = (-3 : ℤ) then ⟨0, 1⟩ else if d = (-1 : ℤ) then ⟨0, 1⟩ else if d = (2 : ℤ) then ⟨0, 1⟩ else if d = (4 : ℤ) then ⟨0, 1⟩ else if d = (5 : ℤ) then ⟨1, 1⟩ else if d = (7 : ℤ) then ⟨0, 1⟩ else if d = (9 : ℤ) then ⟨0, 1⟩ else if d = (10 : ℤ) then ⟨1, 1⟩ else ⟨0, 0⟩

def cellA1B4 : CellData where
  inverse := 1921
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (4 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨1, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B5 : CellData where
  inverse := 6723
  bounds := fun d => if d = (5 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B6 : CellData where
  inverse := 23530
  bounds := fun d => if d = (5 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B7 : CellData where
  inverse := 494126
  bounds := fun d => if d = (5 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA1B8 : CellData where
  inverse := 4611841
  bounds := fun d => if d = (5 : ℤ) then ⟨1, 0⟩ else if d = (10 : ℤ) then ⟨1, 0⟩ else ⟨0, -1⟩

def cellA2B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 18⟩ else ⟨0, 19⟩

def cellA2B2 : CellData where
  inverse := 2
  bounds := fun d => if d = (1 : ℤ) then ⟨0, 10⟩ else if d = (2 : ℤ) then ⟨0, 10⟩ else if d = (3 : ℤ) then ⟨0, 10⟩ else if d = (4 : ℤ) then ⟨0, 10⟩ else if d = (5 : ℤ) then ⟨0, 10⟩ else ⟨0, 9⟩

def cellA2B3 : CellData where
  inverse := 247
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 1⟩ else if d = (-5 : ℤ) then ⟨0, 1⟩ else if d = (-4 : ℤ) then ⟨0, 1⟩ else if d = (-1 : ℤ) then ⟨0, 1⟩ else if d = (2 : ℤ) then ⟨0, 1⟩ else if d = (3 : ℤ) then ⟨0, 1⟩ else if d = (6 : ℤ) then ⟨0, 1⟩ else if d = (7 : ℤ) then ⟨0, 1⟩ else if d = (10 : ℤ) then ⟨0, 1⟩ else ⟨0, 0⟩

def cellA2B4 : CellData where
  inverse := 2305
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA2B5 : CellData where
  inverse := 4706
  bounds := fun d => ⟨0, -1⟩

def cellA2B6 : CellData where
  inverse := 4706
  bounds := fun d => ⟨0, -1⟩

def cellA2B7 : CellData where
  inverse := 592951
  bounds := fun d => ⟨0, -1⟩

def cellA2B8 : CellData where
  inverse := 5534209
  bounds := fun d => ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 6
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 2⟩ else ⟨0, 3⟩

def cellA3B2 : CellData where
  inverse := 20
  bounds := fun d => ⟨0, 3⟩

def cellA3B3 : CellData where
  inverse := 118
  bounds := fun d => if d = (-8 : ℤ) then ⟨0, 1⟩ else if d = (-5 : ℤ) then ⟨0, 1⟩ else if d = (-2 : ℤ) then ⟨0, 1⟩ else if d = (1 : ℤ) then ⟨0, 1⟩ else if d = (3 : ℤ) then ⟨0, 1⟩ else if d = (4 : ℤ) then ⟨0, 1⟩ else if d = (6 : ℤ) then ⟨0, 1⟩ else if d = (7 : ℤ) then ⟨0, 1⟩ else if d = (9 : ℤ) then ⟨0, 1⟩ else if d = (10 : ℤ) then ⟨0, 1⟩ else ⟨0, 0⟩

def cellA3B4 : CellData where
  inverse := 461
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (1 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA3B5 : CellData where
  inverse := 7664
  bounds := fun d => ⟨0, -1⟩

def cellA3B6 : CellData where
  inverse := 24471
  bounds := fun d => ⟨0, -1⟩

def cellA3B7 : CellData where
  inverse := 612716
  bounds := fun d => ⟨0, -1⟩

def cellA3B8 : CellData where
  inverse := 2259802
  bounds := fun d => ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 4
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, -1⟩ else if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (-2 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (5 : ℤ) then ⟨0, -1⟩ else if d = (7 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA4B2 : CellData where
  inverse := 4
  bounds := fun d => if d = (-2 : ℤ) then ⟨0, -1⟩ else if d = (-1 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (10 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA4B3 : CellData where
  inverse := 298
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, -1⟩ else if d = (0 : ℤ) then ⟨0, -1⟩ else if d = (1 : ℤ) then ⟨0, -1⟩ else if d = (8 : ℤ) then ⟨0, -1⟩ else if d = (9 : ℤ) then ⟨0, -1⟩ else ⟨0, 0⟩

def cellA4B4 : CellData where
  inverse := 2013
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else if d = (6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA4B5 : CellData where
  inverse := 11617
  bounds := fun d => ⟨0, -1⟩

def cellA4B6 : CellData where
  inverse := 28424
  bounds := fun d => ⟨0, -1⟩

def cellA4B7 : CellData where
  inverse := 616669
  bounds := fun d => ⟨0, -1⟩

def cellA4B8 : CellData where
  inverse := 3910841
  bounds := fun d => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 5
  bounds := fun d => if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (3 : ℤ) then ⟨0, 0⟩ else if d = (10 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA5B2 : CellData where
  inverse := 40
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA5B3 : CellData where
  inverse := 334
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-5 : ℤ) then ⟨0, 0⟩ else if d = (-4 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else if d = (-2 : ℤ) then ⟨0, 0⟩ else if d = (-1 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA5B4 : CellData where
  inverse := 1363
  bounds := fun d => if d = (-7 : ℤ) then ⟨0, 0⟩ else if d = (2 : ℤ) then ⟨0, 0⟩ else if d = (9 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA5B5 : CellData where
  inverse := 15769
  bounds := fun d => ⟨0, -1⟩

def cellA5B6 : CellData where
  inverse := 99804
  bounds := fun d => ⟨0, -1⟩

def cellA5B7 : CellData where
  inverse := 452751
  bounds := fun d => ⟨0, -1⟩

def cellA5B8 : CellData where
  inverse := 5394009
  bounds := fun d => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 1
  bounds := fun d => ⟨0, -1⟩

def cellA6B2 : CellData where
  inverse := 8
  bounds := fun d => if d = (-6 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA6B3 : CellData where
  inverse := 204
  bounds := fun d => if d = (-5 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA6B4 : CellData where
  inverse := 1233
  bounds := fun d => if d = (2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA6B5 : CellData where
  inverse := 13238
  bounds := fun d => ⟨0, -1⟩

def cellA6B6 : CellData where
  inverse := 114080
  bounds := fun d => ⟨0, -1⟩

def cellA6B7 : CellData where
  inverse := 584676
  bounds := fun d => ⟨0, -1⟩

def cellA6B8 : CellData where
  inverse := 2231762
  bounds := fun d => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 3
  bounds := fun d => ⟨0, -1⟩

def cellA7B2 : CellData where
  inverse := 31
  bounds := fun d => ⟨0, -1⟩

def cellA7B3 : CellData where
  inverse := 178
  bounds := fun d => ⟨0, -1⟩

def cellA7B4 : CellData where
  inverse := 1207
  bounds := fun d => if d = (2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA7B5 : CellData where
  inverse := 6009
  bounds := fun d => ⟨0, -1⟩

def cellA7B6 : CellData where
  inverse := 22816
  bounds := fun d => ⟨0, -1⟩

def cellA7B7 : CellData where
  inverse := 611061
  bounds := fun d => ⟨0, -1⟩

def cellA7B8 : CellData where
  inverse := 3905233
  bounds := fun d => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 2
  bounds := fun d => ⟨0, -1⟩

def cellA8B2 : CellData where
  inverse := 16
  bounds := fun d => ⟨0, -1⟩

def cellA8B3 : CellData where
  inverse := 310
  bounds := fun d => ⟨0, -1⟩

def cellA8B4 : CellData where
  inverse := 1682
  bounds := fun d => ⟨0, -1⟩

def cellA8B5 : CellData where
  inverse := 11286
  bounds := fun d => ⟨0, -1⟩

def cellA8B6 : CellData where
  inverse := 28093
  bounds := fun d => ⟨0, -1⟩

def cellA8B7 : CellData where
  inverse := 616338
  bounds := fun d => ⟨0, -1⟩

def cellA8B8 : CellData where
  inverse := 3086967
  bounds := fun d => ⟨0, -1⟩

def cellA9B1 : CellData where
  inverse := 6
  bounds := fun d => ⟨0, -1⟩

def cellA9B2 : CellData where
  inverse := 13
  bounds := fun d => ⟨0, -1⟩

def cellA9B3 : CellData where
  inverse := 62
  bounds := fun d => ⟨0, -1⟩

def cellA9B4 : CellData where
  inverse := 1777
  bounds := fun d => ⟨0, -1⟩

def cellA9B5 : CellData where
  inverse := 8980
  bounds := fun d => ⟨0, -1⟩

def cellA9B6 : CellData where
  inverse := 76208
  bounds := fun d => ⟨0, -1⟩

def cellA9B7 : CellData where
  inverse := 782102
  bounds := fun d => ⟨0, -1⟩

def cellA9B8 : CellData where
  inverse := 4076274
  bounds := fun d => ⟨0, -1⟩

def cellA10B1 : CellData where
  inverse := 4
  bounds := fun d => ⟨0, -1⟩

def cellA10B2 : CellData where
  inverse := 32
  bounds := fun d => ⟨0, -1⟩

def cellA10B3 : CellData where
  inverse := 81
  bounds := fun d => ⟨0, -1⟩

def cellA10B4 : CellData where
  inverse := 1796
  bounds := fun d => ⟨0, -1⟩

def cellA10B5 : CellData where
  inverse := 1796
  bounds := fun d => ⟨0, -1⟩

def cellA10B6 : CellData where
  inverse := 85831
  bounds := fun d => ⟨0, -1⟩

def cellA10B7 : CellData where
  inverse := 321129
  bounds := fun d => ⟨0, -1⟩

def cellA10B8 : CellData where
  inverse := 1968215
  bounds := fun d => ⟨0, -1⟩


def pilotData : ℕ → ℕ → CellData :=
  fun a b =>
    if a = 1 ∧ b = 1 then cellA1B1
    else if a = 1 ∧ b = 2 then cellA1B2
    else if a = 1 ∧ b = 3 then cellA1B3
    else if a = 1 ∧ b = 4 then cellA1B4
    else if a = 1 ∧ b = 5 then cellA1B5
    else if a = 1 ∧ b = 6 then cellA1B6
    else if a = 1 ∧ b = 7 then cellA1B7
    else if a = 1 ∧ b = 8 then cellA1B8
    else if a = 2 ∧ b = 1 then cellA2B1
    else if a = 2 ∧ b = 2 then cellA2B2
    else if a = 2 ∧ b = 3 then cellA2B3
    else if a = 2 ∧ b = 4 then cellA2B4
    else if a = 2 ∧ b = 5 then cellA2B5
    else if a = 2 ∧ b = 6 then cellA2B6
    else if a = 2 ∧ b = 7 then cellA2B7
    else if a = 2 ∧ b = 8 then cellA2B8
    else if a = 3 ∧ b = 1 then cellA3B1
    else if a = 3 ∧ b = 2 then cellA3B2
    else if a = 3 ∧ b = 3 then cellA3B3
    else if a = 3 ∧ b = 4 then cellA3B4
    else if a = 3 ∧ b = 5 then cellA3B5
    else if a = 3 ∧ b = 6 then cellA3B6
    else if a = 3 ∧ b = 7 then cellA3B7
    else if a = 3 ∧ b = 8 then cellA3B8
    else if a = 4 ∧ b = 1 then cellA4B1
    else if a = 4 ∧ b = 2 then cellA4B2
    else if a = 4 ∧ b = 3 then cellA4B3
    else if a = 4 ∧ b = 4 then cellA4B4
    else if a = 4 ∧ b = 5 then cellA4B5
    else if a = 4 ∧ b = 6 then cellA4B6
    else if a = 4 ∧ b = 7 then cellA4B7
    else if a = 4 ∧ b = 8 then cellA4B8
    else if a = 5 ∧ b = 1 then cellA5B1
    else if a = 5 ∧ b = 2 then cellA5B2
    else if a = 5 ∧ b = 3 then cellA5B3
    else if a = 5 ∧ b = 4 then cellA5B4
    else if a = 5 ∧ b = 5 then cellA5B5
    else if a = 5 ∧ b = 6 then cellA5B6
    else if a = 5 ∧ b = 7 then cellA5B7
    else if a = 5 ∧ b = 8 then cellA5B8
    else if a = 6 ∧ b = 1 then cellA6B1
    else if a = 6 ∧ b = 2 then cellA6B2
    else if a = 6 ∧ b = 3 then cellA6B3
    else if a = 6 ∧ b = 4 then cellA6B4
    else if a = 6 ∧ b = 5 then cellA6B5
    else if a = 6 ∧ b = 6 then cellA6B6
    else if a = 6 ∧ b = 7 then cellA6B7
    else if a = 6 ∧ b = 8 then cellA6B8
    else if a = 7 ∧ b = 1 then cellA7B1
    else if a = 7 ∧ b = 2 then cellA7B2
    else if a = 7 ∧ b = 3 then cellA7B3
    else if a = 7 ∧ b = 4 then cellA7B4
    else if a = 7 ∧ b = 5 then cellA7B5
    else if a = 7 ∧ b = 6 then cellA7B6
    else if a = 7 ∧ b = 7 then cellA7B7
    else if a = 7 ∧ b = 8 then cellA7B8
    else if a = 8 ∧ b = 1 then cellA8B1
    else if a = 8 ∧ b = 2 then cellA8B2
    else if a = 8 ∧ b = 3 then cellA8B3
    else if a = 8 ∧ b = 4 then cellA8B4
    else if a = 8 ∧ b = 5 then cellA8B5
    else if a = 8 ∧ b = 6 then cellA8B6
    else if a = 8 ∧ b = 7 then cellA8B7
    else if a = 8 ∧ b = 8 then cellA8B8
    else if a = 9 ∧ b = 1 then cellA9B1
    else if a = 9 ∧ b = 2 then cellA9B2
    else if a = 9 ∧ b = 3 then cellA9B3
    else if a = 9 ∧ b = 4 then cellA9B4
    else if a = 9 ∧ b = 5 then cellA9B5
    else if a = 9 ∧ b = 6 then cellA9B6
    else if a = 9 ∧ b = 7 then cellA9B7
    else if a = 9 ∧ b = 8 then cellA9B8
    else if a = 10 ∧ b = 1 then cellA10B1
    else if a = 10 ∧ b = 2 then cellA10B2
    else if a = 10 ∧ b = 3 then cellA10B3
    else if a = 10 ∧ b = 4 then cellA10B4
    else if a = 10 ∧ b = 5 then cellA10B5
    else if a = 10 ∧ b = 6 then cellA10B6
    else if a = 10 ∧ b = 7 then cellA10B7
    else if a = 10 ∧ b = 8 then cellA10B8
    else outsideCell

theorem block_check :
    blockCheck 5 7 stageH stageM stageT
      1 10 1 8 pilotData = true := by
  decide +kernel

end Math.B699.CRTGrid.PilotStage4_57_Rectangle
#print axioms Math.B699.CRTGrid.PilotStage4_57_Rectangle.block_check
