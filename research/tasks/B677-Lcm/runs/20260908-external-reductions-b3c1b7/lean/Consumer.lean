import research.tasks.«B677-Lcm».runs.«20260908-external-reductions-b3c1b7».lean.DivisorRunAudit

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B677ExternalRecovery

/-- Original equality orientation; every later start is retained. -/
theorem original_collision_iff_finite_candidates {n k : ℕ} (hk : 0 < k) :
    (∃ m, n + k ≤ m ∧ B677.intervalLcm n k = B677.intervalLcm m k) ↔
      ∃ d ∈ (B677.intervalLcm n k).divisors,
        n + k < d ∧ B677.intervalLcm n k = B677.intervalLcm (d - 1) k := by
  constructor
  · rintro ⟨m, hs, he⟩
    obtain ⟨d, hd, hds, hde⟩ :=
      (B677Audit.collision_iff_divisor_candidate hk).mp ⟨m, hs, he.symm⟩
    exact ⟨d, hd, hds, hde.symm⟩
  · rintro ⟨d, hd, hs, he⟩
    obtain ⟨m, hms, hme⟩ :=
      (B677Audit.collision_iff_divisor_candidate hk).mpr ⟨d, hd, hs, he.symm⟩
    exact ⟨m, hms, hme.symm⟩

/-- A finite candidate certificate excludes every separated later window. -/
theorem original_noncollision_of_divisor_certificate {n k : ℕ} (hk : 0 < k)
    (hcheck : ∀ d ∈ (B677.intervalLcm n k).divisors, n + k < d →
      B677.intervalLcm n k ≠ B677.intervalLcm (d - 1) k) :
    ∀ m, n + k ≤ m → B677.intervalLcm n k ≠ B677.intervalLcm m k := by
  intro m hs he
  obtain ⟨d, hd, hds, hde⟩ :=
    (original_collision_iff_finite_candidates hk).mp ⟨m, hs, he⟩
  exact hcheck d hd hds hde

end B677ExternalRecovery

/-- info: 'B677Audit.divisor_run_iff_lcm_dvd' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B677Audit.divisor_run_iff_lcm_dvd

/-- info: 'B677Audit.equality_iff_run_and_reverse' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B677Audit.equality_iff_run_and_reverse

/-- info: 'B677Audit.run_end_le' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B677Audit.run_end_le

/-- info: 'B677Audit.collision_end_le' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B677Audit.collision_end_le

/-- info: 'B677Audit.collision_iff_divisor_candidate' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B677Audit.collision_iff_divisor_candidate

/-- info: 'B677Audit.exclude_all_m_of_divisor_checks' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B677Audit.exclude_all_m_of_divisor_checks

/-- info: 'B677Audit.exclude_all_m_of_missing_divisor' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B677Audit.exclude_all_m_of_missing_divisor

/-- info: 'B677ExternalRecovery.original_collision_iff_finite_candidates' depends on axioms: [propext,
 Classical.choice,
 Quot.sound] -/
#guard_msgs in
#print axioms B677ExternalRecovery.original_collision_iff_finite_candidates

/-- info: 'B677ExternalRecovery.original_noncollision_of_divisor_certificate' depends on axioms: [propext,
 Classical.choice,
 Quot.sound] -/
#guard_msgs in
#print axioms B677ExternalRecovery.original_noncollision_of_divisor_certificate
