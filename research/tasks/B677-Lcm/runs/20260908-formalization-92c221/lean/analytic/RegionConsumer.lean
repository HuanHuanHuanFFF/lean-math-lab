import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.analytic.DusartBridge
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.Consumer

/-! The complete adopted union of regions, with its one remaining external
theorem stated openly. The finite range is discharged by the actual kernel
certificates, not supplied as a hypothesis. This is a conditional intermediate
result until `DusartPrimeInterval` itself has a compatible Lean proof. -/
namespace B677Analytic

theorem adopted_regions_noncollision_of_dusart (hD : DusartPrimeInterval)
    (n m k : ℕ) (hk : 0 < k) (hsep : n + k ≤ m)
    (hregion : m - n ≤ 8 * k ∨ n ≤ 369 * k) :
    B677.intervalLcm n k ≠ B677.intervalLcm m k := by
  intro heq
  have hm := candidate_below_89693_of_dusart hD n m k hk hsep hregion heq
  exact B677FiniteConsumer.interval_lcm_ne_below_89693 n m k hk hsep hm heq

/-- info: 'B677Analytic.adopted_regions_noncollision_of_dusart' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms adopted_regions_noncollision_of_dusart

end B677Analytic
