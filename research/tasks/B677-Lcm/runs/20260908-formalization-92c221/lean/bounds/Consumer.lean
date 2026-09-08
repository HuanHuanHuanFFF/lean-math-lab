import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.bounds.ElementaryBounds

/-!
Executable, source-facing consumers. These state the original elementary
obligations using B677's unchanged `(n,n+k]` definition. The final 8/369
noncollision statement is not asserted here: it additionally needs prime
distribution and the finite collision exclusion certificate.
-/

namespace B677BoundsConsumer

theorem requested_elementary_bounds :
    ∀ n m k : ℕ, 2 ≤ k → n + k ≤ m →
      B677.intervalLcm n k = B677.intervalLcm m k →
      ((m - n ≤ 8 * k → m < 1466 * k) ∧
       (n ≤ 369 * k → m < 1480 * k)) := by
  exact B677Bounds.elementary_consumers

theorem requested_general_start_relation :
    ∀ n m k : ℕ, 2 ≤ k → n + k ≤ m →
      B677.intervalLcm n k = B677.intervalLcm m k →
      m + 1 < 4 * (n + k) := by
  intro n m k hk _ heq
  exact B677Bounds.later_start_lt_four_mul_end hk heq

theorem stronger_displacement_bound :
    ∀ n m k : ℕ, 2 ≤ k → n + k ≤ m →
      B677.intervalLcm n k = B677.intervalLcm m k →
      m - n ≤ 8 * k → m < 1032 * k := by
  intro n m k hk hsep heq hd
  exact B677Bounds.later_start_lt_1032_mul_length hk hsep heq hd

/-- The positive-length boundary used before invoking the `k≥2` consumers. -/
theorem length_one_noncollision {n m : ℕ} (hsep : n + 1 ≤ m) :
    B677.intervalLcm n 1 ≠ B677.intervalLcm m 1 := by
  simp only [B677.interval_lcm_eq_range, Finset.range_one,
    Finset.lcm_singleton, Nat.add_zero, normalize_eq]
  omega

-- Concrete checks directly evaluate the unchanged endpoint definition.
example : B677.intervalLcm 0 2 = 2 := by decide
example : B677.intervalLcm 2 2 = 12 := by decide
example : B677Bounds.intervalProduct 0 2 = 2 := by decide
example : B677.intervalLcm 0 0 = 1 := by decide

/-- info: 'B677BoundsConsumer.requested_elementary_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms requested_elementary_bounds
/-- info: 'B677BoundsConsumer.requested_general_start_relation' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms requested_general_start_relation
/-- info: 'B677BoundsConsumer.stronger_displacement_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms stronger_displacement_bound
/-- info: 'B677BoundsConsumer.length_one_noncollision' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms length_one_noncollision

end B677BoundsConsumer
