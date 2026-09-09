import research.tasks.«B699-Binomial».runs.«20260909-eees-chain-5a2e10».lean.AxiomAudit
import research.tasks.«B699-Binomial».runs.«20260909-eees-chain-5a2e10».lean.ScaledTransfer

set_option autoImplicit false
set_option relaxedAutoImplicit false

/-- info: 'B699Power.succ_pow_mul_sub_le_pow_mul_succ' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms B699Power.succ_pow_mul_sub_le_pow_mul_succ

/-- info: 'B699Power.pow_le_pow_mul_choose' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Power.pow_le_pow_mul_choose

/-- info: 'B699Power.pow_mul_pow_half_lt_pow_of_sq_lt' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms B699Power.pow_mul_pow_half_lt_pow_of_sq_lt

/-- info: 'B699Power.choose_ratio_lower_bound' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms B699Power.choose_ratio_lower_bound

/-- info: 'B699Eees.small_prime_part_le_pow' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Eees.small_prime_part_le_pow

/-- info: 'B699Eees.four_mul_primes_below_le' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Eees.four_mul_primes_below_le

/-- info: 'B699Eees.small_prime_part_lt_large_of_quadratic' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Eees.small_prime_part_lt_large_of_quadratic

/-- info: 'B699Eees.counterexample_size_of_small_lt' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Eees.counterexample_size_of_small_lt

/-- info: 'B699Eees.counterexample_size_of_quadratic' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Eees.counterexample_size_of_quadratic

/-- info: 'B699Eees.common_of_quadratic_tail' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Eees.common_of_quadratic_tail

/-- info: 'B699Eees.counterexample_scaled_power' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Eees.counterexample_scaled_power

/-- info: 'B699Eees.common_of_fourth_lt_cube' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Eees.common_of_fourth_lt_cube

/-- A full interval of second indices outside the Vandermonde region is consumed
without evaluating the large binomial coefficients and without an EEES premise. -/
example {j : ℕ} (hij : 200 < j) (hj : j ≤ 999) :
    ∃ p : ℕ, p.Prime ∧ 200 ≤ p ∧
      p ∣ Nat.gcd (Nat.choose 10000 200) (Nat.choose 10000 j) := by
  apply B699Eees.common_of_fourth_lt_cube (by decide) hij (by omega)
  exact (Nat.pow_le_pow_left hj 4).trans_lt (by decide : (999 : ℕ) ^ 4 < 10000 ^ 3)

/-- Raw original-statement boundary check: a witness equal to `i` is allowed. -/
example : ∃ p : ℕ, p.Prime ∧ 2 ≤ p ∧
    p ∣ Nat.gcd (Nat.choose 16 2) (Nat.choose 16 6) := by
  exact ⟨2, by decide⟩
