import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row095Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_good224_checked :
    goodSegmentCheck 95 31 66
      { lower := 137842, upper := 137875, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row095_good225_checked :
    goodSegmentCheck 95 31 66
      { lower := 148955, upper := 148971, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 95) (r := 31) (s := 66) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_good225_checked
