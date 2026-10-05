module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-psi-eightymin».supply.EtaBetaMoments
public import Mathlib.Tactic.Linarith
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699EtaMoments20261005

theorem symmetric_integer_moment (n : Nat) :
    (∫ u : ℝ in (-1 : ℝ)..1, (1 - u ^ 2) ^ n) =
      2 * (4 : ℝ) ^ n * (n.factorial : ℝ) ^ 2 / ((2 * n + 1).factorial : ℝ) := by
  have hsub := intervalIntegral.integral_comp_mul_add
    (f := fun u : ℝ => (1 - u ^ 2) ^ n) (a := 0) (b := 1) (c := 2)
    (by norm_num : (2 : ℝ) ≠ 0) (-1)
  have hpoly (t : ℝ) : (1 - (2 * t + (-1)) ^ 2) ^ n =
      (4 : ℝ) ^ n * (t ^ n * (1 - t) ^ n) := by
    have hb : 1 - (2 * t + (-1)) ^ 2 = 4 * t * (1 - t) := by ring
    rw [hb, mul_pow, mul_pow]
    ring
  have hleft : (∫ t : ℝ in (0 : ℝ)..1, (1 - (2 * t + (-1)) ^ 2) ^ n) =
      (4 : ℝ) ^ n * (∫ t : ℝ in (0 : ℝ)..1, t ^ n * (1 - t) ^ n) := by
    calc
      _ = ∫ t : ℝ in (0 : ℝ)..1, (4 : ℝ) ^ n * (t ^ n * (1 - t) ^ n) :=
        intervalIntegral.integral_congr (fun t _ => hpoly t)
      _ = _ := intervalIntegral.integral_const_mul _ _
  simp only [smul_eq_mul] at hsub
  norm_num only at hsub
  rw [hleft, beta_integer_moment n n] at hsub
  have hnat : n + n + 1 = 2 * n + 1 := by ring
  rw [hnat] at hsub
  nlinarith only [hsub]

end B699EtaMoments20261005
#print axioms B699EtaMoments20261005.symmetric_integer_moment
