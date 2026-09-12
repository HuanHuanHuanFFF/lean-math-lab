import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row062Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer020_checked :
    coverLayerCheck row062.height row062.goods { lower := 3965714432, upper := 7931428864, M := 6 } = true := by
  decide +kernel

theorem row062_layer021_checked :
    coverLayerCheck row062.height row062.goods { lower := 7931428864, upper := 15862857728, M := 5 } = true := by
  decide +kernel

theorem row062_layer022_checked :
    coverLayerCheck row062.height row062.goods { lower := 15862857728, upper := 31725715456, M := 5 } = true := by
  decide +kernel

theorem row062_layer023_checked :
    coverLayerCheck row062.height row062.goods { lower := 31725715456, upper := 63451430912, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer023_checked
