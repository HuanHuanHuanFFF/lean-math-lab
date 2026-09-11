import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row046Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer024_checked :
    coverLayerCheck row046.height row046.goods { lower := 34728837120, upper := 69457674240, M := 11 } = true := by
  decide +kernel

theorem row046_layer025_checked :
    coverLayerCheck row046.height row046.goods { lower := 69457674240, upper := 138915348480, M := 10 } = true := by
  decide +kernel

theorem row046_layer026_checked :
    coverLayerCheck row046.height row046.goods { lower := 138915348480, upper := 277830696960, M := 10 } = true := by
  decide +kernel

theorem row046_layer027_checked :
    coverLayerCheck row046.height row046.goods { lower := 277830696960, upper := 555661393920, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer027_checked
