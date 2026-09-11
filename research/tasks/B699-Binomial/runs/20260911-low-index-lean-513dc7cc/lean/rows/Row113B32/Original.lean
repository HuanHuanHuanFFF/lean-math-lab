import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113B32.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer016_checked :
    coverLayerCheck row113.height row113.goods { lower := 829423616, upper := 1000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layers_checked :
    row113.layers.all (coverLayerCheck row113.height row113.goods) = true := by
  change row113_layers.all (coverLayerCheck row113.height row113.goods) = true
  simp only [row113_layers, List.all_cons, List.all_nil,
    row113_layer000_checked,
    row113_layer001_checked,
    row113_layer002_checked,
    row113_layer003_checked,
    row113_layer004_checked,
    row113_layer005_checked,
    row113_layer006_checked,
    row113_layer007_checked,
    row113_layer008_checked,
    row113_layer009_checked,
    row113_layer010_checked,
    row113_layer011_checked,
    row113_layer012_checked,
    row113_layer013_checked,
    row113_layer014_checked,
    row113_layer015_checked,
    row113_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_checked : finiteCoverRowCheck row113 = true := by
  simp only [finiteCoverRowCheck, row113_registered, row113_goods_checked,
    row113_small_checked, row113_layerCover_checked, row113_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i113 :
    ∀ n j : ℕ, 1 ≤ 113 ∧ 113 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 113 ≤ p ∧ p ∣ Nat.choose n 113 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row113_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i113
