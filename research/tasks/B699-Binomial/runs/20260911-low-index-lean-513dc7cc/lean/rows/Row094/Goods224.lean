import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row094Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_good224_checked :
    goodSegmentCheck 94 31 65
      { lower := 146410, upper := 146427, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row094_good225_checked :
    goodSegmentCheck 94 31 65
      { lower := 148955, upper := 148970, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 94) (r := 31) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_good225_checked
