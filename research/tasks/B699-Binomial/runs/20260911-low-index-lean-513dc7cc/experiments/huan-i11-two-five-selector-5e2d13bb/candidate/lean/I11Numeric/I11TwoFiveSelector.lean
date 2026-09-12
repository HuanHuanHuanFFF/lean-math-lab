import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Numeric.I11TwoFiveBasis
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.DiscreteSelector.ShortPowerBounds

/-! Uncompiled (2,5) selector candidate. The three p/q conditions are derived
from ShortPowerBounds; no direct J=2^35000 or J=5^15000 reduction is used.
The qRate^329 > 48 certificate is intentionally out of scope. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 4096

namespace Math.B699.I11TwoFiveNumeric
open Math.B699.DiscretePadeSelector

private theorem two_pow_add_two (k : ℕ) : (2 : ℕ) ^ (k + 2) = 4 * (2 : ℕ) ^ k := by
  calc
    (2 : ℕ) ^ (k + 2) = (2 : ℕ) ^ k * 2 ^ 2 := Nat.pow_add 2 k 2
    _ = (2 : ℕ) ^ k * 4 := by rw [show (2 : ℕ) ^ 2 = 4 by decide]
    _ = 4 * (2 : ℕ) ^ k := Nat.mul_comm _ _

theorem predecessor : certificateZ ^ (329 - 1) ≤ 4 * (2 : ℕ) ^ 15359 := by
  have h := base_from_short_basis certificateZ 1 1 328 15361 11960 256
    (by decide)
    (by
      set_option exponentiation.threshold 11960 in
        exact basis_two_upper)
    (by decide)
  have h328 : certificateZ ^ 328 ≤ (2 : ℕ) ^ 15361 := by
    simpa only [Nat.pow_one] using h
  calc
    certificateZ ^ (329 - 1) = certificateZ ^ 328 := rfl
    _ ≤ (2 : ℕ) ^ 15361 := h328
    _ = 4 * (2 : ℕ) ^ 15359 := two_pow_add_two 15359

theorem p_conditions : (2 : ℕ) ^ 35000 ≤ certificateZ ^ 752 ∧
    ((2 : ℕ) ^ 35000) ^ 329 ≤ ((2 : ℕ) ^ 15359) ^ 752 ∧
    (4 : ℕ) ^ 752 * (2 ^ 35000) ^ (329 + 1) ≤
      certificateZ ^ (752 * 329) := by
  exact conditions_from_short_bases 2 certificateZ 35000 752 329 15359
    1 1 11959 256
    (by decide) (by decide)
    (by
      set_option exponentiation.threshold 1 in
        exact basis_two_unit)
    (by
      set_option exponentiation.threshold 11960 in
        exact basis_two_lower)
    (by decide) (by decide) (by decide)

theorem q_conditions : (5 : ℕ) ^ 15000 ≤ certificateZ ^ 748 ∧
    ((5 : ℕ) ^ 15000) ^ 329 ≤ ((2 : ℕ) ^ 15359) ^ 748 ∧
    (4 : ℕ) ^ 748 * (5 ^ 15000) ^ (329 + 1) ≤
      certificateZ ^ (748 * 329) := by
  exact conditions_from_short_bases 5 certificateZ 15000 748 329 15359
    9511 4096 11959 256
    (by decide) (by decide)
    (by
      set_option exponentiation.threshold 9511 in
        exact basis_five)
    (by
      set_option exponentiation.threshold 11960 in
        exact basis_two_lower)
    (by decide) (by decide) (by decide)

theorem p_rate : (2 : ℕ) ^ 35000 ≤ certificateZ ^ 752 := p_conditions.1
theorem p_base : ((2 : ℕ) ^ 35000) ^ 329 ≤ ((2 : ℕ) ^ 15359) ^ 752 :=
  p_conditions.2.1
theorem p_lookahead : (4 : ℕ) ^ 752 * (2 ^ 35000) ^ (329 + 1) ≤
    certificateZ ^ (752 * 329) := p_conditions.2.2

theorem q_rate : (5 : ℕ) ^ 15000 ≤ certificateZ ^ 748 := q_conditions.1
theorem q_base : ((5 : ℕ) ^ 15000) ^ 329 ≤ ((2 : ℕ) ^ 15359) ^ 748 :=
  q_conditions.2.1
theorem q_lookahead : (4 : ℕ) ^ 748 * (5 ^ 15000) ^ (329 + 1) ≤
    certificateZ ^ (748 * 329) := q_conditions.2.2

end Math.B699.I11TwoFiveNumeric

#print axioms Math.B699.I11TwoFiveNumeric.predecessor
#print axioms Math.B699.I11TwoFiveNumeric.p_conditions
#print axioms Math.B699.I11TwoFiveNumeric.q_conditions
#print axioms Math.B699.I11TwoFiveNumeric.p_rate
#print axioms Math.B699.I11TwoFiveNumeric.p_base
#print axioms Math.B699.I11TwoFiveNumeric.p_lookahead
#print axioms Math.B699.I11TwoFiveNumeric.q_rate
#print axioms Math.B699.I11TwoFiveNumeric.q_base
#print axioms Math.B699.I11TwoFiveNumeric.q_lookahead
