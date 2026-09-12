import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row136Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_layer008_checked :
    coverLayerCheck row136.height row136.goods { lower := 4700160, upper := 9400320, M := 2 } = true := by
  decide +kernel

theorem row136_layer009_checked :
    coverLayerCheck row136.height row136.goods { lower := 9400320, upper := 18800640, M := 2 } = true := by
  decide +kernel

theorem row136_layer010_checked :
    coverLayerCheck row136.height row136.goods { lower := 18800640, upper := 37601280, M := 1 } = true := by
  decide +kernel

theorem row136_layer011_checked :
    coverLayerCheck row136.height row136.goods { lower := 37601280, upper := 75202560, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer011_checked
