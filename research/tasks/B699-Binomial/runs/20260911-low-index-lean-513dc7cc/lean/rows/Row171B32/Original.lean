import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row171B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer001_arithmetic : LayerArithmeticValid row171.height { lower := 58140, upper := 116280, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer001_enumeration :
    activePowerIntervalList 171 10 58140 116280 = row171_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer001_pairs000 :
    row171_layer001_block000.all (fun I => row171_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row171_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer001_pairs001 :
    row171_layer001_block001.all (fun I => row171_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row171_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer001_pairs002 :
    row171_layer001_block002.all (fun I => row171_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row171_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer001_pairs003 :
    row171_layer001_block003.all (fun I => row171_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row171_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer001_pairs004 :
    row171_layer001_block004.all (fun I => row171_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row171_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer001_pairs005 :
    row171_layer001_block005.all (fun I => row171_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row171_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer001_pairs006 :
    row171_layer001_block006.all (fun I => row171_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row171_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer001_chunks_eq : row171_layer001_chunks.flatten = row171_layer001_intervals := by
  rfl

theorem row171_layer001_pairs : pairCoverCheck row171_layer001_intervals row171_bounds = true := by
  apply pairCoverCheck_of_chunks row171_layer001_chunks_eq
  intro block hblock
  simp only [row171_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row171_layer001_pairs000
  · exact row171_layer001_pairs001
  · exact row171_layer001_pairs002
  · exact row171_layer001_pairs003
  · exact row171_layer001_pairs004
  · exact row171_layer001_pairs005
  · exact row171_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer001_checked :
    coverLayerCheck row171.height row171.goods { lower := 58140, upper := 116280, M := 10 } = true := by
  exact coverLayerCheck_of_parts row171_layer001_arithmetic row171_layer001_enumeration row171_bounds_eq row171_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer002_checked :
    coverLayerCheck row171.height row171.goods { lower := 116280, upper := 232560, M := 7 } = true := by
  decide +kernel

theorem row171_layer003_checked :
    coverLayerCheck row171.height row171.goods { lower := 232560, upper := 465120, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer004_checked :
    coverLayerCheck row171.height row171.goods { lower := 465120, upper := 930240, M := 4 } = true := by
  decide +kernel

theorem row171_layer005_checked :
    coverLayerCheck row171.height row171.goods { lower := 930240, upper := 1860480, M := 3 } = true := by
  decide +kernel

theorem row171_layer006_checked :
    coverLayerCheck row171.height row171.goods { lower := 1860480, upper := 3720960, M := 2 } = true := by
  decide +kernel

theorem row171_layer007_checked :
    coverLayerCheck row171.height row171.goods { lower := 3720960, upper := 7441920, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer008_checked :
    coverLayerCheck row171.height row171.goods { lower := 7441920, upper := 10000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layers_checked :
    row171.layers.all (coverLayerCheck row171.height row171.goods) = true := by
  change row171_layers.all (coverLayerCheck row171.height row171.goods) = true
  simp only [row171_layers, List.all_cons, List.all_nil,
    row171_layer000_checked,
    row171_layer001_checked,
    row171_layer002_checked,
    row171_layer003_checked,
    row171_layer004_checked,
    row171_layer005_checked,
    row171_layer006_checked,
    row171_layer007_checked,
    row171_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_checked : finiteCoverRowCheck row171 = true := by
  simp only [finiteCoverRowCheck, row171_registered, row171_goods_checked,
    row171_small_checked, row171_layerCover_checked, row171_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i171 :
    ∀ n j : ℕ, 1 ≤ 171 ∧ 171 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 171 ≤ p ∧ p ∣ Nat.choose n 171 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row171_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i171
