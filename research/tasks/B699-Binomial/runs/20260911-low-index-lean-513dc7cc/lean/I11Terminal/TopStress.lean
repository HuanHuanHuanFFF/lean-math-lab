import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.TerminalNumeric.TopStress
open B699LowIndex

def g0 : GoodSegment := ⟨9764867, 9764873, .topPrime 9764863⟩
theorem check_0 : goodSegmentCheck 11 3 7 g0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9764867) (hi := 9764873) (p := 9764863)
    (by decide) (by decide +kernel) (by decide) (by decide)

#print axioms B699LowIndex.TerminalNumeric.TopStress.check_0

def g1 : GoodSegment := ⟨9764874, 9764874, .topPrime 9764873⟩
theorem check_1 : goodSegmentCheck 11 3 7 g1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9764874) (hi := 9764874) (p := 9764873)
    (by decide) (by decide +kernel) (by decide) (by decide)

#print axioms B699LowIndex.TerminalNumeric.TopStress.check_1

def g2 : GoodSegment := ⟨19529734, 19529738, .topPrime 19529729⟩
theorem check_2 : goodSegmentCheck 11 3 7 g2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19529734) (hi := 19529738) (p := 19529729)
    (by decide) (by decide +kernel) (by decide) (by decide)

#print axioms B699LowIndex.TerminalNumeric.TopStress.check_2

def g3 : GoodSegment := ⟨29294601, 29294602, .topPrime 29294593⟩
theorem check_3 : goodSegmentCheck 11 3 7 g3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 29294601) (hi := 29294602) (p := 29294593)
    (by decide) (by decide +kernel) (by decide) (by decide)

#print axioms B699LowIndex.TerminalNumeric.TopStress.check_3

end B699LowIndex.TerminalNumeric.TopStress
