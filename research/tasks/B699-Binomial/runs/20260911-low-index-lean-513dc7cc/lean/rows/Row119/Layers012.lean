import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row119Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer012_checked :
    coverLayerCheck row119.height row119.goods { lower := 57516032, upper := 115032064, M := 2 } = true := by
  decide +kernel

theorem row119_layer013_checked :
    coverLayerCheck row119.height row119.goods { lower := 115032064, upper := 230064128, M := 2 } = true := by
  decide +kernel

theorem row119_layer014_checked :
    coverLayerCheck row119.height row119.goods { lower := 230064128, upper := 460128256, M := 2 } = true := by
  decide +kernel

theorem row119_layer015_checked :
    coverLayerCheck row119.height row119.goods { lower := 460128256, upper := 920256512, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer015_checked
