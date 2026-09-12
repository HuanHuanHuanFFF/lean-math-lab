import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row043Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row043_layer052_checked :
    coverLayerCheck row043.height row043.goods { lower := 8133500927031115776, upper := 16267001854062231552, M := 2 } = true := by
  decide +kernel

theorem row043_layer053_checked :
    coverLayerCheck row043.height row043.goods { lower := 16267001854062231552, upper := 32534003708124463104, M := 2 } = true := by
  decide +kernel

theorem row043_layer054_checked :
    coverLayerCheck row043.height row043.goods { lower := 32534003708124463104, upper := 65068007416248926208, M := 2 } = true := by
  decide +kernel

theorem row043_layer055_checked :
    coverLayerCheck row043.height row043.goods { lower := 65068007416248926208, upper := 130136014832497852416, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer055_checked
