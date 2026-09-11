import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076B16.Block005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076B16.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076B16.Block004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076B16.Block001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer007_pairs003 :
    row076_layer007_block003.all (fun I => row076_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer007_pairs004 :
    row076_layer007_block004.all (fun I => row076_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer007_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer007_chunks_eq : row076_layer007_chunks.flatten = row076_layer007_intervals := by
  rfl

theorem row076_layer007_pairs : pairCoverCheck row076_layer007_intervals row076_bounds = true := by
  apply pairCoverCheck_of_chunks row076_layer007_chunks_eq
  intro block hblock
  simp only [row076_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row076_layer007_pairs000
  · exact row076_layer007_pairs001
  · exact row076_layer007_pairs002
  · exact row076_layer007_pairs003
  · exact row076_layer007_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer007_checked :
    coverLayerCheck row076.height row076.goods { lower := 729600, upper := 1459200, M := 12 } = true := by
  exact coverLayerCheck_of_parts row076_layer007_arithmetic row076_layer007_enumeration row076_bounds_eq row076_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer004_checked :
    coverLayerCheck row076.height row076.goods { lower := 91200, upper := 182400, M := 18 } = true := by
  decide +kernel

theorem row076_layer006_checked :
    coverLayerCheck row076.height row076.goods { lower := 364800, upper := 729600, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer008_checked :
    coverLayerCheck row076.height row076.goods { lower := 1459200, upper := 2918400, M := 11 } = true := by
  decide +kernel

theorem row076_layer009_checked :
    coverLayerCheck row076.height row076.goods { lower := 2918400, upper := 5836800, M := 9 } = true := by
  decide +kernel

theorem row076_layer010_checked :
    coverLayerCheck row076.height row076.goods { lower := 5836800, upper := 11673600, M := 8 } = true := by
  decide +kernel

theorem row076_layer011_checked :
    coverLayerCheck row076.height row076.goods { lower := 11673600, upper := 23347200, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer012_checked :
    coverLayerCheck row076.height row076.goods { lower := 23347200, upper := 46694400, M := 6 } = true := by
  decide +kernel

theorem row076_layer013_checked :
    coverLayerCheck row076.height row076.goods { lower := 46694400, upper := 93388800, M := 6 } = true := by
  decide +kernel

theorem row076_layer014_checked :
    coverLayerCheck row076.height row076.goods { lower := 93388800, upper := 186777600, M := 5 } = true := by
  decide +kernel

theorem row076_layer015_checked :
    coverLayerCheck row076.height row076.goods { lower := 186777600, upper := 373555200, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer016_checked :
    coverLayerCheck row076.height row076.goods { lower := 373555200, upper := 747110400, M := 4 } = true := by
  decide +kernel

theorem row076_layer017_checked :
    coverLayerCheck row076.height row076.goods { lower := 747110400, upper := 1494220800, M := 3 } = true := by
  decide +kernel

theorem row076_layer018_checked :
    coverLayerCheck row076.height row076.goods { lower := 1494220800, upper := 2988441600, M := 3 } = true := by
  decide +kernel

theorem row076_layer019_checked :
    coverLayerCheck row076.height row076.goods { lower := 2988441600, upper := 5976883200, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer020_checked :
    coverLayerCheck row076.height row076.goods { lower := 5976883200, upper := 11953766400, M := 2 } = true := by
  decide +kernel

theorem row076_layer021_checked :
    coverLayerCheck row076.height row076.goods { lower := 11953766400, upper := 23907532800, M := 2 } = true := by
  decide +kernel

theorem row076_layer022_checked :
    coverLayerCheck row076.height row076.goods { lower := 23907532800, upper := 47815065600, M := 2 } = true := by
  decide +kernel

theorem row076_layer023_checked :
    coverLayerCheck row076.height row076.goods { lower := 47815065600, upper := 95630131200, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer024_checked :
    coverLayerCheck row076.height row076.goods { lower := 95630131200, upper := 191260262400, M := 2 } = true := by
  decide +kernel

theorem row076_layer025_checked :
    coverLayerCheck row076.height row076.goods { lower := 191260262400, upper := 382520524800, M := 1 } = true := by
  decide +kernel

theorem row076_layer026_checked :
    coverLayerCheck row076.height row076.goods { lower := 382520524800, upper := 765041049600, M := 1 } = true := by
  decide +kernel

theorem row076_layer027_checked :
    coverLayerCheck row076.height row076.goods { lower := 765041049600, upper := 1000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layers_checked :
    row076.layers.all (coverLayerCheck row076.height row076.goods) = true := by
  change row076_layers.all (coverLayerCheck row076.height row076.goods) = true
  simp only [row076_layers, List.all_cons, List.all_nil,
    row076_layer000_checked,
    row076_layer001_checked,
    row076_layer002_checked,
    row076_layer003_checked,
    row076_layer004_checked,
    row076_layer005_checked,
    row076_layer006_checked,
    row076_layer007_checked,
    row076_layer008_checked,
    row076_layer009_checked,
    row076_layer010_checked,
    row076_layer011_checked,
    row076_layer012_checked,
    row076_layer013_checked,
    row076_layer014_checked,
    row076_layer015_checked,
    row076_layer016_checked,
    row076_layer017_checked,
    row076_layer018_checked,
    row076_layer019_checked,
    row076_layer020_checked,
    row076_layer021_checked,
    row076_layer022_checked,
    row076_layer023_checked,
    row076_layer024_checked,
    row076_layer025_checked,
    row076_layer026_checked,
    row076_layer027_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_checked : finiteCoverRowCheck row076 = true := by
  simp only [finiteCoverRowCheck, row076_registered, row076_goods_checked,
    row076_small_checked, row076_layerCover_checked, row076_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i076 :
    ∀ n j : ℕ, 1 ≤ 76 ∧ 76 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 76 ≤ p ∧ p ∣ Nat.choose n 76 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row076_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i076
