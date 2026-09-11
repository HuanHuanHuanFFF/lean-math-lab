import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row128Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_layer012_checked :
    coverLayerCheck row128.height row128.goods { lower := 66584576, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer012_checked
