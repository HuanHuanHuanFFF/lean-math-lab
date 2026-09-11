import Mathlib.Algebra.Order.Ring.Pow
import Mathlib.Algebra.Field.Rat
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
Finite rational growth from actual one-step certificates.
These sequence lemmas do not themselves prove factorial divisibility or a
Padé G bound. Each actual sequence must discharge the displayed step and
base obligations with its source-aligned certificate.
-/

namespace Math.B699.ElementaryRate

theorem lower_telescoping_from_step {F : ℕ → ℚ} {R : ℚ} {k0 : ℕ}
    (hR : 0 ≤ R)
    (hstep : ∀ k : ℕ, k0 ≤ k →
      F k * (R * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤ F (k + 1))
    (n : ℕ) :
    F k0 * R ^ n * ((k0 : ℚ) + 1) ^ 2 /
      (((k0 + n : ℕ) : ℚ) + 1) ^ 2 ≤ F (k0 + n) := by
  induction n with
  | zero =>
      apply le_of_eq
      simp only [pow_zero, mul_one, Nat.add_zero]
      have hk : (k0 : ℚ) + 1 ≠ 0 := by positivity
      field_simp
  | succ n ih =>
      have hk : 0 < ((k0 + n : ℕ) : ℚ) + 1 := by positivity
      have hk2 : 0 < ((k0 + n : ℕ) : ℚ) + 2 := by positivity
      calc
        F k0 * R ^ (n + 1) * ((k0 : ℚ) + 1) ^ 2 /
            (((k0 + (n + 1) : ℕ) : ℚ) + 1) ^ 2 =
          (F k0 * R ^ n * ((k0 : ℚ) + 1) ^ 2 /
            (((k0 + n : ℕ) : ℚ) + 1) ^ 2) *
            (R * ((((k0 + n : ℕ) : ℚ) + 1) / (((k0 + n : ℕ) : ℚ) + 2)) ^ 2) := by
              rw [pow_succ]
              simp only [Nat.cast_add, Nat.cast_one] at *
              field_simp
              <;> ring
        _ ≤ F (k0 + n) *
            (R * ((((k0 + n : ℕ) : ℚ) + 1) / (((k0 + n : ℕ) : ℚ) + 2)) ^ 2) :=
          mul_le_mul_of_nonneg_right ih (mul_nonneg hR (sq_nonneg _))
        _ ≤ F (k0 + (n + 1)) := by
          simpa only [Nat.add_assoc] using hstep (k0 + n) (by omega)

theorem lower_geometric_from_step {F : ℕ → ℚ} {R : ℚ} {K : ℕ}
    (hR : 0 ≤ R)
    (hstep : ∀ k : ℕ, K ≤ k → F k * R ≤ F (k + 1))
    (n : ℕ) : F K * R ^ n ≤ F (K + n) := by
  induction n with
  | zero => simp
  | succ n ih =>
      calc
        F K * R ^ (n + 1) = (F K * R ^ n) * R := by rw [pow_succ]; ring
        _ ≤ F (K + n) * R := mul_le_mul_of_nonneg_right ih hR
        _ ≤ F (K + (n + 1)) := by
          simpa only [Nat.add_assoc] using hstep (K + n) (by omega)

theorem two_le_block_power {R : ℚ} {B : ℕ}
    (hR : 1 ≤ R) (hlinear : 2 ≤ 1 + (B : ℚ) * (R - 1)) :
    2 ≤ R ^ B := by
  exact hlinear.trans (one_add_mul_sub_le_pow (by linarith : -1 ≤ R) B)

theorem two_pow_le_block_power {R : ℚ} {B : ℕ}
    (hblock : 2 ≤ R ^ B) (t : ℕ) : (2 : ℚ) ^ t ≤ R ^ (B * t) := by
  rw [pow_mul]
  exact pow_le_pow_left₀ (by norm_num) hblock t

/-- All exponents and base losses are finite integer data. No large block
power needs to be evaluated: the linear Bernoulli premise implies it. -/
theorem strict_threshold_from_step {F : ℕ → ℚ} {R : ℚ} {K T B n : ℕ}
    (hR : 1 ≤ R) (hF : 0 ≤ F K)
    (hstep : ∀ k : ℕ, K ≤ k → F k * R ≤ F (k + 1))
    (hbase : 1 ≤ F K * (2 : ℚ) ^ T)
    (hlinear : 2 ≤ 1 + (B : ℚ) * (R - 1))
    (hn : B * (T + 1) ≤ n) : 1 < F (K + n) := by
  have hp : (2 : ℚ) ^ (T + 1) ≤ R ^ n :=
    (two_pow_le_block_power (two_le_block_power hR hlinear) (T + 1)).trans
      (pow_le_pow_right₀ hR hn)
  have hbound : (2 : ℚ) ≤ F (K + n) := by
    calc
      (2 : ℚ) = 1 * 2 := by ring
      _ ≤ (F K * (2 : ℚ) ^ T) * 2 := mul_le_mul_of_nonneg_right hbase (by norm_num)
      _ = F K * (2 : ℚ) ^ (T + 1) := by rw [pow_succ]; ring
      _ ≤ F K * R ^ n := mul_le_mul_of_nonneg_left hp hF
      _ ≤ F (K + n) := lower_geometric_from_step (by linarith) hstep n
  exact lt_of_lt_of_le (by norm_num : (1 : ℚ) < 2) hbound

#print axioms Math.B699.ElementaryRate.lower_telescoping_from_step
#print axioms Math.B699.ElementaryRate.lower_geometric_from_step
#print axioms Math.B699.ElementaryRate.two_le_block_power
#print axioms Math.B699.ElementaryRate.two_pow_le_block_power
#print axioms Math.B699.ElementaryRate.strict_threshold_from_step

end Math.B699.ElementaryRate
