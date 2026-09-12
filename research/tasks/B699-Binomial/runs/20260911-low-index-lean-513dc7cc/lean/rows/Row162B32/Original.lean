import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row162B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer001_enumeration :
    activePowerIntervalList 162 10 52164 104328 = row162_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer001_pairs000 :
    row162_layer001_block000.all (fun I => row162_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row162_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer001_pairs001 :
    row162_layer001_block001.all (fun I => row162_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row162_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer001_pairs002 :
    row162_layer001_block002.all (fun I => row162_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row162_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer001_pairs003 :
    row162_layer001_block003.all (fun I => row162_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row162_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer001_pairs004 :
    row162_layer001_block004.all (fun I => row162_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row162_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer001_pairs005 :
    row162_layer001_block005.all (fun I => row162_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row162_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer001_chunks_eq : row162_layer001_chunks.flatten = row162_layer001_intervals := by
  rfl

theorem row162_layer001_pairs : pairCoverCheck row162_layer001_intervals row162_bounds = true := by
  apply pairCoverCheck_of_chunks row162_layer001_chunks_eq
  intro block hblock
  simp only [row162_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row162_layer001_pairs000
  · exact row162_layer001_pairs001
  · exact row162_layer001_pairs002
  · exact row162_layer001_pairs003
  · exact row162_layer001_pairs004
  · exact row162_layer001_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer001_checked :
    coverLayerCheck row162.height row162.goods { lower := 52164, upper := 104328, M := 10 } = true := by
  exact coverLayerCheck_of_parts row162_layer001_arithmetic row162_layer001_enumeration row162_bounds_eq row162_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer002_checked :
    coverLayerCheck row162.height row162.goods { lower := 104328, upper := 208656, M := 7 } = true := by
  decide +kernel

theorem row162_layer003_checked :
    coverLayerCheck row162.height row162.goods { lower := 208656, upper := 417312, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer004_checked :
    coverLayerCheck row162.height row162.goods { lower := 417312, upper := 834624, M := 4 } = true := by
  decide +kernel

theorem row162_layer005_checked :
    coverLayerCheck row162.height row162.goods { lower := 834624, upper := 1669248, M := 3 } = true := by
  decide +kernel

theorem row162_layer006_checked :
    coverLayerCheck row162.height row162.goods { lower := 1669248, upper := 3338496, M := 2 } = true := by
  decide +kernel

theorem row162_layer007_checked :
    coverLayerCheck row162.height row162.goods { lower := 3338496, upper := 6676992, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layer008_checked :
    coverLayerCheck row162.height row162.goods { lower := 6676992, upper := 10000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_layers_checked :
    row162.layers.all (coverLayerCheck row162.height row162.goods) = true := by
  change row162_layers.all (coverLayerCheck row162.height row162.goods) = true
  simp only [row162_layers, List.all_cons, List.all_nil,
    row162_layer000_checked,
    row162_layer001_checked,
    row162_layer002_checked,
    row162_layer003_checked,
    row162_layer004_checked,
    row162_layer005_checked,
    row162_layer006_checked,
    row162_layer007_checked,
    row162_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row162_checked : finiteCoverRowCheck row162 = true := by
  simp only [finiteCoverRowCheck, row162_registered, row162_goods_checked,
    row162_small_checked, row162_layerCover_checked, row162_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row162_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i162 :
    ∀ n j : ℕ, 1 ≤ 162 ∧ 162 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 162 ≤ p ∧ p ∣ Nat.choose n 162 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row162_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i162
