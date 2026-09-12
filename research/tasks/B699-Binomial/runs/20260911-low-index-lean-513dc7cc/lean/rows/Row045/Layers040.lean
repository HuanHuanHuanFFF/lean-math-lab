import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row045Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layer040_checked :
    coverLayerCheck row045.height row045.goods { lower := 2177033022996480, upper := 4354066045992960, M := 10 } = true := by
  decide +kernel

theorem row045_layer041_checked :
    coverLayerCheck row045.height row045.goods { lower := 4354066045992960, upper := 8708132091985920, M := 10 } = true := by
  decide +kernel

theorem row045_layer042_checked :
    coverLayerCheck row045.height row045.goods { lower := 8708132091985920, upper := 17416264183971840, M := 10 } = true := by
  decide +kernel

theorem row045_layer043_checked :
    coverLayerCheck row045.height row045.goods { lower := 17416264183971840, upper := 34832528367943680, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer043_checked
