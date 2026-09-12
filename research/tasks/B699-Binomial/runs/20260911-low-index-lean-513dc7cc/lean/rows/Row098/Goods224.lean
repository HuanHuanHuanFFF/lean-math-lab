import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row098Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_good224_checked :
    goodSegmentCheck 98 32 68
      { lower := 68651, upper := 68687, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good225_checked :
    goodSegmentCheck 98 32 68
      { lower := 68921, upper := 68987, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good226_checked :
    goodSegmentCheck 98 32 68
      { lower := 73205, upper := 73264, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good227_checked :
    goodSegmentCheck 98 32 68
      { lower := 137842, upper := 137878, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good228_checked :
    goodSegmentCheck 98 32 68
      { lower := 146410, upper := 146431, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row098_good229_checked :
    goodSegmentCheck 98 32 68
      { lower := 148955, upper := 148974, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 98) (r := 32) (s := 68) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_good229_checked
