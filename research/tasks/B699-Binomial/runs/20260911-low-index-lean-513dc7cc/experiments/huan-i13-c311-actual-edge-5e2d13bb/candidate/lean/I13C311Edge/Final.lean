import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311Edge.Selector
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311Edge.ActualGap
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311Edge.ScaledGap

/-! UNCOMPILED fixedc7d5 actual integer-gap candidate. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Math.B699.I13C311Edge

open Math.B699.DiscretePadeSelector

theorem cofactor_edge (Y a b A B : ℕ) (hY : heightY0 ≤ Y) (hB : 1 ≤ B)
    (hP : Y ≤ 3 ^ a * A) (hQ : Y ≤ 11 ^ b * B) (hQupper : 11 ^ b * B ≤ 2 * Y)
    (hgap : |(3 : ℤ) ^ a * (A : ℤ) - (11 : ℤ) ^ b * (B : ℤ)| ≤ 24) :
    Y ^ 321 ≤ A ^ 1000 ∨ Y ^ 407 ≤ B ^ 1000 := by
  by_cases hleft : Y ^ 321 ≤ A ^ 1000
  · exact Or.inl hleft
  by_cases hright : Y ^ 407 ≤ B ^ 1000
  · exact Or.inr hright
  exfalso
  have hsmallP : A ^ 1000 < Y ^ 321 := Nat.lt_of_not_ge hleft
  have hsmallQ : B ^ 1000 < Y ^ 407 := Nat.lt_of_not_ge hright
  let m := edgeIndex Y
  obtain ⟨ha, hb⟩ := extract_same_index Y a b A B hY hP hQ hsmallP hsmallQ
  change 35 * m < a at ha
  change 14 * m < b at hb
  have hm : 187 ≤ m := index_ge_187 Y hY
  have hthreshold : (4 : ℚ) * (Y : ℚ) < (selectorZ : ℚ) ^ m := by
    have h := index_threshold Y
    change 4 * Y < selectorZ ^ m at h
    exact_mod_cast h
  have hWm : (4 : ℚ) * (Y : ℚ) < wRate ^ m := lt_of_lt_of_le hthreshold
    (pow_le_pow_left₀ (Nat.cast_nonneg selectorZ) w_rate_lower m)
  let V : ℕ := 11 ^ (b - 14 * m) * B
  let Nq : ℕ := 11 ^ b * B
  have hNVnat : (121 : ℕ) ^ (7 * m) * V = Nq := by
    have hpow : (121 : ℕ) ^ (7 * m) = (11 : ℕ) ^ (14 * m) := by
      calc
        _ = ((11 : ℕ) ^ 2) ^ (7 * m) := by norm_num
        _ = (11 : ℕ) ^ (14 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
    dsimp only [V, Nq]
    rw [hpow]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 11 b (14 * m) B (Nat.le_of_lt hb)
  have hNV : (121 : ℚ) ^ (7 * m) * (V : ℚ) = (Nq : ℚ) := by exact_mod_cast hNVnat
  have hNsmall : 2 * (Nq : ℚ) < wRate ^ m := by
    have hN : (Nq : ℚ) ≤ 2 * (Y : ℚ) := by exact_mod_cast hQupper
    linarith
  obtain ⟨row, hlower⟩ := actual_integer_gap m a b A B
    (by omega) (Nat.le_of_lt ha) (Nat.le_of_lt hb) hB hgap
  have hVcast : (11 : ℤ) ^ (b - 14 * m) * (B : ℤ) = (V : ℤ) := by
    dsimp only [V]
    simp only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
  have hVabs : |(11 : ℤ) ^ (b - 14 * m) * (B : ℤ)| = (V : ℤ) := by
    rw [hVcast, abs_of_nonneg (Int.natCast_nonneg V)]
  have hlow : (243 : ℤ) ^ (7 * m) ≤
      (2 : ℤ) ^ (7 * m) * 24 * |qRow m row| + |rowError m row| * (V : ℤ) := by
    simpa only [hVabs] using hlower
  exact (not_lt_of_ge hlow) (actual_integer_gap_sum_lt m hm row V Nq hNV hNsmall)

/-- Final requested natural-window statement. The index, both capacities,
actualG/Q/E growth and integer-gap upper bounds are internally constructed. -/
theorem actual_c311_cofactor_edge
    (Y a b A B : ℕ) (hY : (2 : ℕ) ^ 15359 ≤ Y) (hA : 1 ≤ A) (hB : 1 ≤ B)
    (hPlo : Y ≤ 3 ^ a * A) (hPhi : 3 ^ a * A ≤ 2 * Y)
    (hQlo : Y ≤ 11 ^ b * B) (hQhi : 11 ^ b * B ≤ 2 * Y)
    (hgap : |(3 : ℤ) ^ a * (A : ℤ) - (11 : ℤ) ^ b * (B : ℤ)| ≤ 24) :
    Y ^ 321 ≤ A ^ 1000 ∨ Y ^ 407 ≤ B ^ 1000 := by
  exact cofactor_edge Y a b A B hY hB hPlo hQlo hQhi hgap

end Math.B699.I13C311Edge
#print axioms Math.B699.I13C311Edge.cofactor_edge
#print axioms Math.B699.I13C311Edge.actual_c311_cofactor_edge
