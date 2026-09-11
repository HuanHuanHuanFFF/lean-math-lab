import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row082B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row082B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer003_pairs000 :
    row082_layer003_block000.all (fun I => row082_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer003_pairs001 :
    row082_layer003_block001.all (fun I => row082_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer003_pairs002 :
    row082_layer003_block002.all (fun I => row082_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer003_pairs003 :
    row082_layer003_block003.all (fun I => row082_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer003_pairs004 :
    row082_layer003_block004.all (fun I => row082_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer003_pairs005 :
    row082_layer003_block005.all (fun I => row082_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer003_chunks_eq : row082_layer003_chunks.flatten = row082_layer003_intervals := by
  rfl

theorem row082_layer003_pairs : pairCoverCheck row082_layer003_intervals row082_bounds = true := by
  apply pairCoverCheck_of_chunks row082_layer003_chunks_eq
  intro block hblock
  simp only [row082_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row082_layer003_pairs000
  · exact row082_layer003_pairs001
  · exact row082_layer003_pairs002
  · exact row082_layer003_pairs003
  · exact row082_layer003_pairs004
  · exact row082_layer003_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer003_checked :
    coverLayerCheck row082.height row082.goods { lower := 53136, upper := 106272, M := 17 } = true := by
  exact coverLayerCheck_of_parts row082_layer003_arithmetic row082_layer003_enumeration row082_bounds_eq row082_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer004_checked :
    coverLayerCheck row082.height row082.goods { lower := 106272, upper := 212544, M := 14 } = true := by
  decide +kernel

theorem row082_layer005_checked :
    coverLayerCheck row082.height row082.goods { lower := 212544, upper := 425088, M := 12 } = true := by
  decide +kernel

theorem row082_layer006_checked :
    coverLayerCheck row082.height row082.goods { lower := 425088, upper := 850176, M := 11 } = true := by
  decide +kernel

theorem row082_layer007_checked :
    coverLayerCheck row082.height row082.goods { lower := 850176, upper := 1700352, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer008_checked :
    coverLayerCheck row082.height row082.goods { lower := 1700352, upper := 3400704, M := 8 } = true := by
  decide +kernel

theorem row082_layer009_checked :
    coverLayerCheck row082.height row082.goods { lower := 3400704, upper := 6801408, M := 7 } = true := by
  decide +kernel

theorem row082_layer010_checked :
    coverLayerCheck row082.height row082.goods { lower := 6801408, upper := 13602816, M := 6 } = true := by
  decide +kernel

theorem row082_layer011_checked :
    coverLayerCheck row082.height row082.goods { lower := 13602816, upper := 27205632, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer012_checked :
    coverLayerCheck row082.height row082.goods { lower := 27205632, upper := 54411264, M := 4 } = true := by
  decide +kernel

theorem row082_layer013_checked :
    coverLayerCheck row082.height row082.goods { lower := 54411264, upper := 108822528, M := 4 } = true := by
  decide +kernel

theorem row082_layer014_checked :
    coverLayerCheck row082.height row082.goods { lower := 108822528, upper := 217645056, M := 3 } = true := by
  decide +kernel

theorem row082_layer015_checked :
    coverLayerCheck row082.height row082.goods { lower := 217645056, upper := 435290112, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer016_checked :
    coverLayerCheck row082.height row082.goods { lower := 435290112, upper := 870580224, M := 2 } = true := by
  decide +kernel

theorem row082_layer017_checked :
    coverLayerCheck row082.height row082.goods { lower := 870580224, upper := 1741160448, M := 2 } = true := by
  decide +kernel

theorem row082_layer018_checked :
    coverLayerCheck row082.height row082.goods { lower := 1741160448, upper := 3482320896, M := 2 } = true := by
  decide +kernel

theorem row082_layer019_checked :
    coverLayerCheck row082.height row082.goods { lower := 3482320896, upper := 6964641792, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer020_checked :
    coverLayerCheck row082.height row082.goods { lower := 6964641792, upper := 10000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer020_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layers_checked :
    row082.layers.all (coverLayerCheck row082.height row082.goods) = true := by
  change row082_layers.all (coverLayerCheck row082.height row082.goods) = true
  simp only [row082_layers, List.all_cons, List.all_nil,
    row082_layer000_checked,
    row082_layer001_checked,
    row082_layer002_checked,
    row082_layer003_checked,
    row082_layer004_checked,
    row082_layer005_checked,
    row082_layer006_checked,
    row082_layer007_checked,
    row082_layer008_checked,
    row082_layer009_checked,
    row082_layer010_checked,
    row082_layer011_checked,
    row082_layer012_checked,
    row082_layer013_checked,
    row082_layer014_checked,
    row082_layer015_checked,
    row082_layer016_checked,
    row082_layer017_checked,
    row082_layer018_checked,
    row082_layer019_checked,
    row082_layer020_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_checked : finiteCoverRowCheck row082 = true := by
  simp only [finiteCoverRowCheck, row082_registered, row082_goods_checked,
    row082_small_checked, row082_layerCover_checked, row082_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i082 :
    ∀ n j : ℕ, 1 ≤ 82 ∧ 82 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 82 ≤ p ∧ p ∣ Nat.choose n 82 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row082_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i082
