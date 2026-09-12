import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row045Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layer044_checked :
    coverLayerCheck row045.height row045.goods { lower := 34832528367943680, upper := 69665056735887360, M := 9 } = true := by
  decide +kernel

theorem row045_layer045_checked :
    coverLayerCheck row045.height row045.goods { lower := 69665056735887360, upper := 139330113471774720, M := 9 } = true := by
  decide +kernel

theorem row045_layer046_checked :
    coverLayerCheck row045.height row045.goods { lower := 139330113471774720, upper := 278660226943549440, M := 8 } = true := by
  decide +kernel

theorem row045_layer047_checked :
    coverLayerCheck row045.height row045.goods { lower := 278660226943549440, upper := 557320453887098880, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer047_checked
