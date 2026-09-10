import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row037Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer000_checked :
    coverLayerCheck row037.height row037.goods { lower := 1332, upper := 2664, M := 30 } = true := by
  decide +kernel

theorem row037_layer001_checked :
    coverLayerCheck row037.height row037.goods { lower := 2664, upper := 5328, M := 28 } = true := by
  decide +kernel

theorem row037_layer002_checked :
    coverLayerCheck row037.height row037.goods { lower := 5328, upper := 10656, M := 26 } = true := by
  decide +kernel

theorem row037_layer003_checked :
    coverLayerCheck row037.height row037.goods { lower := 10656, upper := 21312, M := 24 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer003_checked
