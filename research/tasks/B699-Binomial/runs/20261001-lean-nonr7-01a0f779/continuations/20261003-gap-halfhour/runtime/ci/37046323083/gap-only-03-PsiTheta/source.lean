module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».gap.ThetaInterval
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.GapDefinitions
public import Lean.Elab.Tactic.NormCast

/-!
An explicit psi-to-theta error bound from already proved Mathlib inequalities.
The two first theorems have no external prime-distribution input.
The final two theorems keep the effective psi estimate as an explicit hypothesis.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

@[expose] public section

namespace B699ThetaSupply

theorem psi_sub_theta_le_twentyone_sqrt {x : ℝ} (hx : 1 ≤ x) :
    Chebyshev.psi x - Chebyshev.theta x ≤ 21 * Real.sqrt x := by
  have hx0 : 0 ≤ x := by linarith
  have hc : Real.log 4 + 4 ≤ (7 : ℝ) := by
    have := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 4)
    linarith
  have hterm (a : ℝ) (ha : a ≤ 1 / 2) :
      Chebyshev.psi (x ^ a) ≤ 7 * Real.sqrt x := by
    have hpow0 := Real.rpow_nonneg hx0 a
    have hpow : x ^ a ≤ Real.sqrt x := by
      rw [Real.sqrt_eq_rpow]
      exact Real.rpow_le_rpow_of_exponent_le hx ha
    calc
      Chebyshev.psi (x ^ a) ≤ (Real.log 4 + 4) * x ^ a :=
        Chebyshev.psi_le_const_mul_self hpow0
      _ ≤ 7 * x ^ a := mul_le_mul_of_nonneg_right hc hpow0
      _ ≤ 7 * Real.sqrt x := mul_le_mul_of_nonneg_left hpow (by norm_num)
  have h2 := hterm ((2 : ℝ)⁻¹) (by norm_num)
  have h3 := hterm ((3 : ℝ)⁻¹) (by norm_num)
  have h5 := hterm ((5 : ℝ)⁻¹) (by norm_num)
  have hcp := Chebyshev.psi_sub_theta_le_psi_add_psi_add_psi x
  linarith

theorem psi_sub_theta_le_div_40000 {x : ℝ} (hx : 1000000000000 ≤ x) :
    Chebyshev.psi x - Chebyshev.theta x ≤ x / 40000 := by
  have hx0 : 0 ≤ x := by linarith
  have hsqrt : (1000000 : ℝ) ≤ Real.sqrt x :=
    Real.le_sqrt_of_sq_le (by norm_num at *; linarith)
  have hmul : 0 ≤ Real.sqrt x * (Real.sqrt x - 840000) :=
    mul_nonneg (Real.sqrt_nonneg x) (by linarith)
  have hbound : 21 * Real.sqrt x ≤ x / 40000 := by
    nlinarith [Real.sq_sqrt hx0]
  exact (psi_sub_theta_le_twentyone_sqrt (by linarith : (1 : ℝ) ≤ x)).trans hbound

theorem prime_of_psi_relative_error {x : ℝ} (hx : 1000000000000 ≤ x)
    (hψx : |Chebyshev.psi x - x| ≤ x / 10000)
    (hψz : |Chebyshev.psi (x + x / 4095) - (x + x / 4095)| ≤
      (x + x / 4095) / 10000) :
    ∃ p : ℕ, p.Prime ∧ x < (p : ℝ) ∧
      (4095 : ℝ) * ((p : ℝ) - x) ≤ x := by
  have hx0 : 0 < x := by linarith
  have hdiv : (0 : ℝ) ≤ x / 4095 := div_nonneg hx0.le (by norm_num)
  have hz : (1000000000000 : ℝ) ≤ x + x / 4095 := by linarith
  have hu : Chebyshev.theta x ≤ (1 + 1 / 10000 : ℝ) * x := by
    have := (abs_le.mp hψx).2
    have := Chebyshev.theta_le_psi x
    linarith
  have hl : (1 - 1 / 8000 : ℝ) * (x + x / 4095) ≤
      Chebyshev.theta (x + x / 4095) := by
    have := (abs_le.mp hψz).1
    have := psi_sub_theta_le_div_40000 hz
    linarith
  exact prime_of_theta_relative_bounds
    (D := (4095 : ℝ)) (u := (1 / 10000 : ℝ)) (l := (1 / 8000 : ℝ))
    (by norm_num) hx0 hu hl (by norm_num)

theorem gap_4095_of_psi_error
    (hψ : ∀ x : ℝ, 1000000000000 ≤ x →
      |Chebyshev.psi x - x| ≤ x / 10000) :
    B699TailGap.Gap 4095 1000000000000 := by
  intro y hy
  have hyR : (1000000000000 : ℝ) ≤ (y : ℝ) := by exact_mod_cast hy
  have hy0 : (0 : ℝ) ≤ (y : ℝ) := Nat.cast_nonneg y
  have hz : (1000000000000 : ℝ) ≤ (y : ℝ) + (y : ℝ) / 4095 := by
    have := div_nonneg hy0 (by norm_num : (0 : ℝ) ≤ 4095)
    linarith
  obtain ⟨p, hp, hyp, hshort⟩ := prime_of_psi_relative_error hyR (hψ y hyR) (hψ _ hz)
  have hypN : y < p := by exact_mod_cast hyp
  refine ⟨p, hp, hypN, ?_⟩
  have hcast : ((4095 * (p - y) : ℕ) : ℝ) ≤ (y : ℝ) := by
    simpa only [Nat.cast_mul, Nat.cast_ofNat, Nat.cast_sub hypN.le] using hshort
  exact_mod_cast hcast

end B699ThetaSupply

#print axioms B699ThetaSupply.psi_sub_theta_le_twentyone_sqrt
#print axioms B699ThetaSupply.psi_sub_theta_le_div_40000
#print axioms B699ThetaSupply.prime_of_psi_relative_error
#print axioms B699ThetaSupply.gap_4095_of_psi_error
