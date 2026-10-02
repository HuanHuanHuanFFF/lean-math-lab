module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.RealGap
public import Mathlib.Analysis.Complex.ExponentialBounds
public import Mathlib.Tactic.Linarith
public import Mathlib.Tactic.NormNum
public import Mathlib.Tactic.Ring

/-! Prime-optimization §6.3, as a conditional consumer of a published input.
The strict threshold is a conservative subinterface of Dusart2010 Prop6.8;
the target x≥10^7 is away from either threshold convention.
This file does not prove or postulate Dusart's prime-supply theorem. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

@[expose] public section

namespace B699TailGap

def DusartStrictInput : Prop :=
  ∀ x : ℝ, (396738 : ℝ) < x → ∃ p : ℕ, p.Prime ∧ x < (p : ℝ) ∧
    (p : ℝ) ≤ x * (1 + 1 / (25 * (Real.log x) ^ 2))

theorem dusart_denominator_gt_4095 {x : ℝ} (hx : 10000000 ≤ x) :
    (4095 : ℝ) < 25 * (Real.log x) ^ 2 := by
  have hpower : (2 : ℝ) ^ 23 ≤ x := by norm_num at *; linarith
  have hlog := Real.log_le_log (by norm_num : (0 : ℝ) < 2 ^ 23) hpower
  rw [Real.log_pow] at hlog
  have h13 : (13 : ℝ) < Real.log x := by
    norm_num only at hlog
    linarith [Real.log_two_gt_d9]
  nlinarith [sq_nonneg (Real.log x - 13)]

theorem real_gap_of_dusart (hds : DusartStrictInput) : RealGap 4095 10000000 := by
  intro x hx
  have hxR : (10000000 : ℝ) ≤ x := by simpa only [Nat.cast_ofNat] using hx
  obtain ⟨p, hp, hxp, hupper⟩ := hds x
    (lt_of_lt_of_le (by norm_num : (396738 : ℝ) < 10000000) hxR)
  have hx0 : 0 ≤ x := by linarith
  have hden := dusart_denominator_gt_4095 hx
  have hden0 : 0 < 25 * (Real.log x) ^ 2 := by linarith
  have hrearrange : x * (1 + 1 / (25 * (Real.log x) ^ 2)) =
      x + x / (25 * (Real.log x) ^ 2) := by ring
  rw [hrearrange] at hupper
  have hdiff : (p : ℝ) - x ≤ x / (25 * (Real.log x) ^ 2) := by linarith
  refine ⟨p, hp, hxp, ?_⟩
  norm_num only [Nat.cast_ofNat]
  calc
    4095 * ((p : ℝ) - x) ≤ 4095 * (x / (25 * (Real.log x) ^ 2)) :=
      mul_le_mul_of_nonneg_left hdiff (by norm_num)
    _ = (4095 * x) / (25 * (Real.log x) ^ 2) := by ring
    _ ≤ x := (div_le_iff₀ hden0).2 (by nlinarith [mul_le_mul_of_nonneg_left hden.le hx0])

theorem nat_gap_of_dusart (hds : DusartStrictInput) : Gap 4095 10000000 :=
  nat_gap_of_real_gap (real_gap_of_dusart hds)

end B699TailGap

#print B699TailGap.DusartStrictInput
#print axioms B699TailGap.dusart_denominator_gt_4095
#print axioms B699TailGap.real_gap_of_dusart
#print axioms B699TailGap.nat_gap_of_dusart
