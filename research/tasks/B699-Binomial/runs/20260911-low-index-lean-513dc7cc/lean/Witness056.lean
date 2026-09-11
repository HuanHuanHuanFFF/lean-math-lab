import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_witness056_checked :
    goodSegmentCheck 29 9 19
      { lower := 1356, upper := 1356, witness := RowWitness.largeDivisor 1815068943375751502988867192965646653087223540945133 } = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_witness056_checked
