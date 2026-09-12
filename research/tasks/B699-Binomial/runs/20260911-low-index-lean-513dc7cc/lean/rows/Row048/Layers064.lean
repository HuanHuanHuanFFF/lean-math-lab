import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row048Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer064_checked :
    coverLayerCheck row048.height row048.goods { lower := 41615854630288748445696, upper := 83231709260577496891392, M := 6 } = true := by
  decide +kernel

theorem row048_layer065_checked :
    coverLayerCheck row048.height row048.goods { lower := 83231709260577496891392, upper := 166463418521154993782784, M := 5 } = true := by
  decide +kernel

theorem row048_layer066_checked :
    coverLayerCheck row048.height row048.goods { lower := 166463418521154993782784, upper := 332926837042309987565568, M := 5 } = true := by
  decide +kernel

theorem row048_layer067_checked :
    coverLayerCheck row048.height row048.goods { lower := 332926837042309987565568, upper := 665853674084619975131136, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer067_checked
