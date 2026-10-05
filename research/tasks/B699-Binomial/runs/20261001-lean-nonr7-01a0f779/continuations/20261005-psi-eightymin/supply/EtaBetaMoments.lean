module
public import Mathlib.Analysis.SpecialFunctions.Gamma.Beta
public import Mathlib.Tactic.Ring
public import Mathlib.Tactic.NormNum
public import Mathlib.Tactic.Positivity
public import Lean.Elab.Tactic.NormCast
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699EtaMoments20261005

/-- Integer beta moment needed by the exact eta mass computation. -/
theorem beta_integer_moment (m n : Nat) :
    (∫ t : ℝ in (0 : ℝ)..1, t ^ m * (1 - t) ^ n) =
      (m.factorial : ℝ) * (n.factorial : ℝ) / ((m + n + 1).factorial : ℝ) := by
  have hm : 0 < ((m : ℂ) + 1).re := by
    simp only [Complex.add_re, Complex.natCast_re, Complex.one_re]
    positivity
  have hn : 0 < ((n : ℂ) + 1).re := by
    simp only [Complex.add_re, Complex.natCast_re, Complex.one_re]
    positivity
  have h := Complex.betaIntegral_eq_Gamma_mul_div ((m : ℂ) + 1) ((n : ℂ) + 1) hm hn
  have heq : ((m : ℂ) + 1) + ((n : ℂ) + 1) = ((m + n + 1 : Nat) : ℂ) + 1 := by
    push_cast
    ring
  rw [Complex.Gamma_nat_eq_factorial m, Complex.Gamma_nat_eq_factorial n, heq,
    Complex.Gamma_nat_eq_factorial (m + n + 1)] at h
  have hl : Complex.betaIntegral ((m : ℂ) + 1) ((n : ℂ) + 1) =
      ((∫ t : ℝ in (0 : ℝ)..1, t ^ m * (1 - t) ^ n) : ℂ) := by
    unfold Complex.betaIntegral
    simp only [add_sub_cancel_right, Complex.cpow_natCast]
    simp_rw [← Complex.ofReal_one, ← Complex.ofReal_sub,
      ← Complex.ofReal_pow, ← Complex.ofReal_mul]
    exact intervalIntegral.integral_ofReal
  rw [hl] at h
  exact_mod_cast h

end B699EtaMoments20261005
#print axioms B699EtaMoments20261005.beta_integer_moment
