import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row046Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer052_checked :
    coverLayerCheck row046.height row046.goods { lower := 9322451228656926720, upper := 18644902457313853440, M := 3 } = true := by
  decide +kernel

theorem row046_layer053_checked :
    coverLayerCheck row046.height row046.goods { lower := 18644902457313853440, upper := 37289804914627706880, M := 3 } = true := by
  decide +kernel

theorem row046_layer054_checked :
    coverLayerCheck row046.height row046.goods { lower := 37289804914627706880, upper := 74579609829255413760, M := 3 } = true := by
  decide +kernel

theorem row046_layer055_checked :
    coverLayerCheck row046.height row046.goods { lower := 74579609829255413760, upper := 149159219658510827520, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer055_checked
