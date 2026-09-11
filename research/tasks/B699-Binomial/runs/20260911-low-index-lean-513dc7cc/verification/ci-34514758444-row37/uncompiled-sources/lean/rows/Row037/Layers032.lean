import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row037Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer032_checked :
    coverLayerCheck row037.height row037.goods { lower := 5720896438272, upper := 11441792876544, M := 4 } = true := by
  decide +kernel

theorem row037_layer033_checked :
    coverLayerCheck row037.height row037.goods { lower := 11441792876544, upper := 22883585753088, M := 3 } = true := by
  decide +kernel

theorem row037_layer034_checked :
    coverLayerCheck row037.height row037.goods { lower := 22883585753088, upper := 45767171506176, M := 3 } = true := by
  decide +kernel

theorem row037_layer035_checked :
    coverLayerCheck row037.height row037.goods { lower := 45767171506176, upper := 91534343012352, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer035_checked
