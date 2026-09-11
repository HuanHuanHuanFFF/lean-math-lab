import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row172B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer001_arithmetic : LayerArithmeticValid row172.height { lower := 58824, upper := 117648, M := 9 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer001_enumeration :
    activePowerIntervalList 172 9 58824 117648 = row172_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer001_pairs000 :
    row172_layer001_block000.all (fun I => row172_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row172_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer001_pairs001 :
    row172_layer001_block001.all (fun I => row172_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row172_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer001_pairs002 :
    row172_layer001_block002.all (fun I => row172_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row172_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer001_pairs003 :
    row172_layer001_block003.all (fun I => row172_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row172_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer001_pairs004 :
    row172_layer001_block004.all (fun I => row172_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row172_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer001_pairs005 :
    row172_layer001_block005.all (fun I => row172_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row172_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer001_chunks_eq : row172_layer001_chunks.flatten = row172_layer001_intervals := by
  rfl

theorem row172_layer001_pairs : pairCoverCheck row172_layer001_intervals row172_bounds = true := by
  apply pairCoverCheck_of_chunks row172_layer001_chunks_eq
  intro block hblock
  simp only [row172_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row172_layer001_pairs000
  · exact row172_layer001_pairs001
  · exact row172_layer001_pairs002
  · exact row172_layer001_pairs003
  · exact row172_layer001_pairs004
  · exact row172_layer001_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer001_checked :
    coverLayerCheck row172.height row172.goods { lower := 58824, upper := 117648, M := 9 } = true := by
  exact coverLayerCheck_of_parts row172_layer001_arithmetic row172_layer001_enumeration row172_bounds_eq row172_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer002_checked :
    coverLayerCheck row172.height row172.goods { lower := 117648, upper := 235296, M := 7 } = true := by
  decide +kernel

theorem row172_layer003_checked :
    coverLayerCheck row172.height row172.goods { lower := 235296, upper := 470592, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer004_checked :
    coverLayerCheck row172.height row172.goods { lower := 470592, upper := 941184, M := 4 } = true := by
  decide +kernel

theorem row172_layer005_checked :
    coverLayerCheck row172.height row172.goods { lower := 941184, upper := 1882368, M := 3 } = true := by
  decide +kernel

theorem row172_layer006_checked :
    coverLayerCheck row172.height row172.goods { lower := 1882368, upper := 3764736, M := 2 } = true := by
  decide +kernel

theorem row172_layer007_checked :
    coverLayerCheck row172.height row172.goods { lower := 3764736, upper := 7529472, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer008_checked :
    coverLayerCheck row172.height row172.goods { lower := 7529472, upper := 10000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layers_checked :
    row172.layers.all (coverLayerCheck row172.height row172.goods) = true := by
  change row172_layers.all (coverLayerCheck row172.height row172.goods) = true
  simp only [row172_layers, List.all_cons, List.all_nil,
    row172_layer000_checked,
    row172_layer001_checked,
    row172_layer002_checked,
    row172_layer003_checked,
    row172_layer004_checked,
    row172_layer005_checked,
    row172_layer006_checked,
    row172_layer007_checked,
    row172_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_checked : finiteCoverRowCheck row172 = true := by
  simp only [finiteCoverRowCheck, row172_registered, row172_goods_checked,
    row172_small_checked, row172_layerCover_checked, row172_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i172 :
    ∀ n j : ℕ, 1 ≤ 172 ∧ 172 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 172 ≤ p ∧ p ∣ Nat.choose n 172 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row172_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i172
