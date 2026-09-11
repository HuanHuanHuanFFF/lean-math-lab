import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer120_checked :
    coverLayerCheck row035.height row035.goods { lower := 1581781314984049888755530401733610045440, upper := 3163562629968099777511060803467220090880, M := 3 } = true := by
  decide +kernel

theorem row035_layer121_checked :
    coverLayerCheck row035.height row035.goods { lower := 3163562629968099777511060803467220090880, upper := 6327125259936199555022121606934440181760, M := 3 } = true := by
  decide +kernel

theorem row035_layer122_checked :
    coverLayerCheck row035.height row035.goods { lower := 6327125259936199555022121606934440181760, upper := 12654250519872399110044243213868880363520, M := 3 } = true := by
  decide +kernel

theorem row035_layer123_checked :
    coverLayerCheck row035.height row035.goods { lower := 12654250519872399110044243213868880363520, upper := 25308501039744798220088486427737760727040, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer123_checked
