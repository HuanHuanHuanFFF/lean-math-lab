import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer108_checked :
    coverLayerCheck row035.height row035.goods { lower := 386177078853527804871955664485744640, upper := 772354157707055609743911328971489280, M := 3 } = true := by
  decide +kernel

theorem row035_layer109_checked :
    coverLayerCheck row035.height row035.goods { lower := 772354157707055609743911328971489280, upper := 1544708315414111219487822657942978560, M := 3 } = true := by
  decide +kernel

theorem row035_layer110_checked :
    coverLayerCheck row035.height row035.goods { lower := 1544708315414111219487822657942978560, upper := 3089416630828222438975645315885957120, M := 3 } = true := by
  decide +kernel

theorem row035_layer111_checked :
    coverLayerCheck row035.height row035.goods { lower := 3089416630828222438975645315885957120, upper := 6178833261656444877951290631771914240, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer111_checked
