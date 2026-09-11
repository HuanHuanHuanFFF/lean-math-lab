import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row163Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_good224_checked :
    goodSegmentCheck 163 54 116
      { lower := 103041, upper := 103128, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good225_checked :
    goodSegmentCheck 163 54 116
      { lower := 137842, upper := 137943, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row163_good226_checked :
    goodSegmentCheck 163 54 116
      { lower := 148955, upper := 149039, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 163) (r := 54) (s := 116) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_good226_checked
