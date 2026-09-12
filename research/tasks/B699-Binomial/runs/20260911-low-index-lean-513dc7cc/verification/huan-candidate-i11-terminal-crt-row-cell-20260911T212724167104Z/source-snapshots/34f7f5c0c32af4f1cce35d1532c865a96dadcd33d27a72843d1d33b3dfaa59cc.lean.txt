import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Cover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Cell

/-! Candidate: complete affine CRT parameter intervals mapped into checked
terminal interval unions. All arithmetic and interval coverage is finite;
the checker does not contain Common or a quantified j. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.I11TerminalCRT
open Math.B699.CRTPairMax Math.B699.CRTGrid
open B699LowIndex B699LowIndex.I11TerminalCover

def parameterInterval (P Q v : ℕ) (d : ℤ) (t : ℕ) : NatInterval :=
  let A := (coordinateA Q v d (t : ℤ)).toNat
  let C := (coordinateC P Q v d (t : ℤ)).toNat
  (max (P * A) (Q * C), min (P * A) (Q * C) + 10)

def parameters (bounds : BoundsDatum) : List ℕ :=
  List.range' bounds.lo.toNat ((bounds.hi + 1).toNat - bounds.lo.toNat)

def rowCoverCheck (P Q v capA capC : ℕ) (d : ℤ) (bounds : BoundsDatum)
    (candidates : List NatInterval) : Bool :=
  pairBoundCheck P Q v capA capC 10 d bounds &&
    (parameters bounds).all (fun t =>
      coverCheck (parameterInterval P Q v d t).1
        (parameterInterval P Q v d t).2 candidates)

def cellCoverCheck (P Q capA capC : ℕ) (data : CellData)
    (candidates : List NatInterval) : Bool :=
  shifts.all (fun d => rowCoverCheck P Q data.inverse capA capC d (data.bounds d) candidates)

theorem parameter_mem {bounds : BoundsDatum} {t : ℤ}
    (ht : 0 ≤ t) (hlo : bounds.lo ≤ t) (hhi : t ≤ bounds.hi) :
    t.toNat ∈ parameters bounds := by
  unfold parameters
  apply List.mem_range'_1.mpr
  constructor <;> omega

theorem rowCoverCheck_sound {P Q v capA capC A C n : ℕ}
    {d : ℤ} {bounds : BoundsDatum} {candidates : List NatInterval}
    (hcheck : rowCoverCheck P Q v capA capC d bounds candidates = true)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hAcap : A ≤ capA) (hCcap : C ≤ capC)
    (heq : (P : ℤ) * (A : ℤ) - (Q : ℤ) * (C : ℤ) = d)
    (hnlo : max (P * A) (Q * C) ≤ n)
    (hnhi : n ≤ min (P * A) (Q * C) + 10) : candidateMem n candidates := by
  unfold rowCoverCheck at hcheck
  obtain ⟨hpair, hcover⟩ := Bool.and_eq_true_iff.mp hcheck
  obtain ⟨t, ht, hlo, hhi, hAt, hCt⟩ :=
    pairBoundCheck_parameters hpair hA hC hAcap hCcap heq
  have hm := parameter_mem ht hlo hhi
  have hc := List.all_eq_true.mp hcover t.toNat hm
  have hAA : (coordinateA Q v d (t.toNat : ℤ)).toNat = A := by
    rw [Int.toNat_of_nonneg ht, ← hAt]
    exact Int.toNat_natCast A
  have hCC : (coordinateC P Q v d (t.toNat : ℤ)).toNat = C := by
    rw [Int.toNat_of_nonneg ht, ← hCt]
    exact Int.toNat_natCast C
  have hI : parameterInterval P Q v d t.toNat =
      (max (P * A) (Q * C), min (P * A) (Q * C) + 10) := by
    simp only [parameterInterval, hAA, hCC]
  rw [hI] at hc
  exact coverCheck_sound candidates (max (P * A) (Q * C))
    (min (P * A) (Q * C) + 10) n hc hnlo hnhi

theorem cellCoverCheck_sound {P Q capA capC A C n : ℕ} {d : ℤ}
    {data : CellData} {candidates : List NatInterval}
    (hcheck : cellCoverCheck P Q capA capC data candidates = true)
    (hdlo : -10 ≤ d) (hdhi : d ≤ 10)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hAcap : A ≤ capA) (hCcap : C ≤ capC)
    (heq : (P : ℤ) * (A : ℤ) - (Q : ℤ) * (C : ℤ) = d)
    (hnlo : max (P * A) (Q * C) ≤ n)
    (hnhi : n ≤ min (P * A) (Q * C) + 10) : candidateMem n candidates := by
  unfold cellCoverCheck at hcheck
  have hrow := List.all_eq_true.mp hcheck d (mem_shifts hdlo hdhi)
  exact rowCoverCheck_sound hrow hA hC hAcap hCcap heq hnlo hnhi

theorem candidateMem_mono {small large : List NatInterval} {n : ℕ}
    (hsub : ∀ I, I ∈ small → I ∈ large) (hm : candidateMem n small) :
    candidateMem n large := by
  obtain ⟨I, hI, hn⟩ := hm
  exact ⟨I, hsub I hI, hn⟩

end Math.B699.I11TerminalCRT
#print axioms Math.B699.I11TerminalCRT.parameter_mem
#print axioms Math.B699.I11TerminalCRT.rowCoverCheck_sound
#print axioms Math.B699.I11TerminalCRT.cellCoverCheck_sound
#print axioms Math.B699.I11TerminalCRT.candidateMem_mono
