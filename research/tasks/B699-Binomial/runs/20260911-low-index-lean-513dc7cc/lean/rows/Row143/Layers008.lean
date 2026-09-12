import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row143Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer008_checked :
    coverLayerCheck row143.height row143.goods { lower := 5198336, upper := 10396672, M := 2 } = true := by
  decide +kernel

theorem row143_layer009_checked :
    coverLayerCheck row143.height row143.goods { lower := 10396672, upper := 20793344, M := 2 } = true := by
  decide +kernel

theorem row143_layer010_checked :
    coverLayerCheck row143.height row143.goods { lower := 20793344, upper := 41586688, M := 2 } = true := by
  decide +kernel

theorem row143_layer011_checked :
    coverLayerCheck row143.height row143.goods { lower := 41586688, upper := 83173376, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer011_checked
