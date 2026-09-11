import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row036Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_layer060_checked :
    coverLayerCheck row036.height row036.goods { lower := 1452681095804627189760, upper := 2905362191609254379520, M := 2 } = true := by
  decide +kernel

theorem row036_layer061_checked :
    coverLayerCheck row036.height row036.goods { lower := 2905362191609254379520, upper := 5810724383218508759040, M := 2 } = true := by
  decide +kernel

theorem row036_layer062_checked :
    coverLayerCheck row036.height row036.goods { lower := 5810724383218508759040, upper := 11621448766437017518080, M := 2 } = true := by
  decide +kernel

theorem row036_layer063_checked :
    coverLayerCheck row036.height row036.goods { lower := 11621448766437017518080, upper := 23242897532874035036160, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer063_checked
