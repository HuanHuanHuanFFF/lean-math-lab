import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row110B32.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row110B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer004_pairs003 :
    row110_layer004_block003.all (fun I => row110_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer004_pairs004 :
    row110_layer004_block004.all (fun I => row110_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer004_chunks_eq : row110_layer004_chunks.flatten = row110_layer004_intervals := by
  rfl

theorem row110_layer004_pairs : pairCoverCheck row110_layer004_intervals row110_bounds = true := by
  apply pairCoverCheck_of_chunks row110_layer004_chunks_eq
  intro block hblock
  simp only [row110_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row110_layer004_pairs000
  · exact row110_layer004_pairs001
  · exact row110_layer004_pairs002
  · exact row110_layer004_pairs003
  · exact row110_layer004_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer004_checked :
    coverLayerCheck row110.height row110.goods { lower := 191840, upper := 383680, M := 15 } = true := by
  exact coverLayerCheck_of_parts row110_layer004_arithmetic row110_layer004_enumeration row110_bounds_eq row110_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer005_checked :
    coverLayerCheck row110.height row110.goods { lower := 383680, upper := 767360, M := 12 } = true := by
  decide +kernel

theorem row110_layer006_checked :
    coverLayerCheck row110.height row110.goods { lower := 767360, upper := 1534720, M := 10 } = true := by
  decide +kernel

theorem row110_layer007_checked :
    coverLayerCheck row110.height row110.goods { lower := 1534720, upper := 3069440, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer008_checked :
    coverLayerCheck row110.height row110.goods { lower := 3069440, upper := 6138880, M := 7 } = true := by
  decide +kernel

theorem row110_layer009_checked :
    coverLayerCheck row110.height row110.goods { lower := 6138880, upper := 12277760, M := 6 } = true := by
  decide +kernel

theorem row110_layer010_checked :
    coverLayerCheck row110.height row110.goods { lower := 12277760, upper := 24555520, M := 5 } = true := by
  decide +kernel

theorem row110_layer011_checked :
    coverLayerCheck row110.height row110.goods { lower := 24555520, upper := 49111040, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer012_checked :
    coverLayerCheck row110.height row110.goods { lower := 49111040, upper := 98222080, M := 4 } = true := by
  decide +kernel

theorem row110_layer013_checked :
    coverLayerCheck row110.height row110.goods { lower := 98222080, upper := 196444160, M := 3 } = true := by
  decide +kernel

theorem row110_layer014_checked :
    coverLayerCheck row110.height row110.goods { lower := 196444160, upper := 392888320, M := 3 } = true := by
  decide +kernel

theorem row110_layer015_checked :
    coverLayerCheck row110.height row110.goods { lower := 392888320, upper := 785776640, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer016_checked :
    coverLayerCheck row110.height row110.goods { lower := 785776640, upper := 1571553280, M := 2 } = true := by
  decide +kernel

theorem row110_layer017_checked :
    coverLayerCheck row110.height row110.goods { lower := 1571553280, upper := 3143106560, M := 2 } = true := by
  decide +kernel

theorem row110_layer018_checked :
    coverLayerCheck row110.height row110.goods { lower := 3143106560, upper := 6286213120, M := 2 } = true := by
  decide +kernel

theorem row110_layer019_checked :
    coverLayerCheck row110.height row110.goods { lower := 6286213120, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layers_checked :
    row110.layers.all (coverLayerCheck row110.height row110.goods) = true := by
  change row110_layers.all (coverLayerCheck row110.height row110.goods) = true
  simp only [row110_layers, List.all_cons, List.all_nil,
    row110_layer000_checked,
    row110_layer001_checked,
    row110_layer002_checked,
    row110_layer003_checked,
    row110_layer004_checked,
    row110_layer005_checked,
    row110_layer006_checked,
    row110_layer007_checked,
    row110_layer008_checked,
    row110_layer009_checked,
    row110_layer010_checked,
    row110_layer011_checked,
    row110_layer012_checked,
    row110_layer013_checked,
    row110_layer014_checked,
    row110_layer015_checked,
    row110_layer016_checked,
    row110_layer017_checked,
    row110_layer018_checked,
    row110_layer019_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_checked : finiteCoverRowCheck row110 = true := by
  simp only [finiteCoverRowCheck, row110_registered, row110_goods_checked,
    row110_small_checked, row110_layerCover_checked, row110_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i110 :
    ∀ n j : ℕ, 1 ≤ 110 ∧ 110 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 110 ≤ p ∧ p ∣ Nat.choose n 110 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row110_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i110
