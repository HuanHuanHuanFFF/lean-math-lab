import research.tasks.«B699-Binomial».runs.«20260909-eees-chain-5a2e10».lean.SizeObstruction

set_option autoImplicit false
set_option relaxedAutoImplicit false

/-- info: 'B699Size.prime_part_split' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Size.prime_part_split

/-- info: 'B699Size.top_prime_common' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Size.top_prime_common

/-- info: 'B699Size.exceptional_common' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Size.exceptional_common

/-- info: 'B699Size.vandermonde_lower_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Size.vandermonde_lower_bound

/-- info: 'B699Size.eees_prime_part_size' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Size.eees_prime_part_size

/-- info: 'B699Size.counterexample_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Size.counterexample_bounds

/-- info: 'B699Size.counterexample_size' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Size.counterexample_size

/-- info: 'B699Size.counterexample_separation' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Size.counterexample_separation

/-- info: 'B699Size.common_of_twice_j_le_three_i' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B699Size.common_of_twice_j_le_three_i

/-- A nonempty exceptional row is consumed uniformly in `j`, independently of EEES. -/
example {j : ℕ} (hij : 13 < j) (hjn : j ≤ 28) :
    ∃ p : ℕ, p.Prime ∧ 13 ≤ p ∧ p ∣ Nat.gcd (Nat.choose 56 13) (Nat.choose 56 j) := by
  exact B699Size.exceptional_common (by unfold B699Size.EEESException B699Size.eeesExceptionalPairs; decide) hij hjn

/-- The original input and gcd conclusion use only the explicit EEES external premise. -/
example (heees : B699Size.EEES1978) {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hregion : 2 * j ≤ 3 * i) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) :=
  B699Size.common_of_twice_j_le_three_i heees hi hij hjn hregion
