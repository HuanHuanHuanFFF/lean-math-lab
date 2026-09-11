import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer060_checked :
    coverLayerCheck row029.height row029.goods { lower := 936172261740759744512, upper := 1872344523481519489024, M := 6 } = true := by
  decide +kernel

theorem row029_layer061_checked :
    coverLayerCheck row029.height row029.goods { lower := 1872344523481519489024, upper := 3744689046963038978048, M := 6 } = true := by
  decide +kernel

theorem row029_layer062_checked :
    coverLayerCheck row029.height row029.goods { lower := 3744689046963038978048, upper := 7489378093926077956096, M := 6 } = true := by
  decide +kernel

theorem row029_layer063_checked :
    coverLayerCheck row029.height row029.goods { lower := 7489378093926077956096, upper := 14978756187852155912192, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer063_checked
