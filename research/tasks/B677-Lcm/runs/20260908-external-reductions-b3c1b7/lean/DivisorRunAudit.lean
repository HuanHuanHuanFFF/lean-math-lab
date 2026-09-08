import Math.B677.IntervalLcm
import Mathlib.NumberTheory.Divisors

set_option autoImplicit false
set_option relaxedAutoImplicit false

/-!
Independent statement audit of the divisor-run reduction recovered from
Kuberwastaken/c5-k4, commit 5c6aae7e9550838a582178eb9320a658314396cc,
results/expansion/live-search-2026-08-15/verify_erdos677_lcm_interval.py.

This is newly written audit code, not a transcription of external Lean.
It proves neither a new range of B677 nor the unrestricted conjecture.
-/

namespace B677Audit

open B677

def divisorRun (V m k : ℕ) : Prop :=
  ∀ a ∈ Finset.Ioc m (m + k), a ∣ V

/-- A run proves one divisibility direction, not equality. -/
theorem divisor_run_iff_lcm_dvd (V m k : ℕ) :
    divisorRun V m k ↔ intervalLcm m k ∣ V := by
  exact Finset.lcm_dvd_iff.symm

/-- The reverse divisibility is the precise missing positive-witness obligation. -/
theorem equality_iff_run_and_reverse (V m k : ℕ) :
    intervalLcm m k = V ↔ divisorRun V m k ∧ V ∣ intervalLcm m k := by
  rw [divisor_run_iff_lcm_dvd]
  exact ⟨fun h ↦ ⟨h ▸ dvd_rfl, h ▸ dvd_rfl⟩,
    fun h ↦ Nat.dvd_antisymm h.1 h.2⟩

/-- Every positive-length run lies below its common nonzero multiple. -/
theorem run_end_le {V m k : ℕ} (hV : V ≠ 0) (hk : 0 < k)
    (h : divisorRun V m k) : m + k ≤ V := by
  exact Nat.le_of_dvd (Nat.pos_of_ne_zero hV)
    (h (m + k) (Finset.mem_Ioc.mpr ⟨by omega, le_rfl⟩))

/-- Thus fixing the first window bounds every possible later start. -/
theorem collision_end_le {n m k : ℕ} (hk : 0 < k)
    (h : intervalLcm m k = intervalLcm n k) : m + k ≤ intervalLcm n k := by
  apply run_end_le (interval_lcm_ne_zero n k) hk
  apply (divisor_run_iff_lcm_dvd _ _ _).mpr
  exact h ▸ dvd_rfl

/-- An exact finite reformulation: d is the first integer of the later window. -/
theorem collision_iff_divisor_candidate {n k : ℕ} (hk : 0 < k) :
    (∃ m, n + k ≤ m ∧ intervalLcm m k = intervalLcm n k) ↔
      ∃ d ∈ (intervalLcm n k).divisors,
        n + k < d ∧ intervalLcm (d - 1) k = intervalLcm n k := by
  constructor
  · rintro ⟨m, hsep, heq⟩
    refine ⟨m + 1, Nat.mem_divisors.mpr ⟨?_, interval_lcm_ne_zero n k⟩,
      by omega, by simpa using heq⟩
    rw [← heq, intervalLcm]
    exact Finset.dvd_lcm (Finset.mem_Ioc.mpr ⟨by omega, by omega⟩)
  · rintro ⟨d, _, hsep, heq⟩
    exact ⟨d - 1, by omega, heq⟩

/-- A finite exclusion certificate has an unrestricted-m conclusion. -/
theorem exclude_all_m_of_divisor_checks {n k : ℕ} (hk : 0 < k)
    (hcheck : ∀ d ∈ (intervalLcm n k).divisors, n + k < d →
      intervalLcm (d - 1) k ≠ intervalLcm n k) :
    ∀ m, n + k ≤ m → intervalLcm m k ≠ intervalLcm n k := by
  intro m hsep heq
  obtain ⟨d, hd, hds, he⟩ := collision_iff_divisor_candidate hk |>.mp ⟨m, hsep, heq⟩
  exact hcheck d hd hds he

/-- The stronger no-run certificate is sound for excluding collisions. -/
theorem exclude_all_m_of_missing_divisor {n k : ℕ} (hk : 0 < k)
    (hcheck : ∀ d ∈ (intervalLcm n k).divisors, n + k < d →
      ¬ divisorRun (intervalLcm n k) (d - 1) k) :
    ∀ m, n + k ≤ m → intervalLcm m k ≠ intervalLcm n k := by
  apply exclude_all_m_of_divisor_checks hk
  intro d hd hds heq
  apply hcheck d hd hds
  exact (equality_iff_run_and_reverse _ _ _).mp heq |>.1

/-- Without separation, a real interval-LCM example exposes the lost direction. -/
example : divisorRun (intervalLcm 13 6) 14 6 := by
  rw [divisor_run_iff_lcm_dvd]
  decide
example : intervalLcm 14 6 ≠ intervalLcm 13 6 := by decide

#print axioms divisor_run_iff_lcm_dvd
#print axioms equality_iff_run_and_reverse
#print axioms run_end_le
#print axioms collision_end_le
#print axioms collision_iff_divisor_candidate
#print axioms exclude_all_m_of_divisor_checks
#print axioms exclude_all_m_of_missing_divisor

end B677Audit
