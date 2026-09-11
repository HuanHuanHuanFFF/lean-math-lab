import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer080_checked :
    coverLayerCheck row035.height row035.goods { lower := 1438621725341408717900349440, upper := 2877243450682817435800698880, M := 6 } = true := by
  decide +kernel

theorem row035_layer081_checked :
    coverLayerCheck row035.height row035.goods { lower := 2877243450682817435800698880, upper := 5754486901365634871601397760, M := 6 } = true := by
  decide +kernel

theorem row035_layer082_checked :
    coverLayerCheck row035.height row035.goods { lower := 5754486901365634871601397760, upper := 11508973802731269743202795520, M := 6 } = true := by
  decide +kernel

theorem row035_layer083_checked :
    coverLayerCheck row035.height row035.goods { lower := 11508973802731269743202795520, upper := 23017947605462539486405591040, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer083_checked
