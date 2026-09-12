import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row076Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good272_checked :
    goodSegmentCheck 76 25 52
      { lower := 85291, upper := 85334, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good273_checked :
    goodSegmentCheck 76 25 52
      { lower := 85335, upper := 85366, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good274_checked :
    goodSegmentCheck 76 25 52
      { lower := 85697, upper := 85758, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good275_checked :
    goodSegmentCheck 76 25 52
      { lower := 137842, upper := 137856, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good275_checked
