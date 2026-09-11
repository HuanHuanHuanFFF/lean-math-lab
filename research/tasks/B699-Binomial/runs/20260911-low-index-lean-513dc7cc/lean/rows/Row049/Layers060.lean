import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row049Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer060_checked :
    coverLayerCheck row049.height row049.goods { lower := 2711671378835304087552, upper := 5423342757670608175104, M := 3 } = true := by
  decide +kernel

theorem row049_layer061_checked :
    coverLayerCheck row049.height row049.goods { lower := 5423342757670608175104, upper := 10846685515341216350208, M := 2 } = true := by
  decide +kernel

theorem row049_layer062_checked :
    coverLayerCheck row049.height row049.goods { lower := 10846685515341216350208, upper := 21693371030682432700416, M := 2 } = true := by
  decide +kernel

theorem row049_layer063_checked :
    coverLayerCheck row049.height row049.goods { lower := 21693371030682432700416, upper := 43386742061364865400832, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer063_checked
