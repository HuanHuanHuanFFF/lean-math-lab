import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-crt-grid-consumer-5e2d13bb».Grid

/-! UNCOMPILED CANDIDATE. One real stage-0 power cell, all 21 displacements.
This is one block at (a,b)=(22,12), not the whole (3,7) exponent rectangle.
Direct decide is restricted to this one 21-row cell and fixed scalar data.
The one-cell block reuses that proof; no full-grid decide is generated. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CRTGrid.Sample37
open Math.B699.CRTPairMax

def sampleP : ℕ := 3 ^ 22
def sampleQ : ℕ := 7 ^ 12
def sampleH : ℕ := 649037107316853453566312041152512
def sampleM : ℕ := 118703030
def sampleT : ℕ := 1458309064184540963

def sampleData : CellData where
  inverse := 6943879098
  bounds := fun d => if d = 2 then ⟨0, 0⟩ else ⟨0, -1⟩

def sampleGridData (_a _b : ℕ) : CellData := sampleData

theorem sample_height : sampleH = (2 : ℕ) ^ 109 := by decide

theorem sample_caps : heightCap sampleH sampleM sampleP = sampleM ∧
    heightCap sampleH sampleM sampleQ = sampleM := by decide

theorem sample_cell_check : cellCheck sampleP sampleQ sampleM sampleM sampleT sampleData = true := by
  decide

theorem sample_block_check : blockCheck 3 7 sampleH sampleM sampleT 22 1 12 1 sampleGridData = true := by
  have hcell : cellCheck sampleP sampleQ (heightCap sampleH sampleM sampleP)
      (heightCap sampleH sampleM sampleQ) sampleT sampleData = true := by
    rw [sample_caps.1, sample_caps.2]
    exact sample_cell_check
  simpa only [blockCheck, List.range'_one, List.all_cons, List.all_nil,
    Bool.and_true, sampleGridData, sampleP, sampleQ] using hcell

/-- A genuine closed check supplies the bound, rather than a bound hypothesis. -/
theorem sample_cell_sound {A C n : ℕ} {d : ℤ}
    (hdlo : -10 ≤ d) (hdhi : d ≤ 10) (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hAM : A ≤ sampleM) (hCM : C ≤ sampleM)
    (heq : (sampleP : ℤ) * (A : ℤ) - (sampleQ : ℤ) * (C : ℤ) = d)
    (hn : n ≤ min (sampleP * A) (sampleQ * C) + 10) : n ≤ sampleT := by
  exact cellCheck_sound sample_cell_check hdlo hdhi hA hC hAM hCM heq hn

end Math.B699.CRTGrid.Sample37
#print axioms Math.B699.CRTGrid.Sample37.sample_height
#print axioms Math.B699.CRTGrid.Sample37.sample_caps
#print axioms Math.B699.CRTGrid.Sample37.sample_cell_check
#print axioms Math.B699.CRTGrid.Sample37.sample_block_check
#print axioms Math.B699.CRTGrid.Sample37.sample_cell_sound
