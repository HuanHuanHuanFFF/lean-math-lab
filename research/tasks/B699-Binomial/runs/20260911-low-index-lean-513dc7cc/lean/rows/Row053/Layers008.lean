import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row053Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer008_checked :
    coverLayerCheck row053.height row053.goods { lower := 705536, upper := 1411072, M := 12 } = true := by
  decide +kernel

theorem row053_layer009_checked :
    coverLayerCheck row053.height row053.goods { lower := 1411072, upper := 2822144, M := 11 } = true := by
  decide +kernel

theorem row053_layer010_checked :
    coverLayerCheck row053.height row053.goods { lower := 2822144, upper := 5644288, M := 10 } = true := by
  decide +kernel

theorem row053_layer011_checked :
    coverLayerCheck row053.height row053.goods { lower := 5644288, upper := 11288576, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer011_checked
