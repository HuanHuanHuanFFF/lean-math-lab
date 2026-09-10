import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Witness227

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_good224_checked :
    goodSegmentCheck 29 9 19
      { lower := 48020, upper := 48041, witness := RowWitness.topPrime 48017 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good225_checked :
    goodSegmentCheck 29 9 19
      { lower := 49152, upper := 49158, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good226_checked :
    goodSegmentCheck 29 9 19
      { lower := 65625, upper := 65638, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good227_checked :
    goodSegmentCheck 29 9 19
      { lower := 150903, upper := 150926, witness := RowWitness.topPrime 150901 } = true := by
  exact row029_witness227_checked


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good227_checked
