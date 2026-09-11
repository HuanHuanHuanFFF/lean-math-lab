import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer112_checked :
    coverLayerCheck row035.height row035.goods { lower := 6178833261656444877951290631771914240, upper := 12357666523312889755902581263543828480, M := 3 } = true := by
  decide +kernel

theorem row035_layer113_checked :
    coverLayerCheck row035.height row035.goods { lower := 12357666523312889755902581263543828480, upper := 24715333046625779511805162527087656960, M := 3 } = true := by
  decide +kernel

theorem row035_layer114_checked :
    coverLayerCheck row035.height row035.goods { lower := 24715333046625779511805162527087656960, upper := 49430666093251559023610325054175313920, M := 3 } = true := by
  decide +kernel

theorem row035_layer115_checked :
    coverLayerCheck row035.height row035.goods { lower := 49430666093251559023610325054175313920, upper := 98861332186503118047220650108350627840, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer115_checked
