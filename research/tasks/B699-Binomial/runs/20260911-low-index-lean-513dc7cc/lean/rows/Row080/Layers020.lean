import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row080Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer020_checked :
    coverLayerCheck row080.height row080.goods { lower := 6627000320, upper := 13254000640, M := 2 } = true := by
  decide +kernel

theorem row080_layer021_checked :
    coverLayerCheck row080.height row080.goods { lower := 13254000640, upper := 26508001280, M := 2 } = true := by
  decide +kernel

theorem row080_layer022_checked :
    coverLayerCheck row080.height row080.goods { lower := 26508001280, upper := 53016002560, M := 2 } = true := by
  decide +kernel

theorem row080_layer023_checked :
    coverLayerCheck row080.height row080.goods { lower := 53016002560, upper := 106032005120, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer023_checked
