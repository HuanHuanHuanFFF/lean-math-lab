import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row149B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer001_arithmetic : LayerArithmeticValid row149.height { lower := 44104, upper := 88208, M := 9 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer001_enumeration :
    activePowerIntervalList 149 9 44104 88208 = row149_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer001_pairs000 :
    row149_layer001_block000.all (fun I => row149_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row149_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer001_pairs001 :
    row149_layer001_block001.all (fun I => row149_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row149_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer001_pairs002 :
    row149_layer001_block002.all (fun I => row149_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row149_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer001_pairs003 :
    row149_layer001_block003.all (fun I => row149_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row149_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer001_pairs004 :
    row149_layer001_block004.all (fun I => row149_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row149_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer001_pairs005 :
    row149_layer001_block005.all (fun I => row149_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row149_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer001_chunks_eq : row149_layer001_chunks.flatten = row149_layer001_intervals := by
  rfl

theorem row149_layer001_pairs : pairCoverCheck row149_layer001_intervals row149_bounds = true := by
  apply pairCoverCheck_of_chunks row149_layer001_chunks_eq
  intro block hblock
  simp only [row149_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row149_layer001_pairs000
  · exact row149_layer001_pairs001
  · exact row149_layer001_pairs002
  · exact row149_layer001_pairs003
  · exact row149_layer001_pairs004
  · exact row149_layer001_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer001_checked :
    coverLayerCheck row149.height row149.goods { lower := 44104, upper := 88208, M := 9 } = true := by
  exact coverLayerCheck_of_parts row149_layer001_arithmetic row149_layer001_enumeration row149_bounds_eq row149_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer002_checked :
    coverLayerCheck row149.height row149.goods { lower := 88208, upper := 176416, M := 7 } = true := by
  decide +kernel

theorem row149_layer003_checked :
    coverLayerCheck row149.height row149.goods { lower := 176416, upper := 352832, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer004_checked :
    coverLayerCheck row149.height row149.goods { lower := 352832, upper := 705664, M := 4 } = true := by
  decide +kernel

theorem row149_layer005_checked :
    coverLayerCheck row149.height row149.goods { lower := 705664, upper := 1411328, M := 3 } = true := by
  decide +kernel

theorem row149_layer006_checked :
    coverLayerCheck row149.height row149.goods { lower := 1411328, upper := 2822656, M := 2 } = true := by
  decide +kernel

theorem row149_layer007_checked :
    coverLayerCheck row149.height row149.goods { lower := 2822656, upper := 5645312, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layer008_checked :
    coverLayerCheck row149.height row149.goods { lower := 5645312, upper := 10000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_layers_checked :
    row149.layers.all (coverLayerCheck row149.height row149.goods) = true := by
  change row149_layers.all (coverLayerCheck row149.height row149.goods) = true
  simp only [row149_layers, List.all_cons, List.all_nil,
    row149_layer000_checked,
    row149_layer001_checked,
    row149_layer002_checked,
    row149_layer003_checked,
    row149_layer004_checked,
    row149_layer005_checked,
    row149_layer006_checked,
    row149_layer007_checked,
    row149_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_checked : finiteCoverRowCheck row149 = true := by
  simp only [finiteCoverRowCheck, row149_registered, row149_goods_checked,
    row149_small_checked, row149_layerCover_checked, row149_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i149 :
    ∀ n j : ℕ, 1 ≤ 149 ∧ 149 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 149 ≤ p ∧ p ∣ Nat.choose n 149 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row149_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i149
