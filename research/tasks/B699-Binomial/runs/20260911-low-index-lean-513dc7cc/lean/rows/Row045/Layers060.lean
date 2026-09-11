import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row045Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layer060_checked :
    coverLayerCheck row045.height row045.goods { lower := 2282784579121557012480, upper := 4565569158243114024960, M := 5 } = true := by
  decide +kernel

theorem row045_layer061_checked :
    coverLayerCheck row045.height row045.goods { lower := 4565569158243114024960, upper := 9131138316486228049920, M := 5 } = true := by
  decide +kernel

theorem row045_layer062_checked :
    coverLayerCheck row045.height row045.goods { lower := 9131138316486228049920, upper := 18262276632972456099840, M := 5 } = true := by
  decide +kernel

theorem row045_layer063_checked :
    coverLayerCheck row045.height row045.goods { lower := 18262276632972456099840, upper := 36524553265944912199680, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer063_checked
