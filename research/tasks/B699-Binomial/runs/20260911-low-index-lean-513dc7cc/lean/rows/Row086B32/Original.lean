import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row086B32.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row086B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer006_checked :
    coverLayerCheck row086.height row086.goods { lower := 467840, upper := 935680, M := 11 } = true := by
  exact coverLayerCheck_of_parts row086_layer006_arithmetic row086_layer006_enumeration row086_bounds_eq row086_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer005_checked :
    coverLayerCheck row086.height row086.goods { lower := 233920, upper := 467840, M := 13 } = true := by
  decide +kernel

theorem row086_layer007_checked :
    coverLayerCheck row086.height row086.goods { lower := 935680, upper := 1871360, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer008_checked :
    coverLayerCheck row086.height row086.goods { lower := 1871360, upper := 3742720, M := 8 } = true := by
  decide +kernel

theorem row086_layer009_checked :
    coverLayerCheck row086.height row086.goods { lower := 3742720, upper := 7485440, M := 7 } = true := by
  decide +kernel

theorem row086_layer010_checked :
    coverLayerCheck row086.height row086.goods { lower := 7485440, upper := 14970880, M := 6 } = true := by
  decide +kernel

theorem row086_layer011_checked :
    coverLayerCheck row086.height row086.goods { lower := 14970880, upper := 29941760, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer012_checked :
    coverLayerCheck row086.height row086.goods { lower := 29941760, upper := 59883520, M := 4 } = true := by
  decide +kernel

theorem row086_layer013_checked :
    coverLayerCheck row086.height row086.goods { lower := 59883520, upper := 119767040, M := 4 } = true := by
  decide +kernel

theorem row086_layer014_checked :
    coverLayerCheck row086.height row086.goods { lower := 119767040, upper := 239534080, M := 3 } = true := by
  decide +kernel

theorem row086_layer015_checked :
    coverLayerCheck row086.height row086.goods { lower := 239534080, upper := 479068160, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer016_checked :
    coverLayerCheck row086.height row086.goods { lower := 479068160, upper := 958136320, M := 2 } = true := by
  decide +kernel

theorem row086_layer017_checked :
    coverLayerCheck row086.height row086.goods { lower := 958136320, upper := 1916272640, M := 2 } = true := by
  decide +kernel

theorem row086_layer018_checked :
    coverLayerCheck row086.height row086.goods { lower := 1916272640, upper := 3832545280, M := 2 } = true := by
  decide +kernel

theorem row086_layer019_checked :
    coverLayerCheck row086.height row086.goods { lower := 3832545280, upper := 7665090560, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer020_checked :
    coverLayerCheck row086.height row086.goods { lower := 7665090560, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer020_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layers_checked :
    row086.layers.all (coverLayerCheck row086.height row086.goods) = true := by
  change row086_layers.all (coverLayerCheck row086.height row086.goods) = true
  simp only [row086_layers, List.all_cons, List.all_nil,
    row086_layer000_checked,
    row086_layer001_checked,
    row086_layer002_checked,
    row086_layer003_checked,
    row086_layer004_checked,
    row086_layer005_checked,
    row086_layer006_checked,
    row086_layer007_checked,
    row086_layer008_checked,
    row086_layer009_checked,
    row086_layer010_checked,
    row086_layer011_checked,
    row086_layer012_checked,
    row086_layer013_checked,
    row086_layer014_checked,
    row086_layer015_checked,
    row086_layer016_checked,
    row086_layer017_checked,
    row086_layer018_checked,
    row086_layer019_checked,
    row086_layer020_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_checked : finiteCoverRowCheck row086 = true := by
  simp only [finiteCoverRowCheck, row086_registered, row086_goods_checked,
    row086_small_checked, row086_layerCover_checked, row086_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i086 :
    ∀ n j : ℕ, 1 ≤ 86 ∧ 86 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 86 ≤ p ∧ p ∣ Nat.choose n 86 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row086_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i086
