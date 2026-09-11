import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row065Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer008_checked :
    coverLayerCheck row065.height row065.goods { lower := 1064960, upper := 2129920, M := 10 } = true := by
  decide +kernel

theorem row065_layer009_checked :
    coverLayerCheck row065.height row065.goods { lower := 2129920, upper := 4259840, M := 9 } = true := by
  decide +kernel

theorem row065_layer010_checked :
    coverLayerCheck row065.height row065.goods { lower := 4259840, upper := 8519680, M := 8 } = true := by
  decide +kernel

theorem row065_layer011_checked :
    coverLayerCheck row065.height row065.goods { lower := 8519680, upper := 17039360, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer011_checked
