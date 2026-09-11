import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row084Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good256_checked :
    goodSegmentCheck 84 27 58
      { lower := 101306, upper := 101334, witness := RowWitness.topPrime 101293 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good257_checked :
    goodSegmentCheck 84 27 58
      { lower := 117128, upper := 117196, witness := RowWitness.topPrime 117127 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good258_checked :
    goodSegmentCheck 84 27 58
      { lower := 146410, upper := 146417, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good259_checked :
    goodSegmentCheck 84 27 58
      { lower := 148955, upper := 148960, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good260_checked :
    goodSegmentCheck 84 27 58
      { lower := 206839, upper := 206846, witness := RowWitness.topPrime 206827 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good260_checked
