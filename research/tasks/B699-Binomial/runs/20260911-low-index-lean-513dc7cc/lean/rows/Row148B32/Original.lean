import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row148B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer001_enumeration :
    activePowerIntervalList 148 10 43512 87024 = row148_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer001_pairs000 :
    row148_layer001_block000.all (fun I => row148_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row148_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer001_pairs001 :
    row148_layer001_block001.all (fun I => row148_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row148_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer001_pairs002 :
    row148_layer001_block002.all (fun I => row148_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row148_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer001_pairs003 :
    row148_layer001_block003.all (fun I => row148_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row148_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer001_pairs004 :
    row148_layer001_block004.all (fun I => row148_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row148_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer001_pairs005 :
    row148_layer001_block005.all (fun I => row148_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row148_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer001_chunks_eq : row148_layer001_chunks.flatten = row148_layer001_intervals := by
  rfl

theorem row148_layer001_pairs : pairCoverCheck row148_layer001_intervals row148_bounds = true := by
  apply pairCoverCheck_of_chunks row148_layer001_chunks_eq
  intro block hblock
  simp only [row148_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row148_layer001_pairs000
  · exact row148_layer001_pairs001
  · exact row148_layer001_pairs002
  · exact row148_layer001_pairs003
  · exact row148_layer001_pairs004
  · exact row148_layer001_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer001_checked :
    coverLayerCheck row148.height row148.goods { lower := 43512, upper := 87024, M := 10 } = true := by
  exact coverLayerCheck_of_parts row148_layer001_arithmetic row148_layer001_enumeration row148_bounds_eq row148_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer002_checked :
    coverLayerCheck row148.height row148.goods { lower := 87024, upper := 174048, M := 7 } = true := by
  decide +kernel

theorem row148_layer003_checked :
    coverLayerCheck row148.height row148.goods { lower := 174048, upper := 348096, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer004_checked :
    coverLayerCheck row148.height row148.goods { lower := 348096, upper := 696192, M := 4 } = true := by
  decide +kernel

theorem row148_layer005_checked :
    coverLayerCheck row148.height row148.goods { lower := 696192, upper := 1392384, M := 3 } = true := by
  decide +kernel

theorem row148_layer006_checked :
    coverLayerCheck row148.height row148.goods { lower := 1392384, upper := 2784768, M := 2 } = true := by
  decide +kernel

theorem row148_layer007_checked :
    coverLayerCheck row148.height row148.goods { lower := 2784768, upper := 5569536, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layer008_checked :
    coverLayerCheck row148.height row148.goods { lower := 5569536, upper := 10000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_layers_checked :
    row148.layers.all (coverLayerCheck row148.height row148.goods) = true := by
  change row148_layers.all (coverLayerCheck row148.height row148.goods) = true
  simp only [row148_layers, List.all_cons, List.all_nil,
    row148_layer000_checked,
    row148_layer001_checked,
    row148_layer002_checked,
    row148_layer003_checked,
    row148_layer004_checked,
    row148_layer005_checked,
    row148_layer006_checked,
    row148_layer007_checked,
    row148_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_checked : finiteCoverRowCheck row148 = true := by
  simp only [finiteCoverRowCheck, row148_registered, row148_goods_checked,
    row148_small_checked, row148_layerCover_checked, row148_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i148 :
    ∀ n j : ℕ, 1 ≤ 148 ∧ 148 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 148 ≤ p ∧ p ∣ Nat.choose n 148 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row148_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i148
