import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-halfhour».supply.LocalPowerCore
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699HalfhourVerify20261005

theorem coefficient_margin_exact :
    (1 / 4095 : ℝ) - (3 / 25000) * (2 + 1 / 4095) - 1 / 300000 = 49 / 58500000 :=
  B699UniformGapPaper20261005.coefficient_margin

theorem prime_of_local_power_and_psi_exact {x : ℝ} (hx : 100000000 ≤ x)
    (hlocal : (Chebyshev.psi (x + x / 4095) - Chebyshev.theta (x + x / 4095)) -
      (Chebyshev.psi x - Chebyshev.theta x) ≤ x / 300000)
    (hpsi_x : |Chebyshev.psi x - x| ≤ (3 / 25000 : ℝ) * x)
    (hpsi_z : |Chebyshev.psi (x + x / 4095) - (x + x / 4095)| ≤
      (3 / 25000 : ℝ) * (x + x / 4095)) :
    ∃ p : Nat, p.Prime ∧ x < (p : ℝ) ∧ (4095 : ℝ) * ((p : ℝ) - x) ≤ x :=
  B699UniformGapPaper20261005.prime_of_local_power_and_psi hx hlocal hpsi_x hpsi_z

theorem gap_100M_of_supplies_exact
    (hlocal : ∀ x : ℝ, 100000000 ≤ x →
      (Chebyshev.psi (x + x / 4095) - Chebyshev.theta (x + x / 4095)) -
        (Chebyshev.psi x - Chebyshev.theta x) ≤ x / 300000)
    (hpsi : ∀ x : ℝ, 100000000 ≤ x → |Chebyshev.psi x - x| ≤ (3 / 25000 : ℝ) * x) :
    ∀ y : Nat, 100000000 ≤ y →
      ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y :=
  B699UniformGapPaper20261005.gap_100M_of_supplies hlocal hpsi

theorem gap_10M_of_supplies_and_initial_exact
    (hlocal : ∀ x : ℝ, 100000000 ≤ x →
      (Chebyshev.psi (x + x / 4095) - Chebyshev.theta (x + x / 4095)) -
        (Chebyshev.psi x - Chebyshev.theta x) ≤ x / 300000)
    (hpsi : ∀ x : ℝ, 100000000 ≤ x → |Chebyshev.psi x - x| ≤ (3 / 25000 : ℝ) * x)
    (hinitial : ∀ y : Nat, 10000000 ≤ y → y < 122568684 →
      ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y) :
    ∀ y : Nat, 10000000 ≤ y →
      ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y :=
  B699UniformGapPaper20261005.gap_10M_of_supplies_and_initial hlocal hpsi hinitial

end B699HalfhourVerify20261005
#print B699HalfhourVerify20261005.coefficient_margin_exact
#print B699HalfhourVerify20261005.prime_of_local_power_and_psi_exact
#print B699HalfhourVerify20261005.gap_100M_of_supplies_exact
#print B699HalfhourVerify20261005.gap_10M_of_supplies_and_initial_exact
#print axioms B699HalfhourVerify20261005.coefficient_margin_exact
#print axioms B699HalfhourVerify20261005.prime_of_local_power_and_psi_exact
#print axioms B699HalfhourVerify20261005.gap_100M_of_supplies_exact
#print axioms B699HalfhourVerify20261005.gap_10M_of_supplies_and_initial_exact
