import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.LargeDivisorWitness
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.TrialPrimeCheck

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex.LowIndexLean513dc7cc

/-- The existing square-root primality check proves the original witness check. -/
theorem good_top_prime_checked {i r s lo hi p : ℕ}
    (hlo : lo ≤ hi) (hprime : trialPrimeCheck p = true)
    (hplower : p ≤ lo) (hupper : hi < p + i) :
    goodSegmentCheck i r s
      { lower := lo, upper := hi, witness := RowWitness.topPrime p } = true := by
  simp only [goodSegmentCheck, decide_eq_true_eq]
  exact ⟨hlo, trialPrimeCheck_sound hprime, hplower, hupper⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
