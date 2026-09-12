import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row049Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer064_checked :
    coverLayerCheck row049.height row049.goods { lower := 43386742061364865400832, upper := 86773484122729730801664, M := 2 } = true := by
  decide +kernel

theorem row049_layer065_checked :
    coverLayerCheck row049.height row049.goods { lower := 86773484122729730801664, upper := 173546968245459461603328, M := 2 } = true := by
  decide +kernel

theorem row049_layer066_checked :
    coverLayerCheck row049.height row049.goods { lower := 173546968245459461603328, upper := 347093936490918923206656, M := 2 } = true := by
  decide +kernel

theorem row049_layer067_checked :
    coverLayerCheck row049.height row049.goods { lower := 347093936490918923206656, upper := 694187872981837846413312, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer067_checked
