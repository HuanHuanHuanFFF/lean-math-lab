import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row060Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_good208_checked :
    goodSegmentCheck 60 19 41
      { lower := 49152, upper := 49189, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good209_checked :
    goodSegmentCheck 60 19 41
      { lower := 73205, upper := 73226, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row060_good210_checked :
    goodSegmentCheck 60 19 41
      { lower := 98304, upper := 98319, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 60) (r := 19) (s := 41) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_good210_checked
