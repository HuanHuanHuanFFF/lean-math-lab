import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row087B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row087B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer003_pairs000 :
    row087_layer003_block000.all (fun I => row087_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer003_pairs001 :
    row087_layer003_block001.all (fun I => row087_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer003_pairs002 :
    row087_layer003_block002.all (fun I => row087_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer003_pairs003 :
    row087_layer003_block003.all (fun I => row087_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer003_pairs004 :
    row087_layer003_block004.all (fun I => row087_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer003_pairs005 :
    row087_layer003_block005.all (fun I => row087_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer003_chunks_eq : row087_layer003_chunks.flatten = row087_layer003_intervals := by
  rfl

theorem row087_layer003_pairs : pairCoverCheck row087_layer003_intervals row087_bounds = true := by
  apply pairCoverCheck_of_chunks row087_layer003_chunks_eq
  intro block hblock
  simp only [row087_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row087_layer003_pairs000
  · exact row087_layer003_pairs001
  · exact row087_layer003_pairs002
  · exact row087_layer003_pairs003
  · exact row087_layer003_pairs004
  · exact row087_layer003_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer003_checked :
    coverLayerCheck row087.height row087.goods { lower := 59856, upper := 119712, M := 16 } = true := by
  exact coverLayerCheck_of_parts row087_layer003_arithmetic row087_layer003_enumeration row087_bounds_eq row087_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer004_checked :
    coverLayerCheck row087.height row087.goods { lower := 119712, upper := 239424, M := 13 } = true := by
  decide +kernel

theorem row087_layer005_checked :
    coverLayerCheck row087.height row087.goods { lower := 239424, upper := 478848, M := 11 } = true := by
  decide +kernel

theorem row087_layer006_checked :
    coverLayerCheck row087.height row087.goods { lower := 478848, upper := 957696, M := 9 } = true := by
  decide +kernel

theorem row087_layer007_checked :
    coverLayerCheck row087.height row087.goods { lower := 957696, upper := 1915392, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer008_checked :
    coverLayerCheck row087.height row087.goods { lower := 1915392, upper := 3830784, M := 7 } = true := by
  decide +kernel

theorem row087_layer009_checked :
    coverLayerCheck row087.height row087.goods { lower := 3830784, upper := 7661568, M := 6 } = true := by
  decide +kernel

theorem row087_layer010_checked :
    coverLayerCheck row087.height row087.goods { lower := 7661568, upper := 15323136, M := 5 } = true := by
  decide +kernel

theorem row087_layer011_checked :
    coverLayerCheck row087.height row087.goods { lower := 15323136, upper := 30646272, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer012_checked :
    coverLayerCheck row087.height row087.goods { lower := 30646272, upper := 61292544, M := 4 } = true := by
  decide +kernel

theorem row087_layer013_checked :
    coverLayerCheck row087.height row087.goods { lower := 61292544, upper := 122585088, M := 3 } = true := by
  decide +kernel

theorem row087_layer014_checked :
    coverLayerCheck row087.height row087.goods { lower := 122585088, upper := 245170176, M := 3 } = true := by
  decide +kernel

theorem row087_layer015_checked :
    coverLayerCheck row087.height row087.goods { lower := 245170176, upper := 490340352, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer016_checked :
    coverLayerCheck row087.height row087.goods { lower := 490340352, upper := 980680704, M := 2 } = true := by
  decide +kernel

theorem row087_layer017_checked :
    coverLayerCheck row087.height row087.goods { lower := 980680704, upper := 1961361408, M := 2 } = true := by
  decide +kernel

theorem row087_layer018_checked :
    coverLayerCheck row087.height row087.goods { lower := 1961361408, upper := 3922722816, M := 2 } = true := by
  decide +kernel

theorem row087_layer019_checked :
    coverLayerCheck row087.height row087.goods { lower := 3922722816, upper := 7845445632, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer020_checked :
    coverLayerCheck row087.height row087.goods { lower := 7845445632, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer020_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layers_checked :
    row087.layers.all (coverLayerCheck row087.height row087.goods) = true := by
  change row087_layers.all (coverLayerCheck row087.height row087.goods) = true
  simp only [row087_layers, List.all_cons, List.all_nil,
    row087_layer000_checked,
    row087_layer001_checked,
    row087_layer002_checked,
    row087_layer003_checked,
    row087_layer004_checked,
    row087_layer005_checked,
    row087_layer006_checked,
    row087_layer007_checked,
    row087_layer008_checked,
    row087_layer009_checked,
    row087_layer010_checked,
    row087_layer011_checked,
    row087_layer012_checked,
    row087_layer013_checked,
    row087_layer014_checked,
    row087_layer015_checked,
    row087_layer016_checked,
    row087_layer017_checked,
    row087_layer018_checked,
    row087_layer019_checked,
    row087_layer020_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_checked : finiteCoverRowCheck row087 = true := by
  simp only [finiteCoverRowCheck, row087_registered, row087_goods_checked,
    row087_small_checked, row087_layerCover_checked, row087_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i087 :
    ∀ n j : ℕ, 1 ≤ 87 ∧ 87 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 87 ≤ p ∧ p ∣ Nat.choose n 87 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row087_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i087
