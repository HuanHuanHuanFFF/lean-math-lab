import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row103Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer012_checked :
    coverLayerCheck row103.height row103.goods { lower := 43032576, upper := 86065152, M := 2 } = true := by
  decide +kernel

theorem row103_layer013_checked :
    coverLayerCheck row103.height row103.goods { lower := 86065152, upper := 172130304, M := 2 } = true := by
  decide +kernel

theorem row103_layer014_checked :
    coverLayerCheck row103.height row103.goods { lower := 172130304, upper := 344260608, M := 1 } = true := by
  decide +kernel

theorem row103_layer015_checked :
    coverLayerCheck row103.height row103.goods { lower := 344260608, upper := 688521216, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer015_checked
