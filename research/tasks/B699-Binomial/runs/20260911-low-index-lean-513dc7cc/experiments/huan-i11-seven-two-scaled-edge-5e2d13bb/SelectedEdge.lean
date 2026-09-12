import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-seven-two-scaled-edge-5e2d13bb».ScaledGap

/-! UNCOMPILED CANDIDATE. Conditional raw-growth consumer, later discharged by FixedEdge. Actual G/Hom/determinant are constructed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11SevenTwoScaled
open Math.B699.DiscretePadeSelector

theorem edge_of_actual_growth
    (BQ BE : ℚ) (hBQ : 0 < BQ) (hBE : 0 < BE)
    (hQ : ∀ m : ℕ, 224 ≤ m → ∀ row : Bool, |qEval m row| ≤ BQ ^ m)
    (hE : ∀ m : ℕ, 224 ≤ m → ∀ row : Bool, |eEval m row| ≤ BE ^ m)
    (hAone : 1 ≤ qRate BQ) (hAbase : (48 : ℚ) < qRate BQ ^ 285)
    (hW : (sevenTwoZ : ℚ) ≤ wRate BE)
    (hprevious : sevenTwoZ ^ (sevenTwoM - 1) ≤ 4 * sevenTwoY0)
    (hrateP : 7 ^ 18000 ≤ sevenTwoZ ^ 940)
    (hbaseP : (7 ^ 18000) ^ sevenTwoM ≤ sevenTwoY0 ^ 940)
    (hlookP : 4 ^ 940 * (7 ^ 18000) ^ (sevenTwoM + 1) ≤ sevenTwoZ ^ (940 * sevenTwoM))
    (hrateQ : 2 ^ 36000 ≤ sevenTwoZ ^ 670)
    (hbaseQ : (2 ^ 36000) ^ sevenTwoM ≤ sevenTwoY0 ^ 670)
    (hlookQ : 4 ^ 670 * (2 ^ 36000) ^ (sevenTwoM + 1) ≤ sevenTwoZ ^ (670 * sevenTwoM))
    (Y e f A C : ℕ) (hY : sevenTwoY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 7 ^ e * A) (hwindowQ : Y ≤ 2 ^ f * C)
    (hupperQ : 2 ^ f * C ≤ 2 * Y)
    (hgap : |(7 : ℤ) ^ e * (A : ℤ) - (2 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 60 ≤ A ^ 1000 ∨ Y ^ 330 ≤ C ^ 1000 := by
  by_cases hP : Y ^ 60 ≤ A ^ 1000
  · exact Or.inl hP
  by_cases hQcofactor : Y ^ 330 ≤ C ^ 1000
  · exact Or.inr hQcofactor
  exfalso
  have hsmallP : A ^ 1000 < Y ^ 60 := Nat.lt_of_not_ge hP
  have hsmallQ : C ^ 1000 < Y ^ 330 := Nat.lt_of_not_ge hQcofactor
  let m := sevenTwoIndex Y
  obtain ⟨he, hf⟩ := extract_same_index Y e f A C hY hprevious
    hrateP hbaseP hlookP hrateQ hbaseQ hlookQ hwindowP hwindowQ hsmallP hsmallQ
  change 18 * m < e at he
  change 36 * m < f at hf
  have hm : 224 ≤ m := index_ge_m0 Y hY hprevious
  have hmM : 285 ≤ m := index_ge_M Y hY hprevious
  have hAm : (48 : ℚ) < qRate BQ ^ m :=
    lt_of_lt_of_le hAbase (pow_le_pow_right₀ hAone hmM)
  have hthreshold : (4 : ℚ) * (Y : ℚ) < (sevenTwoZ : ℚ) ^ m := by
    have h := leastExponent_threshold sevenTwoZ Y sevenTwoZ_gt_one
    change 4 * Y < sevenTwoZ ^ m at h
    exact_mod_cast h
  have hWm : (4 : ℚ) * (Y : ℚ) < wRate BE ^ m :=
    lt_of_lt_of_le hthreshold (pow_le_pow_left₀ (Nat.cast_nonneg sevenTwoZ) hW m)
  let V : ℕ := 2 ^ (f - 36 * m) * C
  let Nq : ℕ := 2 ^ f * C
  have hNVnat : (16 : ℕ) ^ (9 * m) * V = Nq := by
    have hpow : (16 : ℕ) ^ (9 * m) = (2 : ℕ) ^ (36 * m) := by
      calc
        _ = ((2 : ℕ) ^ 4) ^ (9 * m) := by norm_num
        _ = (2 : ℕ) ^ (36 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
    dsimp only [V, Nq]
    rw [hpow]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 2 f (36 * m) C (Nat.le_of_lt hf)
  have hNV : (16 : ℚ) ^ (9 * m) * (V : ℚ) = (Nq : ℚ) := by exact_mod_cast hNVnat
  have hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m := by
    have hN : (Nq : ℚ) ≤ 2 * (Y : ℚ) := by exact_mod_cast hupperQ
    linarith
  obtain ⟨row, hlower⟩ := actual_integer_gap m e f A C
    (by omega) (Nat.le_of_lt he) (Nat.le_of_lt hf) hC hgap
  have hVcast : (2 : ℤ) ^ (f - 36 * m) * (C : ℤ) = (V : ℤ) := by
    dsimp only [V]
    simp only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
  have hVabs : |(2 : ℤ) ^ (f - 36 * m) * (C : ℤ)| = (V : ℤ) := by
    rw [hVcast, abs_of_nonneg (Int.natCast_nonneg V)]
  have hlow : (49 : ℤ) ^ (9 * m) ≤
      (3 : ℤ) ^ (9 * m) * 24 * |qRow m row| + |rowError m row| * (V : ℤ) := by
    simpa only [hVabs] using hlower
  have hstrict := actual_integer_gap_sum_lt m hm row BQ BE hBQ hBE
    (hQ m hm row) (hE m hm row) hAm V Nq hNV hNsmall
  exact (not_lt_of_ge hlow) hstrict

end Math.B699.I11SevenTwoScaled
