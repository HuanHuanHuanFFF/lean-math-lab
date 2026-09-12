import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row180B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer001_arithmetic : LayerArithmeticValid row180.height { lower := 64440, upper := 128880, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer001_enumeration :
    activePowerIntervalList 180 10 64440 128880 = row180_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer001_pairs000 :
    row180_layer001_block000.all (fun I => row180_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row180_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer001_pairs001 :
    row180_layer001_block001.all (fun I => row180_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row180_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer001_pairs002 :
    row180_layer001_block002.all (fun I => row180_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row180_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer001_pairs003 :
    row180_layer001_block003.all (fun I => row180_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row180_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer001_pairs004 :
    row180_layer001_block004.all (fun I => row180_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row180_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer001_pairs005 :
    row180_layer001_block005.all (fun I => row180_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row180_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer001_chunks_eq : row180_layer001_chunks.flatten = row180_layer001_intervals := by
  rfl

theorem row180_layer001_pairs : pairCoverCheck row180_layer001_intervals row180_bounds = true := by
  apply pairCoverCheck_of_chunks row180_layer001_chunks_eq
  intro block hblock
  simp only [row180_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row180_layer001_pairs000
  · exact row180_layer001_pairs001
  · exact row180_layer001_pairs002
  · exact row180_layer001_pairs003
  · exact row180_layer001_pairs004
  · exact row180_layer001_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer001_checked :
    coverLayerCheck row180.height row180.goods { lower := 64440, upper := 128880, M := 10 } = true := by
  exact coverLayerCheck_of_parts row180_layer001_arithmetic row180_layer001_enumeration row180_bounds_eq row180_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer002_checked :
    coverLayerCheck row180.height row180.goods { lower := 128880, upper := 257760, M := 7 } = true := by
  decide +kernel

theorem row180_layer003_checked :
    coverLayerCheck row180.height row180.goods { lower := 257760, upper := 515520, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer004_checked :
    coverLayerCheck row180.height row180.goods { lower := 515520, upper := 1031040, M := 4 } = true := by
  decide +kernel

theorem row180_layer005_checked :
    coverLayerCheck row180.height row180.goods { lower := 1031040, upper := 2062080, M := 3 } = true := by
  decide +kernel

theorem row180_layer006_checked :
    coverLayerCheck row180.height row180.goods { lower := 2062080, upper := 4124160, M := 2 } = true := by
  decide +kernel

theorem row180_layer007_checked :
    coverLayerCheck row180.height row180.goods { lower := 4124160, upper := 8248320, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layer008_checked :
    coverLayerCheck row180.height row180.goods { lower := 8248320, upper := 10000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_layers_checked :
    row180.layers.all (coverLayerCheck row180.height row180.goods) = true := by
  change row180_layers.all (coverLayerCheck row180.height row180.goods) = true
  simp only [row180_layers, List.all_cons, List.all_nil,
    row180_layer000_checked,
    row180_layer001_checked,
    row180_layer002_checked,
    row180_layer003_checked,
    row180_layer004_checked,
    row180_layer005_checked,
    row180_layer006_checked,
    row180_layer007_checked,
    row180_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row180_checked : finiteCoverRowCheck row180 = true := by
  simp only [finiteCoverRowCheck, row180_registered, row180_goods_checked,
    row180_small_checked, row180_layerCover_checked, row180_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row180_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i180 :
    ∀ n j : ℕ, 1 ≤ 180 ∧ 180 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 180 ≤ p ∧ p ∣ Nat.choose n 180 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row180_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i180
