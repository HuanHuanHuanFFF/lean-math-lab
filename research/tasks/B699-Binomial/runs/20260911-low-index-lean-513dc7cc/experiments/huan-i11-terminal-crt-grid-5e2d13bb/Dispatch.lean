import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-crt-grid-5e2d13bb».Pair
import Mathlib.Data.Finset.Insert

/-! UNCOMPILED. All twelve ordered pairs use the new membership interface.
Routing is checked against the accepted bound dispatcher; the old bound theorem
is not used as a membership theorem. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalCRT
open Math.B699.I11CRTSixPair B699LowIndex B699LowIndex.I11TerminalCover

theorem distinct_pair_windows_candidateMem (data : SixPairGrids) {H M : ℕ} {candidates : List NatInterval}
    (check23 : pairGridCoverCheck 2 3 H M data.grid23 candidates = true)
    (check25 : pairGridCoverCheck 2 5 H M data.grid25 candidates = true)
    (check27 : pairGridCoverCheck 2 7 H M data.grid27 candidates = true)
    (check35 : pairGridCoverCheck 3 5 H M data.grid35 candidates = true)
    (check37 : pairGridCoverCheck 3 7 H M data.grid37 candidates = true)
    (check57 : pairGridCoverCheck 5 7 H M data.grid57 candidates = true)
    {p q n r s h k A C : ℕ}
    (hpMem : p ∈ ({2, 3, 5, 7} : Finset ℕ))
    (hqMem : q ∈ ({2, 3, 5, 7} : Finset ℕ)) (hpq : p ≠ q)
    (hnH : n < H) (hr : r < 11) (hs : s < 11) (hh : 1 ≤ h) (hk : 1 ≤ k)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hAM : A ≤ M) (hCM : C ≤ M)
    (hP : n - r = p ^ h * A) (hQ : n - s = q ^ k * C) : candidateMem n candidates := by
  have hpCases : p = 2 ∨ p = 3 ∨ p = 5 ∨ p = 7 := by
    simpa only [Finset.mem_insert, Finset.mem_singleton] using hpMem
  have hqCases : q = 2 ∨ q = 3 ∨ q = 5 ∨ q = 7 := by
    simpa only [Finset.mem_insert, Finset.mem_singleton] using hqMem
  rcases hpCases with hp2 | hp3 | hp5 | hp7
  · subst p
    rcases hqCases with hq2 | hq3 | hq5 | hq7
    · subst q
      exact False.elim (hpq rfl)
    · subst q
      exact pairGridCoverCheck_windows check23 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact pairGridCoverCheck_windows check25 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact pairGridCoverCheck_windows check27 hnH hr hs hh hk hA hC hAM hCM hP hQ
  · subst p
    rcases hqCases with hq2 | hq3 | hq5 | hq7
    · subst q
      exact pairGridCoverCheck_windows_swapped check23 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact False.elim (hpq rfl)
    · subst q
      exact pairGridCoverCheck_windows check35 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact pairGridCoverCheck_windows check37 hnH hr hs hh hk hA hC hAM hCM hP hQ
  · subst p
    rcases hqCases with hq2 | hq3 | hq5 | hq7
    · subst q
      exact pairGridCoverCheck_windows_swapped check25 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact pairGridCoverCheck_windows_swapped check35 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact False.elim (hpq rfl)
    · subst q
      exact pairGridCoverCheck_windows check57 hnH hr hs hh hk hA hC hAM hCM hP hQ
  · subst p
    rcases hqCases with hq2 | hq3 | hq5 | hq7
    · subst q
      exact pairGridCoverCheck_windows_swapped check27 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact pairGridCoverCheck_windows_swapped check37 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact pairGridCoverCheck_windows_swapped check57 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact False.elim (hpq rfl)

end Math.B699.I11TerminalCRT
