import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.ThreeWindowSize

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 0

namespace B699LowIndex
open B699LargePrimeStructure

theorem small_prime_count_121_probe : smallPrimeCount 121 = 30 := by
  decide

theorem height_certificate_121_probe :
    (Nat.factorial 121) ^ 130 * ((10 : ℕ) ^ 8) ^ (30 * 130 + 10550) <
      windowConstant 121 40 85 * (((10 : ℕ) ^ 8).descFactorial 121) ^ 130 := by
  decide

#print axioms B699LowIndex.small_prime_count_121_probe
#print axioms B699LowIndex.height_certificate_121_probe

end B699LowIndex
