import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row089B16.Block003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row089B16.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row089B16.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row089B16.Block001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer003_pairs001 :
    row089_layer003_block001.all (fun I => row089_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer003_pairs002 :
    row089_layer003_block002.all (fun I => row089_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer003_pairs003 :
    row089_layer003_block003.all (fun I => row089_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer003_pairs004 :
    row089_layer003_block004.all (fun I => row089_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer003_chunks_eq : row089_layer003_chunks.flatten = row089_layer003_intervals := by
  rfl

theorem row089_layer003_pairs : pairCoverCheck row089_layer003_intervals row089_bounds = true := by
  apply pairCoverCheck_of_chunks row089_layer003_chunks_eq
  intro block hblock
  simp only [row089_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row089_layer003_pairs000
  · exact row089_layer003_pairs001
  · exact row089_layer003_pairs002
  · exact row089_layer003_pairs003
  · exact row089_layer003_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer003_checked :
    coverLayerCheck row089.height row089.goods { lower := 62656, upper := 125312, M := 13 } = true := by
  exact coverLayerCheck_of_parts row089_layer003_arithmetic row089_layer003_enumeration row089_bounds_eq row089_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer004_checked :
    coverLayerCheck row089.height row089.goods { lower := 125312, upper := 250624, M := 11 } = true := by
  decide +kernel

theorem row089_layer005_checked :
    coverLayerCheck row089.height row089.goods { lower := 250624, upper := 501248, M := 9 } = true := by
  decide +kernel

theorem row089_layer006_checked :
    coverLayerCheck row089.height row089.goods { lower := 501248, upper := 1002496, M := 7 } = true := by
  decide +kernel

theorem row089_layer007_checked :
    coverLayerCheck row089.height row089.goods { lower := 1002496, upper := 2004992, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer008_checked :
    coverLayerCheck row089.height row089.goods { lower := 2004992, upper := 4009984, M := 5 } = true := by
  decide +kernel

theorem row089_layer009_checked :
    coverLayerCheck row089.height row089.goods { lower := 4009984, upper := 8019968, M := 4 } = true := by
  decide +kernel

theorem row089_layer010_checked :
    coverLayerCheck row089.height row089.goods { lower := 8019968, upper := 16039936, M := 4 } = true := by
  decide +kernel

theorem row089_layer011_checked :
    coverLayerCheck row089.height row089.goods { lower := 16039936, upper := 32079872, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer012_checked :
    coverLayerCheck row089.height row089.goods { lower := 32079872, upper := 64159744, M := 3 } = true := by
  decide +kernel

theorem row089_layer013_checked :
    coverLayerCheck row089.height row089.goods { lower := 64159744, upper := 128319488, M := 2 } = true := by
  decide +kernel

theorem row089_layer014_checked :
    coverLayerCheck row089.height row089.goods { lower := 128319488, upper := 256638976, M := 2 } = true := by
  decide +kernel

theorem row089_layer015_checked :
    coverLayerCheck row089.height row089.goods { lower := 256638976, upper := 513277952, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer016_checked :
    coverLayerCheck row089.height row089.goods { lower := 513277952, upper := 1000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layers_checked :
    row089.layers.all (coverLayerCheck row089.height row089.goods) = true := by
  change row089_layers.all (coverLayerCheck row089.height row089.goods) = true
  simp only [row089_layers, List.all_cons, List.all_nil,
    row089_layer000_checked,
    row089_layer001_checked,
    row089_layer002_checked,
    row089_layer003_checked,
    row089_layer004_checked,
    row089_layer005_checked,
    row089_layer006_checked,
    row089_layer007_checked,
    row089_layer008_checked,
    row089_layer009_checked,
    row089_layer010_checked,
    row089_layer011_checked,
    row089_layer012_checked,
    row089_layer013_checked,
    row089_layer014_checked,
    row089_layer015_checked,
    row089_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_checked : finiteCoverRowCheck row089 = true := by
  simp only [finiteCoverRowCheck, row089_registered, row089_goods_checked,
    row089_small_checked, row089_layerCover_checked, row089_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i089 :
    ∀ n j : ℕ, 1 ≤ 89 ∧ 89 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 89 ≤ p ∧ p ∣ Nat.choose n 89 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row089_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i089
