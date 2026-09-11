import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row124Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_good224_checked :
    goodSegmentCheck 124 41 87
      { lower := 71411, upper := 71412, witness := RowWitness.topPrime 71411 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good225_checked :
    goodSegmentCheck 124 41 87
      { lower := 73205, upper := 73290, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row124_good226_checked :
    goodSegmentCheck 124 41 87
      { lower := 137842, upper := 137904, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 124) (r := 41) (s := 87) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_good226_checked
