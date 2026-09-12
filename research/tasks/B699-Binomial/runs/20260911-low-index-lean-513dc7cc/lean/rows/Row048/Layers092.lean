import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row048Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer092_checked :
    coverLayerCheck row048.height row048.goods { lower := 11171170914511271600689696997376, upper := 22342341829022543201379393994752, M := 3 } = true := by
  decide +kernel

theorem row048_layer093_checked :
    coverLayerCheck row048.height row048.goods { lower := 22342341829022543201379393994752, upper := 44684683658045086402758787989504, M := 2 } = true := by
  decide +kernel

theorem row048_layer094_checked :
    coverLayerCheck row048.height row048.goods { lower := 44684683658045086402758787989504, upper := 89369367316090172805517575979008, M := 2 } = true := by
  decide +kernel

theorem row048_layer095_checked :
    coverLayerCheck row048.height row048.goods { lower := 89369367316090172805517575979008, upper := 178738734632180345611035151958016, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer095_checked
