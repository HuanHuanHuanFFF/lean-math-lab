import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row040Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row040_layer016_checked :
    coverLayerCheck row040.height row040.goods { lower := 102236160, upper := 204472320, M := 12 } = true := by
  decide +kernel

theorem row040_layer017_checked :
    coverLayerCheck row040.height row040.goods { lower := 204472320, upper := 408944640, M := 11 } = true := by
  decide +kernel

theorem row040_layer018_checked :
    coverLayerCheck row040.height row040.goods { lower := 408944640, upper := 817889280, M := 11 } = true := by
  decide +kernel

theorem row040_layer019_checked :
    coverLayerCheck row040.height row040.goods { lower := 817889280, upper := 1635778560, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer019_checked
