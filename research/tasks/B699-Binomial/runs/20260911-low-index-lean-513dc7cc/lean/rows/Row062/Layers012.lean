import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row062Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer012_checked :
    coverLayerCheck row062.height row062.goods { lower := 15491072, upper := 30982144, M := 12 } = true := by
  decide +kernel

theorem row062_layer013_checked :
    coverLayerCheck row062.height row062.goods { lower := 30982144, upper := 61964288, M := 11 } = true := by
  decide +kernel

theorem row062_layer014_checked :
    coverLayerCheck row062.height row062.goods { lower := 61964288, upper := 123928576, M := 10 } = true := by
  decide +kernel

theorem row062_layer015_checked :
    coverLayerCheck row062.height row062.goods { lower := 123928576, upper := 247857152, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer015_checked
