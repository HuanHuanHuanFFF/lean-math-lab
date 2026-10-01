import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.SlimChebyshev

set_option Elab.async false

#check (B699SlimChebyshev.theta_le_log4_mul_x :
  ∀ {x : ℝ}, 0 ≤ x → B699SlimChebyshev.theta x ≤ Real.log 4 * x)
#check (B699SlimChebyshev.deriv_inv_log_apply :
  ∀ {x : ℝ}, 2 ≤ x → deriv (fun t ↦ (Real.log t)⁻¹) x = -x⁻¹ / Real.log x ^ 2)
#check (B699SlimChebyshev.primeCounting_eq_theta_div_log_add_integral :
  ∀ {x : ℝ}, 2 ≤ x → (Nat.primeCounting ⌊x⌋₊ : ℝ) =
    B699SlimChebyshev.theta x / Real.log x +
      ∫ t in 2..x, B699SlimChebyshev.theta t / (t * Real.log t ^ 2))
#print axioms B699SlimChebyshev.theta_le_log4_mul_x
#print axioms B699SlimChebyshev.deriv_inv_log_apply
#print axioms B699SlimChebyshev.primeCounting_eq_theta_div_log_add_integral
