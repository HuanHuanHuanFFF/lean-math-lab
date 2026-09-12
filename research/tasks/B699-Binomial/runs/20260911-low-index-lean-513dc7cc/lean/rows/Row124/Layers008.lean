import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row124Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row124_layer008_checked :
    coverLayerCheck row124.height row124.goods { lower := 3904512, upper := 7809024, M := 3 } = true := by
  decide +kernel

theorem row124_layer009_checked :
    coverLayerCheck row124.height row124.goods { lower := 7809024, upper := 15618048, M := 2 } = true := by
  decide +kernel

theorem row124_layer010_checked :
    coverLayerCheck row124.height row124.goods { lower := 15618048, upper := 31236096, M := 2 } = true := by
  decide +kernel

theorem row124_layer011_checked :
    coverLayerCheck row124.height row124.goods { lower := 31236096, upper := 62472192, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row124_layer011_checked
