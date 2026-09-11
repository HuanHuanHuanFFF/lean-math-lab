import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row157Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_good224_checked :
    goodSegmentCheck 157 52 111
      { lower := 137842, upper := 137937, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row157_good225_checked :
    goodSegmentCheck 157 52 111
      { lower := 148955, upper := 149033, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 157) (r := 52) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_good225_checked
