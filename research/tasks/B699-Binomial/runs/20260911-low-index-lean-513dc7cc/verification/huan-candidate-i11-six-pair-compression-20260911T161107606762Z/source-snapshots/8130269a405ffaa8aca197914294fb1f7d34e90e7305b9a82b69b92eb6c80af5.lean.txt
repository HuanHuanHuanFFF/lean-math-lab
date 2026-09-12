import Mathlib.Data.Finset.Insert
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Compress.Schema

/-! UNCOMPILED CANDIDATE. All twelve ordered distinct small-prime pairs are handled. -/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.I11CubicCompression

open Math.B699.CubicBlockCover

private theorem below_target_of_cut {n cut : ℕ} (hn : n < (2 : ℕ) ^ cut)
    (hcut : cut ≤ 109) : n < (2 : ℕ) ^ 109 :=
  hn.trans_le (Nat.pow_le_pow_right (by decide : 0 < 2) hcut)

/-- Dispatch the actual ordered pair to its one finite certificate.
The six checker premises retain all their fixed parameters explicitly. -/
theorem distinct_pair_below_109 (data : SixPairRows)
    (check23 : pairCheck 2 3 10 45 15359 68 ((2 : ℕ) ^ 15360) data.rows23 = true)
    (check25 : pairCheck 2 5 10 44 15359 66 ((2 : ℕ) ^ 15360) data.rows25 = true)
    (check27 : pairCheck 2 7 10 43 15359 65 ((2 : ℕ) ^ 15360) data.rows27 = true)
    (check35 : pairCheck 3 5 10 32 9691 75 ((2 : ℕ) ^ 15360) data.rows35 = true)
    (check37 : pairCheck 3 7 10 32 9691 75 ((2 : ℕ) ^ 15360) data.rows37 = true)
    (check57 : pairCheck 5 7 10 32 6615 109 ((2 : ℕ) ^ 15360) data.rows57 = true)
    {p q n r s h k A C : ℕ}
    (hpMem : p ∈ ({2, 3, 5, 7} : Finset ℕ))
    (hqMem : q ∈ ({2, 3, 5, 7} : Finset ℕ)) (hpq : p ≠ q)
    (hnH : n < (2 : ℕ) ^ 15360) (hr : r ≤ 10) (hs : s ≤ 10)
    (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hP : n - r = p ^ h * A) (hQ : n - s = q ^ k * C)
    (hsmallA : A ^ 3 ≤ min (n - r) (n - s))
    (hsmallC : C ^ 3 ≤ min (n - r) (n - s)) : n < (2 : ℕ) ^ 109 := by
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
      exact below_target_of_cut (cut := 68)
        (pairCheck_sound check23 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
    · subst q
      exact below_target_of_cut (cut := 66)
        (pairCheck_sound check25 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
    · subst q
      exact below_target_of_cut (cut := 65)
        (pairCheck_sound check27 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
  · subst p
    rcases hqCases with hq2 | hq3 | hq5 | hq7
    · subst q
      exact below_target_of_cut (cut := 68)
        (pairCheck_sound_swapped check23 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
    · subst q
      exact False.elim (hpq rfl)
    · subst q
      exact below_target_of_cut (cut := 75)
        (pairCheck_sound check35 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
    · subst q
      exact below_target_of_cut (cut := 75)
        (pairCheck_sound check37 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
  · subst p
    rcases hqCases with hq2 | hq3 | hq5 | hq7
    · subst q
      exact below_target_of_cut (cut := 66)
        (pairCheck_sound_swapped check25 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
    · subst q
      exact below_target_of_cut (cut := 75)
        (pairCheck_sound_swapped check35 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
    · subst q
      exact False.elim (hpq rfl)
    · subst q
      exact below_target_of_cut (cut := 109)
        (pairCheck_sound check57 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
  · subst p
    rcases hqCases with hq2 | hq3 | hq5 | hq7
    · subst q
      exact below_target_of_cut (cut := 65)
        (pairCheck_sound_swapped check27 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
    · subst q
      exact below_target_of_cut (cut := 75)
        (pairCheck_sound_swapped check37 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
    · subst q
      exact below_target_of_cut (cut := 109)
        (pairCheck_sound_swapped check57 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
    · subst q
      exact False.elim (hpq rfl)

end Math.B699.I11CubicCompression
