import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11ThreeTwoEdge.ScaledGap

/-! UNCOMPILED CANDIDATE. Same least-m actual cofactor edge, conditional internally on raw growth and explicit numeric facts; FixedEdge discharges raw growth. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ThreeTwoScaled
open Math.B699.DiscretePadeSelector

theorem edge_of_actual_growth
    (BQ BE : ℚ) (hBQ : 0 < BQ) (hBE : 0 < BE)
    (hQ : ∀ m : ℕ, 160 ≤ m → ∀ row : Bool, |qEval m row| ≤ BQ ^ m)
    (hE : ∀ m : ℕ, 160 ≤ m → ∀ row : Bool, |eEval m row| ≤ BE ^ m)
    (hAone : 1 ≤ qRate BQ) (hAbase : (48 : ℚ) < qRate BQ ^ 162)
    (hW : (threeTwoZ : ℚ) ≤ wRate BE)
    (hprevious : threeTwoZ ^ (threeTwoM - 1) ≤ 4 * threeTwoY0)
    (hrateP : 3 ^ 46000 ≤ threeTwoZ ^ 774)
    (hbaseP : (3 ^ 46000) ^ threeTwoM ≤ threeTwoY0 ^ 774)
    (hlookP : 4 ^ 774 * (3 ^ 46000) ^ (threeTwoM + 1) ≤ threeTwoZ ^ (774 * threeTwoM))
    (hrateQ : 2 ^ 69000 ≤ threeTwoZ ^ 732)
    (hbaseQ : (2 ^ 69000) ^ threeTwoM ≤ threeTwoY0 ^ 732)
    (hlookQ : 4 ^ 732 * (2 ^ 69000) ^ (threeTwoM + 1) ≤ threeTwoZ ^ (732 * threeTwoM))
    (Y e f A C : ℕ) (hY : threeTwoY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 3 ^ e * A) (hwindowQ : Y ≤ 2 ^ f * C)
    (hupperQ : 2 ^ f * C ≤ 2 * Y)
    (hgap : |(3 : ℤ) ^ e * (A : ℤ) - (2 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 226 ≤ A ^ 1000 ∨ Y ^ 268 ≤ C ^ 1000 := by
  by_cases hP : Y ^ 226 ≤ A ^ 1000
  · exact Or.inl hP
  by_cases hQcofactor : Y ^ 268 ≤ C ^ 1000
  · exact Or.inr hQcofactor
  exfalso
  have hsmallP : A ^ 1000 < Y ^ 226 := Nat.lt_of_not_ge hP
  have hsmallQ : C ^ 1000 < Y ^ 268 := Nat.lt_of_not_ge hQcofactor
  let m := threeTwoIndex Y
  obtain ⟨he, hf⟩ := extract_same_index Y e f A C hY hprevious
    hrateP hbaseP hlookP hrateQ hbaseQ hlookQ hwindowP hwindowQ hsmallP hsmallQ
  change 46 * m < e at he
  change 69 * m < f at hf
  have hm : 160 ≤ m := index_ge_m0 Y hY hprevious
  have hmM : 162 ≤ m := index_ge_M Y hY hprevious
  have hAm : (48 : ℚ) < qRate BQ ^ m :=
    lt_of_lt_of_le hAbase (pow_le_pow_right₀ hAone hmM)
  have hthreshold : (4 : ℚ) * (Y : ℚ) < (threeTwoZ : ℚ) ^ m := by
    have h := leastExponent_threshold threeTwoZ Y threeTwoZ_gt_one
    change 4 * Y < threeTwoZ ^ m at h
    exact_mod_cast h
  have hWm : (4 : ℚ) * (Y : ℚ) < wRate BE ^ m :=
    lt_of_lt_of_le hthreshold (pow_le_pow_left₀ (Nat.cast_nonneg threeTwoZ) hW m)
  let V : ℕ := 2 ^ (f - 69 * m) * C
  let Nq : ℕ := 2 ^ f * C
  have hNVnat : (8 : ℕ) ^ (23 * m) * V = Nq := by
    have hpow : (8 : ℕ) ^ (23 * m) = (2 : ℕ) ^ (69 * m) := by
      calc
        _ = ((2 : ℕ) ^ 3) ^ (23 * m) := by norm_num
        _ = (2 : ℕ) ^ (69 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
    dsimp only [V, Nq]
    rw [hpow]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 2 f (69 * m) C (Nat.le_of_lt hf)
  have hNV : (8 : ℚ) ^ (23 * m) * (V : ℚ) = (Nq : ℚ) := by exact_mod_cast hNVnat
  have hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m := by
    have hN : (Nq : ℚ) ≤ 2 * (Y : ℚ) := by exact_mod_cast hupperQ
    linarith
  obtain ⟨row, hlower⟩ := actual_integer_gap m e f A C
    (by omega) (Nat.le_of_lt he) (Nat.le_of_lt hf) hC hgap
  have hVcast : (2 : ℤ) ^ (f - 69 * m) * (C : ℤ) = (V : ℤ) := by
    dsimp only [V]
    simp only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
  have hVabs : |(2 : ℤ) ^ (f - 69 * m) * (C : ℤ)| = (V : ℤ) := by
    rw [hVcast, abs_of_nonneg (Int.natCast_nonneg V)]
  have hlow : (9 : ℤ) ^ (23 * m) ≤
      24 * |qRow m row| + |rowError m row| * (V : ℤ) := by
    simpa only [hVabs] using hlower
  have hstrict := actual_integer_gap_sum_lt m hm row BQ BE hBQ hBE
    (hQ m hm row) (hE m hm row) hAm V Nq hNV hNsmall
  exact (not_lt_of_ge hlow) hstrict

end Math.B699.I11ThreeTwoScaled
