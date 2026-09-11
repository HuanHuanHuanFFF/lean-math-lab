import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row036Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_layer064_checked :
    coverLayerCheck row036.height row036.goods { lower := 23242897532874035036160, upper := 46485795065748070072320, M := 2 } = true := by
  decide +kernel

theorem row036_layer065_checked :
    coverLayerCheck row036.height row036.goods { lower := 46485795065748070072320, upper := 92971590131496140144640, M := 2 } = true := by
  decide +kernel

theorem row036_layer066_checked :
    coverLayerCheck row036.height row036.goods { lower := 92971590131496140144640, upper := 185943180262992280289280, M := 2 } = true := by
  decide +kernel

theorem row036_layer067_checked :
    coverLayerCheck row036.height row036.goods { lower := 185943180262992280289280, upper := 371886360525984560578560, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer067_checked
