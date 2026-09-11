import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row112Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer016_checked :
    coverLayerCheck row112.height row112.goods { lower := 814743552, upper := 1629487104, M := 2 } = true := by
  decide +kernel

theorem row112_layer017_checked :
    coverLayerCheck row112.height row112.goods { lower := 1629487104, upper := 3258974208, M := 1 } = true := by
  decide +kernel

theorem row112_layer018_checked :
    coverLayerCheck row112.height row112.goods { lower := 3258974208, upper := 6517948416, M := 1 } = true := by
  decide +kernel

theorem row112_layer019_checked :
    coverLayerCheck row112.height row112.goods { lower := 6517948416, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer019_checked
