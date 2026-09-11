import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row052Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer024_checked :
    coverLayerCheck row052.height row052.goods { lower := 44493176832, upper := 88986353664, M := 3 } = true := by
  decide +kernel

theorem row052_layer025_checked :
    coverLayerCheck row052.height row052.goods { lower := 88986353664, upper := 177972707328, M := 3 } = true := by
  decide +kernel

theorem row052_layer026_checked :
    coverLayerCheck row052.height row052.goods { lower := 177972707328, upper := 355945414656, M := 3 } = true := by
  decide +kernel

theorem row052_layer027_checked :
    coverLayerCheck row052.height row052.goods { lower := 355945414656, upper := 711890829312, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer027_checked
