import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row097Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_good208_checked :
    goodSegmentCheck 97 32 68
      { lower := 148955, upper := 148973, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 97) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_good208_checked
