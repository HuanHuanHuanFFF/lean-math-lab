import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row048Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer108_checked :
    coverLayerCheck row048.height row048.goods { lower := 732113857053410695622799982420033536, upper := 1464227714106821391245599964840067072, M := 2 } = true := by
  decide +kernel

theorem row048_layer109_checked :
    coverLayerCheck row048.height row048.goods { lower := 1464227714106821391245599964840067072, upper := 2928455428213642782491199929680134144, M := 2 } = true := by
  decide +kernel

theorem row048_layer110_checked :
    coverLayerCheck row048.height row048.goods { lower := 2928455428213642782491199929680134144, upper := 5856910856427285564982399859360268288, M := 2 } = true := by
  decide +kernel

theorem row048_layer111_checked :
    coverLayerCheck row048.height row048.goods { lower := 5856910856427285564982399859360268288, upper := 10000000000000000000000000000000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer111_checked
