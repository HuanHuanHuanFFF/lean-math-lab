import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row062Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer028_checked :
    coverLayerCheck row062.height row062.goods { lower := 1015222894592, upper := 2030445789184, M := 3 } = true := by
  decide +kernel

theorem row062_layer029_checked :
    coverLayerCheck row062.height row062.goods { lower := 2030445789184, upper := 4060891578368, M := 3 } = true := by
  decide +kernel

theorem row062_layer030_checked :
    coverLayerCheck row062.height row062.goods { lower := 4060891578368, upper := 8121783156736, M := 3 } = true := by
  decide +kernel

theorem row062_layer031_checked :
    coverLayerCheck row062.height row062.goods { lower := 8121783156736, upper := 16243566313472, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer031_checked
