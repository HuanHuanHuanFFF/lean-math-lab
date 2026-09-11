import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071B64.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer003_pairs002 :
    row071_layer003_block002.all (fun I => row071_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer003_pairs003 :
    row071_layer003_block003.all (fun I => row071_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer003_pairs004 :
    row071_layer003_block004.all (fun I => row071_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row071_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer003_chunks_eq : row071_layer003_chunks.flatten = row071_layer003_intervals := by
  rfl

theorem row071_layer003_pairs : pairCoverCheck row071_layer003_intervals row071_bounds = true := by
  apply pairCoverCheck_of_chunks row071_layer003_chunks_eq
  intro block hblock
  simp only [row071_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row071_layer003_pairs000
  · exact row071_layer003_pairs001
  · exact row071_layer003_pairs002
  · exact row071_layer003_pairs003
  · exact row071_layer003_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer003_checked :
    coverLayerCheck row071.height row071.goods { lower := 39760, upper := 79520, M := 15 } = true := by
  exact coverLayerCheck_of_parts row071_layer003_arithmetic row071_layer003_enumeration row071_bounds_eq row071_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer004_checked :
    coverLayerCheck row071.height row071.goods { lower := 79520, upper := 159040, M := 13 } = true := by
  decide +kernel

theorem row071_layer005_checked :
    coverLayerCheck row071.height row071.goods { lower := 159040, upper := 318080, M := 11 } = true := by
  decide +kernel

theorem row071_layer006_checked :
    coverLayerCheck row071.height row071.goods { lower := 318080, upper := 636160, M := 10 } = true := by
  decide +kernel

theorem row071_layer007_checked :
    coverLayerCheck row071.height row071.goods { lower := 636160, upper := 1272320, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer008_checked :
    coverLayerCheck row071.height row071.goods { lower := 1272320, upper := 2544640, M := 7 } = true := by
  decide +kernel

theorem row071_layer009_checked :
    coverLayerCheck row071.height row071.goods { lower := 2544640, upper := 5089280, M := 6 } = true := by
  decide +kernel

theorem row071_layer010_checked :
    coverLayerCheck row071.height row071.goods { lower := 5089280, upper := 10178560, M := 5 } = true := by
  decide +kernel

theorem row071_layer011_checked :
    coverLayerCheck row071.height row071.goods { lower := 10178560, upper := 20357120, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer012_checked :
    coverLayerCheck row071.height row071.goods { lower := 20357120, upper := 40714240, M := 4 } = true := by
  decide +kernel

theorem row071_layer013_checked :
    coverLayerCheck row071.height row071.goods { lower := 40714240, upper := 81428480, M := 3 } = true := by
  decide +kernel

theorem row071_layer014_checked :
    coverLayerCheck row071.height row071.goods { lower := 81428480, upper := 162856960, M := 3 } = true := by
  decide +kernel

theorem row071_layer015_checked :
    coverLayerCheck row071.height row071.goods { lower := 162856960, upper := 325713920, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer016_checked :
    coverLayerCheck row071.height row071.goods { lower := 325713920, upper := 651427840, M := 2 } = true := by
  decide +kernel

theorem row071_layer017_checked :
    coverLayerCheck row071.height row071.goods { lower := 651427840, upper := 1302855680, M := 2 } = true := by
  decide +kernel

theorem row071_layer018_checked :
    coverLayerCheck row071.height row071.goods { lower := 1302855680, upper := 2605711360, M := 2 } = true := by
  decide +kernel

theorem row071_layer019_checked :
    coverLayerCheck row071.height row071.goods { lower := 2605711360, upper := 5211422720, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer020_checked :
    coverLayerCheck row071.height row071.goods { lower := 5211422720, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer020_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layers_checked :
    row071.layers.all (coverLayerCheck row071.height row071.goods) = true := by
  change row071_layers.all (coverLayerCheck row071.height row071.goods) = true
  simp only [row071_layers, List.all_cons, List.all_nil,
    row071_layer000_checked,
    row071_layer001_checked,
    row071_layer002_checked,
    row071_layer003_checked,
    row071_layer004_checked,
    row071_layer005_checked,
    row071_layer006_checked,
    row071_layer007_checked,
    row071_layer008_checked,
    row071_layer009_checked,
    row071_layer010_checked,
    row071_layer011_checked,
    row071_layer012_checked,
    row071_layer013_checked,
    row071_layer014_checked,
    row071_layer015_checked,
    row071_layer016_checked,
    row071_layer017_checked,
    row071_layer018_checked,
    row071_layer019_checked,
    row071_layer020_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_checked : finiteCoverRowCheck row071 = true := by
  simp only [finiteCoverRowCheck, row071_registered, row071_goods_checked,
    row071_small_checked, row071_layerCover_checked, row071_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i071 :
    ∀ n j : ℕ, 1 ≤ 71 ∧ 71 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 71 ≤ p ∧ p ∣ Nat.choose n 71 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row071_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i071
