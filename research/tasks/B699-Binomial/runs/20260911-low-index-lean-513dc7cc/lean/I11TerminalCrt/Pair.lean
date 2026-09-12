import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCrt.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.Meta

/-! UNCOMPILED. Existing PairGridData and cutoffCheck, with new parameter-cover
checks. No candidate membership or numerical maximum is stored in the data. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalCRT
open Math.B699.CRTGrid Math.B699.I11CRTSixPair
open B699LowIndex B699LowIndex.I11TerminalCover

def pairGridCoverCheck (p q H M : ℕ) (data : PairGridData)
    (candidates : List NatInterval) : Bool :=
  cutoffCheck p q H data &&
    rectangleCoverCheck p q H M data.amax data.bmax data.cells candidates

theorem pairGridCoverCheck_of_parts {p q H M : ℕ}
    {data : PairGridData} {candidates : List NatInterval}
    (hc : cutoffCheck p q H data = true)
    (hg : rectangleCoverCheck p q H M data.amax data.bmax data.cells candidates = true) :
    pairGridCoverCheck p q H M data candidates = true := by
  unfold pairGridCoverCheck
  exact Bool.and_eq_true_iff.mpr ⟨hc, hg⟩

theorem pairGridCoverCheck_windows {p q H M n r s h k A C : ℕ}
    {data : PairGridData} {candidates : List NatInterval}
    (hcheck : pairGridCoverCheck p q H M data candidates = true)
    (hnH : n < H) (hr : r < 11) (hs : s < 11) (hh : 1 ≤ h) (hk : 1 ≤ k)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hAM : A ≤ M) (hCM : C ≤ M)
    (hP : n - r = p ^ h * A) (hQ : n - s = q ^ k * C) : candidateMem n candidates := by
  unfold pairGridCoverCheck at hcheck
  obtain ⟨hc, hg⟩ := Bool.and_eq_true_iff.mp hcheck
  unfold cutoffCheck at hc
  obtain ⟨hp, hq, hcutP, hcutQ⟩ := of_decide_eq_true hc
  exact grid_windows_candidateMem hg hp hq hcutP hcutQ hh hk hnH hr hs hA hC hAM hCM hP hQ

theorem pairGridCoverCheck_windows_swapped {p q H M n r s h k A C : ℕ}
    {data : PairGridData} {candidates : List NatInterval}
    (hcheck : pairGridCoverCheck p q H M data candidates = true)
    (hnH : n < H) (hr : r < 11) (hs : s < 11) (hh : 1 ≤ h) (hk : 1 ≤ k)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hAM : A ≤ M) (hCM : C ≤ M)
    (hP : n - r = q ^ h * A) (hQ : n - s = p ^ k * C) : candidateMem n candidates := by
  unfold pairGridCoverCheck at hcheck
  obtain ⟨hc, hg⟩ := Bool.and_eq_true_iff.mp hcheck
  unfold cutoffCheck at hc
  obtain ⟨hp, hq, hcutP, hcutQ⟩ := of_decide_eq_true hc
  exact grid_windows_candidateMem_swapped hg hp hq hcutP hcutQ hk hh hnH hr hs hA hC hAM hCM hP hQ

end Math.B699.I11TerminalCRT
