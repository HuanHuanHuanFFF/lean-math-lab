import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate4.Block053
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate4.Block054
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate4.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer017_chunks_eq : row046_layer017_chunks.flatten = row046_layer017_intervals := by
  rfl

theorem row046_layer017_pairs : pairCoverCheck row046_layer017_intervals row046_bounds = true := by
  apply pairCoverCheck_of_chunks row046_layer017_chunks_eq
  intro block hblock
  simp only [row046_layer017_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row046_layer017_pairs000
  · exact row046_layer017_pairs001
  · exact row046_layer017_pairs002
  · exact row046_layer017_pairs003
  · exact row046_layer017_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer017_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer017_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer017_checked :
    coverLayerCheck row046.height row046.goods { lower := 271319040, upper := 542638080, M := 15 } = true := by
  exact coverLayerCheck_of_parts row046_layer017_arithmetic row046_layer017_enumeration row046_bounds_eq row046_layer017_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer017_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer016_checked :
    coverLayerCheck row046.height row046.goods { lower := 135659520, upper := 271319040, M := 16 } = true := by
  decide +kernel

theorem row046_layer018_checked :
    coverLayerCheck row046.height row046.goods { lower := 542638080, upper := 1085276160, M := 15 } = true := by
  decide +kernel

theorem row046_layer019_checked :
    coverLayerCheck row046.height row046.goods { lower := 1085276160, upper := 2170552320, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer020_checked :
    coverLayerCheck row046.height row046.goods { lower := 2170552320, upper := 4341104640, M := 13 } = true := by
  decide +kernel

theorem row046_layer021_checked :
    coverLayerCheck row046.height row046.goods { lower := 4341104640, upper := 8682209280, M := 13 } = true := by
  decide +kernel

theorem row046_layer022_checked :
    coverLayerCheck row046.height row046.goods { lower := 8682209280, upper := 17364418560, M := 12 } = true := by
  decide +kernel

theorem row046_layer023_checked :
    coverLayerCheck row046.height row046.goods { lower := 17364418560, upper := 34728837120, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer023_checked
