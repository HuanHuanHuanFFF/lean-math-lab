import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row048Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer104_checked :
    coverLayerCheck row048.height row048.goods { lower := 45757116065838168476424998901252096, upper := 91514232131676336952849997802504192, M := 2 } = true := by
  decide +kernel

theorem row048_layer105_checked :
    coverLayerCheck row048.height row048.goods { lower := 91514232131676336952849997802504192, upper := 183028464263352673905699995605008384, M := 2 } = true := by
  decide +kernel

theorem row048_layer106_checked :
    coverLayerCheck row048.height row048.goods { lower := 183028464263352673905699995605008384, upper := 366056928526705347811399991210016768, M := 2 } = true := by
  decide +kernel

theorem row048_layer107_checked :
    coverLayerCheck row048.height row048.goods { lower := 366056928526705347811399991210016768, upper := 732113857053410695622799982420033536, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer107_checked
