import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077B16.Block005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077B16.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077B16.Block004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077B16.Block001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer006_pairs004 :
    row077_layer006_block004.all (fun I => row077_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer006_chunks_eq : row077_layer006_chunks.flatten = row077_layer006_intervals := by
  rfl

theorem row077_layer006_pairs : pairCoverCheck row077_layer006_intervals row077_bounds = true := by
  apply pairCoverCheck_of_chunks row077_layer006_chunks_eq
  intro block hblock
  simp only [row077_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row077_layer006_pairs000
  · exact row077_layer006_pairs001
  · exact row077_layer006_pairs002
  · exact row077_layer006_pairs003
  · exact row077_layer006_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer006_checked :
    coverLayerCheck row077.height row077.goods { lower := 374528, upper := 749056, M := 12 } = true := by
  exact coverLayerCheck_of_parts row077_layer006_arithmetic row077_layer006_enumeration row077_bounds_eq row077_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer004_checked :
    coverLayerCheck row077.height row077.goods { lower := 93632, upper := 187264, M := 16 } = true := by
  decide +kernel

theorem row077_layer007_checked :
    coverLayerCheck row077.height row077.goods { lower := 749056, upper := 1498112, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer008_checked :
    coverLayerCheck row077.height row077.goods { lower := 1498112, upper := 2996224, M := 9 } = true := by
  decide +kernel

theorem row077_layer009_checked :
    coverLayerCheck row077.height row077.goods { lower := 2996224, upper := 5992448, M := 8 } = true := by
  decide +kernel

theorem row077_layer010_checked :
    coverLayerCheck row077.height row077.goods { lower := 5992448, upper := 11984896, M := 7 } = true := by
  decide +kernel

theorem row077_layer011_checked :
    coverLayerCheck row077.height row077.goods { lower := 11984896, upper := 23969792, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer012_checked :
    coverLayerCheck row077.height row077.goods { lower := 23969792, upper := 47939584, M := 5 } = true := by
  decide +kernel

theorem row077_layer013_checked :
    coverLayerCheck row077.height row077.goods { lower := 47939584, upper := 95879168, M := 5 } = true := by
  decide +kernel

theorem row077_layer014_checked :
    coverLayerCheck row077.height row077.goods { lower := 95879168, upper := 191758336, M := 4 } = true := by
  decide +kernel

theorem row077_layer015_checked :
    coverLayerCheck row077.height row077.goods { lower := 191758336, upper := 383516672, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer016_checked :
    coverLayerCheck row077.height row077.goods { lower := 383516672, upper := 767033344, M := 3 } = true := by
  decide +kernel

theorem row077_layer017_checked :
    coverLayerCheck row077.height row077.goods { lower := 767033344, upper := 1534066688, M := 3 } = true := by
  decide +kernel

theorem row077_layer018_checked :
    coverLayerCheck row077.height row077.goods { lower := 1534066688, upper := 3068133376, M := 2 } = true := by
  decide +kernel

theorem row077_layer019_checked :
    coverLayerCheck row077.height row077.goods { lower := 3068133376, upper := 6136266752, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer020_checked :
    coverLayerCheck row077.height row077.goods { lower := 6136266752, upper := 12272533504, M := 2 } = true := by
  decide +kernel

theorem row077_layer021_checked :
    coverLayerCheck row077.height row077.goods { lower := 12272533504, upper := 24545067008, M := 2 } = true := by
  decide +kernel

theorem row077_layer022_checked :
    coverLayerCheck row077.height row077.goods { lower := 24545067008, upper := 49090134016, M := 2 } = true := by
  decide +kernel

theorem row077_layer023_checked :
    coverLayerCheck row077.height row077.goods { lower := 49090134016, upper := 98180268032, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer024_checked :
    coverLayerCheck row077.height row077.goods { lower := 98180268032, upper := 100000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer024_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layers_checked :
    row077.layers.all (coverLayerCheck row077.height row077.goods) = true := by
  change row077_layers.all (coverLayerCheck row077.height row077.goods) = true
  simp only [row077_layers, List.all_cons, List.all_nil,
    row077_layer000_checked,
    row077_layer001_checked,
    row077_layer002_checked,
    row077_layer003_checked,
    row077_layer004_checked,
    row077_layer005_checked,
    row077_layer006_checked,
    row077_layer007_checked,
    row077_layer008_checked,
    row077_layer009_checked,
    row077_layer010_checked,
    row077_layer011_checked,
    row077_layer012_checked,
    row077_layer013_checked,
    row077_layer014_checked,
    row077_layer015_checked,
    row077_layer016_checked,
    row077_layer017_checked,
    row077_layer018_checked,
    row077_layer019_checked,
    row077_layer020_checked,
    row077_layer021_checked,
    row077_layer022_checked,
    row077_layer023_checked,
    row077_layer024_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_checked : finiteCoverRowCheck row077 = true := by
  simp only [finiteCoverRowCheck, row077_registered, row077_goods_checked,
    row077_small_checked, row077_layerCover_checked, row077_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i077 :
    ∀ n j : ℕ, 1 ≤ 77 ∧ 77 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 77 ≤ p ∧ p ∣ Nat.choose n 77 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row077_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i077
