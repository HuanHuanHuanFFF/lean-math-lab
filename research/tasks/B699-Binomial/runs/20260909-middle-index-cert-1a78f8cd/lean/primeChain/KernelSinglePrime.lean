import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.TrialPrimeCheck

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleIndex.KernelSinglePrime

/-- Actual final chain node; kernel backend only, with the original trial checker. -/
theorem lastPrimeCheck : B699LowIndex.trialPrimeCheck 2000003 = true := by
  decide +kernel

theorem lastPrime : Nat.Prime 2000003 :=
  B699LowIndex.trialPrimeCheck_sound lastPrimeCheck

end B699MiddleIndex.KernelSinglePrime

#print axioms B699MiddleIndex.KernelSinglePrime.lastPrimeCheck
#print axioms B699MiddleIndex.KernelSinglePrime.lastPrime
