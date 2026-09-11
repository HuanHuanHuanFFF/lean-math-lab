import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer116_checked :
    coverLayerCheck row035.height row035.goods { lower := 98861332186503118047220650108350627840, upper := 197722664373006236094441300216701255680, M := 3 } = true := by
  decide +kernel

theorem row035_layer117_checked :
    coverLayerCheck row035.height row035.goods { lower := 197722664373006236094441300216701255680, upper := 395445328746012472188882600433402511360, M := 3 } = true := by
  decide +kernel

theorem row035_layer118_checked :
    coverLayerCheck row035.height row035.goods { lower := 395445328746012472188882600433402511360, upper := 790890657492024944377765200866805022720, M := 3 } = true := by
  decide +kernel

theorem row035_layer119_checked :
    coverLayerCheck row035.height row035.goods { lower := 790890657492024944377765200866805022720, upper := 1581781314984049888755530401733610045440, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer119_checked
