import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row154Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_layer008_checked :
    coverLayerCheck row154.height row154.goods { lower := 6031872, upper := 12063744, M := 2 } = true := by
  decide +kernel

theorem row154_layer009_checked :
    coverLayerCheck row154.height row154.goods { lower := 12063744, upper := 24127488, M := 2 } = true := by
  decide +kernel

theorem row154_layer010_checked :
    coverLayerCheck row154.height row154.goods { lower := 24127488, upper := 48254976, M := 1 } = true := by
  decide +kernel

theorem row154_layer011_checked :
    coverLayerCheck row154.height row154.goods { lower := 48254976, upper := 96509952, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer011_checked
