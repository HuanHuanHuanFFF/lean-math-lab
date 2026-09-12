import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-five-seven-scaled-edge-5e2d13bb».ScaledGap

/-! UNCOMPILED CANDIDATE. Same least-m five-seven cofactor edge. a=2 is already absorbed into the true homogeneous rowError, never into the lower bound. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11FiveSevenScaled
open Math.B699.DiscretePadeSelector

theorem edge_of_actual_growth
    (BQ BE : ℚ) (hBQ : 0 < BQ) (hBE : 0 < BE)
    (hQ : ∀ m : ℕ, 149 ≤ m → ∀ row : Bool, |qEval m row| ≤ BQ ^ m)
    (hE : ∀ m : ℕ, 149 ≤ m → ∀ row : Bool, |eEval m row| ≤ BE ^ m)
    (hAone : 1 ≤ qRate BQ) (hAbase : (48 : ℚ) < qRate BQ ^ 194)
    (hW : (fiveSevenZ : ℚ) ≤ wRate BE)
    (hprevious : fiveSevenZ ^ (fiveSevenM - 1) ≤ 4 * fiveSevenY0)
    (hrateP : 5 ^ 22000 ≤ fiveSevenZ ^ 648)
    (hbaseP : (5 ^ 22000) ^ fiveSevenM ≤ fiveSevenY0 ^ 648)
    (hlookP : 4 ^ 648 * (5 ^ 22000) ^ (fiveSevenM + 1) ≤ fiveSevenZ ^ (648 * fiveSevenM))
    (hrateQ : 7 ^ 22000 ≤ fiveSevenZ ^ 784)
    (hbaseQ : (7 ^ 22000) ^ fiveSevenM ≤ fiveSevenY0 ^ 784)
    (hlookQ : 4 ^ 784 * (7 ^ 22000) ^ (fiveSevenM + 1) ≤ fiveSevenZ ^ (784 * fiveSevenM))
    (Y e f A C : ℕ) (hY : fiveSevenY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 5 ^ e * A) (hwindowQ : Y ≤ 7 ^ f * C)
    (hupperQ : 7 ^ f * C ≤ 2 * Y)
    (hgap : |(5 : ℤ) ^ e * (A : ℤ) - (7 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 352 ≤ A ^ 1000 ∨ Y ^ 216 ≤ C ^ 1000 := by
  by_cases hP : Y ^ 352 ≤ A ^ 1000
  · exact Or.inl hP
  by_cases hQcofactor : Y ^ 216 ≤ C ^ 1000
  · exact Or.inr hQcofactor
  exfalso
  have hsmallP : A ^ 1000 < Y ^ 352 := Nat.lt_of_not_ge hP
  have hsmallQ : C ^ 1000 < Y ^ 216 := Nat.lt_of_not_ge hQcofactor
  let m := fiveSevenIndex Y
  obtain ⟨he, hf⟩ := extract_same_index Y e f A C hY hprevious
    hrateP hbaseP hlookP hrateQ hbaseQ hlookQ hwindowP hwindowQ hsmallP hsmallQ
  change 22 * m < e at he
  change 22 * m < f at hf
  have hm : 149 ≤ m := index_ge_m0 Y hY hprevious
  have hmM : 194 ≤ m := index_ge_M Y hY hprevious
  have hAm : (48 : ℚ) < qRate BQ ^ m :=
    lt_of_lt_of_le hAbase (pow_le_pow_right₀ hAone hmM)
  have hthreshold : (4 : ℚ) * (Y : ℚ) < (fiveSevenZ : ℚ) ^ m := by
    have h := leastExponent_threshold fiveSevenZ Y fiveSevenZ_gt_one
    change 4 * Y < fiveSevenZ ^ m at h
    exact_mod_cast h
  have hWm : (4 : ℚ) * (Y : ℚ) < wRate BE ^ m :=
    lt_of_lt_of_le hthreshold (pow_le_pow_left₀ (Nat.cast_nonneg fiveSevenZ) hW m)
  let V : ℕ := 7 ^ (f - 22 * m) * C
  let Nq : ℕ := 7 ^ f * C
  have hNVnat : (49 : ℕ) ^ (11 * m) * V = Nq := by
    have hpow : (49 : ℕ) ^ (11 * m) = (7 : ℕ) ^ (22 * m) := by
      calc
        _ = ((7 : ℕ) ^ 2) ^ (11 * m) := by norm_num
        _ = (7 : ℕ) ^ (22 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
    dsimp only [V, Nq]
    rw [hpow]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 7 f (22 * m) C (Nat.le_of_lt hf)
  have hNV : (49 : ℚ) ^ (11 * m) * (V : ℚ) = (Nq : ℚ) := by exact_mod_cast hNVnat
  have hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m := by
    have hN : (Nq : ℚ) ≤ 2 * (Y : ℚ) := by exact_mod_cast hupperQ
    linarith
  obtain ⟨row, hlower⟩ := actual_integer_gap m e f A C
    (by omega) (Nat.le_of_lt he) (Nat.le_of_lt hf) hC hgap
  have hVcast : (7 : ℤ) ^ (f - 22 * m) * (C : ℤ) = (V : ℤ) := by
    dsimp only [V]
    simp only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
  have hVabs : |(7 : ℤ) ^ (f - 22 * m) * (C : ℤ)| = (V : ℤ) := by
    rw [hVcast, abs_of_nonneg (Int.natCast_nonneg V)]
  have hlow : (25 : ℤ) ^ (11 * m) ≤
      24 * |qRow m row| + |rowError m row| * (V : ℤ) := by
    simpa only [hVabs] using hlower
  have hstrict := actual_integer_gap_sum_lt m hm row BQ BE hBQ hBE
    (hQ m hm row) (hE m hm row) hAm V Nq hNV hNsmall
  exact (not_lt_of_ge hlow) hstrict

end Math.B699.I11FiveSevenScaled
