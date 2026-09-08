import research.tasks.«B686-Four».round9.uniform.UniformDistance

namespace B686UniformRound9.Consumer


/-- An importing consumer for the stronger constant, in the exact original notation. -/
theorem original_statement_sixty_four :
    ∀ k n m : ℕ, 2 ≤ k → n + k ≤ m →
      (∏ i ∈ Finset.Icc 1 k, (m+i)) = 4 * (∏ i ∈ Finset.Icc 1 k, (n+i)) →
      k^2 < 64 * (m-n) := by
  intro k n m hk hsep heq
  exact B686UniformRound9.uniform_distance_bound_sixty_four k n m hk hsep heq

/-- info: 'B686UniformRound9.Consumer.original_statement_sixty_four' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs (whitespace := lax) in
#print axioms original_statement_sixty_four


/-- A separate importing consumer with the original natural-number quantifiers. -/
theorem original_statement :
    ∀ k n m : ℕ, 2 ≤ k → n + k ≤ m →
      (∏ i ∈ Finset.Icc 1 k, (m+i)) = 4 * (∏ i ∈ Finset.Icc 1 k, (n+i)) →
      k^2 < 250000 * (m-n) := by
  intro k n m hk hsep heq
  exact B686UniformRound9.uniform_distance_bound_products k n m hk hsep heq

/-- Source-compatible rational ratio, using the already verified target bridge. -/
theorem rational_ratio_statement (k n m : ℕ) (hk : 2 ≤ k) (hsep : n+k ≤ m)
    (hratio : (4 : ℚ) = (B686Target.product k m : ℚ) / (B686Target.product k n : ℚ)) :
    (k : ℚ)^2 < 250000 * ((m : ℚ) - n) := by
  have heq := (B686Target.ratio_iff k n m).mp hratio
  have hnat := B686UniformRound9.uniform_distance_bound k n m hk hsep heq
  have hrat := B686UniformDistance.rational_bound_of_nat_bound k n m hnat
  rw [B686UniformDistance.displacement_cast k n m hsep] at hrat
  exact hrat

/-- info: 'B686UniformRound9.Consumer.original_statement' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs (whitespace := lax) in
#print axioms original_statement
/-- info: 'B686UniformRound9.Consumer.rational_ratio_statement' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs (whitespace := lax) in
#print axioms rational_ratio_statement

end B686UniformRound9.Consumer



