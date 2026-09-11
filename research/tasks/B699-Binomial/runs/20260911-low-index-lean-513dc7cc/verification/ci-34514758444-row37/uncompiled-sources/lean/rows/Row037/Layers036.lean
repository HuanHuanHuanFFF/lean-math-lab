import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row037Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer036_checked :
    coverLayerCheck row037.height row037.goods { lower := 91534343012352, upper := 183068686024704, M := 3 } = true := by
  decide +kernel

theorem row037_layer037_checked :
    coverLayerCheck row037.height row037.goods { lower := 183068686024704, upper := 366137372049408, M := 3 } = true := by
  decide +kernel

theorem row037_layer038_checked :
    coverLayerCheck row037.height row037.goods { lower := 366137372049408, upper := 732274744098816, M := 3 } = true := by
  decide +kernel

theorem row037_layer039_checked :
    coverLayerCheck row037.height row037.goods { lower := 732274744098816, upper := 1464549488197632, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer039_checked
