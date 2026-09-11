import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row092Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer008_checked :
    coverLayerCheck row092.height row092.goods { lower := 2143232, upper := 4286464, M := 6 } = true := by
  decide +kernel

theorem row092_layer009_checked :
    coverLayerCheck row092.height row092.goods { lower := 4286464, upper := 8572928, M := 5 } = true := by
  decide +kernel

theorem row092_layer010_checked :
    coverLayerCheck row092.height row092.goods { lower := 8572928, upper := 17145856, M := 4 } = true := by
  decide +kernel

theorem row092_layer011_checked :
    coverLayerCheck row092.height row092.goods { lower := 17145856, upper := 34291712, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer011_checked
