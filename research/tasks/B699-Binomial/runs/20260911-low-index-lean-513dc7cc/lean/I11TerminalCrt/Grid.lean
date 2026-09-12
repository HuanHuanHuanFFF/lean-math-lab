import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCrt.Block

/-! UNCOMPILED. Complete positive-exponent rectangles imply terminal membership.
Both interval endpoints are derived from actual windows, including max below n. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalCRT
open Math.B699.CRTGrid B699LowIndex B699LowIndex.I11TerminalCover

theorem rectangleCoverCheck_sound
    {p q H M amax bmax a b A C n : ℕ} {d : ℤ}
    {data : ℕ → ℕ → CellData} {candidates : List NatInterval}
    (hcheck : rectangleCoverCheck p q H M amax bmax data candidates = true)
    (ha0 : 1 ≤ a) (ha1 : a ≤ amax) (hb0 : 1 ≤ b) (hb1 : b ≤ bmax)
    (hdlo : -10 ≤ d) (hdhi : d ≤ 10) (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hAcap : A ≤ heightCap H M (p ^ a)) (hCcap : C ≤ heightCap H M (q ^ b))
    (heq : ((p ^ a : ℕ) : ℤ) * (A : ℤ) - ((q ^ b : ℕ) : ℤ) * (C : ℤ) = d)
    (hnlo : max (p ^ a * A) (q ^ b * C) ≤ n)
    (hnhi : n ≤ min (p ^ a * A) (q ^ b * C) + 10) : candidateMem n candidates := by
  unfold rectangleCoverCheck at hcheck
  have hcell := blockCoverCheck_cell hcheck ha0 (by omega) hb0 (by omega)
  exact cellCoverCheck_sound hcell hdlo hdhi hA hC hAcap hCcap heq hnlo hnhi

theorem grid_windows_candidateMem
    {p q H M amax bmax a b A C n r s : ℕ}
    {data : ℕ → ℕ → CellData} {candidates : List NatInterval}
    (hcheck : rectangleCoverCheck p q H M amax bmax data candidates = true)
    (hp : 1 < p) (hq : 1 < q)
    (hcutP : H ≤ p ^ (amax + 1)) (hcutQ : H ≤ q ^ (bmax + 1))
    (ha : 1 ≤ a) (hb : 1 ≤ b) (hnH : n < H)
    (hr : r < 11) (hs : s < 11) (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hAM : A ≤ M) (hCM : C ≤ M)
    (hP : n - r = p ^ a * A) (hQ : n - s = q ^ b * C) : candidateMem n candidates := by
  have hPAH := power_lt_height_of_window hA hnH hP
  have hQCH := power_lt_height_of_window hC hnH hQ
  have haMax := exponent_le_of_pow_lt hp hcutP hPAH
  have hbMax := exponent_le_of_pow_lt hq hcutQ hQCH
  have hAcap := height_cap_of_window (Nat.pow_pos (by omega : 0 < p)) hAM hnH hP
  have hCcap := height_cap_of_window (Nat.pow_pos (by omega : 0 < q)) hCM hnH hQ
  obtain ⟨hdlo, hdhi, hnhi⟩ := integer_window_links hr hs
  have hPi : ((n - r : ℕ) : ℤ) = ((p ^ a : ℕ) : ℤ) * (A : ℤ) := by exact_mod_cast hP
  have hQi : ((n - s : ℕ) : ℤ) = ((q ^ b : ℕ) : ℤ) * (C : ℤ) := by exact_mod_cast hQ
  have hnlo : max (p ^ a * A) (q ^ b * C) ≤ n := by
    rw [← hP, ← hQ]
    exact max_le (Nat.sub_le n r) (Nat.sub_le n s)
  apply rectangleCoverCheck_sound hcheck ha haMax hb hbMax hdlo hdhi hA hC hAcap hCcap
  · rw [hPi, hQi]
  · exact hnlo
  · simpa only [hP, hQ] using hnhi

theorem grid_windows_candidateMem_swapped
    {p q H M amax bmax a b A C n r s : ℕ}
    {data : ℕ → ℕ → CellData} {candidates : List NatInterval}
    (hcheck : rectangleCoverCheck p q H M amax bmax data candidates = true)
    (hp : 1 < p) (hq : 1 < q)
    (hcutP : H ≤ p ^ (amax + 1)) (hcutQ : H ≤ q ^ (bmax + 1))
    (ha : 1 ≤ a) (hb : 1 ≤ b) (hnH : n < H)
    (hr : r < 11) (hs : s < 11) (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hAM : A ≤ M) (hCM : C ≤ M)
    (hP : n - r = q ^ b * A) (hQ : n - s = p ^ a * C) : candidateMem n candidates := by
  exact grid_windows_candidateMem hcheck hp hq hcutP hcutQ ha hb hnH
    hs hr hC hA hCM hAM hQ hP

end Math.B699.I11TerminalCRT
