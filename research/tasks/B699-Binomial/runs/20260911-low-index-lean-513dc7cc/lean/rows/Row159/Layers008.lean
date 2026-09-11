import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row159Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_layer008_checked :
    coverLayerCheck row159.height row159.goods { lower := 6431232, upper := 12862464, M := 2 } = true := by
  decide +kernel

theorem row159_layer009_checked :
    coverLayerCheck row159.height row159.goods { lower := 12862464, upper := 25724928, M := 2 } = true := by
  decide +kernel

theorem row159_layer010_checked :
    coverLayerCheck row159.height row159.goods { lower := 25724928, upper := 51449856, M := 1 } = true := by
  decide +kernel

theorem row159_layer011_checked :
    coverLayerCheck row159.height row159.goods { lower := 51449856, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer011_checked
