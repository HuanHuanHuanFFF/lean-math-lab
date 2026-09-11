import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row156Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_good208_checked :
    goodSegmentCheck 156 51 111
      { lower := 73205, upper := 73322, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good209_checked :
    goodSegmentCheck 156 51 111
      { lower := 89383, upper := 89528, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good210_checked :
    goodSegmentCheck 156 51 111
      { lower := 93845, upper := 93905, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row156_good211_checked :
    goodSegmentCheck 156 51 111
      { lower := 148955, upper := 149032, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 156) (r := 51) (s := 111) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_good211_checked
