import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid

/-! Numeric pilot only. Data is generated from the exact CRT affine bounds;
the default CellData is outside the checked rectangle and is not coverage. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTGrid.PilotStage0_23_A1_B1to8
open Math.B699.CRTPairMax

def stageH : ℕ := 649037107316853453566312041152512
def stageM : ℕ := 118703030
def stageT : ℕ := 1458309064184540963
def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 2
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 39567675⟩ else if d = (-6 : ℤ) then ⟨0, 39567675⟩ else if d = (-3 : ℤ) then ⟨0, 39567675⟩ else if d = (0 : ℤ) then ⟨0, 39567675⟩ else if d = (2 : ℤ) then ⟨1, 39567676⟩ else if d = (3 : ℤ) then ⟨0, 39567675⟩ else if d = (4 : ℤ) then ⟨1, 39567676⟩ else if d = (5 : ℤ) then ⟨1, 39567676⟩ else if d = (6 : ℤ) then ⟨1, 39567675⟩ else if d = (7 : ℤ) then ⟨1, 39567676⟩ else if d = (8 : ℤ) then ⟨2, 39567676⟩ else if d = (9 : ℤ) then ⟨1, 39567675⟩ else if d = (10 : ℤ) then ⟨2, 39567676⟩ else ⟨0, 39567676⟩

def cellA1B2 : CellData where
  inverse := 5
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 13189225⟩ else if d = (-8 : ℤ) then ⟨0, 13189225⟩ else if d = (-7 : ℤ) then ⟨0, 13189225⟩ else if d = (-5 : ℤ) then ⟨0, 13189225⟩ else if d = (-3 : ℤ) then ⟨0, 13189225⟩ else if d = (-1 : ℤ) then ⟨0, 13189225⟩ else if d = (1 : ℤ) then ⟨0, 13189225⟩ else if d = (2 : ℤ) then ⟨1, 13189225⟩ else if d = (4 : ℤ) then ⟨1, 13189225⟩ else if d = (6 : ℤ) then ⟨1, 13189225⟩ else if d = (8 : ℤ) then ⟨1, 13189225⟩ else if d = (10 : ℤ) then ⟨1, 13189225⟩ else ⟨0, 13189224⟩

def cellA1B3 : CellData where
  inverse := 14
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 4396408⟩ else if d = (-7 : ℤ) then ⟨0, 4396408⟩ else if d = (-5 : ℤ) then ⟨0, 4396408⟩ else if d = (-3 : ℤ) then ⟨0, 4396408⟩ else if d = (-1 : ℤ) then ⟨0, 4396408⟩ else if d = (1 : ℤ) then ⟨0, 4396408⟩ else if d = (2 : ℤ) then ⟨1, 4396408⟩ else if d = (4 : ℤ) then ⟨1, 4396408⟩ else if d = (6 : ℤ) then ⟨1, 4396408⟩ else if d = (8 : ℤ) then ⟨1, 4396408⟩ else if d = (10 : ℤ) then ⟨1, 4396408⟩ else ⟨0, 4396407⟩

def cellA1B4 : CellData where
  inverse := 41
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 1465469⟩ else if d = (-7 : ℤ) then ⟨0, 1465469⟩ else if d = (-5 : ℤ) then ⟨0, 1465469⟩ else if d = (-3 : ℤ) then ⟨0, 1465469⟩ else if d = (-1 : ℤ) then ⟨0, 1465469⟩ else if d = (1 : ℤ) then ⟨0, 1465469⟩ else if d = (2 : ℤ) then ⟨1, 1465469⟩ else if d = (4 : ℤ) then ⟨1, 1465469⟩ else if d = (6 : ℤ) then ⟨1, 1465469⟩ else if d = (8 : ℤ) then ⟨1, 1465469⟩ else if d = (10 : ℤ) then ⟨1, 1465469⟩ else ⟨0, 1465468⟩

def cellA1B5 : CellData where
  inverse := 122
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 488488⟩ else if d = (-8 : ℤ) then ⟨0, 488488⟩ else if d = (-6 : ℤ) then ⟨0, 488488⟩ else if d = (-4 : ℤ) then ⟨0, 488488⟩ else if d = (-2 : ℤ) then ⟨0, 488488⟩ else if d = (0 : ℤ) then ⟨0, 488488⟩ else if d = (2 : ℤ) then ⟨1, 488489⟩ else if d = (4 : ℤ) then ⟨1, 488489⟩ else if d = (6 : ℤ) then ⟨1, 488489⟩ else if d = (8 : ℤ) then ⟨1, 488489⟩ else if d = (10 : ℤ) then ⟨1, 488489⟩ else ⟨0, 488489⟩

def cellA1B6 : CellData where
  inverse := 365
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 162828⟩ else if d = (-8 : ℤ) then ⟨0, 162828⟩ else if d = (-6 : ℤ) then ⟨0, 162828⟩ else if d = (-4 : ℤ) then ⟨0, 162828⟩ else if d = (-2 : ℤ) then ⟨0, 162828⟩ else if d = (0 : ℤ) then ⟨0, 162828⟩ else if d = (2 : ℤ) then ⟨1, 162829⟩ else if d = (4 : ℤ) then ⟨1, 162829⟩ else if d = (6 : ℤ) then ⟨1, 162829⟩ else if d = (8 : ℤ) then ⟨1, 162829⟩ else if d = (10 : ℤ) then ⟨1, 162829⟩ else ⟨0, 162829⟩

def cellA1B7 : CellData where
  inverse := 1094
  bounds := fun d => if d = (-10 : ℤ) then ⟨0, 54275⟩ else if d = (-8 : ℤ) then ⟨0, 54275⟩ else if d = (-6 : ℤ) then ⟨0, 54275⟩ else if d = (-4 : ℤ) then ⟨0, 54275⟩ else if d = (-2 : ℤ) then ⟨0, 54275⟩ else if d = (0 : ℤ) then ⟨0, 54275⟩ else if d = (2 : ℤ) then ⟨1, 54276⟩ else if d = (4 : ℤ) then ⟨1, 54276⟩ else if d = (6 : ℤ) then ⟨1, 54276⟩ else if d = (8 : ℤ) then ⟨1, 54276⟩ else if d = (10 : ℤ) then ⟨1, 54276⟩ else ⟨0, 54276⟩

def cellA1B8 : CellData where
  inverse := 3281
  bounds := fun d => if d = (2 : ℤ) then ⟨1, 18092⟩ else if d = (4 : ℤ) then ⟨1, 18092⟩ else if d = (6 : ℤ) then ⟨1, 18092⟩ else if d = (8 : ℤ) then ⟨1, 18092⟩ else if d = (10 : ℤ) then ⟨1, 18092⟩ else ⟨0, 18091⟩


def pilotData : ℕ → ℕ → CellData :=
  fun a b =>
    if a = 1 ∧ b = 1 then cellA1B1
    if a = 1 ∧ b = 2 then cellA1B2
    if a = 1 ∧ b = 3 then cellA1B3
    if a = 1 ∧ b = 4 then cellA1B4
    if a = 1 ∧ b = 5 then cellA1B5
    if a = 1 ∧ b = 6 then cellA1B6
    if a = 1 ∧ b = 7 then cellA1B7
    if a = 1 ∧ b = 8 then cellA1B8
    else outsideCell

theorem block_check :
    blockCheck 2 3 stageH stageM stageT
      1 1 1 8 pilotData = true := by
  decide

end Math.B699.CRTGrid.PilotStage0_23_A1_B1to8
#print axioms Math.B699.CRTGrid.PilotStage0_23_A1_B1to8.block_check
