import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«mod-2000-33-20260908T102132632593Z».Data
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteModGenerated
theorem initial_checked : B677Finite.modInitialCheck 11 2000 64 18446744073709551557 row1 = true := by decide +kernel
theorem rows_checked : B677Finite.modCheckRows 11 2000 1 64 18446744073709551557 row1 rest = true := by decide +kernel
theorem certified_finite_range : ∀ n m k : ℕ, 0 < k → k ≤ 33 → n+k ≤ m → m < 2000 → B677.intervalLcm n k ≠ B677.intervalLcm m k := by
  have h := B677Finite.checked_mod_rows_noncollision (by decide +kernel) initial_checked rows_checked
  have hlen : 1 + rest.length = 33 := by decide +kernel
  simpa only [hlen] using h
/-- info: 'B677FiniteModGenerated.certified_finite_range' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms certified_finite_range
end B677FiniteModGenerated
