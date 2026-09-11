import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row070Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_good208_checked :
    goodSegmentCheck 70 23 48
      { lower := 49152, upper := 49199, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good209_checked :
    goodSegmentCheck 70 23 48
      { lower := 59582, upper := 59605, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good210_checked :
    goodSegmentCheck 70 23 48
      { lower := 73205, upper := 73236, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good211_checked :
    goodSegmentCheck 70 23 48
      { lower := 137842, upper := 137850, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row070_good212_checked :
    goodSegmentCheck 70 23 48
      { lower := 327701, upper := 327749, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 70) (r := 23) (s := 48) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_good212_checked
