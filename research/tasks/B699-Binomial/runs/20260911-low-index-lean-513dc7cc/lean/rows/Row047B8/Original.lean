import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block010
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block017
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block022
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block025
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer044_checked :
    coverLayerCheck row047.height row047.goods { lower := 38034306228027392, upper := 76068612456054784, M := 2 } = true := by
  decide +kernel

theorem row047_layer045_checked :
    coverLayerCheck row047.height row047.goods { lower := 76068612456054784, upper := 152137224912109568, M := 2 } = true := by
  decide +kernel

theorem row047_layer046_checked :
    coverLayerCheck row047.height row047.goods { lower := 152137224912109568, upper := 304274449824219136, M := 2 } = true := by
  decide +kernel

theorem row047_layer047_checked :
    coverLayerCheck row047.height row047.goods { lower := 304274449824219136, upper := 608548899648438272, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer048_checked :
    coverLayerCheck row047.height row047.goods { lower := 608548899648438272, upper := 1217097799296876544, M := 2 } = true := by
  decide +kernel

theorem row047_layer049_checked :
    coverLayerCheck row047.height row047.goods { lower := 1217097799296876544, upper := 2434195598593753088, M := 2 } = true := by
  decide +kernel

theorem row047_layer050_checked :
    coverLayerCheck row047.height row047.goods { lower := 2434195598593753088, upper := 4868391197187506176, M := 1 } = true := by
  decide +kernel

theorem row047_layer051_checked :
    coverLayerCheck row047.height row047.goods { lower := 4868391197187506176, upper := 9736782394375012352, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer051_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer052_checked :
    coverLayerCheck row047.height row047.goods { lower := 9736782394375012352, upper := 10000000000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer052_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layers_checked :
    row047.layers.all (coverLayerCheck row047.height row047.goods) = true := by
  change row047_layers.all (coverLayerCheck row047.height row047.goods) = true
  simp only [row047_layers, List.all_cons, List.all_nil,
    row047_layer000_checked,
    row047_layer001_checked,
    row047_layer002_checked,
    row047_layer003_checked,
    row047_layer004_checked,
    row047_layer005_checked,
    row047_layer006_checked,
    row047_layer007_checked,
    row047_layer008_checked,
    row047_layer009_checked,
    row047_layer010_checked,
    row047_layer011_checked,
    row047_layer012_checked,
    row047_layer013_checked,
    row047_layer014_checked,
    row047_layer015_checked,
    row047_layer016_checked,
    row047_layer017_checked,
    row047_layer018_checked,
    row047_layer019_checked,
    row047_layer020_checked,
    row047_layer021_checked,
    row047_layer022_checked,
    row047_layer023_checked,
    row047_layer024_checked,
    row047_layer025_checked,
    row047_layer026_checked,
    row047_layer027_checked,
    row047_layer028_checked,
    row047_layer029_checked,
    row047_layer030_checked,
    row047_layer031_checked,
    row047_layer032_checked,
    row047_layer033_checked,
    row047_layer034_checked,
    row047_layer035_checked,
    row047_layer036_checked,
    row047_layer037_checked,
    row047_layer038_checked,
    row047_layer039_checked,
    row047_layer040_checked,
    row047_layer041_checked,
    row047_layer042_checked,
    row047_layer043_checked,
    row047_layer044_checked,
    row047_layer045_checked,
    row047_layer046_checked,
    row047_layer047_checked,
    row047_layer048_checked,
    row047_layer049_checked,
    row047_layer050_checked,
    row047_layer051_checked,
    row047_layer052_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_checked : finiteCoverRowCheck row047 = true := by
  simp only [finiteCoverRowCheck, row047_registered, row047_goods_checked,
    row047_small_checked, row047_layerCover_checked, row047_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i047 :
    ∀ n j : ℕ, 1 ≤ 47 ∧ 47 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 47 ≤ p ∧ p ∣ Nat.choose n 47 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row047_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i047
