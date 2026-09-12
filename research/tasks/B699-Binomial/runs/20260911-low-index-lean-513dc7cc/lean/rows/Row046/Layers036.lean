import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row046Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer036_checked :
    coverLayerCheck row046.height row046.goods { lower := 142249316843520, upper := 284498633687040, M := 6 } = true := by
  decide +kernel

theorem row046_layer037_checked :
    coverLayerCheck row046.height row046.goods { lower := 284498633687040, upper := 568997267374080, M := 6 } = true := by
  decide +kernel

theorem row046_layer038_checked :
    coverLayerCheck row046.height row046.goods { lower := 568997267374080, upper := 1137994534748160, M := 5 } = true := by
  decide +kernel

theorem row046_layer039_checked :
    coverLayerCheck row046.height row046.goods { lower := 1137994534748160, upper := 2275989069496320, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer039_checked
