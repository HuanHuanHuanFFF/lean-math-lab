import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row160Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_good224_checked :
    goodSegmentCheck 160 53 113
      { lower := 137842, upper := 137940, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good225_checked :
    goodSegmentCheck 160 53 113
      { lower := 148955, upper := 149036, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good225_checked
