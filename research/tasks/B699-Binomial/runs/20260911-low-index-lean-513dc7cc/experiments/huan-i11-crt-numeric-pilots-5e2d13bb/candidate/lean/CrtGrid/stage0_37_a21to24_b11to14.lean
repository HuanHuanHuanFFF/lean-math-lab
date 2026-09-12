import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid

/-! Numeric pilot only. Data is generated from the exact CRT affine bounds;
the default CellData is outside the checked rectangle and is not coverage. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTGrid.PilotStage0_37_A21to24_B11to14
open Math.B699.CRTPairMax

def stageH : ℕ := 649037107316853453566312041152512
def stageM : ℕ := 118703030
def stageT : ℕ := 1458309064184540963
def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA21B11 : CellData where
  inverse := 1058369864
  bounds := fun d => ⟨0, -1⟩

def cellA21B12 : CellData where
  inverse := 6990350093
  bounds := fun d => ⟨0, -1⟩

def cellA21B13 : CellData where
  inverse := 6990350093
  bounds := fun d => ⟨0, -1⟩

def cellA21B14 : CellData where
  inverse := 297657381314
  bounds := fun d => ⟨0, -1⟩

def cellA22B11 : CellData where
  inverse := 1011898869
  bounds := fun d => ⟨0, -1⟩

def cellA22B12 : CellData where
  inverse := 6943879098
  bounds := fun d => if d = (2 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

def cellA22B13 : CellData where
  inverse := 34626453500
  bounds := fun d => ⟨0, -1⟩

def cellA22B14 : CellData where
  inverse := 325293484721
  bounds := fun d => ⟨0, -1⟩

def cellA23B11 : CellData where
  inverse := 337299623
  bounds := fun d => ⟨0, -1⟩

def cellA23B12 : CellData where
  inverse := 2314626366
  bounds := fun d => ⟨0, -1⟩

def cellA23B13 : CellData where
  inverse := 43838487969
  bounds := fun d => ⟨0, -1⟩

def cellA23B14 : CellData where
  inverse := 334505519190
  bounds := fun d => ⟨0, -1⟩

def cellA24B11 : CellData where
  inverse := 771542122
  bounds := fun d => ⟨0, -1⟩

def cellA24B12 : CellData where
  inverse := 771542122
  bounds := fun d => ⟨0, -1⟩

def cellA24B13 : CellData where
  inverse := 14612829323
  bounds := fun d => ⟨0, -1⟩

def cellA24B14 : CellData where
  inverse := 111501839730
  bounds := fun d => ⟨0, -1⟩


def pilotData : ℕ → ℕ → CellData :=
  fun a b =>
    if a = 21 ∧ b = 11 then cellA21B11
    if a = 21 ∧ b = 12 then cellA21B12
    if a = 21 ∧ b = 13 then cellA21B13
    if a = 21 ∧ b = 14 then cellA21B14
    if a = 22 ∧ b = 11 then cellA22B11
    if a = 22 ∧ b = 12 then cellA22B12
    if a = 22 ∧ b = 13 then cellA22B13
    if a = 22 ∧ b = 14 then cellA22B14
    if a = 23 ∧ b = 11 then cellA23B11
    if a = 23 ∧ b = 12 then cellA23B12
    if a = 23 ∧ b = 13 then cellA23B13
    if a = 23 ∧ b = 14 then cellA23B14
    if a = 24 ∧ b = 11 then cellA24B11
    if a = 24 ∧ b = 12 then cellA24B12
    if a = 24 ∧ b = 13 then cellA24B13
    if a = 24 ∧ b = 14 then cellA24B14
    else outsideCell

theorem block_check :
    blockCheck 3 7 stageH stageM stageT
      21 4 11 4 pilotData = true := by
  decide

end Math.B699.CRTGrid.PilotStage0_37_A21to24_B11to14
#print axioms Math.B699.CRTGrid.PilotStage0_37_A21to24_B11to14.block_check
