import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid

/-! Numeric pilot only. Data is generated from the exact CRT affine bounds;
the default CellData is outside the checked rectangle and is not coverage. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTGrid.PilotStage0_23_A105to108_B65to68
open Math.B699.CRTPairMax

def stageH : ℕ := 649037107316853453566312041152512
def stageM : ℕ := 118703030
def stageT : ℕ := 1458309064184540963
def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA105B65 : CellData where
  inverse := 9670776182073605909260054765295
  bounds := fun d => ⟨0, -1⟩

def cellA105B66 : CellData where
  inverse := 30272879103828680817207149300981
  bounds := fun d => ⟨0, -1⟩

def cellA105B67 : CellData where
  inverse := 30272879103828680817207149300981
  bounds := fun d => ⟨0, -1⟩

def cellA105B68 : CellData where
  inverse := 122982342251726517902969074711568
  bounds := fun d => ⟨0, -1⟩

def cellA106B65 : CellData where
  inverse := 9985913821475571681616801016569
  bounds := fun d => ⟨0, -1⟩

def cellA106B66 : CellData where
  inverse := 30588016743230646589563895552255
  bounds := fun d => ⟨0, -1⟩

def cellA106B67 : CellData where
  inverse := 61491171125863258951484537355784
  bounds := fun d => ⟨0, -1⟩

def cellA106B68 : CellData where
  inverse := 61491171125863258951484537355784
  bounds := fun d => ⟨0, -1⟩

def cellA107B65 : CellData where
  inverse := 10143482641176554567795174142206
  bounds := fun d => ⟨0, -1⟩

def cellA107B66 : CellData where
  inverse := 30745585562931629475742268677892
  bounds := fun d => ⟨0, -1⟩

def cellA107B67 : CellData where
  inverse := 30745585562931629475742268677892
  bounds := fun d => ⟨0, -1⟩

def cellA107B68 : CellData where
  inverse := 30745585562931629475742268677892
  bounds := fun d => ⟨0, -1⟩

def cellA108B65 : CellData where
  inverse := 5071741320588277283897587071103
  bounds := fun d => ⟨0, -1⟩

def cellA108B66 : CellData where
  inverse := 15372792781465814737871134338946
  bounds := fun d => ⟨0, -1⟩

def cellA108B67 : CellData where
  inverse := 15372792781465814737871134338946
  bounds := fun d => ⟨0, -1⟩

def cellA108B68 : CellData where
  inverse := 15372792781465814737871134338946
  bounds := fun d => ⟨0, -1⟩


def pilotData : ℕ → ℕ → CellData :=
  fun a b =>
    if a = 105 ∧ b = 65 then cellA105B65
    if a = 105 ∧ b = 66 then cellA105B66
    if a = 105 ∧ b = 67 then cellA105B67
    if a = 105 ∧ b = 68 then cellA105B68
    if a = 106 ∧ b = 65 then cellA106B65
    if a = 106 ∧ b = 66 then cellA106B66
    if a = 106 ∧ b = 67 then cellA106B67
    if a = 106 ∧ b = 68 then cellA106B68
    if a = 107 ∧ b = 65 then cellA107B65
    if a = 107 ∧ b = 66 then cellA107B66
    if a = 107 ∧ b = 67 then cellA107B67
    if a = 107 ∧ b = 68 then cellA107B68
    if a = 108 ∧ b = 65 then cellA108B65
    if a = 108 ∧ b = 66 then cellA108B66
    if a = 108 ∧ b = 67 then cellA108B67
    if a = 108 ∧ b = 68 then cellA108B68
    else outsideCell

theorem block_check :
    blockCheck 2 3 stageH stageM stageT
      105 4 65 4 pilotData = true := by
  decide

end Math.B699.CRTGrid.PilotStage0_23_A105to108_B65to68
#print axioms Math.B699.CRTGrid.PilotStage0_23_A105to108_B65to68.block_check
