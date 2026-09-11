import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row056Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer008_checked :
    coverLayerCheck row056.height row056.goods { lower := 788480, upper := 1576960, M := 14 } = true := by
  decide +kernel

theorem row056_layer009_checked :
    coverLayerCheck row056.height row056.goods { lower := 1576960, upper := 3153920, M := 12 } = true := by
  decide +kernel

theorem row056_layer010_checked :
    coverLayerCheck row056.height row056.goods { lower := 3153920, upper := 6307840, M := 11 } = true := by
  decide +kernel

theorem row056_layer011_checked :
    coverLayerCheck row056.height row056.goods { lower := 6307840, upper := 12615680, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer011_checked
