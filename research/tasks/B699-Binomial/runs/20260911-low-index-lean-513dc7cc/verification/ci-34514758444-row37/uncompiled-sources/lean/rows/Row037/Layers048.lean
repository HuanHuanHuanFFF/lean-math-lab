import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row037Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer048_checked :
    coverLayerCheck row037.height row037.goods { lower := 374924668978593792, upper := 749849337957187584, M := 2 } = true := by
  decide +kernel

theorem row037_layer049_checked :
    coverLayerCheck row037.height row037.goods { lower := 749849337957187584, upper := 1000000000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer049_checked
