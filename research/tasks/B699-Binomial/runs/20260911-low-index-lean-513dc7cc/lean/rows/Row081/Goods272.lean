import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row081Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_good272_checked :
    goodSegmentCheck 81 26 56
      { lower := 85697, upper := 85763, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good273_checked :
    goodSegmentCheck 81 26 56
      { lower := 101306, upper := 101331, witness := RowWitness.topPrime 101293 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good274_checked :
    goodSegmentCheck 81 26 56
      { lower := 146410, upper := 146414, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good275_checked :
    goodSegmentCheck 81 26 56
      { lower := 148955, upper := 148957, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good276_checked :
    goodSegmentCheck 81 26 56
      { lower := 327701, upper := 327760, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good275_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good276_checked
