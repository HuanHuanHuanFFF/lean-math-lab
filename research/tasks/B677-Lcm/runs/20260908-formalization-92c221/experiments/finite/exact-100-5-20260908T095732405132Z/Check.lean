import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«exact-100-5-20260908T095732405132Z».Data
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteGenerated
theorem certificate_checked : B677Finite.checkRows 1 (B677Finite.firstRow 100) certificates = true := by decide +kernel
theorem certified_finite_range : ∀ n m k : ℕ, 0 < k → k ≤ 5 → n + k ≤ m → m < 100 → B677.intervalLcm n k ≠ B677.intervalLcm m k := by
  have h := B677Finite.checked_rows_noncollision certificate_checked
  have hlen : certificates.length = 5 := by decide +kernel
  simpa only [hlen] using h
/-- info: 'B677FiniteGenerated.certified_finite_range' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms certified_finite_range
end B677FiniteGenerated
