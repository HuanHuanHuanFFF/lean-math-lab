import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row170B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer001_arithmetic : LayerArithmeticValid row170.height { lower := 57460, upper := 114920, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer001_enumeration :
    activePowerIntervalList 170 10 57460 114920 = row170_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer001_pairs000 :
    row170_layer001_block000.all (fun I => row170_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row170_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer001_pairs001 :
    row170_layer001_block001.all (fun I => row170_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row170_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer001_pairs002 :
    row170_layer001_block002.all (fun I => row170_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row170_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer001_pairs003 :
    row170_layer001_block003.all (fun I => row170_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row170_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer001_pairs004 :
    row170_layer001_block004.all (fun I => row170_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row170_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer001_pairs005 :
    row170_layer001_block005.all (fun I => row170_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row170_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer001_chunks_eq : row170_layer001_chunks.flatten = row170_layer001_intervals := by
  rfl

theorem row170_layer001_pairs : pairCoverCheck row170_layer001_intervals row170_bounds = true := by
  apply pairCoverCheck_of_chunks row170_layer001_chunks_eq
  intro block hblock
  simp only [row170_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row170_layer001_pairs000
  · exact row170_layer001_pairs001
  · exact row170_layer001_pairs002
  · exact row170_layer001_pairs003
  · exact row170_layer001_pairs004
  · exact row170_layer001_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer001_checked :
    coverLayerCheck row170.height row170.goods { lower := 57460, upper := 114920, M := 10 } = true := by
  exact coverLayerCheck_of_parts row170_layer001_arithmetic row170_layer001_enumeration row170_bounds_eq row170_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer002_checked :
    coverLayerCheck row170.height row170.goods { lower := 114920, upper := 229840, M := 8 } = true := by
  decide +kernel

theorem row170_layer003_checked :
    coverLayerCheck row170.height row170.goods { lower := 229840, upper := 459680, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer004_checked :
    coverLayerCheck row170.height row170.goods { lower := 459680, upper := 919360, M := 4 } = true := by
  decide +kernel

theorem row170_layer005_checked :
    coverLayerCheck row170.height row170.goods { lower := 919360, upper := 1838720, M := 3 } = true := by
  decide +kernel

theorem row170_layer006_checked :
    coverLayerCheck row170.height row170.goods { lower := 1838720, upper := 3677440, M := 3 } = true := by
  decide +kernel

theorem row170_layer007_checked :
    coverLayerCheck row170.height row170.goods { lower := 3677440, upper := 7354880, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer008_checked :
    coverLayerCheck row170.height row170.goods { lower := 7354880, upper := 10000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layers_checked :
    row170.layers.all (coverLayerCheck row170.height row170.goods) = true := by
  change row170_layers.all (coverLayerCheck row170.height row170.goods) = true
  simp only [row170_layers, List.all_cons, List.all_nil,
    row170_layer000_checked,
    row170_layer001_checked,
    row170_layer002_checked,
    row170_layer003_checked,
    row170_layer004_checked,
    row170_layer005_checked,
    row170_layer006_checked,
    row170_layer007_checked,
    row170_layer008_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_checked : finiteCoverRowCheck row170 = true := by
  simp only [finiteCoverRowCheck, row170_registered, row170_goods_checked,
    row170_small_checked, row170_layerCover_checked, row170_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i170 :
    ∀ n j : ℕ, 1 ≤ 170 ∧ 170 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 170 ≤ p ∧ p ∣ Nat.choose n 170 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row170_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i170
