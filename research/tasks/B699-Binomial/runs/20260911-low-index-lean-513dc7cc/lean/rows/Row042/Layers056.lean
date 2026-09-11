import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row042Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_layer056_checked :
    coverLayerCheck row042.height row042.goods { lower := 124083176933311905792, upper := 248166353866623811584, M := 5 } = true := by
  decide +kernel

theorem row042_layer057_checked :
    coverLayerCheck row042.height row042.goods { lower := 248166353866623811584, upper := 496332707733247623168, M := 5 } = true := by
  decide +kernel

theorem row042_layer058_checked :
    coverLayerCheck row042.height row042.goods { lower := 496332707733247623168, upper := 992665415466495246336, M := 4 } = true := by
  decide +kernel

theorem row042_layer059_checked :
    coverLayerCheck row042.height row042.goods { lower := 992665415466495246336, upper := 1985330830932990492672, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer059_checked
