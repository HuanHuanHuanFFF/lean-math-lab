import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row127Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_good224_checked :
    goodSegmentCheck 127 42 90
      { lower := 148955, upper := 149003, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 127) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_good224_checked
