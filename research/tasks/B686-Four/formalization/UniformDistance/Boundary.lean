import research.tasks.«B686-Four».round8.lean.BigPrimeSupport
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Tactic.Linarith

namespace B686UniformDistance

theorem displacement_ge_length (k n m : ℕ) (hsep : n + k ≤ m) :
    k ≤ m - n := by omega

/-- The strictly small-length branch needs only disjointness. -/
theorem uniform_distance_bound_small
    (k n m : ℕ) (hk : 2 ≤ k) (hsmall : k < 250000) (hsep : n + k ≤ m) :
    k ^ 2 < 250000 * (m - n) := by
  have hd := displacement_ge_length k n m hsep
  nlinarith

theorem rational_bound_of_nat_bound (k n m : ℕ)
    (h : k ^ 2 < 250000 * (m - n)) :
    (k : ℚ) ^ 2 < 250000 * ((m - n : ℕ) : ℚ) := by exact_mod_cast h

theorem displacement_cast (k n m : ℕ) (hsep : n + k ≤ m) :
    ((m - n : ℕ) : ℚ) = (m : ℚ) - (n : ℚ) := by
  exact Nat.cast_sub (by omega)

/-- info: 'B686UniformDistance.uniform_distance_bound_small' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms uniform_distance_bound_small
/-- info: 'B686UniformDistance.rational_bound_of_nat_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms rational_bound_of_nat_bound
/-- info: 'B686UniformDistance.displacement_cast' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms displacement_cast

end B686UniformDistance
