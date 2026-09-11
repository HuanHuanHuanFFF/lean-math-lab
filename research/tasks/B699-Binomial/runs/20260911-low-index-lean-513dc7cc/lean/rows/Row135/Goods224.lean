import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row135Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_good224_checked :
    goodSegmentCheck 135 44 95
      { lower := 89383, upper := 89507, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good225_checked :
    goodSegmentCheck 135 44 95
      { lower := 103041, upper := 103100, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row135_good226_checked :
    goodSegmentCheck 135 44 95
      { lower := 148955, upper := 149011, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 135) (r := 44) (s := 95) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_good226_checked
