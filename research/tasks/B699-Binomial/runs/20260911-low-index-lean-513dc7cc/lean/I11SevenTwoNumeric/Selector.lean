import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11SevenTwoNumeric.Basis
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.DiscreteSelector.ShortPowerBounds

/-! Uncompiled (7,2) selector candidate. The three p/q conditions are derived
from ShortPowerBounds; no direct J=7^18000 or J=2^36000 reduction is used.
The qRate^285 > 48 certificate is intentionally out of scope. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 4096

namespace Math.B699.I11SevenTwoNumeric
open Math.B699.DiscretePadeSelector

private theorem two_pow_add_two (k : ℕ) : (2 : ℕ) ^ (k + 2) = 4 * (2 : ℕ) ^ k := by
  calc
    (2 : ℕ) ^ (k + 2) = (2 : ℕ) ^ k * 2 ^ 2 := Nat.pow_add 2 k 2
    _ = (2 : ℕ) ^ k * 4 := by rw [show (2 : ℕ) ^ 2 = 4 by decide]
    _ = 4 * (2 : ℕ) ^ k := Nat.mul_comm _ _

theorem predecessor : certificateZ ^ (285 - 1) ≤ 4 * (2 : ℕ) ^ 15359 := by
  have h := base_from_short_basis certificateZ 1 1 284 15361 13814 256
    (by decide)
    (by
      set_option exponentiation.threshold 13814 in
        exact basis_two_upper)
    (by decide)
  have h284 : certificateZ ^ 284 ≤ (2 : ℕ) ^ 15361 := by
    simpa only [Nat.pow_one] using h
  calc
    certificateZ ^ (285 - 1) = certificateZ ^ 284 := rfl
    _ ≤ (2 : ℕ) ^ 15361 := h284
    _ = 4 * (2 : ℕ) ^ 15359 := two_pow_add_two 15359

theorem p_conditions : (7 : ℕ) ^ 18000 ≤ certificateZ ^ 940 ∧
    ((7 : ℕ) ^ 18000) ^ 285 ≤ ((2 : ℕ) ^ 15359) ^ 940 ∧
    (4 : ℕ) ^ 940 * (7 ^ 18000) ^ (285 + 1) ≤
      certificateZ ^ (940 * 285) := by
  exact conditions_from_short_bases 7 certificateZ 18000 940 285 15359
    11499 4096 13813 256
    (by decide) (by decide)
    (by
      set_option exponentiation.threshold 11499 in
        exact basis_seven)
    (by
      set_option exponentiation.threshold 13814 in
        exact basis_two_lower)
    (by decide) (by decide) (by decide)

theorem q_conditions : (2 : ℕ) ^ 36000 ≤ certificateZ ^ 670 ∧
    ((2 : ℕ) ^ 36000) ^ 285 ≤ ((2 : ℕ) ^ 15359) ^ 670 ∧
    (4 : ℕ) ^ 670 * (2 ^ 36000) ^ (285 + 1) ≤
      certificateZ ^ (670 * 285) := by
  exact conditions_from_short_bases 2 certificateZ 36000 670 285 15359
    1 1 13813 256
    (by decide) (by decide)
    (by
      set_option exponentiation.threshold 1 in
        exact basis_two_unit)
    (by
      set_option exponentiation.threshold 13814 in
        exact basis_two_lower)
    (by decide) (by decide) (by decide)

theorem p_rate : (7 : ℕ) ^ 18000 ≤ certificateZ ^ 940 := p_conditions.1
theorem p_base : ((7 : ℕ) ^ 18000) ^ 285 ≤ ((2 : ℕ) ^ 15359) ^ 940 :=
  p_conditions.2.1
theorem p_lookahead : (4 : ℕ) ^ 940 * (7 ^ 18000) ^ (285 + 1) ≤
    certificateZ ^ (940 * 285) := p_conditions.2.2

theorem q_rate : (2 : ℕ) ^ 36000 ≤ certificateZ ^ 670 := q_conditions.1
theorem q_base : ((2 : ℕ) ^ 36000) ^ 285 ≤ ((2 : ℕ) ^ 15359) ^ 670 :=
  q_conditions.2.1
theorem q_lookahead : (4 : ℕ) ^ 670 * (2 ^ 36000) ^ (285 + 1) ≤
    certificateZ ^ (670 * 285) := q_conditions.2.2

end Math.B699.I11SevenTwoNumeric

#print axioms Math.B699.I11SevenTwoNumeric.predecessor
#print axioms Math.B699.I11SevenTwoNumeric.p_conditions
#print axioms Math.B699.I11SevenTwoNumeric.q_conditions
#print axioms Math.B699.I11SevenTwoNumeric.p_rate
#print axioms Math.B699.I11SevenTwoNumeric.p_base
#print axioms Math.B699.I11SevenTwoNumeric.p_lookahead
#print axioms Math.B699.I11SevenTwoNumeric.q_rate
#print axioms Math.B699.I11SevenTwoNumeric.q_base
#print axioms Math.B699.I11SevenTwoNumeric.q_lookahead
