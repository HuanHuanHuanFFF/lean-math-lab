import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer104_checked :
    coverLayerCheck row029.height row029.goods { lower := 16469316598165156384245168044244992, upper := 32938633196330312768490336088489984, M := 2 } = true := by
  decide +kernel

theorem row029_layer105_checked :
    coverLayerCheck row029.height row029.goods { lower := 32938633196330312768490336088489984, upper := 65877266392660625536980672176979968, M := 2 } = true := by
  decide +kernel

theorem row029_layer106_checked :
    coverLayerCheck row029.height row029.goods { lower := 65877266392660625536980672176979968, upper := 131754532785321251073961344353959936, M := 2 } = true := by
  decide +kernel

theorem row029_layer107_checked :
    coverLayerCheck row029.height row029.goods { lower := 131754532785321251073961344353959936, upper := 263509065570642502147922688707919872, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer107_checked
