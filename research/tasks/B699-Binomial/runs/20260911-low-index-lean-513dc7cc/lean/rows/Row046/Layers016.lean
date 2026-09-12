import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row046Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row046.Layer017Checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer016_checked :
    coverLayerCheck row046.height row046.goods { lower := 135659520, upper := 271319040, M := 16 } = true := by
  decide +kernel

theorem row046_layer018_checked :
    coverLayerCheck row046.height row046.goods { lower := 542638080, upper := 1085276160, M := 15 } = true := by
  decide +kernel

theorem row046_layer019_checked :
    coverLayerCheck row046.height row046.goods { lower := 1085276160, upper := 2170552320, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer019_checked
