import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row110Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer008_checked :
    coverLayerCheck row110.height row110.goods { lower := 3069440, upper := 6138880, M := 7 } = true := by
  decide +kernel

theorem row110_layer009_checked :
    coverLayerCheck row110.height row110.goods { lower := 6138880, upper := 12277760, M := 6 } = true := by
  decide +kernel

theorem row110_layer010_checked :
    coverLayerCheck row110.height row110.goods { lower := 12277760, upper := 24555520, M := 5 } = true := by
  decide +kernel

theorem row110_layer011_checked :
    coverLayerCheck row110.height row110.goods { lower := 24555520, upper := 49111040, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer011_checked
