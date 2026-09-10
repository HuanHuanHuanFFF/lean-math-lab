import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer082Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer082Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer082Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer082_checked :
    coverLayerCheck row035.height row035.goods { lower := 5754486901365634871601397760, upper := 11508973802731269743202795520, M := 6 } = true := by
  exact coverLayerCheck_of_parts row035_layer082_arithmetic row035_layer082_enumeration row035_bounds_eq row035_layer082_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer082_checked
