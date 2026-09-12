import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCrt.RowCell
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid

/-! UNCOMPILED. Finite exponent-block checks for full CRT-parameter coverage.
CellData is reused unchanged. The checker contains no candidateMem or Common. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalCRT
open Math.B699.CRTGrid B699LowIndex B699LowIndex.I11TerminalCover

def blockCoverCheck (p q H M aStart aCount bStart bCount : ℕ)
    (data : ℕ → ℕ → CellData) (candidates : List NatInterval) : Bool :=
  (List.range' aStart aCount).all (fun a =>
    (List.range' bStart bCount).all (fun b =>
      cellCoverCheck (p ^ a) (q ^ b)
        (heightCap H M (p ^ a)) (heightCap H M (q ^ b)) (data a b) candidates))

def rectangleCoverCheck (p q H M amax bmax : ℕ)
    (data : ℕ → ℕ → CellData) (candidates : List NatInterval) : Bool :=
  blockCoverCheck p q H M 1 amax 1 bmax data candidates

theorem blockCoverCheck_cell {p q H M aStart aCount bStart bCount a b : ℕ}
    {data : ℕ → ℕ → CellData} {candidates : List NatInterval}
    (hcheck : blockCoverCheck p q H M aStart aCount bStart bCount data candidates = true)
    (ha0 : aStart ≤ a) (ha1 : a < aStart + aCount)
    (hb0 : bStart ≤ b) (hb1 : b < bStart + bCount) :
    cellCoverCheck (p ^ a) (q ^ b) (heightCap H M (p ^ a))
      (heightCap H M (q ^ b)) (data a b) candidates = true := by
  unfold blockCoverCheck at hcheck
  have haMem : a ∈ List.range' aStart aCount := List.mem_range'_1.mpr ⟨ha0, ha1⟩
  have hbMem : b ∈ List.range' bStart bCount := List.mem_range'_1.mpr ⟨hb0, hb1⟩
  exact (List.all_eq_true.mp ((List.all_eq_true.mp hcheck) a haMem)) b hbMem

theorem blockCoverCheck_append_rows
    {p q H M aStart leftCount rightCount bStart bCount : ℕ}
    {data : ℕ → ℕ → CellData} {candidates : List NatInterval}
    (hl : blockCoverCheck p q H M aStart leftCount bStart bCount data candidates = true)
    (hr : blockCoverCheck p q H M (aStart + leftCount) rightCount bStart bCount data candidates = true) :
    blockCoverCheck p q H M aStart (leftCount + rightCount) bStart bCount data candidates = true := by
  unfold blockCoverCheck at hl hr ⊢
  rw [← List.range'_append_1 (s := aStart) (m := leftCount) (n := rightCount), List.all_append]
  exact Bool.and_eq_true_iff.mpr ⟨hl, hr⟩

theorem blockCoverCheck_append_columns
    {p q H M aStart aCount bStart leftCount rightCount : ℕ}
    {data : ℕ → ℕ → CellData} {candidates : List NatInterval}
    (hl : blockCoverCheck p q H M aStart aCount bStart leftCount data candidates = true)
    (hr : blockCoverCheck p q H M aStart aCount (bStart + leftCount) rightCount data candidates = true) :
    blockCoverCheck p q H M aStart aCount bStart (leftCount + rightCount) data candidates = true := by
  unfold blockCoverCheck at hl hr ⊢
  apply List.all_eq_true.mpr
  intro a ha
  rw [← List.range'_append_1 (s := bStart) (m := leftCount) (n := rightCount), List.all_append]
  exact Bool.and_eq_true_iff.mpr
    ⟨(List.all_eq_true.mp hl) a ha, (List.all_eq_true.mp hr) a ha⟩

theorem blockCoverCheck_transfer_data
    {p q H M aStart aCount bStart bCount : ℕ}
    {data data' : ℕ → ℕ → CellData} {candidates : List NatInterval}
    (hcheck : blockCoverCheck p q H M aStart aCount bStart bCount data candidates = true)
    (hdata : ∀ a, aStart ≤ a → a < aStart + aCount →
      ∀ b, bStart ≤ b → b < bStart + bCount → data a b = data' a b) :
    blockCoverCheck p q H M aStart aCount bStart bCount data' candidates = true := by
  unfold blockCoverCheck at hcheck ⊢
  apply List.all_eq_true.mpr
  intro a ha
  apply List.all_eq_true.mpr
  intro b hb
  have haBounds := List.mem_range'_1.mp ha
  have hbBounds := List.mem_range'_1.mp hb
  rw [← hdata a haBounds.1 haBounds.2 b hbBounds.1 hbBounds.2]
  exact (List.all_eq_true.mp ((List.all_eq_true.mp hcheck) a ha)) b hb

end Math.B699.I11TerminalCRT
