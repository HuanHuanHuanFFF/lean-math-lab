import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.Meta
import Mathlib.Data.Finset.Insert

/-! UNCOMPILED CANDIDATE. The finite twelve-case pattern follows the accepted
I11Compress.PairDispatch, but calls the new CRT grid interface and its own
swapped theorem. The old cubic checker is not treated as a generic CRT check. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11CRTSixPair

theorem distinct_pair_windows_bound (data : SixPairGrids) {H M T : ℕ}
    (check23 : pairGridCheck 2 3 H M T data.grid23 = true)
    (check25 : pairGridCheck 2 5 H M T data.grid25 = true)
    (check27 : pairGridCheck 2 7 H M T data.grid27 = true)
    (check35 : pairGridCheck 3 5 H M T data.grid35 = true)
    (check37 : pairGridCheck 3 7 H M T data.grid37 = true)
    (check57 : pairGridCheck 5 7 H M T data.grid57 = true)
    {p q n r s h k A C : ℕ}
    (hpMem : p ∈ ({2, 3, 5, 7} : Finset ℕ))
    (hqMem : q ∈ ({2, 3, 5, 7} : Finset ℕ)) (hpq : p ≠ q)
    (hnH : n < H) (hr : r < 11) (hs : s < 11) (hh : 1 ≤ h) (hk : 1 ≤ k)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hAM : A ≤ M) (hCM : C ≤ M)
    (hP : n - r = p ^ h * A) (hQ : n - s = q ^ k * C) : n ≤ T := by
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
      exact pairGridCheck_windows check23 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact pairGridCheck_windows check25 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact pairGridCheck_windows check27 hnH hr hs hh hk hA hC hAM hCM hP hQ
  · subst p
    rcases hqCases with hq2 | hq3 | hq5 | hq7
    · subst q
      exact pairGridCheck_windows_swapped check23 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact False.elim (hpq rfl)
    · subst q
      exact pairGridCheck_windows check35 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact pairGridCheck_windows check37 hnH hr hs hh hk hA hC hAM hCM hP hQ
  · subst p
    rcases hqCases with hq2 | hq3 | hq5 | hq7
    · subst q
      exact pairGridCheck_windows_swapped check25 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact pairGridCheck_windows_swapped check35 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact False.elim (hpq rfl)
    · subst q
      exact pairGridCheck_windows check57 hnH hr hs hh hk hA hC hAM hCM hP hQ
  · subst p
    rcases hqCases with hq2 | hq3 | hq5 | hq7
    · subst q
      exact pairGridCheck_windows_swapped check27 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact pairGridCheck_windows_swapped check37 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact pairGridCheck_windows_swapped check57 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst q
      exact False.elim (hpq rfl)

end Math.B699.I11CRTSixPair
#print axioms Math.B699.I11CRTSixPair.distinct_pair_windows_bound
