import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row086Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer008_checked :
    coverLayerCheck row086.height row086.goods { lower := 1871360, upper := 3742720, M := 8 } = true := by
  decide +kernel

theorem row086_layer009_checked :
    coverLayerCheck row086.height row086.goods { lower := 3742720, upper := 7485440, M := 7 } = true := by
  decide +kernel

theorem row086_layer010_checked :
    coverLayerCheck row086.height row086.goods { lower := 7485440, upper := 14970880, M := 6 } = true := by
  decide +kernel

theorem row086_layer011_checked :
    coverLayerCheck row086.height row086.goods { lower := 14970880, upper := 29941760, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer011_checked
