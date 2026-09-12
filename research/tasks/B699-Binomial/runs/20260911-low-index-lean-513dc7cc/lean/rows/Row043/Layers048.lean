import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row043Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row043_layer048_checked :
    coverLayerCheck row043.height row043.goods { lower := 508343807939444736, upper := 1016687615878889472, M := 3 } = true := by
  decide +kernel

theorem row043_layer049_checked :
    coverLayerCheck row043.height row043.goods { lower := 1016687615878889472, upper := 2033375231757778944, M := 3 } = true := by
  decide +kernel

theorem row043_layer050_checked :
    coverLayerCheck row043.height row043.goods { lower := 2033375231757778944, upper := 4066750463515557888, M := 2 } = true := by
  decide +kernel

theorem row043_layer051_checked :
    coverLayerCheck row043.height row043.goods { lower := 4066750463515557888, upper := 8133500927031115776, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer051_checked
