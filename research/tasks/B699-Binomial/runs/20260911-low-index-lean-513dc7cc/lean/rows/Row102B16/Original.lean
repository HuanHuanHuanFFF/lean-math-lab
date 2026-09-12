import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row102B16.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row102B16.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row102B16.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer002_pairs000 :
    row102_layer002_block000.all (fun I => row102_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row102_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer002_pairs001 :
    row102_layer002_block001.all (fun I => row102_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row102_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer002_pairs002 :
    row102_layer002_block002.all (fun I => row102_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row102_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer002_pairs003 :
    row102_layer002_block003.all (fun I => row102_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row102_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer002_pairs004 :
    row102_layer002_block004.all (fun I => row102_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row102_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer002_pairs005 :
    row102_layer002_block005.all (fun I => row102_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row102_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer002_chunks_eq : row102_layer002_chunks.flatten = row102_layer002_intervals := by
  rfl

theorem row102_layer002_pairs : pairCoverCheck row102_layer002_intervals row102_bounds = true := by
  apply pairCoverCheck_of_chunks row102_layer002_chunks_eq
  intro block hblock
  simp only [row102_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row102_layer002_pairs000
  · exact row102_layer002_pairs001
  · exact row102_layer002_pairs002
  · exact row102_layer002_pairs003
  · exact row102_layer002_pairs004
  · exact row102_layer002_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer002_checked :
    coverLayerCheck row102.height row102.goods { lower := 41208, upper := 82416, M := 15 } = true := by
  exact coverLayerCheck_of_parts row102_layer002_arithmetic row102_layer002_enumeration row102_bounds_eq row102_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer003_checked :
    coverLayerCheck row102.height row102.goods { lower := 82416, upper := 164832, M := 12 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer004_checked :
    coverLayerCheck row102.height row102.goods { lower := 164832, upper := 329664, M := 10 } = true := by
  decide +kernel

theorem row102_layer005_checked :
    coverLayerCheck row102.height row102.goods { lower := 329664, upper := 659328, M := 8 } = true := by
  decide +kernel

theorem row102_layer006_checked :
    coverLayerCheck row102.height row102.goods { lower := 659328, upper := 1318656, M := 7 } = true := by
  decide +kernel

theorem row102_layer007_checked :
    coverLayerCheck row102.height row102.goods { lower := 1318656, upper := 2637312, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer008_checked :
    coverLayerCheck row102.height row102.goods { lower := 2637312, upper := 5274624, M := 5 } = true := by
  decide +kernel

theorem row102_layer009_checked :
    coverLayerCheck row102.height row102.goods { lower := 5274624, upper := 10549248, M := 4 } = true := by
  decide +kernel

theorem row102_layer010_checked :
    coverLayerCheck row102.height row102.goods { lower := 10549248, upper := 21098496, M := 3 } = true := by
  decide +kernel

theorem row102_layer011_checked :
    coverLayerCheck row102.height row102.goods { lower := 21098496, upper := 42196992, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer012_checked :
    coverLayerCheck row102.height row102.goods { lower := 42196992, upper := 84393984, M := 2 } = true := by
  decide +kernel

theorem row102_layer013_checked :
    coverLayerCheck row102.height row102.goods { lower := 84393984, upper := 168787968, M := 2 } = true := by
  decide +kernel

theorem row102_layer014_checked :
    coverLayerCheck row102.height row102.goods { lower := 168787968, upper := 337575936, M := 2 } = true := by
  decide +kernel

theorem row102_layer015_checked :
    coverLayerCheck row102.height row102.goods { lower := 337575936, upper := 675151872, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer016_checked :
    coverLayerCheck row102.height row102.goods { lower := 675151872, upper := 1000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layers_checked :
    row102.layers.all (coverLayerCheck row102.height row102.goods) = true := by
  change row102_layers.all (coverLayerCheck row102.height row102.goods) = true
  simp only [row102_layers, List.all_cons, List.all_nil,
    row102_layer000_checked,
    row102_layer001_checked,
    row102_layer002_checked,
    row102_layer003_checked,
    row102_layer004_checked,
    row102_layer005_checked,
    row102_layer006_checked,
    row102_layer007_checked,
    row102_layer008_checked,
    row102_layer009_checked,
    row102_layer010_checked,
    row102_layer011_checked,
    row102_layer012_checked,
    row102_layer013_checked,
    row102_layer014_checked,
    row102_layer015_checked,
    row102_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_checked : finiteCoverRowCheck row102 = true := by
  simp only [finiteCoverRowCheck, row102_registered, row102_goods_checked,
    row102_small_checked, row102_layerCover_checked, row102_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i102 :
    ∀ n j : ℕ, 1 ≤ 102 ∧ 102 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 102 ≤ p ∧ p ∣ Nat.choose n 102 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row102_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i102
