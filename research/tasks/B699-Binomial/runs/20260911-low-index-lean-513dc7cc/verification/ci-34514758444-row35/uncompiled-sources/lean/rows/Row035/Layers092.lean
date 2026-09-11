import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer092_checked :
    coverLayerCheck row035.height row035.goods { lower := 5892594586998410108519831306240, upper := 11785189173996820217039662612480, M := 5 } = true := by
  decide +kernel

theorem row035_layer093_checked :
    coverLayerCheck row035.height row035.goods { lower := 11785189173996820217039662612480, upper := 23570378347993640434079325224960, M := 5 } = true := by
  decide +kernel

theorem row035_layer094_checked :
    coverLayerCheck row035.height row035.goods { lower := 23570378347993640434079325224960, upper := 47140756695987280868158650449920, M := 4 } = true := by
  decide +kernel

theorem row035_layer095_checked :
    coverLayerCheck row035.height row035.goods { lower := 47140756695987280868158650449920, upper := 94281513391974561736317300899840, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer095_checked
