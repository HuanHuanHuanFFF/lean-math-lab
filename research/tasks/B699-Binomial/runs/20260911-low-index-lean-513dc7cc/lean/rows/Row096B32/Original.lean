import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row096B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer001_pairs002 :
    row096_layer001_block002.all (fun I => row096_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row096_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer001_pairs003 :
    row096_layer001_block003.all (fun I => row096_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row096_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer001_pairs004 :
    row096_layer001_block004.all (fun I => row096_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row096_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer001_pairs005 :
    row096_layer001_block005.all (fun I => row096_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row096_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer001_pairs006 :
    row096_layer001_block006.all (fun I => row096_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row096_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer001_chunks_eq : row096_layer001_chunks.flatten = row096_layer001_intervals := by
  rfl

theorem row096_layer001_pairs : pairCoverCheck row096_layer001_intervals row096_bounds = true := by
  apply pairCoverCheck_of_chunks row096_layer001_chunks_eq
  intro block hblock
  simp only [row096_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row096_layer001_pairs000
  · exact row096_layer001_pairs001
  · exact row096_layer001_pairs002
  · exact row096_layer001_pairs003
  · exact row096_layer001_pairs004
  · exact row096_layer001_pairs005
  · exact row096_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer001_checked :
    coverLayerCheck row096.height row096.goods { lower := 18240, upper := 36480, M := 16 } = true := by
  exact coverLayerCheck_of_parts row096_layer001_arithmetic row096_layer001_enumeration row096_bounds_eq row096_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer002_checked :
    coverLayerCheck row096.height row096.goods { lower := 36480, upper := 72960, M := 12 } = true := by
  decide +kernel

theorem row096_layer003_checked :
    coverLayerCheck row096.height row096.goods { lower := 72960, upper := 145920, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer004_checked :
    coverLayerCheck row096.height row096.goods { lower := 145920, upper := 291840, M := 8 } = true := by
  decide +kernel

theorem row096_layer005_checked :
    coverLayerCheck row096.height row096.goods { lower := 291840, upper := 583680, M := 7 } = true := by
  decide +kernel

theorem row096_layer006_checked :
    coverLayerCheck row096.height row096.goods { lower := 583680, upper := 1167360, M := 5 } = true := by
  decide +kernel

theorem row096_layer007_checked :
    coverLayerCheck row096.height row096.goods { lower := 1167360, upper := 2334720, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer008_checked :
    coverLayerCheck row096.height row096.goods { lower := 2334720, upper := 4669440, M := 4 } = true := by
  decide +kernel

theorem row096_layer009_checked :
    coverLayerCheck row096.height row096.goods { lower := 4669440, upper := 9338880, M := 3 } = true := by
  decide +kernel

theorem row096_layer010_checked :
    coverLayerCheck row096.height row096.goods { lower := 9338880, upper := 18677760, M := 2 } = true := by
  decide +kernel

theorem row096_layer011_checked :
    coverLayerCheck row096.height row096.goods { lower := 18677760, upper := 37355520, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer012_checked :
    coverLayerCheck row096.height row096.goods { lower := 37355520, upper := 74711040, M := 2 } = true := by
  decide +kernel

theorem row096_layer013_checked :
    coverLayerCheck row096.height row096.goods { lower := 74711040, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer013_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layers_checked :
    row096.layers.all (coverLayerCheck row096.height row096.goods) = true := by
  change row096_layers.all (coverLayerCheck row096.height row096.goods) = true
  simp only [row096_layers, List.all_cons, List.all_nil,
    row096_layer000_checked,
    row096_layer001_checked,
    row096_layer002_checked,
    row096_layer003_checked,
    row096_layer004_checked,
    row096_layer005_checked,
    row096_layer006_checked,
    row096_layer007_checked,
    row096_layer008_checked,
    row096_layer009_checked,
    row096_layer010_checked,
    row096_layer011_checked,
    row096_layer012_checked,
    row096_layer013_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_checked : finiteCoverRowCheck row096 = true := by
  simp only [finiteCoverRowCheck, row096_registered, row096_goods_checked,
    row096_small_checked, row096_layerCover_checked, row096_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i096 :
    ∀ n j : ℕ, 1 ≤ 96 ∧ 96 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 96 ≤ p ∧ p ∣ Nat.choose n 96 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row096_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i096
