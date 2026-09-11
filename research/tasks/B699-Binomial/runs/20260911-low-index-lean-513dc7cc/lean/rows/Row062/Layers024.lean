import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row062Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer024_checked :
    coverLayerCheck row062.height row062.goods { lower := 63451430912, upper := 126902861824, M := 4 } = true := by
  decide +kernel

theorem row062_layer025_checked :
    coverLayerCheck row062.height row062.goods { lower := 126902861824, upper := 253805723648, M := 4 } = true := by
  decide +kernel

theorem row062_layer026_checked :
    coverLayerCheck row062.height row062.goods { lower := 253805723648, upper := 507611447296, M := 4 } = true := by
  decide +kernel

theorem row062_layer027_checked :
    coverLayerCheck row062.height row062.goods { lower := 507611447296, upper := 1015222894592, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer027_checked
