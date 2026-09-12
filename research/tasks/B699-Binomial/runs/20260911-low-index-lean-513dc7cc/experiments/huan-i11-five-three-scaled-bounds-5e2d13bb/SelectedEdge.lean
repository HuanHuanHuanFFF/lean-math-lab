import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-five-three-scaled-bounds-5e2d13bb».ScaledGap

/-! UNCOMPILED CANDIDATE. Full edge consumer conditional only on actual
unscaled Q/E growth and explicit fixed numeric certificates. Actual content,
actual determinant, both rows, and the least selector are proved imports.
This is not yet an unconditional (5,3) edge: the data arguments must be discharged. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ScaledBounds
open Math.B699.I11ActualPadeEdge Math.B699.DiscretePadeSelector

theorem five_three_edge_of_actual_growth
    (BQ BE : ℚ) (hBQ : 0 < BQ) (hBE : 0 < BE)
    (hQ : ∀ m : ℕ, 129 ≤ m → ∀ row : Bool, |qEval m row| ≤ BQ ^ m)
    (hE : ∀ m : ℕ, 129 ≤ m → ∀ row : Bool, |eEval m row| ≤ BE ^ m)
    (hAone : 1 ≤ qRate BQ) (hAbase : (48 : ℚ) < qRate BQ ^ 213)
    (hW : (fiveThreeZ : ℚ) ≤ wRate BE)
    (hprevious : fiveThreeZ ^ (fiveThreeM - 1) ≤ 4 * fiveThreeY0)
    (hrateP : (5 : ℕ) ^ 20000 ≤ fiveThreeZ ^ 646)
    (hbaseP : ((5 : ℕ) ^ 20000) ^ fiveThreeM ≤ fiveThreeY0 ^ 646)
    (hlookP : (4 : ℕ) ^ 646 * (5 ^ 20000) ^ (fiveThreeM + 1) ≤
      fiveThreeZ ^ (646 * fiveThreeM))
    (hrateQ : (3 : ℕ) ^ 35000 ≤ fiveThreeZ ^ 772)
    (hbaseQ : ((3 : ℕ) ^ 35000) ^ fiveThreeM ≤ fiveThreeY0 ^ 772)
    (hlookQ : (4 : ℕ) ^ 772 * (3 ^ 35000) ^ (fiveThreeM + 1) ≤
      fiveThreeZ ^ (772 * fiveThreeM))
    (Y e f A C : ℕ) (hY : fiveThreeY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 5 ^ e * A) (hwindowQ : Y ≤ 3 ^ f * C)
    (hupperQ : 3 ^ f * C ≤ 2 * Y)
    (hgap : |(5 : ℤ) ^ e * (A : ℤ) - (3 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 354 ≤ A ^ 1000 ∨ Y ^ 228 ≤ C ^ 1000 := by
  by_cases hP : Y ^ 354 ≤ A ^ 1000
  · exact Or.inl hP
  by_cases hQcofactor : Y ^ 228 ≤ C ^ 1000
  · exact Or.inr hQcofactor
  exfalso
  have hsmallP : A ^ 1000 < Y ^ 354 := Nat.lt_of_not_ge hP
  have hsmallQ : C ^ 1000 < Y ^ 228 := Nat.lt_of_not_ge hQcofactor
  let m := fiveThreeIndex Y
  obtain ⟨he, hf⟩ := five_three_extract_same_index Y e f A C hY hprevious
    hrateP hbaseP hlookP hrateQ hbaseQ hlookQ hwindowP hwindowQ hsmallP hsmallQ
  change 20 * m < e at he
  change 35 * m < f at hf
  have hm : 129 ≤ m := five_three_index_ge_original_m0 Y hY hprevious
  have hmM : 213 ≤ m := by
    have h := leastExponent_lower_bound fiveThreeZ fiveThreeY0 Y fiveThreeM
      fiveThreeZ_gt_one hY (by decide) hprevious
    exact h
  have hAm : (48 : ℚ) < qRate BQ ^ m :=
    lt_of_lt_of_le hAbase (pow_le_pow_right₀ hAone hmM)
  have hthreshold : (4 : ℚ) * (Y : ℚ) < (fiveThreeZ : ℚ) ^ m := by
    have h := leastExponent_threshold fiveThreeZ Y fiveThreeZ_gt_one
    change 4 * Y < fiveThreeZ ^ m at h
    exact_mod_cast h
  have hWm : (4 : ℚ) * (Y : ℚ) < wRate BE ^ m :=
    lt_of_lt_of_le hthreshold (pow_le_pow_left₀ (Nat.cast_nonneg fiveThreeZ) hW m)
  let V : ℕ := 3 ^ (f - 35 * m) * C
  let Nq : ℕ := 3 ^ f * C
  have hNVnat : (2187 : ℕ) ^ (5 * m) * V = Nq := by
    have hpow : (2187 : ℕ) ^ (5 * m) = (3 : ℕ) ^ (35 * m) := by
      calc
        _ = ((3 : ℕ) ^ 7) ^ (5 * m) := by norm_num
        _ = (3 : ℕ) ^ (35 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
    dsimp only [V, Nq]
    rw [hpow]
    exact extract_prime_factor 3 f (35 * m) C (Nat.le_of_lt hf)
  have hNV : (2187 : ℚ) ^ (5 * m) * (V : ℚ) = (Nq : ℚ) := by exact_mod_cast hNVnat
  have hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m := by
    have hN : (Nq : ℚ) ≤ 2 * (Y : ℚ) := by exact_mod_cast hupperQ
    linarith
  obtain ⟨row, _, hlower⟩ := five_three_actual_integer_gap m e f A C
    (by omega) (Nat.le_of_lt he) (Nat.le_of_lt hf) hC hgap
  have hVcast : (3 : ℤ) ^ (f - 35 * m) * (C : ℤ) = (V : ℤ) := by
    dsimp only [V]
    simp only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
  have hVabs : |(3 : ℤ) ^ (f - 35 * m) * (C : ℤ)| = (V : ℤ) := by
    rw [hVcast, abs_of_nonneg (Int.natCast_nonneg V)]
  have hlow : (625 : ℤ) ^ (5 * m) ≤
      (2 : ℤ) ^ (5 * m) * 24 * |qRow m row| + |rowError m row| * (V : ℤ) := by
    simpa only [qRow, rowError, hVabs] using hlower
  have hstrict := actual_integer_gap_sum_lt m hm row BQ BE hBQ hBE
    (hQ m hm row) (hE m hm row) hAm V Nq hNV hNsmall
  exact (not_lt_of_ge hlow) hstrict

end Math.B699.I11ScaledBounds
#print axioms Math.B699.I11ScaledBounds.five_three_edge_of_actual_growth
