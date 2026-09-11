import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row050Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good272_checked :
    goodSegmentCheck 50 16 34
      { lower := 655402, upper := 655409, witness := RowWitness.topPrime 655399 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good272_checked
