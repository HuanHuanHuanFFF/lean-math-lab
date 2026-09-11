import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row052Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer020_checked :
    coverLayerCheck row052.height row052.goods { lower := 2780823552, upper := 5561647104, M := 5 } = true := by
  decide +kernel

theorem row052_layer021_checked :
    coverLayerCheck row052.height row052.goods { lower := 5561647104, upper := 11123294208, M := 4 } = true := by
  decide +kernel

theorem row052_layer022_checked :
    coverLayerCheck row052.height row052.goods { lower := 11123294208, upper := 22246588416, M := 4 } = true := by
  decide +kernel

theorem row052_layer023_checked :
    coverLayerCheck row052.height row052.goods { lower := 22246588416, upper := 44493176832, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer023_checked
