import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row176B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer001_arithmetic : LayerArithmeticValid row176.height { lower := 61600, upper := 123200, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer001_enumeration :
    activePowerIntervalList 176 10 61600 123200 = row176_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer001_pairs000 :
    row176_layer001_block000.all (fun I => row176_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row176_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer001_pairs001 :
    row176_layer001_block001.all (fun I => row176_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row176_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer001_pairs002 :
    row176_layer001_block002.all (fun I => row176_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row176_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer001_pairs003 :
    row176_layer001_block003.all (fun I => row176_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row176_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer001_pairs004 :
    row176_layer001_block004.all (fun I => row176_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row176_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer001_pairs005 :
    row176_layer001_block005.all (fun I => row176_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row176_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer001_chunks_eq : row176_layer001_chunks.flatten = row176_layer001_intervals := by
  rfl

theorem row176_layer001_pairs : pairCoverCheck row176_layer001_intervals row176_bounds = true := by
  apply pairCoverCheck_of_chunks row176_layer001_chunks_eq
  intro block hblock
  simp only [row176_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row176_layer001_pairs000
  · exact row176_layer001_pairs001
  · exact row176_layer001_pairs002
  · exact row176_layer001_pairs003
  · exact row176_layer001_pairs004
  · exact row176_layer001_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer001_checked :
    coverLayerCheck row176.height row176.goods { lower := 61600, upper := 123200, M := 10 } = true := by
  exact coverLayerCheck_of_parts row176_layer001_arithmetic row176_layer001_enumeration row176_bounds_eq row176_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer002_checked :
    coverLayerCheck row176.height row176.goods { lower := 123200, upper := 246400, M := 7 } = true := by
  decide +kernel

theorem row176_layer003_checked :
    coverLayerCheck row176.height row176.goods { lower := 246400, upper := 492800, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer004_checked :
    coverLayerCheck row176.height row176.goods { lower := 492800, upper := 985600, M := 4 } = true := by
  decide +kernel

theorem row176_layer005_checked :
    coverLayerCheck row176.height row176.goods { lower := 985600, upper := 1971200, M := 3 } = true := by
  decide +kernel

theorem row176_layer006_checked :
    coverLayerCheck row176.height row176.goods { lower := 1971200, upper := 3942400, M := 2 } = true := by
  decide +kernel

theorem row176_layer007_checked :
    coverLayerCheck row176.height row176.goods { lower := 3942400, upper := 7884800, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layer008_checked :
    coverLayerCheck row176.height row176.goods { lower := 7884800, upper := 10000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_layers_checked :
    row176.layers.all (coverLayerCheck row176.height row176.goods) = true := by
  change row176_layers.all (coverLayerCheck row176.height row176.goods) = true
  simp only [row176_layers, List.all_cons, List.all_nil,
    row176_layer000_checked,
    row176_layer001_checked,
    row176_layer002_checked,
    row176_layer003_checked,
    row176_layer004_checked,
    row176_layer005_checked,
    row176_layer006_checked,
    row176_layer007_checked,
    row176_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_checked : finiteCoverRowCheck row176 = true := by
  simp only [finiteCoverRowCheck, row176_registered, row176_goods_checked,
    row176_small_checked, row176_layerCover_checked, row176_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i176 :
    ∀ n j : ℕ, 1 ≤ 176 ∧ 176 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 176 ≤ p ∧ p ∣ Nat.choose n 176 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row176_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i176
