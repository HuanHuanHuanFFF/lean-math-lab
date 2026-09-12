import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Candidates

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.I11TerminalMembership.Pilot
open Math.B699.CRTGrid Math.B699.I11TerminalCRT
open B699LowIndex.I11CrtStageMetadata
open Math.B699.I11TerminalMembership

def cell0 : CellData where
  inverse := 2
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 165⟩ else if d = (-6 : ℤ) then ⟨0, 165⟩ else if d = (-3 : ℤ) then ⟨0, 165⟩ else if d = (0 : ℤ) then ⟨0, 165⟩ else if d = (2 : ℤ) then ⟨1, 166⟩ else if d = (3 : ℤ) then ⟨0, 165⟩ else if d = (4 : ℤ) then ⟨1, 166⟩ else if d = (5 : ℤ) then ⟨1, 166⟩ else if d = (6 : ℤ) then ⟨1, 165⟩ else if d = (7 : ℤ) then ⟨1, 166⟩ else if d = (8 : ℤ) then ⟨2, 166⟩ else if d = (9 : ℤ) then ⟨1, 165⟩ else if d = (10 : ℤ) then ⟨2, 166⟩ else ⟨0, 166⟩

theorem cell0_check :
    cellCoverCheck (2 ^ 1) (3 ^ 1)
      (heightCap Stage04.H Stage04.M (2 ^ 1))
      (heightCap Stage04.H Stage04.M (3 ^ 1)) cell0 candidates = true := by
  decide +kernel

#print axioms Math.B699.I11TerminalMembership.Pilot.cell0_check

def cell1 : CellData where
  inverse := 78383
  bounds := fun d => if d = (-9 : ℤ) then ⟨0, 0⟩ else if d = (-6 : ℤ) then ⟨0, 0⟩ else if d = (-3 : ℤ) then ⟨0, 0⟩ else ⟨0, -1⟩

theorem cell1_check :
    cellCoverCheck (2 ^ 16) (7 ^ 6)
      (heightCap Stage04.H Stage04.M (2 ^ 16))
      (heightCap Stage04.H Stage04.M (7 ^ 6)) cell1 candidates = true := by
  decide +kernel

#print axioms Math.B699.I11TerminalMembership.Pilot.cell1_check

def cell2 : CellData where
  inverse := 1968215
  bounds := fun _d => ⟨0, -1⟩

theorem cell2_check :
    cellCoverCheck (5 ^ 10) (7 ^ 8)
      (heightCap Stage04.H Stage04.M (5 ^ 10))
      (heightCap Stage04.H Stage04.M (7 ^ 8)) cell2 candidates = true := by
  decide +kernel

#print axioms Math.B699.I11TerminalMembership.Pilot.cell2_check

end Math.B699.I11TerminalMembership.Pilot
