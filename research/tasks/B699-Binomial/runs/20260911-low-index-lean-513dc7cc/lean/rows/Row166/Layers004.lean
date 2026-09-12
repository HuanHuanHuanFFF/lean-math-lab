import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row166Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer004_checked :
    coverLayerCheck row166.height row166.goods { lower := 438240, upper := 876480, M := 4 } = true := by
  decide +kernel

theorem row166_layer005_checked :
    coverLayerCheck row166.height row166.goods { lower := 876480, upper := 1752960, M := 3 } = true := by
  decide +kernel

theorem row166_layer006_checked :
    coverLayerCheck row166.height row166.goods { lower := 1752960, upper := 3505920, M := 2 } = true := by
  decide +kernel

theorem row166_layer007_checked :
    coverLayerCheck row166.height row166.goods { lower := 3505920, upper := 7011840, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer007_checked
