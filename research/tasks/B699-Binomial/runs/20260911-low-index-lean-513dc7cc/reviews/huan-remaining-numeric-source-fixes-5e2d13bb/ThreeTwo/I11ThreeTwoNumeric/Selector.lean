import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11ThreeTwoNumeric.Basis
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.DiscreteSelector.ShortPowerBounds
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 4096
namespace Math.B699.I11ThreeTwoNumeric
open Math.B699.DiscretePadeSelector
private theorem two_pow_add_two (k : ℕ) : (2 : ℕ) ^ (k + 2) = 4 * (2 : ℕ) ^ k := by
  calc
    (2 : ℕ) ^ (k + 2) = (2 : ℕ) ^ k * 2 ^ 2 := Nat.pow_add 2 k 2
    _ = (2 : ℕ) ^ k * 4 := by rw [show (2 : ℕ) ^ 2 = 4 by decide]
    _ = 4 * (2 : ℕ) ^ k := Nat.mul_comm _ _
theorem predecessor : certificateZ ^ (162 - 1) ≤ 4 * (2 : ℕ) ^ 15359 := by
  have h := base_from_short_basis certificateZ 1 1 161 15361 760 8
    (by decide)
    (by set_option exponentiation.threshold 760 in exact basis_two_upper)
    (by decide)
  have hpred : certificateZ ^ 161 ≤ (2 : ℕ) ^ 15361 := by
    simpa only [Nat.pow_one] using h
  calc
    certificateZ ^ (162 - 1) = certificateZ ^ 161 := rfl
    _ ≤ (2 : ℕ) ^ 15361 := hpred
    _ = 4 * (2 : ℕ) ^ 15359 := two_pow_add_two 15359
theorem p_conditions : (3 : ℕ) ^ 46000 ≤ certificateZ ^ 774 ∧
    ((3 : ℕ) ^ 46000) ^ 162 ≤ ((2 : ℕ) ^ 15359) ^ 774 ∧
    (4 : ℕ) ^ 774 * (3 ^ 46000) ^ (162+1) ≤ certificateZ ^ (774*162) := by
  exact conditions_from_short_bases 3 certificateZ 46000 774 162 15359
    203 128 759 8
    (by decide) (by decide)
    (by set_option exponentiation.threshold 203 in exact basis_three)
    (by set_option exponentiation.threshold 760 in exact basis_two_lower)
    (by decide) (by decide) (by decide)
theorem q_conditions : (2 : ℕ) ^ 69000 ≤ certificateZ ^ 732 ∧
    ((2 : ℕ) ^ 69000) ^ 162 ≤ ((2 : ℕ) ^ 15359) ^ 732 ∧
    (4 : ℕ) ^ 732 * (2 ^ 69000) ^ (162+1) ≤ certificateZ ^ (732*162) := by
  exact conditions_from_short_bases 2 certificateZ 69000 732 162 15359
    1 1 759 8
    (by decide) (by decide)
    (by set_option exponentiation.threshold 1 in exact basis_two_unit)
    (by set_option exponentiation.threshold 760 in exact basis_two_lower)
    (by decide) (by decide) (by decide)
theorem p_rate : (3 : ℕ) ^ 46000 ≤ certificateZ ^ 774 := p_conditions.1
theorem p_base : ((3 : ℕ : ℕ) ^ 46000) ^ 162 ≤ ((2 : ℕ)^ 15359) ^ 774 := p_conditions.2.1
theorem p_lookahead : (4 : ℕ) ^ 774 * (3 ^ 46000) ^ (162+1) ≤ certificateZ ^ (774*162) := p_conditions.2.2
theorem q_rate : (2 : ℕ) ^ 69000 ≤ certificateZ ^ 732 := q_conditions.1
theorem q_base : ((2 : ℕ) ^ 69000) ^ 162 ≤ ((2 : ℕ)^ 15359) ^ 732 := q_conditions.2.1
theorem q_lookahead : (4 : ℕ) ^ 732 * (2 ^ 69000) ^ (162+1) ≤ certificateZ ^ (732*162) := q_conditions.2.2
end Math.B699.I11ThreeTwoNumeric
#print axioms Math.B699.I11ThreeTwoNumeric.predecessor
#print axioms Math.B699.I11ThreeTwoNumeric.p_conditions
#print axioms Math.B699.I11ThreeTwoNumeric.q_conditions
#print axioms Math.B699.I11ThreeTwoNumeric.p_rate
#print axioms Math.B699.I11ThreeTwoNumeric.p_base
#print axioms Math.B699.I11ThreeTwoNumeric.p_lookahead
#print axioms Math.B699.I11ThreeTwoNumeric.q_rate
#print axioms Math.B699.I11ThreeTwoNumeric.q_base
#print axioms Math.B699.I11ThreeTwoNumeric.q_lookahead
