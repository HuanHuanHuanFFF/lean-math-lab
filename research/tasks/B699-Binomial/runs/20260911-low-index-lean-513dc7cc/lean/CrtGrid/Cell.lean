import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtPair.Consumer
import Mathlib.Data.List.Range

/-! UNCOMPILED CANDIDATE. A row checks actual arithmetic, including empty
intervals. A cell covers every signed displacement -10..10, not a guessed list. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CRTGrid
open Math.B699.CRTPairMax

structure CellData where
  inverse : ℕ
  bounds : ℤ → BoundsDatum

def rowCheck (P Q v capA capC T : ℕ) (d : ℤ) (bounds : BoundsDatum) : Bool :=
  decide (pairBoundCheck P Q v capA capC 10 d bounds = true ∧
    (bounds.hi < bounds.lo ∨ (upperValue P Q v 10 d bounds.hi).toNat ≤ T))

def shifts : List ℤ := (List.range 21).map (fun k : ℕ => (k : ℤ) - 10)

def shiftCheck (P Q capA capC T : ℕ) (ds : List ℤ) (data : CellData) : Bool :=
  ds.all (fun d => rowCheck P Q data.inverse capA capC T d (data.bounds d))

def cellCheck (P Q capA capC T : ℕ) (data : CellData) : Bool :=
  shiftCheck P Q capA capC T shifts data

theorem rowCheck_sound {P Q v capA capC T A C n : ℕ} {d : ℤ} {bounds : BoundsDatum}
    (hcheck : rowCheck P Q v capA capC T d bounds = true)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hAcap : A ≤ capA) (hCcap : C ≤ capC)
    (heq : (P : ℤ) * (A : ℤ) - (Q : ℤ) * (C : ℤ) = d)
    (hn : n ≤ min (P * A) (Q * C) + 10) : n ≤ T := by
  unfold rowCheck at hcheck
  obtain ⟨hc, hempty | hupper⟩ := of_decide_eq_true hcheck
  · exact False.elim (pairBoundCheck_empty hc hempty hA hC hAcap hCcap heq)
  · exact Nat.le_trans (pairBoundCheck_upper_nat hc hA hC hAcap hCcap heq hn) hupper

theorem rowCheck_mono_target {P Q v capA capC T T' : ℕ} {d : ℤ} {bounds : BoundsDatum}
    (hcheck : rowCheck P Q v capA capC T d bounds = true) (hT : T ≤ T') :
    rowCheck P Q v capA capC T' d bounds = true := by
  unfold rowCheck at hcheck ⊢
  obtain ⟨hc, hempty | hupper⟩ := of_decide_eq_true hcheck
  · exact decide_eq_true ⟨hc, Or.inl hempty⟩
  · exact decide_eq_true ⟨hc, Or.inr (Nat.le_trans hupper hT)⟩

theorem mem_shifts {d : ℤ} (hlo : -10 ≤ d) (hhi : d ≤ 10) : d ∈ shifts := by
  let k : ℕ := (d + 10).toNat
  have hk : (k : ℤ) = d + 10 := by
    dsimp only [k]
    exact Int.toNat_of_nonneg (by omega)
  have hk21 : k < 21 := by omega
  unfold shifts
  apply List.mem_map.mpr
  refine ⟨k, List.mem_range.mpr hk21, ?_⟩
  omega

theorem shiftCheck_append {P Q capA capC T : ℕ} {left right : List ℤ} {data : CellData}
    (hl : shiftCheck P Q capA capC T left data = true)
    (hr : shiftCheck P Q capA capC T right data = true) :
    shiftCheck P Q capA capC T (left ++ right) data = true := by
  unfold shiftCheck at hl hr ⊢
  rw [List.all_append]
  exact Bool.and_eq_true_iff.mpr ⟨hl, hr⟩

theorem cellCheck_sound {P Q capA capC T A C n : ℕ} {d : ℤ} {data : CellData}
    (hcheck : cellCheck P Q capA capC T data = true)
    (hdlo : -10 ≤ d) (hdhi : d ≤ 10)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hAcap : A ≤ capA) (hCcap : C ≤ capC)
    (heq : (P : ℤ) * (A : ℤ) - (Q : ℤ) * (C : ℤ) = d)
    (hn : n ≤ min (P * A) (Q * C) + 10) : n ≤ T := by
  unfold cellCheck shiftCheck at hcheck
  have hrow := (List.all_eq_true.mp hcheck) d (mem_shifts hdlo hdhi)
  exact rowCheck_sound hrow hA hC hAcap hCcap heq hn

theorem cellCheck_mono_target {P Q capA capC T T' : ℕ} {data : CellData}
    (hcheck : cellCheck P Q capA capC T data = true) (hT : T ≤ T') :
    cellCheck P Q capA capC T' data = true := by
  unfold cellCheck shiftCheck at hcheck ⊢
  apply List.all_eq_true.mpr
  intro d hd
  exact rowCheck_mono_target ((List.all_eq_true.mp hcheck) d hd) hT

end Math.B699.CRTGrid
#print axioms Math.B699.CRTGrid.rowCheck_sound
#print axioms Math.B699.CRTGrid.rowCheck_mono_target
#print axioms Math.B699.CRTGrid.mem_shifts
#print axioms Math.B699.CRTGrid.shiftCheck_append
#print axioms Math.B699.CRTGrid.cellCheck_sound
#print axioms Math.B699.CRTGrid.cellCheck_mono_target
