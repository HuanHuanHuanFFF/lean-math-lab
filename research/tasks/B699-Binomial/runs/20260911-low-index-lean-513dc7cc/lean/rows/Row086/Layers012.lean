import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row086Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer012_checked :
    coverLayerCheck row086.height row086.goods { lower := 29941760, upper := 59883520, M := 4 } = true := by
  decide +kernel

theorem row086_layer013_checked :
    coverLayerCheck row086.height row086.goods { lower := 59883520, upper := 119767040, M := 4 } = true := by
  decide +kernel

theorem row086_layer014_checked :
    coverLayerCheck row086.height row086.goods { lower := 119767040, upper := 239534080, M := 3 } = true := by
  decide +kernel

theorem row086_layer015_checked :
    coverLayerCheck row086.height row086.goods { lower := 239534080, upper := 479068160, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer015_checked
