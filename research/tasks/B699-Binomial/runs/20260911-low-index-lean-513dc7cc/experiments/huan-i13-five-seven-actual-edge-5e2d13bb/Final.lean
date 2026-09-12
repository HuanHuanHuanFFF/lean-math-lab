import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13FiveSevenEdge.Selector
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13FiveSevenEdge.Envelopes
import Mathlib.Algebra.Order.Ring.Cast

/-! UNCOMPILED. Final original 355/221 window edge; no G, tree, numeric or selector premises. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13FiveSevenEdge

open Math.B699.I11FiveSevenScaled

theorem actual_five_seven_edge (Y e f A B : ℕ)
    (hY : 2 ^ 65535 ≤ Y) (hA : 1 ≤ A) (hB : 1 ≤ B)
    (hP : Y ≤ 5 ^ e * A ∧ 5 ^ e * A ≤ 2 * Y)
    (hQ : Y ≤ 7 ^ f * B ∧ 7 ^ f * B ≤ 2 * Y)
    (hgap : |(5 : ℤ) ^ e * (A : ℤ) - (7 : ℤ) ^ f * (B : ℤ)| ≤ 24) :
    Y ^ 355 ≤ A ^ 1000 ∨ Y ^ 221 ≤ B ^ 1000 := by
  by_cases hp : Y ^ 355 ≤ A ^ 1000
  · exact Or.inl hp
  by_cases hq : Y ^ 221 ≤ B ^ 1000
  · exact Or.inr hq
  exfalso
  have hsP : A ^ 1000 < Y ^ 355 := Nat.lt_of_not_ge hp
  have hsQ : B ^ 1000 < Y ^ 221 := Nat.lt_of_not_ge hq
  have hY0 : heightY0 ≤ Y := by simpa only [heightY0] using hY
  let m := selectedIndex Y
  have hm : minIndex ≤ m := selected_ge_min Y hY0
  have hm1 : 1 ≤ m := by dsimp only [minIndex] at hm; omega
  obtain ⟨he, hf⟩ := selected_extractions Y e f A B hY0 hP.1 hQ.1 hsP hsQ
  change 22 * m < e at he
  change 22 * m < f at hf
  have hZ : 4 * (Y : ℚ) < (indexBase : ℚ) ^ m := by
    exact_mod_cast selected_threshold Y
  let V : ℕ := 7 ^ (f - 22 * m) * B
  let Nq : ℕ := 7 ^ f * B
  have hNVnat : (49 : ℕ) ^ (11 * m) * V = Nq := by
    have hexp : (49 : ℕ) ^ (11 * m) = (7 : ℕ) ^ (22 * m) := by
      calc
        _ = ((7 : ℕ) ^ 2) ^ (11 * m) := by norm_num
        _ = (7 : ℕ) ^ (22 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
    dsimp only [V, Nq]
    rw [hexp]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 7 f (22 * m) B hf.le
  have hNV : (49 : ℚ) ^ (11 * m) * (V : ℚ) = (Nq : ℚ) := by exact_mod_cast hNVnat
  obtain ⟨row, hlower⟩ := actual_integer_gap m e f A B hm1 he.le hf.le hB hgap
  have hV : |(7 : ℤ) ^ (f - 22 * m) * (B : ℤ)| = (V : ℤ) := by
    have hc : (7 : ℤ) ^ (f - 22 * m) * (B : ℤ) = (V : ℤ) := by
      dsimp only [V]
      simp only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
    rw [hc, abs_of_nonneg (Int.natCast_nonneg V)]
  rw [hV] at hlower
  have hlow : (25 : ℚ) ^ (11 * m) ≤
      24 * |(qRow m row : ℚ)| + |(rowError m row : ℚ)| * (V : ℚ) := by
    exact_mod_cast hlower
  have hPpos : 0 < (25 : ℚ) ^ (11 * m) := by positivity
  have hQne : (49 : ℚ) ^ (11 * m) ≠ 0 := pow_ne_zero _ (by norm_num)
  have hsum : qFraction m row + eFraction m row (Nq : ℚ) =
      (24 * |(qRow m row : ℚ)| + |(rowError m row : ℚ)| * (V : ℚ)) /
        (25 : ℚ) ^ (11 * m) := by
    unfold qFraction eFraction
    rw [← hNV]
    field_simp [ne_of_gt hPpos, hQne]
    <;> ring
  have hlowOne : 1 ≤ qFraction m row + eFraction m row (Nq : ℚ) := by
    rw [hsum]
    exact (le_div_iff₀ hPpos).2 (by simpa only [one_mul] using hlow)
  have hN : Nq ≤ 2 * Y := hQ.2
  exact (not_lt_of_ge hlowOne) (actual_row_fractions_small Y Nq m hm row hN hZ)
end Math.B699.I13FiveSevenEdge
