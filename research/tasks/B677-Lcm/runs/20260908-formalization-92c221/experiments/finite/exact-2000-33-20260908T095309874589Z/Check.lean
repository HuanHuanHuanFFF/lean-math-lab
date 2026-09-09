import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«exact-2000-33-20260908T095309874589Z».Data
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteGenerated
theorem certificate_checked : B677Finite.checkRows 1 (B677Finite.firstRow 2000) certificates = true := by decide
theorem certified_finite_range : ∀ n m k : ℕ, 0 < k → k ≤ 33 → n + k ≤ m → m < 2000 → B677.intervalLcm n k ≠ B677.intervalLcm m k := by
  have h := B677Finite.checked_rows_noncollision certificate_checked
  have hlen : certificates.length = 33 := by decide
  simpa only [hlen] using h
/-- info: 'B677FiniteGenerated.certified_finite_range' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms certified_finite_range
end B677FiniteGenerated
