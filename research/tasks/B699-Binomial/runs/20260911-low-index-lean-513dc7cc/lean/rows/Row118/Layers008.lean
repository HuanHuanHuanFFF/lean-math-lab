import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row118Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer008_checked :
    coverLayerCheck row118.height row118.goods { lower := 3534336, upper := 7068672, M := 5 } = true := by
  decide +kernel

theorem row118_layer009_checked :
    coverLayerCheck row118.height row118.goods { lower := 7068672, upper := 14137344, M := 4 } = true := by
  decide +kernel

theorem row118_layer010_checked :
    coverLayerCheck row118.height row118.goods { lower := 14137344, upper := 28274688, M := 3 } = true := by
  decide +kernel

theorem row118_layer011_checked :
    coverLayerCheck row118.height row118.goods { lower := 28274688, upper := 56549376, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer011_checked
