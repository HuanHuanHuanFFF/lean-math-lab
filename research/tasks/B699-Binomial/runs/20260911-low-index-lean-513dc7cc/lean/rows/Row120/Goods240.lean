import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row120Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_good240_checked :
    goodSegmentCheck 120 39 84
      { lower := 95147, upper := 95167, witness := RowWitness.topPrime 95143 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good241_checked :
    goodSegmentCheck 120 39 84
      { lower := 103041, upper := 103092, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good242_checked :
    goodSegmentCheck 120 39 84
      { lower := 146410, upper := 146453, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row120_good243_checked :
    goodSegmentCheck 120 39 84
      { lower := 148955, upper := 148996, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 120) (r := 39) (s := 84) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_good243_checked
