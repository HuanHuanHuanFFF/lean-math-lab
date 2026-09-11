import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row037Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_good224_checked :
    goodSegmentCheck 37 12 25
      { lower := 65625, upper := 65646, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good225_checked :
    goodSegmentCheck 37 12 25
      { lower := 73728, upper := 73731, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row037_good226_checked :
    goodSegmentCheck 37 12 25
      { lower := 327701, upper := 327716, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 37) (r := 12) (s := 25) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_good226_checked
