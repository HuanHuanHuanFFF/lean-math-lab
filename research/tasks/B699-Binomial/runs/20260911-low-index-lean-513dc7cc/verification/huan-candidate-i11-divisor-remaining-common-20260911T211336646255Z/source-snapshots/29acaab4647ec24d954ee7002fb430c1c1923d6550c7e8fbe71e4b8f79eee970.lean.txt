import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.ElementaryRate
import Mathlib.Algebra.Order.Field.Rat

/-! UNCOMPILED. Common normalization for actual sequences. This generic theorem
uses step hypotheses; each concrete Threshold module constructs those steps. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorFiniteCommon
open Math.B699.ElementaryRate

def normalized (F : ℕ → ℚ) (rate : ℚ) (m : ℕ) : ℚ := F m / rate ^ m

theorem normalized_pos (F : ℕ → ℚ) (rate : ℚ) (m : ℕ)
    (hrate : 0 < rate) (hF : 0 < F m) : 0 < normalized F rate m :=
  div_pos hF (pow_pos hrate m)

theorem normalized_rough_step (F : ℕ → ℚ) (rate inf : ℚ) (m : ℕ)
    (hrate : 0 < rate) (hri : rate ≤ inf) (hF : 0 ≤ F m)
    (hstep : F m * (inf * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤ F (m + 1)) :
    normalized F rate m * (1 * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤
      normalized F rate (m + 1) := by
  have hcoef := mul_le_mul_of_nonneg_right hri
    (sq_nonneg ((((m : ℚ) + 1) / ((m : ℚ) + 2))))
  have hsmall : F m * (rate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤ F (m + 1) :=
    (mul_le_mul_of_nonneg_left hcoef hF).trans hstep
  have ht : rate ≠ 0 := ne_of_gt hrate
  have hp : rate ^ m ≠ 0 := pow_ne_zero _ ht
  have hd : (m : ℚ) + 2 ≠ 0 := by positivity
  calc
    _ = (F m * (rate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2)) / rate ^ (m + 1) := by
      unfold normalized
      rw [pow_succ rate m]
      field_simp [ht, hp, hd]
      <;> ring
    _ ≤ F (m + 1) / rate ^ (m + 1) :=
      div_le_div_of_nonneg_right hsmall (pow_pos hrate _).le
    _ = normalized F rate (m + 1) := rfl

theorem normalized_middle_step (F : ℕ → ℚ) (rate mid : ℚ) (m : ℕ)
    (hrate : 0 < rate) (hstep : F m * mid ≤ F (m + 1)) :
    normalized F rate m * (mid / rate) ≤ normalized F rate (m + 1) := by
  have ht : rate ≠ 0 := ne_of_gt hrate
  have hp : rate ^ m ≠ 0 := pow_ne_zero _ ht
  calc
    _ = (F m * mid) / rate ^ (m + 1) := by
      unfold normalized
      rw [pow_succ rate m]
      field_simp [ht, hp]
      <;> ring
    _ ≤ F (m + 1) / rate ^ (m + 1) :=
      div_le_div_of_nonneg_right hstep (pow_pos hrate _).le
    _ = normalized F rate (m + 1) := rfl

/-- The fixed finite base and actual steps suffice. No enormous block power is
computed. Concrete seed modules discharge all displayed premises internally. -/
theorem sequence_lower (F : ℕ → ℚ) (rate inf mid : ℚ) (K loss B m : ℕ)
    (hrate : 0 < rate) (hri : rate ≤ inf) (hF : ∀ k : ℕ, 0 < F k) (hK : 1 ≤ K)
    (hrough : ∀ k : ℕ, 1 ≤ k →
      F k * (inf * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤ F (k + 1))
    (hmiddle : ∀ k : ℕ, K ≤ k → F k * mid ≤ F (k + 1))
    (hR : 1 ≤ mid / rate)
    (hlinear : 2 ≤ 1 + (B : ℚ) * (mid / rate - 1))
    (hbase : 1 ≤ (F 1 / rate * 4 / ((K : ℚ) + 1) ^ 2) * (2 : ℚ) ^ loss)
    (hm : K + B * (loss + 1) ≤ m) : rate ^ m < F m := by
  have hraw := lower_telescoping_from_step
    (F := normalized F rate) (R := 1) (k0 := 1) (by norm_num)
    (fun k hk => normalized_rough_step F rate inf k hrate hri (hF k).le (hrough k hk))
    (K - 1)
  have hindexK : 1 + (K - 1) = K := by omega
  have htel : F 1 / rate * 4 / ((K : ℚ) + 1) ^ 2 ≤ normalized F rate K := by
    simpa only [one_pow, mul_one, hindexK, normalized, pow_one, Nat.cast_one,
      show ((1 : ℚ) + 1) ^ 2 = 4 by norm_num] using hraw
  have hbaseN : 1 ≤ normalized F rate K * (2 : ℚ) ^ loss :=
    hbase.trans (mul_le_mul_of_nonneg_right htel (by positivity))
  have hn : B * (loss + 1) ≤ m - K := by omega
  have h := strict_threshold_from_step (F := normalized F rate) (R := mid / rate)
    (K := K) (T := loss) (B := B) (n := m - K)
    hR (normalized_pos F rate K hrate (hF K)).le
    (fun k hk => normalized_middle_step F rate mid k hrate (hmiddle k hk))
    hbaseN hlinear hn
  have hindex : K + (m - K) = m := by omega
  have hgt : 1 < normalized F rate m := by simpa only [hindex] using h
  change 1 < F m / rate ^ m at hgt
  have hmul := (lt_div_iff₀ (pow_pos hrate m)).mp hgt
  simpa only [one_mul] using hmul

end Math.B699.I11DivisorFiniteCommon
