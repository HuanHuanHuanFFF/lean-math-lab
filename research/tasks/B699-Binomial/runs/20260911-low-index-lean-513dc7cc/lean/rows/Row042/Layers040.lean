import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row042Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_layer040_checked :
    coverLayerCheck row042.height row042.goods { lower := 1893359023030272, upper := 3786718046060544, M := 9 } = true := by
  decide +kernel

theorem row042_layer041_checked :
    coverLayerCheck row042.height row042.goods { lower := 3786718046060544, upper := 7573436092121088, M := 8 } = true := by
  decide +kernel

theorem row042_layer042_checked :
    coverLayerCheck row042.height row042.goods { lower := 7573436092121088, upper := 15146872184242176, M := 8 } = true := by
  decide +kernel

theorem row042_layer043_checked :
    coverLayerCheck row042.height row042.goods { lower := 15146872184242176, upper := 30293744368484352, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer043_checked
