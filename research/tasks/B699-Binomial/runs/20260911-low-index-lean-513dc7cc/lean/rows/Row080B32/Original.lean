import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row080B32.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row080B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer007_chunks_eq : row080_layer007_chunks.flatten = row080_layer007_intervals := by
  rfl

theorem row080_layer007_pairs : pairCoverCheck row080_layer007_intervals row080_bounds = true := by
  apply pairCoverCheck_of_chunks row080_layer007_chunks_eq
  intro block hblock
  simp only [row080_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row080_layer007_pairs000
  · exact row080_layer007_pairs001
  · exact row080_layer007_pairs002
  · exact row080_layer007_pairs003
  · exact row080_layer007_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer007_checked :
    coverLayerCheck row080.height row080.goods { lower := 808960, upper := 1617920, M := 12 } = true := by
  exact coverLayerCheck_of_parts row080_layer007_arithmetic row080_layer007_enumeration row080_bounds_eq row080_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer004_checked :
    coverLayerCheck row080.height row080.goods { lower := 101120, upper := 202240, M := 18 } = true := by
  decide +kernel

theorem row080_layer006_checked :
    coverLayerCheck row080.height row080.goods { lower := 404480, upper := 808960, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer008_checked :
    coverLayerCheck row080.height row080.goods { lower := 1617920, upper := 3235840, M := 10 } = true := by
  decide +kernel

theorem row080_layer009_checked :
    coverLayerCheck row080.height row080.goods { lower := 3235840, upper := 6471680, M := 9 } = true := by
  decide +kernel

theorem row080_layer010_checked :
    coverLayerCheck row080.height row080.goods { lower := 6471680, upper := 12943360, M := 8 } = true := by
  decide +kernel

theorem row080_layer011_checked :
    coverLayerCheck row080.height row080.goods { lower := 12943360, upper := 25886720, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer012_checked :
    coverLayerCheck row080.height row080.goods { lower := 25886720, upper := 51773440, M := 6 } = true := by
  decide +kernel

theorem row080_layer013_checked :
    coverLayerCheck row080.height row080.goods { lower := 51773440, upper := 103546880, M := 5 } = true := by
  decide +kernel

theorem row080_layer014_checked :
    coverLayerCheck row080.height row080.goods { lower := 103546880, upper := 207093760, M := 5 } = true := by
  decide +kernel

theorem row080_layer015_checked :
    coverLayerCheck row080.height row080.goods { lower := 207093760, upper := 414187520, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer016_checked :
    coverLayerCheck row080.height row080.goods { lower := 414187520, upper := 828375040, M := 4 } = true := by
  decide +kernel

theorem row080_layer017_checked :
    coverLayerCheck row080.height row080.goods { lower := 828375040, upper := 1656750080, M := 3 } = true := by
  decide +kernel

theorem row080_layer018_checked :
    coverLayerCheck row080.height row080.goods { lower := 1656750080, upper := 3313500160, M := 3 } = true := by
  decide +kernel

theorem row080_layer019_checked :
    coverLayerCheck row080.height row080.goods { lower := 3313500160, upper := 6627000320, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer020_checked :
    coverLayerCheck row080.height row080.goods { lower := 6627000320, upper := 13254000640, M := 2 } = true := by
  decide +kernel

theorem row080_layer021_checked :
    coverLayerCheck row080.height row080.goods { lower := 13254000640, upper := 26508001280, M := 2 } = true := by
  decide +kernel

theorem row080_layer022_checked :
    coverLayerCheck row080.height row080.goods { lower := 26508001280, upper := 53016002560, M := 2 } = true := by
  decide +kernel

theorem row080_layer023_checked :
    coverLayerCheck row080.height row080.goods { lower := 53016002560, upper := 106032005120, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer024_checked :
    coverLayerCheck row080.height row080.goods { lower := 106032005120, upper := 212064010240, M := 2 } = true := by
  decide +kernel

theorem row080_layer025_checked :
    coverLayerCheck row080.height row080.goods { lower := 212064010240, upper := 424128020480, M := 1 } = true := by
  decide +kernel

theorem row080_layer026_checked :
    coverLayerCheck row080.height row080.goods { lower := 424128020480, upper := 848256040960, M := 1 } = true := by
  decide +kernel

theorem row080_layer027_checked :
    coverLayerCheck row080.height row080.goods { lower := 848256040960, upper := 1000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layers_checked :
    row080.layers.all (coverLayerCheck row080.height row080.goods) = true := by
  change row080_layers.all (coverLayerCheck row080.height row080.goods) = true
  simp only [row080_layers, List.all_cons, List.all_nil,
    row080_layer000_checked,
    row080_layer001_checked,
    row080_layer002_checked,
    row080_layer003_checked,
    row080_layer004_checked,
    row080_layer005_checked,
    row080_layer006_checked,
    row080_layer007_checked,
    row080_layer008_checked,
    row080_layer009_checked,
    row080_layer010_checked,
    row080_layer011_checked,
    row080_layer012_checked,
    row080_layer013_checked,
    row080_layer014_checked,
    row080_layer015_checked,
    row080_layer016_checked,
    row080_layer017_checked,
    row080_layer018_checked,
    row080_layer019_checked,
    row080_layer020_checked,
    row080_layer021_checked,
    row080_layer022_checked,
    row080_layer023_checked,
    row080_layer024_checked,
    row080_layer025_checked,
    row080_layer026_checked,
    row080_layer027_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_checked : finiteCoverRowCheck row080 = true := by
  simp only [finiteCoverRowCheck, row080_registered, row080_goods_checked,
    row080_small_checked, row080_layerCover_checked, row080_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i080 :
    ∀ n j : ℕ, 1 ≤ 80 ∧ 80 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 80 ≤ p ∧ p ∣ Nat.choose n 80 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row080_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i080
