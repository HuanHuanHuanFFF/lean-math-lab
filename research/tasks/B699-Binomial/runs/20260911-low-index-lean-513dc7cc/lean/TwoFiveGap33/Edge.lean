import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.TwoFiveGap33.Rate
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.TwoFiveGap33.Gap
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TwoFiveFinal.ActualInstance

/-!
Complete candidate proof text; not compiled by this worker.
All four actual growth trees, actual G, and selector numbers are supplied here.
The height and the original stronger cofactor weights remain unchanged.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.TwoFiveGap33
open Math.B699.I11TwoFiveScaled Math.B699.I11TwoFiveFinalConsumers
open Math.B699.DiscretePadeSelector

theorem actual_two_five_strong_edge
    (Y e f A C : ℕ) (hY : (2 : ℕ) ^ 15359 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 33) :
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 := by
  by_cases hP : Y ^ 248 ≤ A ^ 1000
  · exact Or.inl hP
  by_cases hQcofactor : Y ^ 252 ≤ C ^ 1000
  · exact Or.inr hQcofactor
  exfalso
  have hsmallP : A ^ 1000 < Y ^ 248 := Nat.lt_of_not_ge hP
  have hsmallQ : C ^ 1000 < Y ^ 252 := Nat.lt_of_not_ge hQcofactor
  have hYseed : twoFiveY0 ≤ Y := hY
  obtain ⟨_hOldRate, hprevious, hrateP, hbaseP, hlookP, hrateQ, hbaseQ, hlookQ⟩ :=
    actual_numeric_certificates
  obtain ⟨hQ, hE⟩ := standard_bounds_from_fixed_trees
    actual_q_tree_family actual_e_tree_family fixed_initial_q_cap fixed_initial_e_cap
  let m := twoFiveIndex Y
  obtain ⟨he, hf⟩ := extract_same_index Y e f A C hYseed hprevious
    hrateP hbaseP hlookP hrateQ hbaseQ hlookQ hwindowP hwindowQ hsmallP hsmallQ
  change 35 * m < e at he
  change 15 * m < f at hf
  have hm : 141 ≤ m := index_ge_m0 Y hYseed hprevious
  have hmM : 329 ≤ m := index_ge_M Y hYseed hprevious
  have hAm : (66 : ℚ) < qRate qBase ^ m := actual_rate_gt_66 m hmM
  have hthreshold : (4 : ℚ) * (Y : ℚ) < (twoFiveZ : ℚ) ^ m := by
    have h := leastExponent_threshold twoFiveZ Y twoFiveZ_gt_one
    change 4 * Y < twoFiveZ ^ m at h
    exact_mod_cast h
  have hWm : (4 : ℚ) * (Y : ℚ) < wRate eBase ^ m :=
    lt_of_lt_of_le hthreshold
      (pow_le_pow_left₀ (Nat.cast_nonneg twoFiveZ) fixed_wRate_ge_Z m)
  let V : ℕ := 5 ^ (f - 15 * m) * C
  let Nq : ℕ := 5 ^ f * C
  have hNVnat : (125 : ℕ) ^ (5 * m) * V = Nq := by
    have hpow : (125 : ℕ) ^ (5 * m) = (5 : ℕ) ^ (15 * m) := by
      calc
        _ = ((5 : ℕ) ^ 3) ^ (5 * m) := by norm_num
        _ = (5 : ℕ) ^ (15 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
    dsimp only [V, Nq]
    rw [hpow]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 5 f (15 * m) C
      (Nat.le_of_lt hf)
  have hNV : (125 : ℚ) ^ (5 * m) * (V : ℚ) = (Nq : ℚ) := by exact_mod_cast hNVnat
  have hNsmall : 2 * (Nq : ℚ) < wRate eBase ^ m := by
    have hN : (Nq : ℚ) ≤ 2 * (Y : ℚ) := by exact_mod_cast hupperQ
    linarith
  obtain ⟨row, hlower⟩ := actual_integer_gap_budget m e f A C 33
    (by omega) (Nat.le_of_lt he) (Nat.le_of_lt hf) hC hgap
  have hVcast : (5 : ℤ) ^ (f - 15 * m) * (C : ℤ) = (V : ℤ) := by
    dsimp only [V]
    simp only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
  have hVabs : |(5 : ℤ) ^ (f - 15 * m) * (C : ℤ)| = (V : ℤ) := by
    rw [hVcast, abs_of_nonneg (Int.natCast_nonneg V)]
  have hlow : (128 : ℤ) ^ (5 * m) ≤
      33 * |qRow m row| + |rowError m row| * (V : ℤ) := by
    simpa only [hVabs] using hlower
  have hstrict := actual_integer_gap33_sum_lt m hm row qBase eBase
    fixed_bases_pos.2.2.1 fixed_bases_pos.2.2.2
    (hQ m hm row) (hE m hm row) hAm V Nq hNV hNsmall
  exact (not_lt_of_ge hlow) hstrict

/-- Actual 2–5 weak edge with gap 33; no growth/tree/G or numeric hypothesis. -/
theorem actual_two_five_weak_edge
    (Y e f A C : ℕ) (hY : (2 : ℕ) ^ 15359 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 33) :
    Y ^ 10 ≤ A ^ 1000 ∨ Y ^ 10 ≤ C ^ 1000 := by
  have hpow : 0 < (2 : ℕ) ^ 15359 := Nat.pow_pos (by decide : 0 < (2 : ℕ))
  have hYone : 1 ≤ Y := (Nat.succ_le_of_lt hpow).trans hY
  rcases actual_two_five_strong_edge Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
      with hP | hQ
  · exact Or.inl ((pow_le_pow_right₀ hYone (by decide : 10 ≤ 248)).trans hP)
  · exact Or.inr ((pow_le_pow_right₀ hYone (by decide : 10 ≤ 252)).trans hQ)

end Math.B699.TwoFiveGap33
