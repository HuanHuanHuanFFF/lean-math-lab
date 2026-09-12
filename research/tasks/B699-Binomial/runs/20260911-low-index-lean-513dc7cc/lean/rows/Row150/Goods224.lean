import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row150Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_good224_checked :
    goodSegmentCheck 150 49 106
      { lower := 154568, upper := 154598, witness := RowWitness.topPrime 154543 } = true := by
  exact good_top_prime_checked (i := 150) (r := 49) (s := 106) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_good224_checked
