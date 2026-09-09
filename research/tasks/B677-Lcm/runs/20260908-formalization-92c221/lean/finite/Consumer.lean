import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Consumer
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.PrimeCertificateKernel

namespace B677FiniteConsumer

/-- The entire finite range required by the adopted B677 paper route.
Lengths up to 71 use checked modular lookup certificates; all larger lengths
use the kernel-checked prime chain. No analytic prime-distribution premise occurs. -/
theorem interval_lcm_ne_below_89693 :
    ∀ n m k : ℕ, 0 < k → n + k ≤ m → m < 89693 →
      B677.intervalLcm n k ≠ B677.intervalLcm m k := by
  intro n m k hk hsep hm
  by_cases hsmall : k ≤ 71
  · exact B677FiniteHashGenerated.certified_finite_range n m k hk hsmall hsep hm
  · obtain ⟨p, hp, hpm, hpk⟩ := B677Finite.prime_within_72 hm
    exact B677.interval_lcm_ne_of_later_prime hk hsep hp hpm (by omega)

/-- info: 'B677FiniteConsumer.interval_lcm_ne_below_89693' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms interval_lcm_ne_below_89693

end B677FiniteConsumer
