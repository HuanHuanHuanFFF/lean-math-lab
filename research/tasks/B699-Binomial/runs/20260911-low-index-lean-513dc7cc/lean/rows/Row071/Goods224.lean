import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row071Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_good224_checked :
    goodSegmentCheck 71 23 49
      { lower := 48734, upper := 48738, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good225_checked :
    goodSegmentCheck 71 23 49
      { lower := 48778, upper := 48804, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good226_checked :
    goodSegmentCheck 71 23 49
      { lower := 49152, upper := 49200, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good227_checked :
    goodSegmentCheck 71 23 49
      { lower := 73205, upper := 73237, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good228_checked :
    goodSegmentCheck 71 23 49
      { lower := 73728, upper := 73765, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row071_good229_checked :
    goodSegmentCheck 71 23 49
      { lower := 137842, upper := 137851, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 71) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_good229_checked
