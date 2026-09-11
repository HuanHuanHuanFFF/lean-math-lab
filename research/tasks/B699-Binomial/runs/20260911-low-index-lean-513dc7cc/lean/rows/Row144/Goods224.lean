import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row144Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_good224_checked :
    goodSegmentCheck 144 47 102
      { lower := 89383, upper := 89516, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good225_checked :
    goodSegmentCheck 144 47 102
      { lower := 93845, upper := 93893, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good226_checked :
    goodSegmentCheck 144 47 102
      { lower := 103041, upper := 103109, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good227_checked :
    goodSegmentCheck 144 47 102
      { lower := 109503, upper := 109518, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good228_checked :
    goodSegmentCheck 144 47 102
      { lower := 148955, upper := 149020, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row144_good229_checked :
    goodSegmentCheck 144 47 102
      { lower := 154568, upper := 154592, witness := RowWitness.topPrime 154543 } = true := by
  exact good_top_prime_checked (i := 144) (r := 47) (s := 102) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_good229_checked
