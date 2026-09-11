import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row036Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_layer040_checked :
    coverLayerCheck row036.height row036.goods { lower := 1385384650997760, upper := 2770769301995520, M := 6 } = true := by
  decide +kernel

theorem row036_layer041_checked :
    coverLayerCheck row036.height row036.goods { lower := 2770769301995520, upper := 5541538603991040, M := 5 } = true := by
  decide +kernel

theorem row036_layer042_checked :
    coverLayerCheck row036.height row036.goods { lower := 5541538603991040, upper := 11083077207982080, M := 5 } = true := by
  decide +kernel

theorem row036_layer043_checked :
    coverLayerCheck row036.height row036.goods { lower := 11083077207982080, upper := 22166154415964160, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer043_checked
