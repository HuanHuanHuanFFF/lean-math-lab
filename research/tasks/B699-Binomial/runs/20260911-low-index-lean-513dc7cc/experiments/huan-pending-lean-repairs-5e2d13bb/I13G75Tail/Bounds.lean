import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13G75.Uniform

/-! UNCOMPILED CANDIDATE. Separate bounds for the two actual divisor rows.
The zero row uses a fixed m=187 anchor and its actual factorial step.
The one row retains its exact 5m/2 advantage. No qContent step is assumed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13G75Tail
open Math.B699.I13G75Uniform Math.B699.ElementaryRate
open Math.B699.RationalFactorialDivisor Math.B699.PadeConstruction

def tailRate : ℚ := infiniteRate * (4487 / 4511)
def tailBase : ℚ := 23 * infiniteRate ^ 186 / 4487
def oneConstant : ℚ := 115 / (48 * infiniteRate)

theorem tail_rate_pos : 0 < tailRate := by
  unfold tailRate
  exact mul_pos infinite_rate_pos (by norm_num)

theorem tail_base_pos : 0 < tailBase := by
  unfold tailBase
  exact div_pos (mul_pos (by norm_num) (pow_pos infinite_rate_pos 186)) (by norm_num)

theorem one_constant_pos : 0 < oneConstant := by
  unfold oneConstant
  exact div_pos (by norm_num) (mul_pos (by norm_num) infinite_rate_pos)

theorem tail_fraction_le (x : ℚ) (hx : 187 ≤ x) :
    (4487 : ℚ) / 4511 ≤ (24 * x - 1) / (24 * x + 23) := by
  have hd : 0 < 24 * x + 23 := by linarith
  apply (div_le_div_iff₀ (by norm_num : (0 : ℚ) < 4511) hd).2
  nlinarith

theorem divisor_zero_tail_step (m : ℕ) (hm : 187 ≤ m) :
    divisorZero m * tailRate ≤ divisorZero (m + 1) := by
  have hm1 : 1 ≤ m := by omega
  have hmq : (187 : ℚ) ≤ (m : ℚ) := by exact_mod_cast hm
  have hratio :
      tailRate ≤ infiniteRate * (24 * (m : ℚ) - 1) / (24 * (m : ℚ) + 23) := by
    simpa only [tailRate, mul_div_assoc] using
      mul_le_mul_of_nonneg_left (tail_fraction_le (m : ℚ) hmq) infinite_rate_pos.le
  exact (mul_le_mul_of_nonneg_left hratio (divisor_zero_pos m).le).trans
    (divisor_zero_step_lower m hm1)

theorem divisor_zero_tail_anchor : tailBase ≤ divisorZero 187 := by
  have h := divisor_zero_lower 187 (by decide)
  norm_num [tailBase] at h ⊢
  exact h

theorem divisor_zero_tail_lower (m : ℕ) (hm : 187 ≤ m) :
    tailBase * tailRate ^ (m - 187) ≤ divisorZero m := by
  have h := lower_geometric_from_step
    (F := divisorZero) (R := tailRate) (K := 187)
    tail_rate_pos.le (fun k hk => divisor_zero_tail_step k hk) (m - 187)
  have hi : 187 + (m - 187) = m := by omega
  rw [hi] at h
  exact (mul_le_mul_of_nonneg_right divisor_zero_tail_anchor
    (pow_nonneg tail_rate_pos.le (m - 187))).trans h

theorem divisor_one_full_rate (m : ℕ) (hm : 1 ≤ m) :
    oneConstant * infiniteRate ^ m ≤ divisorOne m := by
  have hd : 0 < 24 * (m : ℚ) - 1 := linear_denominator_pos m hm
  have hc : (115 / 48 : ℚ) ≤ ((5 * (m : ℚ) / 2) * 23) /
      (24 * (m : ℚ) - 1) := by
    apply (le_div_iff₀ hd).2
    nlinarith
  have he : m = (m - 1) + 1 := by omega
  have hp : infiniteRate ^ m = infiniteRate ^ (m - 1) * infiniteRate := by
    nth_rw 1 [he]
    rw [pow_succ]
  calc
    oneConstant * infiniteRate ^ m =
        (115 / 48 : ℚ) * infiniteRate ^ (m - 1) := by
      rw [hp]
      unfold oneConstant
      field_simp [ne_of_gt infinite_rate_pos]
      <;> ring
    _ ≤ (((5 * (m : ℚ) / 2) * 23) / (24 * (m : ℚ) - 1)) *
        infiniteRate ^ (m - 1) :=
      mul_le_mul_of_nonneg_right hc (pow_nonneg infinite_rate_pos.le (m - 1))
    _ = ((5 : ℚ) * (m : ℚ) / 2) *
        (23 * infiniteRate ^ (m - 1) / (24 * (m : ℚ) - 1)) := by ring
    _ ≤ divisorOne m := divisor_one_lower m hm

theorem q_content_zero_tail_lower (m : ℕ) (hm : 187 ≤ m) :
    tailBase * tailRate ^ (m - 187) ≤
      (qContent (5 * m) (2 * m - 1) (5 * m) : ℚ) :=
  (divisor_zero_tail_lower m hm).trans
    (rationalDivisor_le_qContent (5 * m) (2 * m - 1))

theorem q_content_one_full_rate (m : ℕ) (hm : 1 ≤ m) :
    oneConstant * infiniteRate ^ m ≤
      (qContent (5 * m - 1) (2 * m) (5 * m - 1) : ℚ) :=
  (divisor_one_full_rate m hm).trans
    (rationalDivisor_le_qContent (5 * m - 1) (2 * m))

end Math.B699.I13G75Tail
