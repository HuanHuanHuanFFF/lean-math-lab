import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row039Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row039_layer044_checked :
    coverLayerCheck row039.height row039.goods { lower := 26071619717824512, upper := 52143239435649024, M := 6 } = true := by
  decide +kernel

theorem row039_layer045_checked :
    coverLayerCheck row039.height row039.goods { lower := 52143239435649024, upper := 104286478871298048, M := 6 } = true := by
  decide +kernel

theorem row039_layer046_checked :
    coverLayerCheck row039.height row039.goods { lower := 104286478871298048, upper := 208572957742596096, M := 6 } = true := by
  decide +kernel

theorem row039_layer047_checked :
    coverLayerCheck row039.height row039.goods { lower := 208572957742596096, upper := 417145915485192192, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer047_checked
