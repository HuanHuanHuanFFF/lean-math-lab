import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row103B16.Block003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row103B16.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row103B16.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row103B16.Block001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer003_enumeration :
    activePowerIntervalList 103 11 84048 168096 = row103_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer003_pairs000 :
    row103_layer003_block000.all (fun I => row103_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer003_pairs001 :
    row103_layer003_block001.all (fun I => row103_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer003_pairs002 :
    row103_layer003_block002.all (fun I => row103_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer003_pairs003 :
    row103_layer003_block003.all (fun I => row103_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer003_pairs004 :
    row103_layer003_block004.all (fun I => row103_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer003_chunks_eq : row103_layer003_chunks.flatten = row103_layer003_intervals := by
  rfl

theorem row103_layer003_pairs : pairCoverCheck row103_layer003_intervals row103_bounds = true := by
  apply pairCoverCheck_of_chunks row103_layer003_chunks_eq
  intro block hblock
  simp only [row103_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row103_layer003_pairs000
  · exact row103_layer003_pairs001
  · exact row103_layer003_pairs002
  · exact row103_layer003_pairs003
  · exact row103_layer003_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer003_checked :
    coverLayerCheck row103.height row103.goods { lower := 84048, upper := 168096, M := 11 } = true := by
  exact coverLayerCheck_of_parts row103_layer003_arithmetic row103_layer003_enumeration row103_bounds_eq row103_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer004_checked :
    coverLayerCheck row103.height row103.goods { lower := 168096, upper := 336192, M := 9 } = true := by
  decide +kernel

theorem row103_layer005_checked :
    coverLayerCheck row103.height row103.goods { lower := 336192, upper := 672384, M := 7 } = true := by
  decide +kernel

theorem row103_layer006_checked :
    coverLayerCheck row103.height row103.goods { lower := 672384, upper := 1344768, M := 6 } = true := by
  decide +kernel

theorem row103_layer007_checked :
    coverLayerCheck row103.height row103.goods { lower := 1344768, upper := 2689536, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer008_checked :
    coverLayerCheck row103.height row103.goods { lower := 2689536, upper := 5379072, M := 4 } = true := by
  decide +kernel

theorem row103_layer009_checked :
    coverLayerCheck row103.height row103.goods { lower := 5379072, upper := 10758144, M := 3 } = true := by
  decide +kernel

theorem row103_layer010_checked :
    coverLayerCheck row103.height row103.goods { lower := 10758144, upper := 21516288, M := 3 } = true := by
  decide +kernel

theorem row103_layer011_checked :
    coverLayerCheck row103.height row103.goods { lower := 21516288, upper := 43032576, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer012_checked :
    coverLayerCheck row103.height row103.goods { lower := 43032576, upper := 86065152, M := 2 } = true := by
  decide +kernel

theorem row103_layer013_checked :
    coverLayerCheck row103.height row103.goods { lower := 86065152, upper := 172130304, M := 2 } = true := by
  decide +kernel

theorem row103_layer014_checked :
    coverLayerCheck row103.height row103.goods { lower := 172130304, upper := 344260608, M := 1 } = true := by
  decide +kernel

theorem row103_layer015_checked :
    coverLayerCheck row103.height row103.goods { lower := 344260608, upper := 688521216, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer016_checked :
    coverLayerCheck row103.height row103.goods { lower := 688521216, upper := 1000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layers_checked :
    row103.layers.all (coverLayerCheck row103.height row103.goods) = true := by
  change row103_layers.all (coverLayerCheck row103.height row103.goods) = true
  simp only [row103_layers, List.all_cons, List.all_nil,
    row103_layer000_checked,
    row103_layer001_checked,
    row103_layer002_checked,
    row103_layer003_checked,
    row103_layer004_checked,
    row103_layer005_checked,
    row103_layer006_checked,
    row103_layer007_checked,
    row103_layer008_checked,
    row103_layer009_checked,
    row103_layer010_checked,
    row103_layer011_checked,
    row103_layer012_checked,
    row103_layer013_checked,
    row103_layer014_checked,
    row103_layer015_checked,
    row103_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_checked : finiteCoverRowCheck row103 = true := by
  simp only [finiteCoverRowCheck, row103_registered, row103_goods_checked,
    row103_small_checked, row103_layerCover_checked, row103_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i103 :
    ∀ n j : ℕ, 1 ≤ 103 ∧ 103 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 103 ≤ p ∧ p ∣ Nat.choose n 103 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row103_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i103
