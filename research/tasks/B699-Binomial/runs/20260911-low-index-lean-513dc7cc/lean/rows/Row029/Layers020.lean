import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer020_checked :
    coverLayerCheck row029.height row029.goods { lower := 851443712, upper := 1702887424, M := 18 } = true := by
  decide +kernel

theorem row029_layer021_checked :
    coverLayerCheck row029.height row029.goods { lower := 1702887424, upper := 3405774848, M := 18 } = true := by
  decide +kernel

theorem row029_layer022_checked :
    coverLayerCheck row029.height row029.goods { lower := 3405774848, upper := 6811549696, M := 17 } = true := by
  decide +kernel

theorem row029_layer023_checked :
    coverLayerCheck row029.height row029.goods { lower := 6811549696, upper := 13623099392, M := 17 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer023_checked
