import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row101B16.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row101B16.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row101B16.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer002_pairs001 :
    row101_layer002_block001.all (fun I => row101_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer002_pairs002 :
    row101_layer002_block002.all (fun I => row101_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer002_pairs003 :
    row101_layer002_block003.all (fun I => row101_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer002_pairs004 :
    row101_layer002_block004.all (fun I => row101_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer002_pairs005 :
    row101_layer002_block005.all (fun I => row101_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer002_chunks_eq : row101_layer002_chunks.flatten = row101_layer002_intervals := by
  rfl

theorem row101_layer002_pairs : pairCoverCheck row101_layer002_intervals row101_bounds = true := by
  apply pairCoverCheck_of_chunks row101_layer002_chunks_eq
  intro block hblock
  simp only [row101_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row101_layer002_pairs000
  · exact row101_layer002_pairs001
  · exact row101_layer002_pairs002
  · exact row101_layer002_pairs003
  · exact row101_layer002_pairs004
  · exact row101_layer002_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer002_checked :
    coverLayerCheck row101.height row101.goods { lower := 40400, upper := 80800, M := 12 } = true := by
  exact coverLayerCheck_of_parts row101_layer002_arithmetic row101_layer002_enumeration row101_bounds_eq row101_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer003_checked :
    coverLayerCheck row101.height row101.goods { lower := 80800, upper := 161600, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer004_checked :
    coverLayerCheck row101.height row101.goods { lower := 161600, upper := 323200, M := 7 } = true := by
  decide +kernel

theorem row101_layer005_checked :
    coverLayerCheck row101.height row101.goods { lower := 323200, upper := 646400, M := 6 } = true := by
  decide +kernel

theorem row101_layer006_checked :
    coverLayerCheck row101.height row101.goods { lower := 646400, upper := 1292800, M := 5 } = true := by
  decide +kernel

theorem row101_layer007_checked :
    coverLayerCheck row101.height row101.goods { lower := 1292800, upper := 2585600, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer008_checked :
    coverLayerCheck row101.height row101.goods { lower := 2585600, upper := 5171200, M := 3 } = true := by
  decide +kernel

theorem row101_layer009_checked :
    coverLayerCheck row101.height row101.goods { lower := 5171200, upper := 10342400, M := 3 } = true := by
  decide +kernel

theorem row101_layer010_checked :
    coverLayerCheck row101.height row101.goods { lower := 10342400, upper := 20684800, M := 2 } = true := by
  decide +kernel

theorem row101_layer011_checked :
    coverLayerCheck row101.height row101.goods { lower := 20684800, upper := 41369600, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer012_checked :
    coverLayerCheck row101.height row101.goods { lower := 41369600, upper := 82739200, M := 2 } = true := by
  decide +kernel

theorem row101_layer013_checked :
    coverLayerCheck row101.height row101.goods { lower := 82739200, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer013_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layers_checked :
    row101.layers.all (coverLayerCheck row101.height row101.goods) = true := by
  change row101_layers.all (coverLayerCheck row101.height row101.goods) = true
  simp only [row101_layers, List.all_cons, List.all_nil,
    row101_layer000_checked,
    row101_layer001_checked,
    row101_layer002_checked,
    row101_layer003_checked,
    row101_layer004_checked,
    row101_layer005_checked,
    row101_layer006_checked,
    row101_layer007_checked,
    row101_layer008_checked,
    row101_layer009_checked,
    row101_layer010_checked,
    row101_layer011_checked,
    row101_layer012_checked,
    row101_layer013_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_checked : finiteCoverRowCheck row101 = true := by
  simp only [finiteCoverRowCheck, row101_registered, row101_goods_checked,
    row101_small_checked, row101_layerCover_checked, row101_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i101 :
    ∀ n j : ℕ, 1 ≤ 101 ∧ 101 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 101 ≤ p ∧ p ∣ Nat.choose n 101 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row101_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i101
