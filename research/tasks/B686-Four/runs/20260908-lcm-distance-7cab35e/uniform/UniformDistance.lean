import research.tasks.«B686-Four».runs.«20260908-lcm-distance-7cab35e».uniform.LcmDistance
import research.tasks.«B686-Four».formalization.UniformDistance.Boundary

namespace B686UniformRound9


/-- The conservative elementary LCM route yields the stronger constant 64. -/
theorem uniform_distance_bound_sixty_four (k n m : ℕ) (hk : 2 ≤ k)
    (hsep : n+k ≤ m) (heq : B686Target.product k m = 4 * B686Target.product k n) :
    k^2 < 64*(m-n) :=
  B686LcmBounds.uniform_distance_bound_sixty_four k n m hk hsep heq

/-- The exact original requested constant, with no additional assumptions. -/
theorem uniform_distance_bound (k n m : ℕ) (hk : 2 ≤ k)
    (hsep : n+k ≤ m) (heq : B686Target.product k m = 4 * B686Target.product k n) :
    k^2 < 250000*(m-n) :=
  B686LcmBounds.uniform_distance_bound k n m hk hsep heq

/-- The accepted statement displayed directly in the original finite-product notation. -/
theorem uniform_distance_bound_products (k n m : ℕ) (hk : 2 ≤ k)
    (hsep : n+k ≤ m)
    (heq : (∏ i ∈ Finset.Icc 1 k, (m+i)) = 4 * (∏ i ∈ Finset.Icc 1 k, (n+i))) :
    k^2 < 250000*(m-n) :=
  uniform_distance_bound k n m hk hsep heq

/-- info: 'B686UniformRound9.uniform_distance_bound_sixty_four' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs (whitespace := lax) in
#print axioms uniform_distance_bound_sixty_four
/-- info: 'B686UniformRound9.uniform_distance_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs (whitespace := lax) in
#print axioms uniform_distance_bound
/-- info: 'B686UniformRound9.uniform_distance_bound_products' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs (whitespace := lax) in
#print axioms uniform_distance_bound_products

end B686UniformRound9


