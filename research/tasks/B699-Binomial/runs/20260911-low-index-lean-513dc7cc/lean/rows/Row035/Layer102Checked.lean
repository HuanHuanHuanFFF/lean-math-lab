import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer102Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer102Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer102Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer102_checked :
    coverLayerCheck row035.height row035.goods { lower := 6034016857086371951124307257589760, upper := 12068033714172743902248614515179520, M := 4 } = true := by
  exact coverLayerCheck_of_parts row035_layer102_arithmetic row035_layer102_enumeration row035_bounds_eq row035_layer102_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer102_checked
