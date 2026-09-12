import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row067B64.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer003_pairs002 :
    row067_layer003_block002.all (fun I => row067_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer003_pairs003 :
    row067_layer003_block003.all (fun I => row067_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer003_pairs004 :
    row067_layer003_block004.all (fun I => row067_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row067_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer003_chunks_eq : row067_layer003_chunks.flatten = row067_layer003_intervals := by
  rfl

theorem row067_layer003_pairs : pairCoverCheck row067_layer003_intervals row067_bounds = true := by
  apply pairCoverCheck_of_chunks row067_layer003_chunks_eq
  intro block hblock
  simp only [row067_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row067_layer003_pairs000
  · exact row067_layer003_pairs001
  · exact row067_layer003_pairs002
  · exact row067_layer003_pairs003
  · exact row067_layer003_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer003_checked :
    coverLayerCheck row067.height row067.goods { lower := 35376, upper := 70752, M := 16 } = true := by
  exact coverLayerCheck_of_parts row067_layer003_arithmetic row067_layer003_enumeration row067_bounds_eq row067_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer004_checked :
    coverLayerCheck row067.height row067.goods { lower := 70752, upper := 141504, M := 13 } = true := by
  decide +kernel

theorem row067_layer005_checked :
    coverLayerCheck row067.height row067.goods { lower := 141504, upper := 283008, M := 11 } = true := by
  decide +kernel

theorem row067_layer006_checked :
    coverLayerCheck row067.height row067.goods { lower := 283008, upper := 566016, M := 10 } = true := by
  decide +kernel

theorem row067_layer007_checked :
    coverLayerCheck row067.height row067.goods { lower := 566016, upper := 1132032, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer008_checked :
    coverLayerCheck row067.height row067.goods { lower := 1132032, upper := 2264064, M := 7 } = true := by
  decide +kernel

theorem row067_layer009_checked :
    coverLayerCheck row067.height row067.goods { lower := 2264064, upper := 4528128, M := 6 } = true := by
  decide +kernel

theorem row067_layer010_checked :
    coverLayerCheck row067.height row067.goods { lower := 4528128, upper := 9056256, M := 5 } = true := by
  decide +kernel

theorem row067_layer011_checked :
    coverLayerCheck row067.height row067.goods { lower := 9056256, upper := 18112512, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer012_checked :
    coverLayerCheck row067.height row067.goods { lower := 18112512, upper := 36225024, M := 4 } = true := by
  decide +kernel

theorem row067_layer013_checked :
    coverLayerCheck row067.height row067.goods { lower := 36225024, upper := 72450048, M := 3 } = true := by
  decide +kernel

theorem row067_layer014_checked :
    coverLayerCheck row067.height row067.goods { lower := 72450048, upper := 144900096, M := 3 } = true := by
  decide +kernel

theorem row067_layer015_checked :
    coverLayerCheck row067.height row067.goods { lower := 144900096, upper := 289800192, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer016_checked :
    coverLayerCheck row067.height row067.goods { lower := 289800192, upper := 579600384, M := 2 } = true := by
  decide +kernel

theorem row067_layer017_checked :
    coverLayerCheck row067.height row067.goods { lower := 579600384, upper := 1159200768, M := 2 } = true := by
  decide +kernel

theorem row067_layer018_checked :
    coverLayerCheck row067.height row067.goods { lower := 1159200768, upper := 2318401536, M := 2 } = true := by
  decide +kernel

theorem row067_layer019_checked :
    coverLayerCheck row067.height row067.goods { lower := 2318401536, upper := 4636803072, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer020_checked :
    coverLayerCheck row067.height row067.goods { lower := 4636803072, upper := 9273606144, M := 1 } = true := by
  decide +kernel

theorem row067_layer021_checked :
    coverLayerCheck row067.height row067.goods { lower := 9273606144, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer021_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layers_checked :
    row067.layers.all (coverLayerCheck row067.height row067.goods) = true := by
  change row067_layers.all (coverLayerCheck row067.height row067.goods) = true
  simp only [row067_layers, List.all_cons, List.all_nil,
    row067_layer000_checked,
    row067_layer001_checked,
    row067_layer002_checked,
    row067_layer003_checked,
    row067_layer004_checked,
    row067_layer005_checked,
    row067_layer006_checked,
    row067_layer007_checked,
    row067_layer008_checked,
    row067_layer009_checked,
    row067_layer010_checked,
    row067_layer011_checked,
    row067_layer012_checked,
    row067_layer013_checked,
    row067_layer014_checked,
    row067_layer015_checked,
    row067_layer016_checked,
    row067_layer017_checked,
    row067_layer018_checked,
    row067_layer019_checked,
    row067_layer020_checked,
    row067_layer021_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_checked : finiteCoverRowCheck row067 = true := by
  simp only [finiteCoverRowCheck, row067_registered, row067_goods_checked,
    row067_small_checked, row067_layerCover_checked, row067_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i067 :
    ∀ n j : ℕ, 1 ≤ 67 ∧ 67 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 67 ≤ p ∧ p ∣ Nat.choose n 67 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row067_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i067
