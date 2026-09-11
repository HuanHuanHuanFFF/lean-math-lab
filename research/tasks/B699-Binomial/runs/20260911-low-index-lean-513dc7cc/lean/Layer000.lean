import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer000_checked :
    coverLayerCheck row029.height row029.goods
      { lower := 812, upper := 1624, M := 33 } = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer000_checked
