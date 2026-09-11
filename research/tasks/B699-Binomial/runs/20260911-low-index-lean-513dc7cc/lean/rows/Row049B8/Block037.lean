import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block036
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block033
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block035
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_pairs001 :
    row049_layer019_block001.all (fun I => row049_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_pairs002 :
    row049_layer019_block002.all (fun I => row049_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_pairs003 :
    row049_layer019_block003.all (fun I => row049_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_pairs004 :
    row049_layer019_block004.all (fun I => row049_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_chunks_eq : row049_layer019_chunks.flatten = row049_layer019_intervals := by
  rfl

theorem row049_layer019_pairs : pairCoverCheck row049_layer019_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer019_chunks_eq
  intro block hblock
  simp only [row049_layer019_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row049_layer019_pairs000
  · exact row049_layer019_pairs001
  · exact row049_layer019_pairs002
  · exact row049_layer019_pairs003
  · exact row049_layer019_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_checked :
    coverLayerCheck row049.height row049.goods { lower := 1233125376, upper := 2466250752, M := 16 } = true := by
  exact coverLayerCheck_of_parts row049_layer019_arithmetic row049_layer019_enumeration row049_bounds_eq row049_layer019_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer020_checked :
    coverLayerCheck row049.height row049.goods { lower := 2466250752, upper := 4932501504, M := 15 } = true := by
  decide +kernel

theorem row049_layer021_checked :
    coverLayerCheck row049.height row049.goods { lower := 4932501504, upper := 9865003008, M := 15 } = true := by
  decide +kernel

theorem row049_layer022_checked :
    coverLayerCheck row049.height row049.goods { lower := 9865003008, upper := 19730006016, M := 14 } = true := by
  decide +kernel

theorem row049_layer023_checked :
    coverLayerCheck row049.height row049.goods { lower := 19730006016, upper := 39460012032, M := 13 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer023_checked
