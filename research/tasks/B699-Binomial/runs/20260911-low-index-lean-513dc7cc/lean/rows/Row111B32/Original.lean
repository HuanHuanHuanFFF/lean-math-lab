import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row111B32.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row111B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer005_enumeration :
    activePowerIntervalList 111 11 390720 781440 = row111_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer005_pairs000 :
    row111_layer005_block000.all (fun I => row111_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer005_pairs001 :
    row111_layer005_block001.all (fun I => row111_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer005_pairs002 :
    row111_layer005_block002.all (fun I => row111_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer005_pairs003 :
    row111_layer005_block003.all (fun I => row111_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer005_pairs004 :
    row111_layer005_block004.all (fun I => row111_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer005_chunks_eq : row111_layer005_chunks.flatten = row111_layer005_intervals := by
  rfl

theorem row111_layer005_pairs : pairCoverCheck row111_layer005_intervals row111_bounds = true := by
  apply pairCoverCheck_of_chunks row111_layer005_chunks_eq
  intro block hblock
  simp only [row111_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row111_layer005_pairs000
  · exact row111_layer005_pairs001
  · exact row111_layer005_pairs002
  · exact row111_layer005_pairs003
  · exact row111_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer005_checked :
    coverLayerCheck row111.height row111.goods { lower := 390720, upper := 781440, M := 11 } = true := by
  exact coverLayerCheck_of_parts row111_layer005_arithmetic row111_layer005_enumeration row111_bounds_eq row111_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer004_checked :
    coverLayerCheck row111.height row111.goods { lower := 195360, upper := 390720, M := 13 } = true := by
  decide +kernel

theorem row111_layer006_checked :
    coverLayerCheck row111.height row111.goods { lower := 781440, upper := 1562880, M := 9 } = true := by
  decide +kernel

theorem row111_layer007_checked :
    coverLayerCheck row111.height row111.goods { lower := 1562880, upper := 3125760, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer008_checked :
    coverLayerCheck row111.height row111.goods { lower := 3125760, upper := 6251520, M := 7 } = true := by
  decide +kernel

theorem row111_layer009_checked :
    coverLayerCheck row111.height row111.goods { lower := 6251520, upper := 12503040, M := 6 } = true := by
  decide +kernel

theorem row111_layer010_checked :
    coverLayerCheck row111.height row111.goods { lower := 12503040, upper := 25006080, M := 5 } = true := by
  decide +kernel

theorem row111_layer011_checked :
    coverLayerCheck row111.height row111.goods { lower := 25006080, upper := 50012160, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer012_checked :
    coverLayerCheck row111.height row111.goods { lower := 50012160, upper := 100024320, M := 3 } = true := by
  decide +kernel

theorem row111_layer013_checked :
    coverLayerCheck row111.height row111.goods { lower := 100024320, upper := 200048640, M := 3 } = true := by
  decide +kernel

theorem row111_layer014_checked :
    coverLayerCheck row111.height row111.goods { lower := 200048640, upper := 400097280, M := 2 } = true := by
  decide +kernel

theorem row111_layer015_checked :
    coverLayerCheck row111.height row111.goods { lower := 400097280, upper := 800194560, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer016_checked :
    coverLayerCheck row111.height row111.goods { lower := 800194560, upper := 1600389120, M := 2 } = true := by
  decide +kernel

theorem row111_layer017_checked :
    coverLayerCheck row111.height row111.goods { lower := 1600389120, upper := 3200778240, M := 2 } = true := by
  decide +kernel

theorem row111_layer018_checked :
    coverLayerCheck row111.height row111.goods { lower := 3200778240, upper := 6401556480, M := 1 } = true := by
  decide +kernel

theorem row111_layer019_checked :
    coverLayerCheck row111.height row111.goods { lower := 6401556480, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layers_checked :
    row111.layers.all (coverLayerCheck row111.height row111.goods) = true := by
  change row111_layers.all (coverLayerCheck row111.height row111.goods) = true
  simp only [row111_layers, List.all_cons, List.all_nil,
    row111_layer000_checked,
    row111_layer001_checked,
    row111_layer002_checked,
    row111_layer003_checked,
    row111_layer004_checked,
    row111_layer005_checked,
    row111_layer006_checked,
    row111_layer007_checked,
    row111_layer008_checked,
    row111_layer009_checked,
    row111_layer010_checked,
    row111_layer011_checked,
    row111_layer012_checked,
    row111_layer013_checked,
    row111_layer014_checked,
    row111_layer015_checked,
    row111_layer016_checked,
    row111_layer017_checked,
    row111_layer018_checked,
    row111_layer019_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_checked : finiteCoverRowCheck row111 = true := by
  simp only [finiteCoverRowCheck, row111_registered, row111_goods_checked,
    row111_small_checked, row111_layerCover_checked, row111_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i111 :
    ∀ n j : ℕ, 1 ≤ 111 ∧ 111 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 111 ≤ p ∧ p ∣ Nat.choose n 111 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row111_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i111
