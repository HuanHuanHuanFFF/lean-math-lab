import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row052Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer028_checked :
    coverLayerCheck row052.height row052.goods { lower := 711890829312, upper := 1423781658624, M := 2 } = true := by
  decide +kernel

theorem row052_layer029_checked :
    coverLayerCheck row052.height row052.goods { lower := 1423781658624, upper := 2847563317248, M := 2 } = true := by
  decide +kernel

theorem row052_layer030_checked :
    coverLayerCheck row052.height row052.goods { lower := 2847563317248, upper := 5695126634496, M := 2 } = true := by
  decide +kernel

theorem row052_layer031_checked :
    coverLayerCheck row052.height row052.goods { lower := 5695126634496, upper := 11390253268992, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer031_checked
