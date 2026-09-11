import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row156B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer001_enumeration :
    activePowerIntervalList 156 10 48360 96720 = row156_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer001_pairs000 :
    row156_layer001_block000.all (fun I => row156_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row156_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer001_pairs001 :
    row156_layer001_block001.all (fun I => row156_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row156_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer001_pairs002 :
    row156_layer001_block002.all (fun I => row156_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row156_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer001_pairs003 :
    row156_layer001_block003.all (fun I => row156_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row156_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer001_pairs004 :
    row156_layer001_block004.all (fun I => row156_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row156_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer001_pairs005 :
    row156_layer001_block005.all (fun I => row156_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row156_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer001_chunks_eq : row156_layer001_chunks.flatten = row156_layer001_intervals := by
  rfl

theorem row156_layer001_pairs : pairCoverCheck row156_layer001_intervals row156_bounds = true := by
  apply pairCoverCheck_of_chunks row156_layer001_chunks_eq
  intro block hblock
  simp only [row156_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row156_layer001_pairs000
  · exact row156_layer001_pairs001
  · exact row156_layer001_pairs002
  · exact row156_layer001_pairs003
  · exact row156_layer001_pairs004
  · exact row156_layer001_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer001_checked :
    coverLayerCheck row156.height row156.goods { lower := 48360, upper := 96720, M := 10 } = true := by
  exact coverLayerCheck_of_parts row156_layer001_arithmetic row156_layer001_enumeration row156_bounds_eq row156_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer002_checked :
    coverLayerCheck row156.height row156.goods { lower := 96720, upper := 193440, M := 8 } = true := by
  decide +kernel

theorem row156_layer003_checked :
    coverLayerCheck row156.height row156.goods { lower := 193440, upper := 386880, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer004_checked :
    coverLayerCheck row156.height row156.goods { lower := 386880, upper := 773760, M := 4 } = true := by
  decide +kernel

theorem row156_layer005_checked :
    coverLayerCheck row156.height row156.goods { lower := 773760, upper := 1547520, M := 3 } = true := by
  decide +kernel

theorem row156_layer006_checked :
    coverLayerCheck row156.height row156.goods { lower := 1547520, upper := 3095040, M := 3 } = true := by
  decide +kernel

theorem row156_layer007_checked :
    coverLayerCheck row156.height row156.goods { lower := 3095040, upper := 6190080, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layer008_checked :
    coverLayerCheck row156.height row156.goods { lower := 6190080, upper := 10000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_layers_checked :
    row156.layers.all (coverLayerCheck row156.height row156.goods) = true := by
  change row156_layers.all (coverLayerCheck row156.height row156.goods) = true
  simp only [row156_layers, List.all_cons, List.all_nil,
    row156_layer000_checked,
    row156_layer001_checked,
    row156_layer002_checked,
    row156_layer003_checked,
    row156_layer004_checked,
    row156_layer005_checked,
    row156_layer006_checked,
    row156_layer007_checked,
    row156_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row156_checked : finiteCoverRowCheck row156 = true := by
  simp only [finiteCoverRowCheck, row156_registered, row156_goods_checked,
    row156_small_checked, row156_layerCover_checked, row156_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row156_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i156 :
    ∀ n j : ℕ, 1 ≤ 156 ∧ 156 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 156 ≤ p ∧ p ∣ Nat.choose n 156 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row156_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i156
