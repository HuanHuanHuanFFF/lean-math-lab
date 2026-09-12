import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row062Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer036_checked :
    coverLayerCheck row062.height row062.goods { lower := 259897061015552, upper := 519794122031104, M := 2 } = true := by
  decide +kernel

theorem row062_layer037_checked :
    coverLayerCheck row062.height row062.goods { lower := 519794122031104, upper := 1000000000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer037_checked
