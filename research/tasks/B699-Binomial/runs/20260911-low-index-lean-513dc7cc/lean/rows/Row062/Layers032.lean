import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row062Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer032_checked :
    coverLayerCheck row062.height row062.goods { lower := 16243566313472, upper := 32487132626944, M := 2 } = true := by
  decide +kernel

theorem row062_layer033_checked :
    coverLayerCheck row062.height row062.goods { lower := 32487132626944, upper := 64974265253888, M := 2 } = true := by
  decide +kernel

theorem row062_layer034_checked :
    coverLayerCheck row062.height row062.goods { lower := 64974265253888, upper := 129948530507776, M := 2 } = true := by
  decide +kernel

theorem row062_layer035_checked :
    coverLayerCheck row062.height row062.goods { lower := 129948530507776, upper := 259897061015552, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer035_checked
