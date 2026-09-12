import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row111Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer008_checked :
    coverLayerCheck row111.height row111.goods { lower := 3125760, upper := 6251520, M := 7 } = true := by
  decide +kernel

theorem row111_layer009_checked :
    coverLayerCheck row111.height row111.goods { lower := 6251520, upper := 12503040, M := 6 } = true := by
  decide +kernel

theorem row111_layer010_checked :
    coverLayerCheck row111.height row111.goods { lower := 12503040, upper := 25006080, M := 5 } = true := by
  decide +kernel

theorem row111_layer011_checked :
    coverLayerCheck row111.height row111.goods { lower := 25006080, upper := 50012160, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer011_checked
