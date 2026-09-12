import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block045
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer029_pairs002 :
    row048_layer029_block002.all (fun I => row048_layer029_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer029_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer029_pairs003 :
    row048_layer029_block003.all (fun I => row048_layer029_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer029_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer029_pairs004 :
    row048_layer029_block004.all (fun I => row048_layer029_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer029_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer029_chunks_eq : row048_layer029_chunks.flatten = row048_layer029_intervals := by
  rfl

theorem row048_layer029_pairs : pairCoverCheck row048_layer029_intervals row048_bounds = true := by
  apply pairCoverCheck_of_chunks row048_layer029_chunks_eq
  intro block hblock
  simp only [row048_layer029_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row048_layer029_pairs000
  · exact row048_layer029_pairs001
  · exact row048_layer029_pairs002
  · exact row048_layer029_pairs003
  · exact row048_layer029_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer029_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer029_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer029_checked :
    coverLayerCheck row048.height row048.goods { lower := 1211180777472, upper := 2422361554944, M := 17 } = true := by
  exact coverLayerCheck_of_parts row048_layer029_arithmetic row048_layer029_enumeration row048_bounds_eq row048_layer029_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer029_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer028_checked :
    coverLayerCheck row048.height row048.goods { lower := 605590388736, upper := 1211180777472, M := 18 } = true := by
  decide +kernel

theorem row048_layer030_checked :
    coverLayerCheck row048.height row048.goods { lower := 2422361554944, upper := 4844723109888, M := 17 } = true := by
  decide +kernel

theorem row048_layer031_checked :
    coverLayerCheck row048.height row048.goods { lower := 4844723109888, upper := 9689446219776, M := 16 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer032_checked :
    coverLayerCheck row048.height row048.goods { lower := 9689446219776, upper := 19378892439552, M := 15 } = true := by
  decide +kernel

theorem row048_layer033_checked :
    coverLayerCheck row048.height row048.goods { lower := 19378892439552, upper := 38757784879104, M := 15 } = true := by
  decide +kernel

theorem row048_layer034_checked :
    coverLayerCheck row048.height row048.goods { lower := 38757784879104, upper := 77515569758208, M := 15 } = true := by
  decide +kernel

theorem row048_layer035_checked :
    coverLayerCheck row048.height row048.goods { lower := 77515569758208, upper := 155031139516416, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer035_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer036_checked :
    coverLayerCheck row048.height row048.goods { lower := 155031139516416, upper := 310062279032832, M := 14 } = true := by
  decide +kernel

theorem row048_layer037_checked :
    coverLayerCheck row048.height row048.goods { lower := 310062279032832, upper := 620124558065664, M := 13 } = true := by
  decide +kernel

theorem row048_layer038_checked :
    coverLayerCheck row048.height row048.goods { lower := 620124558065664, upper := 1240249116131328, M := 13 } = true := by
  decide +kernel

theorem row048_layer039_checked :
    coverLayerCheck row048.height row048.goods { lower := 1240249116131328, upper := 2480498232262656, M := 12 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer039_checked
