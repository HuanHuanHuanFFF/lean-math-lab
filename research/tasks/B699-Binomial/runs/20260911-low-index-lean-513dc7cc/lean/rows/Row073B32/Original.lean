import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073B32.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073B32.Block003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer016_checked :
    coverLayerCheck row073.height row073.goods { lower := 344457216, upper := 688914432, M := 3 } = true := by
  decide +kernel

theorem row073_layer017_checked :
    coverLayerCheck row073.height row073.goods { lower := 688914432, upper := 1377828864, M := 3 } = true := by
  decide +kernel

theorem row073_layer018_checked :
    coverLayerCheck row073.height row073.goods { lower := 1377828864, upper := 2755657728, M := 3 } = true := by
  decide +kernel

theorem row073_layer019_checked :
    coverLayerCheck row073.height row073.goods { lower := 2755657728, upper := 5511315456, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer020_checked :
    coverLayerCheck row073.height row073.goods { lower := 5511315456, upper := 11022630912, M := 2 } = true := by
  decide +kernel

theorem row073_layer021_checked :
    coverLayerCheck row073.height row073.goods { lower := 11022630912, upper := 22045261824, M := 2 } = true := by
  decide +kernel

theorem row073_layer022_checked :
    coverLayerCheck row073.height row073.goods { lower := 22045261824, upper := 44090523648, M := 2 } = true := by
  decide +kernel

theorem row073_layer023_checked :
    coverLayerCheck row073.height row073.goods { lower := 44090523648, upper := 88181047296, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer024_checked :
    coverLayerCheck row073.height row073.goods { lower := 88181047296, upper := 100000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer024_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layers_checked :
    row073.layers.all (coverLayerCheck row073.height row073.goods) = true := by
  change row073_layers.all (coverLayerCheck row073.height row073.goods) = true
  simp only [row073_layers, List.all_cons, List.all_nil,
    row073_layer000_checked,
    row073_layer001_checked,
    row073_layer002_checked,
    row073_layer003_checked,
    row073_layer004_checked,
    row073_layer005_checked,
    row073_layer006_checked,
    row073_layer007_checked,
    row073_layer008_checked,
    row073_layer009_checked,
    row073_layer010_checked,
    row073_layer011_checked,
    row073_layer012_checked,
    row073_layer013_checked,
    row073_layer014_checked,
    row073_layer015_checked,
    row073_layer016_checked,
    row073_layer017_checked,
    row073_layer018_checked,
    row073_layer019_checked,
    row073_layer020_checked,
    row073_layer021_checked,
    row073_layer022_checked,
    row073_layer023_checked,
    row073_layer024_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_checked : finiteCoverRowCheck row073 = true := by
  simp only [finiteCoverRowCheck, row073_registered, row073_goods_checked,
    row073_small_checked, row073_layerCover_checked, row073_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i073 :
    ∀ n j : ℕ, 1 ≤ 73 ∧ 73 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 73 ≤ p ∧ p ∣ Nat.choose n 73 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row073_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i073
