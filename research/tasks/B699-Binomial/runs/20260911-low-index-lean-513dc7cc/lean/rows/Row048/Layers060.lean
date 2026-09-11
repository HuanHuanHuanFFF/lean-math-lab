import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row048Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer060_checked :
    coverLayerCheck row048.height row048.goods { lower := 2600990914393046777856, upper := 5201981828786093555712, M := 6 } = true := by
  decide +kernel

theorem row048_layer061_checked :
    coverLayerCheck row048.height row048.goods { lower := 5201981828786093555712, upper := 10403963657572187111424, M := 6 } = true := by
  decide +kernel

theorem row048_layer062_checked :
    coverLayerCheck row048.height row048.goods { lower := 10403963657572187111424, upper := 20807927315144374222848, M := 6 } = true := by
  decide +kernel

theorem row048_layer063_checked :
    coverLayerCheck row048.height row048.goods { lower := 20807927315144374222848, upper := 41615854630288748445696, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer063_checked
