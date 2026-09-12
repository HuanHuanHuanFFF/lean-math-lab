import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row174.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row174.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row174.Layers008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row174_layers_checked :
    row174.layers.all (coverLayerCheck row174.height row174.goods) = true := by
  change row174_layers.all (coverLayerCheck row174.height row174.goods) = true
  simp only [row174_layers, List.all_cons, List.all_nil,
    row174_layer000_checked,
    row174_layer001_checked,
    row174_layer002_checked,
    row174_layer003_checked,
    row174_layer004_checked,
    row174_layer005_checked,
    row174_layer006_checked,
    row174_layer007_checked,
    row174_layer008_checked,
    row174_layer009_checked,
    row174_layer010_checked,
    row174_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row174_layers_checked
