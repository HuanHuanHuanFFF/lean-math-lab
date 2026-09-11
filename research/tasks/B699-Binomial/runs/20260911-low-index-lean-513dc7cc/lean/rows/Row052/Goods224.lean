import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row052Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_good224_checked :
    goodSegmentCheck 52 17 35
      { lower := 68782, upper := 68801, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good225_checked :
    goodSegmentCheck 52 17 35
      { lower := 73205, upper := 73218, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row052_good226_checked :
    goodSegmentCheck 52 17 35
      { lower := 98304, upper := 98311, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 52) (r := 17) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_good226_checked
