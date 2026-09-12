import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-crt-grid-consumer-5e2d13bb».Grid

/-! UNCOMPILED CANDIDATE. Cutoffs and the complete exponent rectangle are
both checked. Pair data contains certificates, never a claimed n-bound. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11CRTSixPair
open Math.B699.CRTGrid

structure PairGridData where
  amax : ℕ
  bmax : ℕ
  cells : ℕ → ℕ → CellData

def cutoffCheck (p q H : ℕ) (data : PairGridData) : Bool :=
  decide (1 < p ∧ 1 < q ∧ H ≤ p ^ (data.amax + 1) ∧ H ≤ q ^ (data.bmax + 1))

def pairGridCheck (p q H M T : ℕ) (data : PairGridData) : Bool :=
  cutoffCheck p q H data && rectangleCheck p q H M T data.amax data.bmax data.cells

structure SixPairGrids where
  grid23 : PairGridData
  grid25 : PairGridData
  grid27 : PairGridData
  grid35 : PairGridData
  grid37 : PairGridData
  grid57 : PairGridData

theorem pairGridCheck_of_parts {p q H M T : ℕ} {data : PairGridData}
    (hc : cutoffCheck p q H data = true)
    (hg : rectangleCheck p q H M T data.amax data.bmax data.cells = true) :
    pairGridCheck p q H M T data = true := by
  unfold pairGridCheck
  exact Bool.and_eq_true_iff.mpr ⟨hc, hg⟩

theorem pairGridCheck_mono_target {p q H M T T' : ℕ} {data : PairGridData}
    (hcheck : pairGridCheck p q H M T data = true) (hT : T ≤ T') :
    pairGridCheck p q H M T' data = true := by
  unfold pairGridCheck at hcheck ⊢
  obtain ⟨hc, hg⟩ := Bool.and_eq_true_iff.mp hcheck
  refine Bool.and_eq_true_iff.mpr ⟨hc, ?_⟩
  unfold rectangleCheck at hg ⊢
  exact blockCheck_mono_target hg hT

theorem pairGridCheck_windows {p q H M T n r s h k A C : ℕ} {data : PairGridData}
    (hcheck : pairGridCheck p q H M T data = true)
    (hnH : n < H) (hr : r < 11) (hs : s < 11) (hh : 1 ≤ h) (hk : 1 ≤ k)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hAM : A ≤ M) (hCM : C ≤ M)
    (hP : n - r = p ^ h * A) (hQ : n - s = q ^ k * C) : n ≤ T := by
  unfold pairGridCheck at hcheck
  obtain ⟨hc, hg⟩ := Bool.and_eq_true_iff.mp hcheck
  unfold cutoffCheck at hc
  obtain ⟨hp, hq, hcutP, hcutQ⟩ := of_decide_eq_true hc
  exact grid_windows_sound hg hp hq hcutP hcutQ hh hk hnH hr hs hA hC hAM hCM hP hQ

/-- h and k follow the supplied window order. The checked p-grid therefore
uses k and the checked q-grid uses h when the windows are reversed. -/
theorem pairGridCheck_windows_swapped {p q H M T n r s h k A C : ℕ} {data : PairGridData}
    (hcheck : pairGridCheck p q H M T data = true)
    (hnH : n < H) (hr : r < 11) (hs : s < 11) (hh : 1 ≤ h) (hk : 1 ≤ k)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hAM : A ≤ M) (hCM : C ≤ M)
    (hP : n - r = q ^ h * A) (hQ : n - s = p ^ k * C) : n ≤ T := by
  unfold pairGridCheck at hcheck
  obtain ⟨hc, hg⟩ := Bool.and_eq_true_iff.mp hcheck
  unfold cutoffCheck at hc
  obtain ⟨hp, hq, hcutP, hcutQ⟩ := of_decide_eq_true hc
  exact grid_windows_sound_swapped hg hp hq hcutP hcutQ hk hh hnH hr hs hA hC hAM hCM hP hQ

end Math.B699.I11CRTSixPair
#print axioms Math.B699.I11CRTSixPair.pairGridCheck_of_parts
#print axioms Math.B699.I11CRTSixPair.pairGridCheck_mono_target
#print axioms Math.B699.I11CRTSixPair.pairGridCheck_windows
#print axioms Math.B699.I11CRTSixPair.pairGridCheck_windows_swapped
