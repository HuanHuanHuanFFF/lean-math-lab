import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TwoFiveEdge.ScaledGap

/-! UNCOMPILED. Actual two-five cofactor edge, conditional on raw growth and
explicit numeric data. No actual Hom, G, determinant, or desired edge is assumed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled
open Math.B699.DiscretePadeSelector

theorem edge_of_actual_growth
    (BQ BE : ℚ) (hBQ : 0 < BQ) (hBE : 0 < BE)
    (hQ : ∀ m : ℕ, 141 ≤ m → ∀ row : Bool, |qEval m row| ≤ BQ ^ m)
    (hE : ∀ m : ℕ, 141 ≤ m → ∀ row : Bool, |eEval m row| ≤ BE ^ m)
    (hAone : 1 ≤ qRate BQ) (hAbase : (48 : ℚ) < qRate BQ ^ 329)
    (hW : (twoFiveZ : ℚ) ≤ wRate BE)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0)
    (hrateP : 2 ^ 35000 ≤ twoFiveZ ^ 752)
    (hbaseP : (2 ^ 35000) ^ twoFiveM ≤ twoFiveY0 ^ 752)
    (hlookP : 4 ^ 752 * (2 ^ 35000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (752 * twoFiveM))
    (hrateQ : 5 ^ 15000 ≤ twoFiveZ ^ 748)
    (hbaseQ : (5 ^ 15000) ^ twoFiveM ≤ twoFiveY0 ^ 748)
    (hlookQ : 4 ^ 748 * (5 ^ 15000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (748 * twoFiveM))
    (Y e f A C : ℕ) (hY : twoFiveY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 := by
  by_cases hP : Y ^ 248 ≤ A ^ 1000
  · exact Or.inl hP
  by_cases hQcofactor : Y ^ 252 ≤ C ^ 1000
  · exact Or.inr hQcofactor
  exfalso
  have hsmallP : A ^ 1000 < Y ^ 248 := Nat.lt_of_not_ge hP
  have hsmallQ : C ^ 1000 < Y ^ 252 := Nat.lt_of_not_ge hQcofactor
  let m := twoFiveIndex Y
  obtain ⟨he, hf⟩ := extract_same_index Y e f A C hY hprevious
    hrateP hbaseP hlookP hrateQ hbaseQ hlookQ hwindowP hwindowQ hsmallP hsmallQ
  change 35 * m < e at he
  change 15 * m < f at hf
  have hm : 141 ≤ m := index_ge_m0 Y hY hprevious
  have hmM : 329 ≤ m := index_ge_M Y hY hprevious
  have hAm : (48 : ℚ) < qRate BQ ^ m :=
    lt_of_lt_of_le hAbase (pow_le_pow_right₀ hAone hmM)
  have hthreshold : (4 : ℚ) * (Y : ℚ) < (twoFiveZ : ℚ) ^ m := by
    have h := leastExponent_threshold twoFiveZ Y twoFiveZ_gt_one
    change 4 * Y < twoFiveZ ^ m at h
    exact_mod_cast h
  have hWm : (4 : ℚ) * (Y : ℚ) < wRate BE ^ m :=
    lt_of_lt_of_le hthreshold (pow_le_pow_left₀ (Nat.cast_nonneg twoFiveZ) hW m)
  let V : ℕ := 5 ^ (f - 15 * m) * C
  let Nq : ℕ := 5 ^ f * C
  have hNVnat : (125 : ℕ) ^ (5 * m) * V = Nq := by
    have hpow : (125 : ℕ) ^ (5 * m) = (5 : ℕ) ^ (15 * m) := by
      calc
        _ = ((5 : ℕ) ^ 3) ^ (5 * m) := by norm_num
        _ = (5 : ℕ) ^ (15 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
    dsimp only [V, Nq]
    rw [hpow]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 5 f (15 * m) C (Nat.le_of_lt hf)
  have hNV : (125 : ℚ) ^ (5 * m) * (V : ℚ) = (Nq : ℚ) := by exact_mod_cast hNVnat
  have hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m := by
    have hN : (Nq : ℚ) ≤ 2 * (Y : ℚ) := by exact_mod_cast hupperQ
    linarith
  obtain ⟨row, hlower⟩ := actual_integer_gap m e f A C
    (by omega) (Nat.le_of_lt he) (Nat.le_of_lt hf) hC hgap
  have hVcast : (5 : ℤ) ^ (f - 15 * m) * (C : ℤ) = (V : ℤ) := by
    dsimp only [V]
    simp only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
  have hVabs : |(5 : ℤ) ^ (f - 15 * m) * (C : ℤ)| = (V : ℤ) := by
    rw [hVcast, abs_of_nonneg (Int.natCast_nonneg V)]
  have hlow : (128 : ℤ) ^ (5 * m) ≤
      24 * |qRow m row| + |rowError m row| * (V : ℤ) := by
    simpa only [hVabs] using hlower
  have hstrict := actual_integer_gap_sum_lt m hm row BQ BE hBQ hBE
    (hQ m hm row) (hE m hm row) hAm V Nq hNV hNsmall
  exact (not_lt_of_ge hlow) hstrict

end Math.B699.I11TwoFiveScaled
