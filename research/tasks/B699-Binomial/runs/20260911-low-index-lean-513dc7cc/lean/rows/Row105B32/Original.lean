import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row105B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row105B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer003_pairs000 :
    row105_layer003_block000.all (fun I => row105_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer003_pairs001 :
    row105_layer003_block001.all (fun I => row105_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer003_pairs002 :
    row105_layer003_block002.all (fun I => row105_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer003_pairs003 :
    row105_layer003_block003.all (fun I => row105_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer003_pairs004 :
    row105_layer003_block004.all (fun I => row105_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer003_chunks_eq : row105_layer003_chunks.flatten = row105_layer003_intervals := by
  rfl

theorem row105_layer003_pairs : pairCoverCheck row105_layer003_intervals row105_bounds = true := by
  apply pairCoverCheck_of_chunks row105_layer003_chunks_eq
  intro block hblock
  simp only [row105_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row105_layer003_pairs000
  · exact row105_layer003_pairs001
  · exact row105_layer003_pairs002
  · exact row105_layer003_pairs003
  · exact row105_layer003_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer003_checked :
    coverLayerCheck row105.height row105.goods { lower := 87360, upper := 174720, M := 14 } = true := by
  exact coverLayerCheck_of_parts row105_layer003_arithmetic row105_layer003_enumeration row105_bounds_eq row105_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer004_checked :
    coverLayerCheck row105.height row105.goods { lower := 174720, upper := 349440, M := 11 } = true := by
  decide +kernel

theorem row105_layer005_checked :
    coverLayerCheck row105.height row105.goods { lower := 349440, upper := 698880, M := 9 } = true := by
  decide +kernel

theorem row105_layer006_checked :
    coverLayerCheck row105.height row105.goods { lower := 698880, upper := 1397760, M := 8 } = true := by
  decide +kernel

theorem row105_layer007_checked :
    coverLayerCheck row105.height row105.goods { lower := 1397760, upper := 2795520, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer008_checked :
    coverLayerCheck row105.height row105.goods { lower := 2795520, upper := 5591040, M := 5 } = true := by
  decide +kernel

theorem row105_layer009_checked :
    coverLayerCheck row105.height row105.goods { lower := 5591040, upper := 11182080, M := 4 } = true := by
  decide +kernel

theorem row105_layer010_checked :
    coverLayerCheck row105.height row105.goods { lower := 11182080, upper := 22364160, M := 4 } = true := by
  decide +kernel

theorem row105_layer011_checked :
    coverLayerCheck row105.height row105.goods { lower := 22364160, upper := 44728320, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer012_checked :
    coverLayerCheck row105.height row105.goods { lower := 44728320, upper := 89456640, M := 3 } = true := by
  decide +kernel

theorem row105_layer013_checked :
    coverLayerCheck row105.height row105.goods { lower := 89456640, upper := 178913280, M := 2 } = true := by
  decide +kernel

theorem row105_layer014_checked :
    coverLayerCheck row105.height row105.goods { lower := 178913280, upper := 357826560, M := 2 } = true := by
  decide +kernel

theorem row105_layer015_checked :
    coverLayerCheck row105.height row105.goods { lower := 357826560, upper := 715653120, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer016_checked :
    coverLayerCheck row105.height row105.goods { lower := 715653120, upper := 1000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layers_checked :
    row105.layers.all (coverLayerCheck row105.height row105.goods) = true := by
  change row105_layers.all (coverLayerCheck row105.height row105.goods) = true
  simp only [row105_layers, List.all_cons, List.all_nil,
    row105_layer000_checked,
    row105_layer001_checked,
    row105_layer002_checked,
    row105_layer003_checked,
    row105_layer004_checked,
    row105_layer005_checked,
    row105_layer006_checked,
    row105_layer007_checked,
    row105_layer008_checked,
    row105_layer009_checked,
    row105_layer010_checked,
    row105_layer011_checked,
    row105_layer012_checked,
    row105_layer013_checked,
    row105_layer014_checked,
    row105_layer015_checked,
    row105_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_checked : finiteCoverRowCheck row105 = true := by
  simp only [finiteCoverRowCheck, row105_registered, row105_goods_checked,
    row105_small_checked, row105_layerCover_checked, row105_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i105 :
    ∀ n j : ℕ, 1 ≤ 105 ∧ 105 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 105 ≤ p ∧ p ∣ Nat.choose n 105 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row105_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i105
