import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row084B16.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row084B16.Block004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row084B16.Block001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer016_checked :
    coverLayerCheck row084.height row084.goods { lower := 456916992, upper := 913833984, M := 4 } = true := by
  decide +kernel

theorem row084_layer017_checked :
    coverLayerCheck row084.height row084.goods { lower := 913833984, upper := 1827667968, M := 3 } = true := by
  decide +kernel

theorem row084_layer018_checked :
    coverLayerCheck row084.height row084.goods { lower := 1827667968, upper := 3655335936, M := 3 } = true := by
  decide +kernel

theorem row084_layer019_checked :
    coverLayerCheck row084.height row084.goods { lower := 3655335936, upper := 7310671872, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer020_checked :
    coverLayerCheck row084.height row084.goods { lower := 7310671872, upper := 14621343744, M := 2 } = true := by
  decide +kernel

theorem row084_layer021_checked :
    coverLayerCheck row084.height row084.goods { lower := 14621343744, upper := 29242687488, M := 2 } = true := by
  decide +kernel

theorem row084_layer022_checked :
    coverLayerCheck row084.height row084.goods { lower := 29242687488, upper := 58485374976, M := 2 } = true := by
  decide +kernel

theorem row084_layer023_checked :
    coverLayerCheck row084.height row084.goods { lower := 58485374976, upper := 100000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layers_checked :
    row084.layers.all (coverLayerCheck row084.height row084.goods) = true := by
  change row084_layers.all (coverLayerCheck row084.height row084.goods) = true
  simp only [row084_layers, List.all_cons, List.all_nil,
    row084_layer000_checked,
    row084_layer001_checked,
    row084_layer002_checked,
    row084_layer003_checked,
    row084_layer004_checked,
    row084_layer005_checked,
    row084_layer006_checked,
    row084_layer007_checked,
    row084_layer008_checked,
    row084_layer009_checked,
    row084_layer010_checked,
    row084_layer011_checked,
    row084_layer012_checked,
    row084_layer013_checked,
    row084_layer014_checked,
    row084_layer015_checked,
    row084_layer016_checked,
    row084_layer017_checked,
    row084_layer018_checked,
    row084_layer019_checked,
    row084_layer020_checked,
    row084_layer021_checked,
    row084_layer022_checked,
    row084_layer023_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_checked : finiteCoverRowCheck row084 = true := by
  simp only [finiteCoverRowCheck, row084_registered, row084_goods_checked,
    row084_small_checked, row084_layerCover_checked, row084_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i084 :
    ∀ n j : ℕ, 1 ≤ 84 ∧ 84 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 84 ≤ p ∧ p ∣ Nat.choose n 84 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row084_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i084
