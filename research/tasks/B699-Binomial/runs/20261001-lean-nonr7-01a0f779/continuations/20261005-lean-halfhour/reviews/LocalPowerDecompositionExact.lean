import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-halfhour».supply.LocalPowerDecomposition
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699HalfhourVerify20261005

theorem common_log_cutoff_exact {x z : ℝ} (hx : 2 ≤ x) (hxz : x ≤ z) :
    ⌊Real.log x / Real.log 2⌋₊ ≤ ⌊Real.log z / Real.log 2⌋₊ :=
  B699LocalPowerSteps20261005.common_log_cutoff hx hxz

theorem power_increment_eq_sum_exact {x z : ℝ} {N : Nat}
    (hx : 2 ≤ x) (hxz : x ≤ z) (hN : ⌊Real.log z / Real.log 2⌋₊ ≤ N) :
    (Chebyshev.psi z - Chebyshev.theta z) - (Chebyshev.psi x - Chebyshev.theta x) =
      ∑ k ∈ Finset.Icc 2 N,
        (Chebyshev.theta (z ^ ((1 : ℝ) / k)) - Chebyshev.theta (x ^ ((1 : ℝ) / k))) :=
  B699LocalPowerSteps20261005.power_increment_eq_sum hx hxz hN

theorem local_power_increment_eq_sum_exact {x : ℝ} (hx : 100000000 ≤ x) :
    (Chebyshev.psi (x + x / 4095) - Chebyshev.theta (x + x / 4095)) -
      (Chebyshev.psi x - Chebyshev.theta x) =
      ∑ k ∈ Finset.Icc 2 ⌊Real.log (x + x / 4095) / Real.log 2⌋₊,
        (Chebyshev.theta ((x + x / 4095) ^ ((1 : ℝ) / k)) -
          Chebyshev.theta (x ^ ((1 : ℝ) / k))) :=
  B699LocalPowerSteps20261005.local_power_increment_eq_sum hx

theorem integer_interval_card_bound_exact {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) :
    ((Finset.Ioc ⌊a⌋₊ ⌊b⌋₊).card : ℝ) ≤ b - a + 1 :=
  B699LocalPowerSteps20261005.integer_interval_card_bound ha hab

end B699HalfhourVerify20261005
#print B699HalfhourVerify20261005.common_log_cutoff_exact
#print B699HalfhourVerify20261005.power_increment_eq_sum_exact
#print B699HalfhourVerify20261005.local_power_increment_eq_sum_exact
#print B699HalfhourVerify20261005.integer_interval_card_bound_exact
#print axioms B699HalfhourVerify20261005.common_log_cutoff_exact
#print axioms B699HalfhourVerify20261005.power_increment_eq_sum_exact
#print axioms B699HalfhourVerify20261005.local_power_increment_eq_sum_exact
#print axioms B699HalfhourVerify20261005.integer_interval_card_bound_exact
