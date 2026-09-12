import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Numeric.I11FiveSevenBasis
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.DiscreteSelector.ShortPowerBounds
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 4096
namespace Math.B699.I11FiveSevenNumeric
open Math.B699.DiscretePadeSelector
private theorem two_pow_add_two (k : ℕ) : (2 : ℕ) ^ (k + 2) = 4 * (2 : ℕ) ^ k := by
  calc
    (2 : ℕ) ^ (k + 2) = (2 : ℕ) ^ k * 2 ^ 2 := Nat.pow_add 2 k 2
    _ = (2 : ℕ) ^ k * 4 := by rw [show (2 : ℕ) ^ 2 = 4 by decide]
    _ = 4 * (2 : ℕ) ^ k := Nat.mul_comm _ _
theorem predecessor : certificateZ ^ (194 - 1) ≤ 4 * (2 : ℕ) ^ 15359 := by
  have h := base_from_short_basis certificateZ 1 1 193 15361 81154 1024
    (by decide)
    (by set_option exponentiation.threshold 81154 in exact basis_two_upper)
    (by decide)
  have hpred : certificateZ ^ 193 ≤ (2 : ℕ) ^ 15361 := by
    simpa only [Nat.pow_one] using h
  calc
    certificateZ ^ (194 - 1) = certificateZ ^ 193 := rfl
    _ ≤ (2 : ℕ) ^ 15361 := hpred
    _ = 4 * (2 : ℕ) ^ 15359 := two_pow_add_two 15359
theorem p_conditions : (5 : ℕ) ^ 22000 ≤ certificateZ ^ 648 ∧
    ((5 : ℕ) ^ 22000) ^ 194 ≤ ((2 : ℕ) ^ 15359) ^ 648 ∧
    (4 : ℕ) ^ 648 * (5 ^ 22000) ^ (194+1) ≤ certificateZ ^ (648*194) := by
  exact conditions_from_short_bases 5 certificateZ 22000 648 194 15359
    9511 4096 81153 1024
    (by decide) (by decide)
    (by set_option exponentiation.threshold 9511 in exact basis_five)
    (by set_option exponentiation.threshold 81154 in exact basis_two_lower)
    (by decide) (by decide) (by decide)
theorem q_conditions : (7 : ℕ) ^ 22000 ≤ certificateZ ^ 784 ∧
    ((7 : ℕ) ^ 22000) ^ 194 ≤ ((2 : ℕ) ^ 15359) ^ 784 ∧
    (4 : ℕ) ^ 784 * (7 ^ 22000) ^ (194+1) ≤ certificateZ ^ (784*194) := by
  exact conditions_from_short_bases 7 certificateZ 22000 784 194 15359
    719 256 81153 1024
    (by decide) (by decide)
    (by set_option exponentiation.threshold 719 in exact basis_seven)
    (by set_option exponentiation.threshold 81154 in exact basis_two_lower)
    (by decide) (by decide) (by decide)
theorem p_rate : (5 : ℕ) ^ 22000 ≤ certificateZ ^ 648 := p_conditions.1
theorem p_base : ((5 : ℕ : ℕ) ^ 22000) ^ 194 ≤ ((2 : ℕ)^ 15359) ^ 648 := p_conditions.2.1
theorem p_lookahead : (4 : ℕ) ^ 648 * (5 ^ 22000) ^ (194+1) ≤ certificateZ ^ (648*194) := p_conditions.2.2
theorem q_rate : (7 : ℕ) ^ 22000 ≤ certificateZ ^ 784 := q_conditions.1
theorem q_base : ((7 : ℕ) ^ 22000) ^ 194 ≤ ((2 : ℕ)^ 15359) ^ 784 := q_conditions.2.1
theorem q_lookahead : (4 : ℕ) ^ 784 * (7 ^ 22000) ^ (194+1) ≤ certificateZ ^ (784*194) := q_conditions.2.2
end Math.B699.I11FiveSevenNumeric
#print axioms Math.B699.I11FiveSevenNumeric.predecessor
#print axioms Math.B699.I11FiveSevenNumeric.p_conditions
#print axioms Math.B699.I11FiveSevenNumeric.q_conditions
#print axioms Math.B699.I11FiveSevenNumeric.p_rate
#print axioms Math.B699.I11FiveSevenNumeric.p_base
#print axioms Math.B699.I11FiveSevenNumeric.p_lookahead
#print axioms Math.B699.I11FiveSevenNumeric.q_rate
#print axioms Math.B699.I11FiveSevenNumeric.q_base
#print axioms Math.B699.I11FiveSevenNumeric.q_lookahead
