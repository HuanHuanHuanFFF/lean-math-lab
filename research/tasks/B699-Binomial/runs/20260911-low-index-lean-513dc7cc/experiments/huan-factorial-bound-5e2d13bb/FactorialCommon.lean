import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith

/-!
# Elementary factorial bounds for three BFT parameter pairs

UNCOMPILED CANDIDATE. No Lean execution or axiom audit has occurred.
Source: BFT author manuscript 2007-02-26, equations (3.1)--(3.3), page 9,
with A=C=d*m-delta and B=(c-d)*m+delta-1 on page 10.
PDF SHA256: 0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c.

This candidate concerns only the factorial prefactor. It does not prove
an integral representation, a maximizer bound, G/theta estimates, BFT
Lemma 4.1 with its printed constants, or a B699 original-problem theorem.

The target is intentionally represented in Q. Every factorial is a natural
factorial, cast before division; there is no natural-number quotient. All
final source-aligned statements require m >= 1 and delta in {0,1}.
The formula is total at other inputs only because Nat subtraction is total;
no source claim is made at those inputs. The pure factorial base at m=1
does not assert that the source's positive A,B,C convention covers that
Pade endpoint.
-/

namespace Math.B699.ElementaryFactorialBound

/-- The exact factorial prefactor after the BFT substitutions. -/
def factorialTerm (c d delta m : ℕ) : ℚ :=
  ((((c + d) * m - delta).factorial : ℕ) : ℚ) /
    (((((d * m - delta).factorial : ℕ) : ℚ) ^ 2) *
      ((((c - d) * m + delta - 1).factorial : ℕ) : ℚ))

/-- The rational growth base; the real identity with alpha(c/d)^d remains
an explicit analytic-notation bridge outside this candidate. -/
def beta (c d : ℕ) : ℚ :=
  (((c + d : ℕ) : ℚ) ^ (c + d)) /
    ((d : ℚ) ^ (2 * d) * ((c - d : ℕ) : ℚ) ^ (c - d))

theorem factorialTerm_pos (c d delta m : ℕ) :
    0 < factorialTerm c d delta m := by
  unfold factorialTerm
  positivity

/-- A casted exact factorial recurrence, with no integer division. -/
theorem factorial_add_cast (n k : ℕ) :
    (((n + k).factorial : ℕ) : ℚ) =
      ((n.factorial : ℕ) : ℚ) * (((n + 1).ascFactorial k : ℕ) : ℚ) := by
  rw [← Nat.factorial_mul_ascFactorial, Nat.cast_mul]

theorem factorial_cast_mul_pred (n : ℕ) (hn : 0 < n) :
    ((n.factorial : ℕ) : ℚ) = (n : ℚ) * (((n - 1).factorial : ℕ) : ℚ) := by
  have hpred : n - 1 + 1 = n := Nat.sub_add_cancel (by omega)
  have hnat : n.factorial = n * (n - 1).factorial := by
    calc
      n.factorial = (n - 1 + 1).factorial := congrArg Nat.factorial hpred.symm
      _ = n * (n - 1).factorial := by rw [Nat.factorial_succ, hpred]
  rw [hnat, Nat.cast_mul]

/-- The exact delta ratio. This proves the suggested constant instead of
assuming it. The denominator is (c+d)*(c-d)=c^2-d^2. -/
theorem factorial_delta_one_eq (c d m : ℕ)
    (hc : d < c) (hd : 0 < d) (hm : 0 < m) :
    factorialTerm c d 1 m =
      ((d : ℚ) ^ 2 / (((c + d : ℕ) : ℚ) * ((c - d : ℕ) : ℚ))) *
        factorialTerm c d 0 m := by
  have hcp : 0 < c + d := by omega
  have hcm : 0 < c - d := Nat.sub_pos_of_lt hc
  have ha : 0 < (c + d) * m := Nat.mul_pos hcp hm
  have hdm : 0 < d * m := Nat.mul_pos hd hm
  have hb : 0 < (c - d) * m := Nat.mul_pos hcm hm
  simp only [factorialTerm, Nat.add_zero, Nat.sub_zero, Nat.add_sub_cancel]
  rw [factorial_cast_mul_pred ((c + d) * m) ha,
    factorial_cast_mul_pred (d * m) hdm,
    factorial_cast_mul_pred ((c - d) * m) hb]
  simp only [Nat.cast_mul]
  field_simp
  <;> ring

/-- Common consumer of the finite positive-coefficient certificates. All
factors that are cancelled have explicit positivity hypotheses. -/
theorem ratio_le_of_certificate
    {a b d bn bd U W m : ℚ}
    (hb : 0 < b) (hd : 0 < d) (hbd : 0 < bd)
    (hm : 0 < m) (hW : 0 < W)
    (hcert : a * bd * (m + 2) * U ≤
      bn * b * d ^ 2 * (m + 1) ^ 3 * W) :
    a * U / (b * d ^ 2 * m * (m + 1) * W) ≤
      (bn / bd) * (m + 1) ^ 2 / (m * (m + 2)) := by
  apply sub_nonneg.mp
  have hid :
      (bn / bd) * (m + 1) ^ 2 / (m * (m + 2)) -
        a * U / (b * d ^ 2 * m * (m + 1) * W) =
      (bn * b * d ^ 2 * (m + 1) ^ 3 * W - a * bd * (m + 2) * U) /
        (bd * b * d ^ 2 * m * (m + 1) * (m + 2) * W) := by
    field_simp
    <;> ring
  rw [hid]
  exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)

/-- The telescoping induction, used below with actual factorial sequences.
This generic lemma is not the final factorial theorem on its own. -/
theorem telescoping_bound_from_step
    {F : ℕ → ℚ} {B : ℚ} (hB : 0 < B)
    (hstep : ∀ m : ℕ, 1 ≤ m →
      F (m + 1) ≤ F m * (B * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))))
    {m : ℕ} (hm : 1 ≤ m) :
    F m ≤ (2 * F 1 / B) * B ^ m * (m : ℚ) / ((m : ℚ) + 1) := by
  induction m, hm using Nat.le_induction with
  | base =>
      apply le_of_eq
      simp only [pow_one, Nat.cast_one]
      field_simp
      <;> ring
  | succ m hm ih =>
      have hmQ : 0 < (m : ℚ) := Nat.cast_pos.mpr (by omega)
      calc
        F (m + 1) ≤
            F m * (B * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) :=
          hstep m hm
        _ ≤ ((2 * F 1 / B) * B ^ m * (m : ℚ) / ((m : ℚ) + 1)) *
            (B * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) :=
          mul_le_mul_of_nonneg_right ih (by positivity)
        _ = (2 * F 1 / B) * B ^ (m + 1) * ((m + 1 : ℕ) : ℚ) /
            (((m + 1 : ℕ) : ℚ) + 1) := by
          rw [pow_succ]
          simp only [Nat.cast_add, Nat.cast_one]
          field_simp
          <;> ring

theorem strict_bound_from_step
    {F : ℕ → ℚ} {B : ℚ} (hB : 0 < B) (hF : 0 < F 1)
    (hstep : ∀ m : ℕ, 1 ≤ m →
      F (m + 1) ≤ F m * (B * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))))
    {m : ℕ} (hm : 1 ≤ m) :
    F m < (2 * F 1 / B) * B ^ m := by
  have hmQ : 0 < (m : ℚ) := Nat.cast_pos.mpr (by omega)
  have hpos : 0 < (2 * F 1 / B) * B ^ m := by positivity
  calc
    F m ≤ (2 * F 1 / B) * B ^ m * (m : ℚ) / ((m : ℚ) + 1) :=
      telescoping_bound_from_step hB hstep hm
    _ < (2 * F 1 / B) * B ^ m := by
      apply (div_lt_iff₀ (show 0 < (m : ℚ) + 1 by positivity)).2
      nlinarith

#print axioms factorialTerm_pos
#print axioms factorial_add_cast
#print axioms factorial_cast_mul_pred
#print axioms factorial_delta_one_eq
#print axioms ratio_le_of_certificate
#print axioms telescoping_bound_from_step
#print axioms strict_bound_from_step

end Math.B699.ElementaryFactorialBound
