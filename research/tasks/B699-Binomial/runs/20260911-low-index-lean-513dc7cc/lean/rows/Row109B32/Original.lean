import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row109B32.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row109B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer005_pairs004 :
    row109_layer005_block004.all (fun I => row109_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer005_chunks_eq : row109_layer005_chunks.flatten = row109_layer005_intervals := by
  rfl

theorem row109_layer005_pairs : pairCoverCheck row109_layer005_intervals row109_bounds = true := by
  apply pairCoverCheck_of_chunks row109_layer005_chunks_eq
  intro block hblock
  simp only [row109_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row109_layer005_pairs000
  · exact row109_layer005_pairs001
  · exact row109_layer005_pairs002
  · exact row109_layer005_pairs003
  · exact row109_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer005_checked :
    coverLayerCheck row109.height row109.goods { lower := 376704, upper := 753408, M := 9 } = true := by
  exact coverLayerCheck_of_parts row109_layer005_arithmetic row109_layer005_enumeration row109_bounds_eq row109_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer004_checked :
    coverLayerCheck row109.height row109.goods { lower := 188352, upper := 376704, M := 11 } = true := by
  decide +kernel

theorem row109_layer006_checked :
    coverLayerCheck row109.height row109.goods { lower := 753408, upper := 1506816, M := 8 } = true := by
  decide +kernel

theorem row109_layer007_checked :
    coverLayerCheck row109.height row109.goods { lower := 1506816, upper := 3013632, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer008_checked :
    coverLayerCheck row109.height row109.goods { lower := 3013632, upper := 6027264, M := 5 } = true := by
  decide +kernel

theorem row109_layer009_checked :
    coverLayerCheck row109.height row109.goods { lower := 6027264, upper := 12054528, M := 4 } = true := by
  decide +kernel

theorem row109_layer010_checked :
    coverLayerCheck row109.height row109.goods { lower := 12054528, upper := 24109056, M := 4 } = true := by
  decide +kernel

theorem row109_layer011_checked :
    coverLayerCheck row109.height row109.goods { lower := 24109056, upper := 48218112, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer012_checked :
    coverLayerCheck row109.height row109.goods { lower := 48218112, upper := 96436224, M := 3 } = true := by
  decide +kernel

theorem row109_layer013_checked :
    coverLayerCheck row109.height row109.goods { lower := 96436224, upper := 192872448, M := 2 } = true := by
  decide +kernel

theorem row109_layer014_checked :
    coverLayerCheck row109.height row109.goods { lower := 192872448, upper := 385744896, M := 2 } = true := by
  decide +kernel

theorem row109_layer015_checked :
    coverLayerCheck row109.height row109.goods { lower := 385744896, upper := 771489792, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer016_checked :
    coverLayerCheck row109.height row109.goods { lower := 771489792, upper := 1000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layers_checked :
    row109.layers.all (coverLayerCheck row109.height row109.goods) = true := by
  change row109_layers.all (coverLayerCheck row109.height row109.goods) = true
  simp only [row109_layers, List.all_cons, List.all_nil,
    row109_layer000_checked,
    row109_layer001_checked,
    row109_layer002_checked,
    row109_layer003_checked,
    row109_layer004_checked,
    row109_layer005_checked,
    row109_layer006_checked,
    row109_layer007_checked,
    row109_layer008_checked,
    row109_layer009_checked,
    row109_layer010_checked,
    row109_layer011_checked,
    row109_layer012_checked,
    row109_layer013_checked,
    row109_layer014_checked,
    row109_layer015_checked,
    row109_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_checked : finiteCoverRowCheck row109 = true := by
  simp only [finiteCoverRowCheck, row109_registered, row109_goods_checked,
    row109_small_checked, row109_layerCover_checked, row109_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i109 :
    ∀ n j : ℕ, 1 ≤ 109 ∧ 109 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 109 ≤ p ∧ p ∣ Nat.choose n 109 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row109_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i109
