import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row053Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer028_checked :
    coverLayerCheck row053.height row053.goods { lower := 739808116736, upper := 1479616233472, M := 2 } = true := by
  decide +kernel

theorem row053_layer029_checked :
    coverLayerCheck row053.height row053.goods { lower := 1479616233472, upper := 2959232466944, M := 2 } = true := by
  decide +kernel

theorem row053_layer030_checked :
    coverLayerCheck row053.height row053.goods { lower := 2959232466944, upper := 5918464933888, M := 1 } = true := by
  decide +kernel

theorem row053_layer031_checked :
    coverLayerCheck row053.height row053.goods { lower := 5918464933888, upper := 10000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer031_checked
