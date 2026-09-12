import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMono.Cover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCrt.RowCell

/-! UNCOMPILED. Prefix extension preserves the original arithmetic and all parameter/shift checks. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalMono
open B699LowIndex
open Math.B699.CRTPairMax Math.B699.CRTGrid Math.B699.I11TerminalCRT

theorem rowCoverCheck_append {P Q v capA capC : ℕ} {d : ℤ} {bounds : BoundsDatum}
    (front suffix : List NatInterval)
    (hcheck : rowCoverCheck P Q v capA capC d bounds front = true) :
    rowCoverCheck P Q v capA capC d bounds (front ++ suffix) = true := by
  unfold rowCoverCheck at hcheck ⊢
  obtain ⟨hpair, hrows⟩ := Bool.and_eq_true_iff.mp hcheck
  apply Bool.and_eq_true_iff.mpr
  refine ⟨hpair, List.all_eq_true.mpr ?_⟩
  intro t ht
  exact coverCheck_append front suffix
    (parameterInterval P Q v d t).1 (parameterInterval P Q v d t).2
    (List.all_eq_true.mp hrows t ht)

theorem rowCoverCheck_of_isPrefix {P Q v capA capC : ℕ} {d : ℤ} {bounds : BoundsDatum}
    (small large : List NatInterval) (hprefix : small.IsPrefix large)
    (hcheck : rowCoverCheck P Q v capA capC d bounds small = true) :
    rowCoverCheck P Q v capA capC d bounds large = true := by
  obtain ⟨suffix, heq⟩ := hprefix
  rw [← heq]
  exact rowCoverCheck_append small suffix hcheck

theorem rowCoverCheck_take {P Q v capA capC : ℕ} {d : ℤ} {bounds : BoundsDatum}
    (cs : List NatInterval) (k : ℕ)
    (hcheck : rowCoverCheck P Q v capA capC d bounds (cs.take k) = true) :
    rowCoverCheck P Q v capA capC d bounds cs = true := by
  exact rowCoverCheck_of_isPrefix (cs.take k) cs (List.take_prefix k cs) hcheck

theorem cellCoverCheck_append {P Q capA capC : ℕ} {data : CellData}
    (front suffix : List NatInterval)
    (hcheck : cellCoverCheck P Q capA capC data front = true) :
    cellCoverCheck P Q capA capC data (front ++ suffix) = true := by
  unfold cellCoverCheck at hcheck ⊢
  apply List.all_eq_true.mpr
  intro d hd
  exact rowCoverCheck_append front suffix (List.all_eq_true.mp hcheck d hd)

theorem cellCoverCheck_of_isPrefix {P Q capA capC : ℕ} {data : CellData}
    (small large : List NatInterval) (hprefix : small.IsPrefix large)
    (hcheck : cellCoverCheck P Q capA capC data small = true) :
    cellCoverCheck P Q capA capC data large = true := by
  obtain ⟨suffix, heq⟩ := hprefix
  rw [← heq]
  exact cellCoverCheck_append small suffix hcheck

theorem cellCoverCheck_take {P Q capA capC : ℕ} {data : CellData}
    (cs : List NatInterval) (k : ℕ)
    (hcheck : cellCoverCheck P Q capA capC data (cs.take k) = true) :
    cellCoverCheck P Q capA capC data cs = true := by
  exact cellCoverCheck_of_isPrefix (cs.take k) cs (List.take_prefix k cs) hcheck

end Math.B699.I11TerminalMono
