import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row050Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer048_checked :
    coverLayerCheck row050.height row050.goods { lower := 689613692941107200, upper := 1379227385882214400, M := 2 } = true := by
  decide +kernel

theorem row050_layer049_checked :
    coverLayerCheck row050.height row050.goods { lower := 1379227385882214400, upper := 2758454771764428800, M := 2 } = true := by
  decide +kernel

theorem row050_layer050_checked :
    coverLayerCheck row050.height row050.goods { lower := 2758454771764428800, upper := 5516909543528857600, M := 2 } = true := by
  decide +kernel

theorem row050_layer051_checked :
    coverLayerCheck row050.height row050.goods { lower := 5516909543528857600, upper := 11033819087057715200, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer051_checked
