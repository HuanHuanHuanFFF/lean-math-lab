import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row049Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer036_checked :
    coverLayerCheck row049.height row049.goods { lower := 161628209283072, upper := 323256418566144, M := 7 } = true := by
  decide +kernel

theorem row049_layer037_checked :
    coverLayerCheck row049.height row049.goods { lower := 323256418566144, upper := 646512837132288, M := 7 } = true := by
  decide +kernel

theorem row049_layer038_checked :
    coverLayerCheck row049.height row049.goods { lower := 646512837132288, upper := 1293025674264576, M := 7 } = true := by
  decide +kernel

theorem row049_layer039_checked :
    coverLayerCheck row049.height row049.goods { lower := 1293025674264576, upper := 2586051348529152, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer039_checked
