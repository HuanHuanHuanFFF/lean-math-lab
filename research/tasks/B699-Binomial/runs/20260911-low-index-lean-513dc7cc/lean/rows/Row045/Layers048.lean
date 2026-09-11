import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row045Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layer048_checked :
    coverLayerCheck row045.height row045.goods { lower := 557320453887098880, upper := 1114640907774197760, M := 8 } = true := by
  decide +kernel

theorem row045_layer049_checked :
    coverLayerCheck row045.height row045.goods { lower := 1114640907774197760, upper := 2229281815548395520, M := 8 } = true := by
  decide +kernel

theorem row045_layer050_checked :
    coverLayerCheck row045.height row045.goods { lower := 2229281815548395520, upper := 4458563631096791040, M := 7 } = true := by
  decide +kernel

theorem row045_layer051_checked :
    coverLayerCheck row045.height row045.goods { lower := 4458563631096791040, upper := 8917127262193582080, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer051_checked
