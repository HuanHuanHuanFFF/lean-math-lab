import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row160B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer001_arithmetic : LayerArithmeticValid row160.height { lower := 50880, upper := 101760, M := 11 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer001_enumeration :
    activePowerIntervalList 160 11 50880 101760 = row160_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer001_pairs000 :
    row160_layer001_block000.all (fun I => row160_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row160_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer001_pairs001 :
    row160_layer001_block001.all (fun I => row160_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row160_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer001_pairs002 :
    row160_layer001_block002.all (fun I => row160_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row160_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer001_pairs003 :
    row160_layer001_block003.all (fun I => row160_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row160_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer001_pairs004 :
    row160_layer001_block004.all (fun I => row160_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row160_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer001_pairs005 :
    row160_layer001_block005.all (fun I => row160_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row160_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer001_chunks_eq : row160_layer001_chunks.flatten = row160_layer001_intervals := by
  rfl

theorem row160_layer001_pairs : pairCoverCheck row160_layer001_intervals row160_bounds = true := by
  apply pairCoverCheck_of_chunks row160_layer001_chunks_eq
  intro block hblock
  simp only [row160_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row160_layer001_pairs000
  · exact row160_layer001_pairs001
  · exact row160_layer001_pairs002
  · exact row160_layer001_pairs003
  · exact row160_layer001_pairs004
  · exact row160_layer001_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer001_checked :
    coverLayerCheck row160.height row160.goods { lower := 50880, upper := 101760, M := 11 } = true := by
  exact coverLayerCheck_of_parts row160_layer001_arithmetic row160_layer001_enumeration row160_bounds_eq row160_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer002_checked :
    coverLayerCheck row160.height row160.goods { lower := 101760, upper := 203520, M := 8 } = true := by
  decide +kernel

theorem row160_layer003_checked :
    coverLayerCheck row160.height row160.goods { lower := 203520, upper := 407040, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer004_checked :
    coverLayerCheck row160.height row160.goods { lower := 407040, upper := 814080, M := 5 } = true := by
  decide +kernel

theorem row160_layer005_checked :
    coverLayerCheck row160.height row160.goods { lower := 814080, upper := 1628160, M := 4 } = true := by
  decide +kernel

theorem row160_layer006_checked :
    coverLayerCheck row160.height row160.goods { lower := 1628160, upper := 3256320, M := 3 } = true := by
  decide +kernel

theorem row160_layer007_checked :
    coverLayerCheck row160.height row160.goods { lower := 3256320, upper := 6512640, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer008_checked :
    coverLayerCheck row160.height row160.goods { lower := 6512640, upper := 13025280, M := 2 } = true := by
  decide +kernel

theorem row160_layer009_checked :
    coverLayerCheck row160.height row160.goods { lower := 13025280, upper := 26050560, M := 1 } = true := by
  decide +kernel

theorem row160_layer010_checked :
    coverLayerCheck row160.height row160.goods { lower := 26050560, upper := 52101120, M := 1 } = true := by
  decide +kernel

theorem row160_layer011_checked :
    coverLayerCheck row160.height row160.goods { lower := 52101120, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layers_checked :
    row160.layers.all (coverLayerCheck row160.height row160.goods) = true := by
  change row160_layers.all (coverLayerCheck row160.height row160.goods) = true
  simp only [row160_layers, List.all_cons, List.all_nil,
    row160_layer000_checked,
    row160_layer001_checked,
    row160_layer002_checked,
    row160_layer003_checked,
    row160_layer004_checked,
    row160_layer005_checked,
    row160_layer006_checked,
    row160_layer007_checked,
    row160_layer008_checked,
    row160_layer009_checked,
    row160_layer010_checked,
    row160_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_checked : finiteCoverRowCheck row160 = true := by
  simp only [finiteCoverRowCheck, row160_registered, row160_goods_checked,
    row160_small_checked, row160_layerCover_checked, row160_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i160 :
    ∀ n j : ℕ, 1 ≤ 160 ∧ 160 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 160 ≤ p ∧ p ∣ Nat.choose n 160 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row160_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i160
