import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row106B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row106B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer003_pairs000 :
    row106_layer003_block000.all (fun I => row106_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer003_pairs001 :
    row106_layer003_block001.all (fun I => row106_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer003_pairs002 :
    row106_layer003_block002.all (fun I => row106_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer003_pairs003 :
    row106_layer003_block003.all (fun I => row106_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer003_pairs004 :
    row106_layer003_block004.all (fun I => row106_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer003_chunks_eq : row106_layer003_chunks.flatten = row106_layer003_intervals := by
  rfl

theorem row106_layer003_pairs : pairCoverCheck row106_layer003_intervals row106_bounds = true := by
  apply pairCoverCheck_of_chunks row106_layer003_chunks_eq
  intro block hblock
  simp only [row106_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row106_layer003_pairs000
  · exact row106_layer003_pairs001
  · exact row106_layer003_pairs002
  · exact row106_layer003_pairs003
  · exact row106_layer003_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer003_checked :
    coverLayerCheck row106.height row106.goods { lower := 89040, upper := 178080, M := 12 } = true := by
  exact coverLayerCheck_of_parts row106_layer003_arithmetic row106_layer003_enumeration row106_bounds_eq row106_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer004_checked :
    coverLayerCheck row106.height row106.goods { lower := 178080, upper := 356160, M := 10 } = true := by
  decide +kernel

theorem row106_layer005_checked :
    coverLayerCheck row106.height row106.goods { lower := 356160, upper := 712320, M := 8 } = true := by
  decide +kernel

theorem row106_layer006_checked :
    coverLayerCheck row106.height row106.goods { lower := 712320, upper := 1424640, M := 7 } = true := by
  decide +kernel

theorem row106_layer007_checked :
    coverLayerCheck row106.height row106.goods { lower := 1424640, upper := 2849280, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer008_checked :
    coverLayerCheck row106.height row106.goods { lower := 2849280, upper := 5698560, M := 5 } = true := by
  decide +kernel

theorem row106_layer009_checked :
    coverLayerCheck row106.height row106.goods { lower := 5698560, upper := 11397120, M := 4 } = true := by
  decide +kernel

theorem row106_layer010_checked :
    coverLayerCheck row106.height row106.goods { lower := 11397120, upper := 22794240, M := 3 } = true := by
  decide +kernel

theorem row106_layer011_checked :
    coverLayerCheck row106.height row106.goods { lower := 22794240, upper := 45588480, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer012_checked :
    coverLayerCheck row106.height row106.goods { lower := 45588480, upper := 91176960, M := 2 } = true := by
  decide +kernel

theorem row106_layer013_checked :
    coverLayerCheck row106.height row106.goods { lower := 91176960, upper := 182353920, M := 2 } = true := by
  decide +kernel

theorem row106_layer014_checked :
    coverLayerCheck row106.height row106.goods { lower := 182353920, upper := 364707840, M := 2 } = true := by
  decide +kernel

theorem row106_layer015_checked :
    coverLayerCheck row106.height row106.goods { lower := 364707840, upper := 729415680, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer016_checked :
    coverLayerCheck row106.height row106.goods { lower := 729415680, upper := 1000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layers_checked :
    row106.layers.all (coverLayerCheck row106.height row106.goods) = true := by
  change row106_layers.all (coverLayerCheck row106.height row106.goods) = true
  simp only [row106_layers, List.all_cons, List.all_nil,
    row106_layer000_checked,
    row106_layer001_checked,
    row106_layer002_checked,
    row106_layer003_checked,
    row106_layer004_checked,
    row106_layer005_checked,
    row106_layer006_checked,
    row106_layer007_checked,
    row106_layer008_checked,
    row106_layer009_checked,
    row106_layer010_checked,
    row106_layer011_checked,
    row106_layer012_checked,
    row106_layer013_checked,
    row106_layer014_checked,
    row106_layer015_checked,
    row106_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_checked : finiteCoverRowCheck row106 = true := by
  simp only [finiteCoverRowCheck, row106_registered, row106_goods_checked,
    row106_small_checked, row106_layerCover_checked, row106_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i106 :
    ∀ n j : ℕ, 1 ≤ 106 ∧ 106 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 106 ≤ p ∧ p ∣ Nat.choose n 106 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row106_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i106
