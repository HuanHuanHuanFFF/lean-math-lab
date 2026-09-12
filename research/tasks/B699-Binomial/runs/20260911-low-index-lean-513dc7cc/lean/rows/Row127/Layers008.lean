import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row127Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_layer008_checked :
    coverLayerCheck row127.height row127.goods { lower := 4096512, upper := 8193024, M := 2 } = true := by
  decide +kernel

theorem row127_layer009_checked :
    coverLayerCheck row127.height row127.goods { lower := 8193024, upper := 16386048, M := 2 } = true := by
  decide +kernel

theorem row127_layer010_checked :
    coverLayerCheck row127.height row127.goods { lower := 16386048, upper := 32772096, M := 1 } = true := by
  decide +kernel

theorem row127_layer011_checked :
    coverLayerCheck row127.height row127.goods { lower := 32772096, upper := 65544192, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layer011_checked
