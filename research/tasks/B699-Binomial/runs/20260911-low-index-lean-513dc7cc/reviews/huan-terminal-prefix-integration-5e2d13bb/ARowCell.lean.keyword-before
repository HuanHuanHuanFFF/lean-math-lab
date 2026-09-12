import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMono.RowCell

/-! UNCOMPILED exact-type and transitive-axiom audit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open B699LowIndex Math.B699.I11TerminalMono
open Math.B699.CRTPairMax Math.B699.CRTGrid Math.B699.I11TerminalCRT

#check (@Math.B699.I11TerminalMono.rowCoverCheck_append : ∀ {P Q v capA capC : ℕ} {d : ℤ} {bounds : BoundsDatum}
    (prefix suffix : List NatInterval)
    (hcheck : rowCoverCheck P Q v capA capC d bounds prefix = true),
  rowCoverCheck P Q v capA capC d bounds (prefix ++ suffix) = true)
#print axioms Math.B699.I11TerminalMono.rowCoverCheck_append

#check (@Math.B699.I11TerminalMono.rowCoverCheck_of_isPrefix : ∀ {P Q v capA capC : ℕ} {d : ℤ} {bounds : BoundsDatum}
    (small large : List NatInterval) (hprefix : small.IsPrefix large)
    (hcheck : rowCoverCheck P Q v capA capC d bounds small = true),
  rowCoverCheck P Q v capA capC d bounds large = true)
#print axioms Math.B699.I11TerminalMono.rowCoverCheck_of_isPrefix

#check (@Math.B699.I11TerminalMono.rowCoverCheck_take : ∀ {P Q v capA capC : ℕ} {d : ℤ} {bounds : BoundsDatum}
    (cs : List NatInterval) (k : ℕ)
    (hcheck : rowCoverCheck P Q v capA capC d bounds (cs.take k) = true),
  rowCoverCheck P Q v capA capC d bounds cs = true)
#print axioms Math.B699.I11TerminalMono.rowCoverCheck_take

#check (@Math.B699.I11TerminalMono.cellCoverCheck_append : ∀ {P Q capA capC : ℕ} {data : CellData}
    (prefix suffix : List NatInterval)
    (hcheck : cellCoverCheck P Q capA capC data prefix = true),
  cellCoverCheck P Q capA capC data (prefix ++ suffix) = true)
#print axioms Math.B699.I11TerminalMono.cellCoverCheck_append

#check (@Math.B699.I11TerminalMono.cellCoverCheck_of_isPrefix : ∀ {P Q capA capC : ℕ} {data : CellData}
    (small large : List NatInterval) (hprefix : small.IsPrefix large)
    (hcheck : cellCoverCheck P Q capA capC data small = true),
  cellCoverCheck P Q capA capC data large = true)
#print axioms Math.B699.I11TerminalMono.cellCoverCheck_of_isPrefix

#check (@Math.B699.I11TerminalMono.cellCoverCheck_take : ∀ {P Q capA capC : ℕ} {data : CellData}
    (cs : List NatInterval) (k : ℕ)
    (hcheck : cellCoverCheck P Q capA capC data (cs.take k) = true),
  cellCoverCheck P Q capA capC data cs = true)
#print axioms Math.B699.I11TerminalMono.cellCoverCheck_take

#print Math.B699.I11TerminalCRT.rowCoverCheck
#print Math.B699.I11TerminalCRT.cellCoverCheck
