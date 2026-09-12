import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row166B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer001_arithmetic : LayerArithmeticValid row166.height { lower := 54780, upper := 109560, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer001_enumeration :
    activePowerIntervalList 166 10 54780 109560 = row166_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer001_pairs000 :
    row166_layer001_block000.all (fun I => row166_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row166_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer001_pairs001 :
    row166_layer001_block001.all (fun I => row166_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row166_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer001_pairs002 :
    row166_layer001_block002.all (fun I => row166_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row166_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer001_pairs003 :
    row166_layer001_block003.all (fun I => row166_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row166_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer001_pairs004 :
    row166_layer001_block004.all (fun I => row166_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row166_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer001_pairs005 :
    row166_layer001_block005.all (fun I => row166_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row166_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer001_pairs006 :
    row166_layer001_block006.all (fun I => row166_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row166_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer001_chunks_eq : row166_layer001_chunks.flatten = row166_layer001_intervals := by
  rfl

theorem row166_layer001_pairs : pairCoverCheck row166_layer001_intervals row166_bounds = true := by
  apply pairCoverCheck_of_chunks row166_layer001_chunks_eq
  intro block hblock
  simp only [row166_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row166_layer001_pairs000
  · exact row166_layer001_pairs001
  · exact row166_layer001_pairs002
  · exact row166_layer001_pairs003
  · exact row166_layer001_pairs004
  · exact row166_layer001_pairs005
  · exact row166_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer001_checked :
    coverLayerCheck row166.height row166.goods { lower := 54780, upper := 109560, M := 10 } = true := by
  exact coverLayerCheck_of_parts row166_layer001_arithmetic row166_layer001_enumeration row166_bounds_eq row166_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer002_checked :
    coverLayerCheck row166.height row166.goods { lower := 109560, upper := 219120, M := 7 } = true := by
  decide +kernel

theorem row166_layer003_checked :
    coverLayerCheck row166.height row166.goods { lower := 219120, upper := 438240, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer004_checked :
    coverLayerCheck row166.height row166.goods { lower := 438240, upper := 876480, M := 4 } = true := by
  decide +kernel

theorem row166_layer005_checked :
    coverLayerCheck row166.height row166.goods { lower := 876480, upper := 1752960, M := 3 } = true := by
  decide +kernel

theorem row166_layer006_checked :
    coverLayerCheck row166.height row166.goods { lower := 1752960, upper := 3505920, M := 2 } = true := by
  decide +kernel

theorem row166_layer007_checked :
    coverLayerCheck row166.height row166.goods { lower := 3505920, upper := 7011840, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layer008_checked :
    coverLayerCheck row166.height row166.goods { lower := 7011840, upper := 10000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_layers_checked :
    row166.layers.all (coverLayerCheck row166.height row166.goods) = true := by
  change row166_layers.all (coverLayerCheck row166.height row166.goods) = true
  simp only [row166_layers, List.all_cons, List.all_nil,
    row166_layer000_checked,
    row166_layer001_checked,
    row166_layer002_checked,
    row166_layer003_checked,
    row166_layer004_checked,
    row166_layer005_checked,
    row166_layer006_checked,
    row166_layer007_checked,
    row166_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row166_checked : finiteCoverRowCheck row166 = true := by
  simp only [finiteCoverRowCheck, row166_registered, row166_goods_checked,
    row166_small_checked, row166_layerCover_checked, row166_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row166_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i166 :
    ∀ n j : ℕ, 1 ≤ 166 ∧ 166 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 166 ≤ p ∧ p ∣ Nat.choose n 166 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row166_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i166
