import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer024_checked :
    coverLayerCheck row029.height row029.goods { lower := 13623099392, upper := 27246198784, M := 16 } = true := by
  decide +kernel

theorem row029_layer025_checked :
    coverLayerCheck row029.height row029.goods { lower := 27246198784, upper := 54492397568, M := 16 } = true := by
  decide +kernel

theorem row029_layer026_checked :
    coverLayerCheck row029.height row029.goods { lower := 54492397568, upper := 108984795136, M := 15 } = true := by
  decide +kernel

theorem row029_layer027_checked :
    coverLayerCheck row029.height row029.goods { lower := 108984795136, upper := 217969590272, M := 15 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer027_checked
