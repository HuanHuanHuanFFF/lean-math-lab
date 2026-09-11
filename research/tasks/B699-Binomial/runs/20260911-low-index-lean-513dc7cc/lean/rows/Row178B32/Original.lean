import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row178B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer001_arithmetic : LayerArithmeticValid row178.height { lower := 63012, upper := 126024, M := 9 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer001_enumeration :
    activePowerIntervalList 178 9 63012 126024 = row178_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer001_pairs000 :
    row178_layer001_block000.all (fun I => row178_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row178_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer001_pairs001 :
    row178_layer001_block001.all (fun I => row178_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row178_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer001_pairs002 :
    row178_layer001_block002.all (fun I => row178_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row178_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer001_pairs003 :
    row178_layer001_block003.all (fun I => row178_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row178_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer001_pairs004 :
    row178_layer001_block004.all (fun I => row178_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row178_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer001_pairs005 :
    row178_layer001_block005.all (fun I => row178_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row178_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer001_chunks_eq : row178_layer001_chunks.flatten = row178_layer001_intervals := by
  rfl

theorem row178_layer001_pairs : pairCoverCheck row178_layer001_intervals row178_bounds = true := by
  apply pairCoverCheck_of_chunks row178_layer001_chunks_eq
  intro block hblock
  simp only [row178_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row178_layer001_pairs000
  · exact row178_layer001_pairs001
  · exact row178_layer001_pairs002
  · exact row178_layer001_pairs003
  · exact row178_layer001_pairs004
  · exact row178_layer001_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer001_checked :
    coverLayerCheck row178.height row178.goods { lower := 63012, upper := 126024, M := 9 } = true := by
  exact coverLayerCheck_of_parts row178_layer001_arithmetic row178_layer001_enumeration row178_bounds_eq row178_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer002_checked :
    coverLayerCheck row178.height row178.goods { lower := 126024, upper := 252048, M := 6 } = true := by
  decide +kernel

theorem row178_layer003_checked :
    coverLayerCheck row178.height row178.goods { lower := 252048, upper := 504096, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer004_checked :
    coverLayerCheck row178.height row178.goods { lower := 504096, upper := 1008192, M := 4 } = true := by
  decide +kernel

theorem row178_layer005_checked :
    coverLayerCheck row178.height row178.goods { lower := 1008192, upper := 2016384, M := 3 } = true := by
  decide +kernel

theorem row178_layer006_checked :
    coverLayerCheck row178.height row178.goods { lower := 2016384, upper := 4032768, M := 2 } = true := by
  decide +kernel

theorem row178_layer007_checked :
    coverLayerCheck row178.height row178.goods { lower := 4032768, upper := 8065536, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layer008_checked :
    coverLayerCheck row178.height row178.goods { lower := 8065536, upper := 10000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_layers_checked :
    row178.layers.all (coverLayerCheck row178.height row178.goods) = true := by
  change row178_layers.all (coverLayerCheck row178.height row178.goods) = true
  simp only [row178_layers, List.all_cons, List.all_nil,
    row178_layer000_checked,
    row178_layer001_checked,
    row178_layer002_checked,
    row178_layer003_checked,
    row178_layer004_checked,
    row178_layer005_checked,
    row178_layer006_checked,
    row178_layer007_checked,
    row178_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row178_checked : finiteCoverRowCheck row178 = true := by
  simp only [finiteCoverRowCheck, row178_registered, row178_goods_checked,
    row178_small_checked, row178_layerCover_checked, row178_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row178_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i178 :
    ∀ n j : ℕ, 1 ≤ 178 ∧ 178 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 178 ≤ p ∧ p ∣ Nat.choose n 178 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row178_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i178
