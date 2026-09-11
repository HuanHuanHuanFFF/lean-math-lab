import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row067Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer016_checked :
    coverLayerCheck row067.height row067.goods { lower := 289800192, upper := 579600384, M := 2 } = true := by
  decide +kernel

theorem row067_layer017_checked :
    coverLayerCheck row067.height row067.goods { lower := 579600384, upper := 1159200768, M := 2 } = true := by
  decide +kernel

theorem row067_layer018_checked :
    coverLayerCheck row067.height row067.goods { lower := 1159200768, upper := 2318401536, M := 2 } = true := by
  decide +kernel

theorem row067_layer019_checked :
    coverLayerCheck row067.height row067.goods { lower := 2318401536, upper := 4636803072, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer019_checked
