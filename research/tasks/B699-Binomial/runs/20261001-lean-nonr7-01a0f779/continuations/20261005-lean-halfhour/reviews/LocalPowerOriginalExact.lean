import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-halfhour».supply.LocalPowerOriginalLegacy
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699HalfhourVerify20261005

theorem gap_from_local_power_and_psi_exact
    (hlocal : ∀ x : ℝ, 100000000 ≤ x →
      (Chebyshev.psi (x + x / 4095) - Chebyshev.theta (x + x / 4095)) -
        (Chebyshev.psi x - Chebyshev.theta x) ≤ x / 300000)
    (hpsi : ∀ x : ℝ, 100000000 ≤ x → |Chebyshev.psi x - x| ≤ (3 / 25000 : ℝ) * x) :
    ∀ y : Nat, 10000000 ≤ y →
      ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y :=
  B699LocalPowerAdopted20261005.gap_from_local_power_and_psi hlocal hpsi

theorem original_tail_from_local_power_and_psi_exact
    (hlocal : ∀ x : ℝ, 100000000 ≤ x →
      (Chebyshev.psi (x + x / 4095) - Chebyshev.theta (x + x / 4095)) -
        (Chebyshev.psi x - Chebyshev.theta x) ≤ x / 300000)
    (hpsi : ∀ x : ℝ, 100000000 ≤ x → |Chebyshev.psi x - x| ≤ (3 / 25000 : ℝ) * x) :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n / 2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699LocalPowerAdopted20261005.original_tail_from_local_power_and_psi hlocal hpsi

end B699HalfhourVerify20261005
#print B699HalfhourVerify20261005.gap_from_local_power_and_psi_exact
#print B699HalfhourVerify20261005.original_tail_from_local_power_and_psi_exact
#print axioms B699HalfhourVerify20261005.gap_from_local_power_and_psi_exact
#print axioms B699HalfhourVerify20261005.original_tail_from_local_power_and_psi_exact
