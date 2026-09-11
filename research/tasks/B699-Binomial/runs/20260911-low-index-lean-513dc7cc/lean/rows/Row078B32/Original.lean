import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row078B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row078B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer003_pairs003 :
    row078_layer003_block003.all (fun I => row078_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row078_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer003_pairs004 :
    row078_layer003_block004.all (fun I => row078_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row078_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer003_pairs005 :
    row078_layer003_block005.all (fun I => row078_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row078_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer003_chunks_eq : row078_layer003_chunks.flatten = row078_layer003_intervals := by
  rfl

theorem row078_layer003_pairs : pairCoverCheck row078_layer003_intervals row078_bounds = true := by
  apply pairCoverCheck_of_chunks row078_layer003_chunks_eq
  intro block hblock
  simp only [row078_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row078_layer003_pairs000
  · exact row078_layer003_pairs001
  · exact row078_layer003_pairs002
  · exact row078_layer003_pairs003
  · exact row078_layer003_pairs004
  · exact row078_layer003_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer003_checked :
    coverLayerCheck row078.height row078.goods { lower := 48048, upper := 96096, M := 17 } = true := by
  exact coverLayerCheck_of_parts row078_layer003_arithmetic row078_layer003_enumeration row078_bounds_eq row078_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer004_checked :
    coverLayerCheck row078.height row078.goods { lower := 96096, upper := 192192, M := 15 } = true := by
  decide +kernel

theorem row078_layer005_checked :
    coverLayerCheck row078.height row078.goods { lower := 192192, upper := 384384, M := 13 } = true := by
  decide +kernel

theorem row078_layer006_checked :
    coverLayerCheck row078.height row078.goods { lower := 384384, upper := 768768, M := 11 } = true := by
  decide +kernel

theorem row078_layer007_checked :
    coverLayerCheck row078.height row078.goods { lower := 768768, upper := 1537536, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer008_checked :
    coverLayerCheck row078.height row078.goods { lower := 1537536, upper := 3075072, M := 8 } = true := by
  decide +kernel

theorem row078_layer009_checked :
    coverLayerCheck row078.height row078.goods { lower := 3075072, upper := 6150144, M := 7 } = true := by
  decide +kernel

theorem row078_layer010_checked :
    coverLayerCheck row078.height row078.goods { lower := 6150144, upper := 12300288, M := 6 } = true := by
  decide +kernel

theorem row078_layer011_checked :
    coverLayerCheck row078.height row078.goods { lower := 12300288, upper := 24600576, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer012_checked :
    coverLayerCheck row078.height row078.goods { lower := 24600576, upper := 49201152, M := 4 } = true := by
  decide +kernel

theorem row078_layer013_checked :
    coverLayerCheck row078.height row078.goods { lower := 49201152, upper := 98402304, M := 4 } = true := by
  decide +kernel

theorem row078_layer014_checked :
    coverLayerCheck row078.height row078.goods { lower := 98402304, upper := 196804608, M := 3 } = true := by
  decide +kernel

theorem row078_layer015_checked :
    coverLayerCheck row078.height row078.goods { lower := 196804608, upper := 393609216, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer016_checked :
    coverLayerCheck row078.height row078.goods { lower := 393609216, upper := 787218432, M := 3 } = true := by
  decide +kernel

theorem row078_layer017_checked :
    coverLayerCheck row078.height row078.goods { lower := 787218432, upper := 1574436864, M := 2 } = true := by
  decide +kernel

theorem row078_layer018_checked :
    coverLayerCheck row078.height row078.goods { lower := 1574436864, upper := 3148873728, M := 2 } = true := by
  decide +kernel

theorem row078_layer019_checked :
    coverLayerCheck row078.height row078.goods { lower := 3148873728, upper := 6297747456, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer020_checked :
    coverLayerCheck row078.height row078.goods { lower := 6297747456, upper := 10000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer020_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layers_checked :
    row078.layers.all (coverLayerCheck row078.height row078.goods) = true := by
  change row078_layers.all (coverLayerCheck row078.height row078.goods) = true
  simp only [row078_layers, List.all_cons, List.all_nil,
    row078_layer000_checked,
    row078_layer001_checked,
    row078_layer002_checked,
    row078_layer003_checked,
    row078_layer004_checked,
    row078_layer005_checked,
    row078_layer006_checked,
    row078_layer007_checked,
    row078_layer008_checked,
    row078_layer009_checked,
    row078_layer010_checked,
    row078_layer011_checked,
    row078_layer012_checked,
    row078_layer013_checked,
    row078_layer014_checked,
    row078_layer015_checked,
    row078_layer016_checked,
    row078_layer017_checked,
    row078_layer018_checked,
    row078_layer019_checked,
    row078_layer020_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_checked : finiteCoverRowCheck row078 = true := by
  simp only [finiteCoverRowCheck, row078_registered, row078_goods_checked,
    row078_small_checked, row078_layerCover_checked, row078_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i078 :
    ∀ n j : ℕ, 1 ≤ 78 ∧ 78 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 78 ≤ p ∧ p ∣ Nat.choose n 78 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row078_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i078
