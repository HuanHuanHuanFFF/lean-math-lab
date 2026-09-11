import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row183Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_good256_checked :
    goodSegmentCheck 183 60 130
      { lower := 148955, upper := 149059, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good257_checked :
    goodSegmentCheck 183 60 130
      { lower := 163840, upper := 163987, witness := RowWitness.topPrime 163819 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good258_checked :
    goodSegmentCheck 183 60 130
      { lower := 195223, upper := 195294, witness := RowWitness.topPrime 195203 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good259_checked :
    goodSegmentCheck 183 60 130
      { lower := 196608, upper := 196748, witness := RowWitness.topPrime 196597 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good260_checked :
    goodSegmentCheck 183 60 130
      { lower := 229376, upper := 229509, witness := RowWitness.topPrime 229373 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row183_good261_checked :
    goodSegmentCheck 183 60 130
      { lower := 262144, upper := 262270, witness := RowWitness.topPrime 262139 } = true := by
  exact good_top_prime_checked (i := 183) (r := 60) (s := 130) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_good261_checked
