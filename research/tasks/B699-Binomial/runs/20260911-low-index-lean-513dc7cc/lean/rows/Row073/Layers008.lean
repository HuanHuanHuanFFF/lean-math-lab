import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row073Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer008_checked :
    coverLayerCheck row073.height row073.goods { lower := 1345536, upper := 2691072, M := 10 } = true := by
  decide +kernel

theorem row073_layer009_checked :
    coverLayerCheck row073.height row073.goods { lower := 2691072, upper := 5382144, M := 8 } = true := by
  decide +kernel

theorem row073_layer010_checked :
    coverLayerCheck row073.height row073.goods { lower := 5382144, upper := 10764288, M := 7 } = true := by
  decide +kernel

theorem row073_layer011_checked :
    coverLayerCheck row073.height row073.goods { lower := 10764288, upper := 21528576, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer011_checked
