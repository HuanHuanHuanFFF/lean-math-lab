import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row101Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer008_checked :
    coverLayerCheck row101.height row101.goods { lower := 2585600, upper := 5171200, M := 3 } = true := by
  decide +kernel

theorem row101_layer009_checked :
    coverLayerCheck row101.height row101.goods { lower := 5171200, upper := 10342400, M := 3 } = true := by
  decide +kernel

theorem row101_layer010_checked :
    coverLayerCheck row101.height row101.goods { lower := 10342400, upper := 20684800, M := 2 } = true := by
  decide +kernel

theorem row101_layer011_checked :
    coverLayerCheck row101.height row101.goods { lower := 20684800, upper := 41369600, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer011_checked
