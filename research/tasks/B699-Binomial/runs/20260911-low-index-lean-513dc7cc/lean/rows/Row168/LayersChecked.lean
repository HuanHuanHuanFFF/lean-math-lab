import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row168.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row168.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row168.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layers_checked :
    row168.layers.all (coverLayerCheck row168.height row168.goods) = true := by
  change row168_layers.all (coverLayerCheck row168.height row168.goods) = true
  simp only [row168_layers, List.all_cons, List.all_nil,
    row168_layer000_checked,
    row168_layer001_checked,
    row168_layer002_checked,
    row168_layer003_checked,
    row168_layer004_checked,
    row168_layer005_checked,
    row168_layer006_checked,
    row168_layer007_checked,
    row168_layer008_checked,
    row168_layer009_checked,
    row168_layer010_checked,
    row168_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layers_checked
