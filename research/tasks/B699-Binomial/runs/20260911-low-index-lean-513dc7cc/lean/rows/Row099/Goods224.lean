import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row099Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_good224_checked :
    goodSegmentCheck 99 32 69
      { lower := 68651, upper := 68688, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good225_checked :
    goodSegmentCheck 99 32 69
      { lower := 68921, upper := 68988, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row099_good226_checked :
    goodSegmentCheck 99 32 69
      { lower := 148955, upper := 148975, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 99) (r := 32) (s := 69) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_good226_checked
