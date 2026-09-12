import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row046Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer020_checked :
    coverLayerCheck row046.height row046.goods { lower := 2170552320, upper := 4341104640, M := 13 } = true := by
  decide +kernel

theorem row046_layer021_checked :
    coverLayerCheck row046.height row046.goods { lower := 4341104640, upper := 8682209280, M := 13 } = true := by
  decide +kernel

theorem row046_layer022_checked :
    coverLayerCheck row046.height row046.goods { lower := 8682209280, upper := 17364418560, M := 12 } = true := by
  decide +kernel

theorem row046_layer023_checked :
    coverLayerCheck row046.height row046.goods { lower := 17364418560, upper := 34728837120, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer023_checked
