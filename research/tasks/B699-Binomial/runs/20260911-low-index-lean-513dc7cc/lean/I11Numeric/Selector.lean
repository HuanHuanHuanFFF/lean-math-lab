import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Numeric.Basis
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.DiscreteSelector.ShortPowerBounds

/-! UNCOMPILED CANDIDATE. Seven exact selector certificates. Original Z,
M=213, H=15359 and weights are retained. Large conclusion powers are derived
symbolically from short bases; decide is used only on small exponent arithmetic. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11FiveThreeNumeric
open Math.B699.DiscretePadeSelector

/-- Reduce the small factor while the large exponent is still symbolic. -/
private theorem two_pow_add_two (k : ℕ) : (2 : ℕ) ^ (k + 2) = 4 * (2 : ℕ) ^ k := by
  calc
    (2 : ℕ) ^ (k + 2) = (2 : ℕ) ^ k * 2 ^ 2 := Nat.pow_add 2 k 2
    _ = (2 : ℕ) ^ k * 4 := by rw [show (2 : ℕ) ^ 2 = 4 by decide]
    _ = 4 * (2 : ℕ) ^ k := Nat.mul_comm _ _

theorem predecessor : certificateZ ^ (213 - 1) ≤ 4 * (2 : ℕ) ^ 15359 := by
  have h := base_from_short_basis certificateZ 212 1 1 15361 579 8
    (by decide)
    (by
      set_option exponentiation.threshold 579 in
        exact basis_Z_upper)
    (by decide)
  have h212 : certificateZ ^ 212 ≤ (2 : ℕ) ^ 15361 := by
    simpa only [Nat.pow_one] using h
  calc
    certificateZ ^ (213 - 1) = certificateZ ^ 212 := rfl
    _ ≤ (2 : ℕ) ^ 15361 := h212
    _ = 4 * (2 : ℕ) ^ 15359 := two_pow_add_two 15359

theorem p_conditions : (5 : ℕ) ^ 20000 ≤ certificateZ ^ 646 ∧
    ((5 : ℕ) ^ 20000) ^ 213 ≤ ((2 : ℕ) ^ 15359) ^ 646 ∧
    (4 : ℕ) ^ 646 * (5 ^ 20000) ^ (213 + 1) ≤ certificateZ ^ (646 * 213) := by
  exact conditions_from_short_bases 5 certificateZ 20000 646 213 15359 1189 512 289 4
    (by decide) (by decide)
    (by
      set_option exponentiation.threshold 1189 in
        exact basis_five)
    (by
      set_option exponentiation.threshold 289 in
        exact basis_Z_lower)
    (by decide) (by decide) (by decide)

theorem q_conditions : (3 : ℕ) ^ 35000 ≤ certificateZ ^ 772 ∧
    ((3 : ℕ) ^ 35000) ^ 213 ≤ ((2 : ℕ) ^ 15359) ^ 772 ∧
    (4 : ℕ) ^ 772 * (3 ^ 35000) ^ (213 + 1) ≤ certificateZ ^ (772 * 213) := by
  exact conditions_from_short_bases 3 certificateZ 35000 772 213 15359 203 128 289 4
    (by decide) (by decide) basis_three
    (by
      set_option exponentiation.threshold 289 in
        exact basis_Z_lower)
    (by decide) (by decide) (by decide)

theorem p_rate : (5 : ℕ) ^ 20000 ≤ certificateZ ^ 646 := p_conditions.1
theorem p_base : ((5 : ℕ) ^ 20000) ^ 213 ≤ ((2 : ℕ) ^ 15359) ^ 646 := p_conditions.2.1
theorem p_lookahead : (4 : ℕ) ^ 646 * (5 ^ 20000) ^ (213 + 1) ≤
    certificateZ ^ (646 * 213) := p_conditions.2.2

theorem q_rate : (3 : ℕ) ^ 35000 ≤ certificateZ ^ 772 := q_conditions.1
theorem q_base : ((3 : ℕ) ^ 35000) ^ 213 ≤ ((2 : ℕ) ^ 15359) ^ 772 := q_conditions.2.1
theorem q_lookahead : (4 : ℕ) ^ 772 * (3 ^ 35000) ^ (213 + 1) ≤
    certificateZ ^ (772 * 213) := q_conditions.2.2

end Math.B699.I11FiveThreeNumeric
#print axioms Math.B699.I11FiveThreeNumeric.predecessor
#print axioms Math.B699.I11FiveThreeNumeric.p_conditions
#print axioms Math.B699.I11FiveThreeNumeric.q_conditions
#print axioms Math.B699.I11FiveThreeNumeric.p_rate
#print axioms Math.B699.I11FiveThreeNumeric.p_base
#print axioms Math.B699.I11FiveThreeNumeric.p_lookahead
#print axioms Math.B699.I11FiveThreeNumeric.q_rate
#print axioms Math.B699.I11FiveThreeNumeric.q_base
#print axioms Math.B699.I11FiveThreeNumeric.q_lookahead
