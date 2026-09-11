import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row182B8.Block006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row182B8.Block004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row182B8.Block005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row182B8.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row182B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_chunks_eq : row182_layer002_chunks.flatten = row182_layer002_intervals := by
  rfl

theorem row182_layer002_pairs : pairCoverCheck row182_layer002_intervals row182_bounds = true := by
  apply pairCoverCheck_of_chunks row182_layer002_chunks_eq
  intro block hblock
  simp only [row182_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row182_layer002_pairs000
  · exact row182_layer002_pairs001
  · exact row182_layer002_pairs002
  · exact row182_layer002_pairs003
  · exact row182_layer002_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_checked :
    coverLayerCheck row182.height row182.goods { lower := 131768, upper := 263536, M := 8 } = true := by
  exact coverLayerCheck_of_parts row182_layer002_arithmetic row182_layer002_enumeration row182_bounds_eq row182_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer003_checked :
    coverLayerCheck row182.height row182.goods { lower := 263536, upper := 527072, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer004_checked :
    coverLayerCheck row182.height row182.goods { lower := 527072, upper := 1054144, M := 5 } = true := by
  decide +kernel

theorem row182_layer005_checked :
    coverLayerCheck row182.height row182.goods { lower := 1054144, upper := 2108288, M := 4 } = true := by
  decide +kernel

theorem row182_layer006_checked :
    coverLayerCheck row182.height row182.goods { lower := 2108288, upper := 4216576, M := 3 } = true := by
  decide +kernel

theorem row182_layer007_checked :
    coverLayerCheck row182.height row182.goods { lower := 4216576, upper := 8433152, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer008_checked :
    coverLayerCheck row182.height row182.goods { lower := 8433152, upper := 16866304, M := 2 } = true := by
  decide +kernel

theorem row182_layer009_checked :
    coverLayerCheck row182.height row182.goods { lower := 16866304, upper := 33732608, M := 1 } = true := by
  decide +kernel

theorem row182_layer010_checked :
    coverLayerCheck row182.height row182.goods { lower := 33732608, upper := 67465216, M := 1 } = true := by
  decide +kernel

theorem row182_layer011_checked :
    coverLayerCheck row182.height row182.goods { lower := 67465216, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layers_checked :
    row182.layers.all (coverLayerCheck row182.height row182.goods) = true := by
  change row182_layers.all (coverLayerCheck row182.height row182.goods) = true
  simp only [row182_layers, List.all_cons, List.all_nil,
    row182_layer000_checked,
    row182_layer001_checked,
    row182_layer002_checked,
    row182_layer003_checked,
    row182_layer004_checked,
    row182_layer005_checked,
    row182_layer006_checked,
    row182_layer007_checked,
    row182_layer008_checked,
    row182_layer009_checked,
    row182_layer010_checked,
    row182_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_checked : finiteCoverRowCheck row182 = true := by
  simp only [finiteCoverRowCheck, row182_registered, row182_goods_checked,
    row182_small_checked, row182_layerCover_checked, row182_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i182 :
    ∀ n j : ℕ, 1 ≤ 182 ∧ 182 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 182 ≤ p ∧ p ∣ Nat.choose n 182 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row182_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i182
