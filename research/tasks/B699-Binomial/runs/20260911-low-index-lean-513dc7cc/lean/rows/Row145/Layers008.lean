import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row145Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_layer008_checked :
    coverLayerCheck row145.height row145.goods { lower := 5345280, upper := 10690560, M := 2 } = true := by
  decide +kernel

theorem row145_layer009_checked :
    coverLayerCheck row145.height row145.goods { lower := 10690560, upper := 21381120, M := 2 } = true := by
  decide +kernel

theorem row145_layer010_checked :
    coverLayerCheck row145.height row145.goods { lower := 21381120, upper := 42762240, M := 1 } = true := by
  decide +kernel

theorem row145_layer011_checked :
    coverLayerCheck row145.height row145.goods { lower := 42762240, upper := 85524480, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer011_checked
