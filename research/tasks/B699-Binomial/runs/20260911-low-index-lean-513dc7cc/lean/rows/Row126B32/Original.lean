import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row126B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer001_pairs000 :
    row126_layer001_block000.all (fun I => row126_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row126_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer001_pairs001 :
    row126_layer001_block001.all (fun I => row126_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row126_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer001_pairs002 :
    row126_layer001_block002.all (fun I => row126_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row126_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer001_pairs003 :
    row126_layer001_block003.all (fun I => row126_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row126_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer001_pairs004 :
    row126_layer001_block004.all (fun I => row126_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row126_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer001_pairs005 :
    row126_layer001_block005.all (fun I => row126_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row126_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer001_chunks_eq : row126_layer001_chunks.flatten = row126_layer001_intervals := by
  rfl

theorem row126_layer001_pairs : pairCoverCheck row126_layer001_intervals row126_bounds = true := by
  apply pairCoverCheck_of_chunks row126_layer001_chunks_eq
  intro block hblock
  simp only [row126_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row126_layer001_pairs000
  · exact row126_layer001_pairs001
  · exact row126_layer001_pairs002
  · exact row126_layer001_pairs003
  · exact row126_layer001_pairs004
  · exact row126_layer001_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer001_checked :
    coverLayerCheck row126.height row126.goods { lower := 31500, upper := 63000, M := 12 } = true := by
  exact coverLayerCheck_of_parts row126_layer001_arithmetic row126_layer001_enumeration row126_bounds_eq row126_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer002_checked :
    coverLayerCheck row126.height row126.goods { lower := 63000, upper := 126000, M := 9 } = true := by
  decide +kernel

theorem row126_layer003_checked :
    coverLayerCheck row126.height row126.goods { lower := 126000, upper := 252000, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer004_checked :
    coverLayerCheck row126.height row126.goods { lower := 252000, upper := 504000, M := 6 } = true := by
  decide +kernel

theorem row126_layer005_checked :
    coverLayerCheck row126.height row126.goods { lower := 504000, upper := 1008000, M := 4 } = true := by
  decide +kernel

theorem row126_layer006_checked :
    coverLayerCheck row126.height row126.goods { lower := 1008000, upper := 2016000, M := 3 } = true := by
  decide +kernel

theorem row126_layer007_checked :
    coverLayerCheck row126.height row126.goods { lower := 2016000, upper := 4032000, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer008_checked :
    coverLayerCheck row126.height row126.goods { lower := 4032000, upper := 8064000, M := 2 } = true := by
  decide +kernel

theorem row126_layer009_checked :
    coverLayerCheck row126.height row126.goods { lower := 8064000, upper := 16128000, M := 2 } = true := by
  decide +kernel

theorem row126_layer010_checked :
    coverLayerCheck row126.height row126.goods { lower := 16128000, upper := 32256000, M := 1 } = true := by
  decide +kernel

theorem row126_layer011_checked :
    coverLayerCheck row126.height row126.goods { lower := 32256000, upper := 64512000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layer012_checked :
    coverLayerCheck row126.height row126.goods { lower := 64512000, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_layers_checked :
    row126.layers.all (coverLayerCheck row126.height row126.goods) = true := by
  change row126_layers.all (coverLayerCheck row126.height row126.goods) = true
  simp only [row126_layers, List.all_cons, List.all_nil,
    row126_layer000_checked,
    row126_layer001_checked,
    row126_layer002_checked,
    row126_layer003_checked,
    row126_layer004_checked,
    row126_layer005_checked,
    row126_layer006_checked,
    row126_layer007_checked,
    row126_layer008_checked,
    row126_layer009_checked,
    row126_layer010_checked,
    row126_layer011_checked,
    row126_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row126_checked : finiteCoverRowCheck row126 = true := by
  simp only [finiteCoverRowCheck, row126_registered, row126_goods_checked,
    row126_small_checked, row126_layerCover_checked, row126_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row126_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i126 :
    ∀ n j : ℕ, 1 ≤ 126 ∧ 126 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 126 ≤ p ∧ p ∣ Nat.choose n 126 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row126_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i126
